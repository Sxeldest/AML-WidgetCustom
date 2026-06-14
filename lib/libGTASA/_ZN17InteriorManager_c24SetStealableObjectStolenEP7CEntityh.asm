; =========================================================
; Game Engine Function: _ZN17InteriorManager_c24SetStealableObjectStolenEP7CEntityh
; Address            : 0x44C8EC - 0x44C924
; =========================================================

44C8EC:  PUSH            {R7,LR}
44C8EE:  MOV             R7, SP
44C8F0:  MOVW            R3, #0x43A8
44C8F4:  LDR.W           R12, [R0,R3]
44C8F8:  CMP.W           R12, #1
44C8FC:  IT LT
44C8FE:  POPLT           {R7,PC}
44C900:  MOVW            R3, #0x43C4
44C904:  ADD.W           LR, R0, R3
44C908:  MOVS            R3, #0
44C90A:  LDR.W           R0, [LR,#-0x18]
44C90E:  CMP             R0, R1
44C910:  BEQ             loc_44C91E
44C912:  ADDS            R3, #1
44C914:  ADD.W           LR, LR, #0x1C
44C918:  CMP             R3, R12
44C91A:  BLT             loc_44C90A
44C91C:  POP             {R7,PC}
44C91E:  STRB.W          R2, [LR]
44C922:  POP             {R7,PC}
