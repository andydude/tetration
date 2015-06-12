    (file-ps-load-setargs 600 5100 6600 0 "1" 5 4 4)
    (define img (car (gimp-file-load 1 ifile ifile)))
    (define imglayers (cadr (gimp-image-get-layers img)))
    (define lay (aref imglayers 0))
    
    ;; Scale it
    (gimp-image-scale-full img 1275 1650 2)
        
    ;; Crop it
    (gimp-image-resize img 1275 1200 0 0)
    (gimp-layer-resize-to-image-size lay)
    (plug-in-autocrop 1 img lay)
    
    ;; Invert it
    (gimp-invert lay)
    
    ;; Save to output file
    (gimp-file-save 1 img lay ofile ofile)
    (gimp-quit 1)

