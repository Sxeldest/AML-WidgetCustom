; =========================================================
; Game Engine Function: sub_1677F8
; Address            : 0x1677F8 - 0x167848
; =========================================================

1677F8:  PUSH            {R4-R7,LR}
1677FA:  ADD             R7, SP, #0xC
1677FC:  PUSH.W          {R11}
167800:  MOV             R6, R1
167802:  LDR             R1, =(a171Wip - 0x16780C); "1.71 WIP" ...
167804:  MOV             R4, R3
167806:  MOV             R5, R2
167808:  ADD             R1, PC; "1.71 WIP"
16780A:  BLX             strcmp
16780E:  MOVW            R2, #0x1510
167812:  LDRD.W          R3, R1, [R7,#arg_0]
167816:  EORS            R2, R6
167818:  EOR.W           R6, R5, #0x3AC
16781C:  ORRS            R2, R6
16781E:  EOR.W           R6, R4, #8
167822:  LDR.W           R12, [R7,#arg_8]
167826:  ORRS            R2, R6
167828:  EOR.W           R3, R3, #0x10
16782C:  EOR.W           R1, R1, #0x14
167830:  ORRS            R2, R3
167832:  ORRS            R1, R2
167834:  EOR.W           R2, R12, #2
167838:  ORRS            R1, R2
16783A:  ORRS            R0, R1
16783C:  CLZ.W           R0, R0
167840:  LSRS            R0, R0, #5
167842:  POP.W           {R11}
167846:  POP             {R4-R7,PC}
