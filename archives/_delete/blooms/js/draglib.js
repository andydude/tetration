function addEvent( o, e, h ) 
{ 
    o.addEventListener ? o.addEventListener( e, h, false ) : o.attachEvent ? o.attachEvent( 'on' + e, h ) : o[ 'on' + e ] = h; 
};

function removeEvent( o, e, h )
{ 
    o.removeEventListener ? o.removeEventListener( e, h, false ) : o.detachEvent ? o.detachEvent( 'on' + e, h ) : o[ 'on' + e ] = null;
};

function elId( id ){
    return document.getElementById(id);
}


//DragLibrary.freeDrag( newBox( 'free' ) );
//DragLibrary.polylineDrag( newBox( 'polyLine' ), 0, 0, 200, 200, 200, 200, 400, 200, 400, 200, 600, 0 );
//DragLibrary.freeLineDrag( newBox( 'freeLine' ), 600, 400, 60 );
//DragLibrary.squareDrag( newBox( 'square' ), 300, 300, 400, 200 );
//DragLibrary.circleDrag( newBox( 'circle' ), 300, 300, 100 );

DragLibrary = {
        e: null,
        diff: { x: 0, y: 0 },

        lineLength: function( x, y, x0, y0 ){
                return Math.sqrt( ( x -= x0 ) * x + ( y -= y0 ) * y );
        },

        lineIntersection: function( x, y, x0, y0, x1, y1 ){
                if( !( x1 - x0 ) )
                        return [x0, y];
                else if( !( y1 - y0 ) )
                        return [x, y0];
                var left, tg = -1 / ( ( y1 - y0 ) / ( x1 - x0 ) );
                return { x: left = ( x1 * ( x * tg - y + y0 ) + x0 * ( x * - tg + y - y1 ) ) / ( tg * ( x1 - x0 ) + y0 - y1 ), y: tg * left - tg * x + y };
        },

        dotLineLength: function( x, y, x0, y0, x1, y1 ){
                //var a = y0 - y1, b = x1 - x0, c = x0 * y1 - y0 * x1;
                //return Math.abs( a * x + b * y + c ) / Math.sqrt( a * a + b * b );
                var pt = this.lineIntersection( x, y, x0, y0, x1, y1 ), l1 = this.lineLength( x, y, x0, y0 ), l2 = this.lineLength( x, y, x1, y1 );
                return pt.x >= Math.min( x0, x1 ) && pt.x <= Math.max( x0, x1 ) && pt.y >= Math.min( y0, y1 ) && pt.y <= Math.max( y0, y1 ) ? this.lineLength( x, y, pt.x, pt.y ) : l1 > l2 ? l2 : l1;
        },

        beginDrag: function ( evt ){
                var dL = DragLibrary, e = dL.e = ( evt = evt || event ).target || evt.srcElement;
                dL.diff = { x: e.offsetLeft - evt.clientX, y: e.offsetTop - evt.clientY };
                addEvent( document, 'mousemove', dL.drag );
                addEvent( document, 'mouseup', dL.endDrag );
        },

        drag: function( evt ){
                var dL = DragLibrary, pt = dL.e.dragHandler.call( dL.e.dragHandler.data, ( evt = evt || event ).clientX, evt.clientY );
                dL.e.style.left = ( pt.x += dL.diff.x ) + 'px';
                dL.e.style.top = ( pt.y += dL.diff.y ) + 'px';
                if( dL.e.ondrag instanceof Function )
                        dL.e.ondrag( evt, pt.x, pt.y );
        },

        endDrag: function( evt ){
                removeEvent( document, 'mouseup', DragLibrary.endDrag );
                removeEvent( document, 'mousemove', DragLibrary.drag );
        },

        setHandler: function( e, data, handler ){
                ( e.dragHandler = handler ).data = data;
                e.style.position = 'absolute';
                addEvent( e, 'mousedown', this.beginDrag );
        },

        freeDrag: function( e ){
                this.setHandler( e, null, function( x, y ){
                        return { x: x, y: y };
                } );
        },

        squareDrag: function( e, x, y, width, height ){
                this.setHandler( e, { x: x, y: y, w: width, h: height }, function( x, y ){
                        var d = this;
                        return { x: x < d.x ? d.x : x > d.x + d.w ? d.x + d.w : x, y: y < d.y ? d.y : y > d.y + d.h ? d.y + d.h : y };
                });
        },

        circleDrag: function( e, x, y, ray ){
                this.setHandler( e, { x: x + ray, y: y + ray, ray: ray }, function( x, y ){
                        var d = this, tg;
                        return DragLibrary.lineLength( x, y, d.x, d.y ) > d.ray ?
                                { x: Math.cos( tg = Math.atan2( y - d.y, x - d.x ) ) * d.ray + d.x, y: Math.sin( tg ) * d.ray + d.y }
                                //{ x = ( x - d.x ) / ( length / d.ray ) + d.x, y = ( y - d.y ) / ( length / d.ray ) + d.y }
                                : { x: x, y: y };
                } );
        },

        freeLineDrag: function( e, x, y, angle ){
                this.setHandler( e, { x: x, y: y, angle: angle }, function( x, y ){
                        var d = this, tg = Math.tan( -d.angle * Math.PI / 180 );
                        if( ( d.angle %= 360 ) < 0 )
                                d.angle += 180;
                        if( d.angle < 45 || d.angle > 135 )
                                y = ( x - d.x ) * tg + d.y;
                        else
                                x = ( y - d.y ) / tg + d.x;
                        return { x: x, y: y };
                } );
        },

        polylineDrag: function( e, x0, y0, x1, y1, etc, etc, etc ){
                for( var args = [].slice.call( arguments, 0 ), lines = []; args.length > 4; lines[lines.length] = { y1: args.pop(), x1: args.pop(), y0: args.pop(), x0: args.pop() } );
                this.setHandler( e, lines, function( x, y ){
                        if( !this.length )
                                return { x: x, y: y };
                        var l, dL = DragLibrary, d = this[0], lower = { i: 0, l: dL.dotLineLength( x, y, d.x0, d.y0, d.x1, d.y1 ) };
                        for( var i in this )
                                if( lower.l > ( l = dL.dotLineLength( x, y, ( d = this[i] ).x0, d.y0, d.x1, d.y1 ) ) ){
                                        lower.i = i;
                                        lower.l = l;
                                }
                        y = y < Math.min( ( d = this[lower.i] ).y0, d.y1 ) ? Math.min( d.y0, d.y1 ) : y > Math.max( d.y0, d.y1 ) ? Math.max( d.y0, d.y1 ) : y;
                        x = x < Math.min( d.x0, d.x1 ) ? Math.min( d.x0, d.x1 ) : x > Math.max( d.x0, d.x1 ) ? Math.max( d.x0, d.x1 ) : x;
                        if( Math.abs( d.x0 - d.x1 ) < Math.abs( d.y0 - d.y1 ) )
                                x = ( y * ( d.x0 - d.x1 ) - d.x0 * d.y1 + d.y0 * d.x1 ) / ( d.y0 - d.y1 );
                        else
                                y = ( x * ( d.y0 - d.y1 ) - d.y0 * d.x1 + d.x0 * d.y1 ) / ( d.x0 - d.x1 );
                        return { x: x, y: y };
                } );
        }
};