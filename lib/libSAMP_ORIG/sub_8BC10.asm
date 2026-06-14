; =========================================================
; Game Engine Function: sub_8BC10
; Address            : 0x8BC10 - 0x8BC60
; =========================================================

8BC10:  PUSH            {R4-R7,LR}
8BC12:  ADD             R7, SP, #0xC
8BC14:  PUSH.W          {R11}
8BC18:  MOV             R6, R1
8BC1A:  LDR             R1, =(a171 - 0x8BC24); "1.71" ...
8BC1C:  MOV             R4, R3
8BC1E:  MOV             R5, R2
8BC20:  ADD             R1, PC; "1.71"
8BC22:  BLX             strcmp
8BC26:  MOVW            R2, #0x1510
8BC2A:  LDRD.W          R3, R1, [R7,#arg_0]
8BC2E:  EORS            R2, R6
8BC30:  EOR.W           R6, R5, #0x3AC
8BC34:  ORRS            R2, R6
8BC36:  EOR.W           R6, R4, #8
8BC3A:  LDR.W           R12, [R7,#arg_8]
8BC3E:  ORRS            R2, R6
8BC40:  EOR.W           R3, R3, #0x10
8BC44:  EOR.W           R1, R1, #0x14
8BC48:  ORRS            R2, R3
8BC4A:  ORRS            R1, R2
8BC4C:  EOR.W           R2, R12, #2
8BC50:  ORRS            R1, R2
8BC52:  ORRS            R0, R1
8BC54:  CLZ.W           R0, R0
8BC58:  LSRS            R0, R0, #5
8BC5A:  POP.W           {R11}
8BC5E:  POP             {R4-R7,PC}
