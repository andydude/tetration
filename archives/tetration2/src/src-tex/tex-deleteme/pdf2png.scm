(begin
    (set! ifile "/Users/me/Projects/Websites/ws-tetra/m4/src-tex/tex-test-temp.pdf")
    (set! ofile "/Users/me/Projects/Websites/ws-tetra/m4/src-tex/tex-test-temp.png")
    (file-ps-load-setargs 100 8.5 11 0 "1" 5 2 2)
    (set! img (car (gimp-file-load 1 ifile "")))
    ;(set! dis (gimp-display-new img))
    ;(gimp-displays-flush)
    (set! imglayers (cadr (gimp-image-get-layers img)))
    (set! lay (aref imglayers 0))
    ;(set! lay (gimp-image-get-active-drawable img))
    ;(set! lay 2)

    ;; Crop it
    (gimp-image-resize img 850 400 0 0)
    (gimp-layer-resize-to-image-size lay)
    (plug-in-autocrop 1 img lay)
    
    ;; Invert it
    (gimp-invert lay)
    
    ;; Save to output file
    (gimp-file-save 1 img lay ofile ofile)
    (gimp-quit 1)
)
    