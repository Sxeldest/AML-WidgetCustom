; =========================================================
; Game Engine Function: mpg123_clip
; Address            : 0x230F4C - 0x230F60
; =========================================================

230F4C:  MOV             R1, R0
230F4E:  MOVS            R0, #0
230F50:  CMP             R1, #0
230F52:  ITTTT NE
230F54:  MOVWNE          R2, #0xB474
230F58:  LDRNE           R3, [R1,R2]
230F5A:  STRNE           R0, [R1,R2]
230F5C:  MOVNE           R0, R3
230F5E:  BX              LR
