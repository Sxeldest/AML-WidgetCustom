; =========================================================
; Game Engine Function: sub_5D1040
; Address            : 0x5D1040 - 0x5D1050
; =========================================================

5D1040:  PUSH            {R4,R6,R7,LR}
5D1042:  ADD             R7, SP, #8
5D1044:  MOV             R4, R1
5D1046:  BLX.W           j_RpSkinAtomicGetHAnimHierarchy
5D104A:  STR             R0, [R4]
5D104C:  MOVS            R0, #0
5D104E:  POP             {R4,R6,R7,PC}
