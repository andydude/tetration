(begin
(set! ifile "/Users/me/webtetra/src/src-tex/tex-temp/eqhyperop.pdf")
(set! ofile "/Users/me/webtetra/img/auto/eqhyperop.png")
    (file-ps-load-setargs 600 8.5 11 0 "1" 5 4 4)
    (set! img (car (gimp-file-load 1 ifile "")))
    ;(set! dis (gimp-display-new img))
    ;(gimp-displays-flush)
    (set! imglayers (cadr (gimp-image-get-layers img)))
    (set! lay (aref imglayers 0))
    ;(set! lay (gimp-image-get-active-drawable img))
    ;(set! lay 2)

    ;; Scale it
    (gimp-image-scale img 1275 1650)
    
    ;; Crop it
    (gimp-image-resize img 1275 600 0 0)
    (gimp-layer-resize-to-image-size lay)
    (plug-in-autocrop 1 img lay)
    
    ;; Invert it
    ;(gimp-invert lay)
    
    ;; Save to output file
    (gimp-file-save 1 img lay ofile ofile)
    (gimp-quit 1)
    
)
