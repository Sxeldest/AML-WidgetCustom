; =========================================================
; Game Engine Function: _Z20LIB_ScreenshotIsDonev
; Address            : 0x26F460 - 0x26F46A
; =========================================================

26F460:  LDR             R0, =(ScreenshotIsDone_ptr - 0x26F466)
26F462:  ADD             R0, PC; ScreenshotIsDone_ptr
26F464:  LDR             R0, [R0]; ScreenshotIsDone
26F466:  LDRB            R0, [R0]
26F468:  BX              LR
