; =========================================================
; Game Engine Function: mpg123_encsize
; Address            : 0x223E38 - 0x223E6E
; =========================================================

223E38:  MOV             R1, R0
223E3A:  LSLS            R0, R1, #0x1C
223E3C:  ITT NE
223E3E:  MOVNE           R0, #1
223E40:  BXNE            LR
223E42:  LSLS            R0, R1, #0x19
223E44:  BMI             loc_223E6A
223E46:  LSLS            R0, R1, #0x11
223E48:  ITT MI
223E4A:  MOVMI           R0, #3
223E4C:  BXMI            LR
223E4E:  MOVS            R0, #4
223E50:  CMP.W           R1, #0x200
223E54:  BEQ             locret_223E68
223E56:  ANDS.W          R2, R1, #0x100
223E5A:  IT NE
223E5C:  BXNE            LR
223E5E:  MOVS            R0, #0
223E60:  CMP.W           R1, #0x400
223E64:  IT EQ
223E66:  MOVEQ           R0, #8
223E68:  BX              LR
223E6A:  MOVS            R0, #2
223E6C:  BX              LR
