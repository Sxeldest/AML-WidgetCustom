; =========================================================
; Game Engine Function: sub_5E811C
; Address            : 0x5E811C - 0x5E8136
; =========================================================

5E811C:  LDR             R1, [R0]
5E811E:  CBZ             R1, loc_5E8128
5E8120:  LDRB            R0, [R1,#0xC]
5E8122:  UBFX.W          R0, R0, #5, #1
5E8126:  BX              LR
5E8128:  LDRD.W          R1, R2, [R0,#8]
5E812C:  MOVS            R0, #0
5E812E:  CMP             R2, R1
5E8130:  IT CS
5E8132:  MOVCS           R0, #1
5E8134:  BX              LR
