; =========================================================
; Game Engine Function: _ZN16CStreamedScripts12ReInitialiseEv
; Address            : 0x335266 - 0x335278
; =========================================================

335266:  ADDS            R0, #4
335268:  MOVS            R1, #0
33526A:  MOVS            R2, #0
33526C:  STRB            R1, [R0,R2]
33526E:  ADDS            R2, #0x20 ; ' '
335270:  CMP.W           R2, #0xA40
335274:  BNE             loc_33526C
335276:  BX              LR
