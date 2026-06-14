; =========================================================
; Game Engine Function: sub_186FEC
; Address            : 0x186FEC - 0x186FF6
; =========================================================

186FEC:  MOV.W           R1, #0x3E8
186FF0:  MULS            R0, R1; useconds
186FF2:  B.W             loc_2243D0
