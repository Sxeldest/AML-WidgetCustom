; =========================================================
; Game Engine Function: gzeof
; Address            : 0x20D07E - 0x20D090
; =========================================================

20D07E:  CBZ             R0, loc_20D08C
20D080:  LDRB.W          R1, [R0,#0x5C]
20D084:  CMP             R1, #0x72 ; 'r'
20D086:  ITT EQ
20D088:  LDREQ           R0, [R0,#0x3C]
20D08A:  BXEQ            LR
20D08C:  MOVS            R0, #0
20D08E:  BX              LR
