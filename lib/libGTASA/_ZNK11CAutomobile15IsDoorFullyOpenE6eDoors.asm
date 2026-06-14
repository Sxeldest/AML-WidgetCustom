; =========================================================
; Game Engine Function: _ZNK11CAutomobile15IsDoorFullyOpenE6eDoors
; Address            : 0x550A80 - 0x550AB0
; =========================================================

550A80:  PUSH            {R4,R5,R7,LR}
550A82:  ADD             R7, SP, #8
550A84:  MOV             R4, R1
550A86:  MOV             R5, R0
550A88:  ADD.W           R0, R4, R4,LSL#1
550A8C:  ADD.W           R0, R5, R0,LSL#3
550A90:  ADDW            R0, R0, #0x5CC; this
550A94:  BLX             j__ZNK5CDoor11IsFullyOpenEv; CDoor::IsFullyOpen(void)
550A98:  CMP             R0, #0
550A9A:  ITT NE
550A9C:  MOVNE           R0, #1
550A9E:  POPNE           {R4,R5,R7,PC}
550AA0:  LDR             R0, [R5]
550AA2:  MOV             R1, R4
550AA4:  LDR.W           R2, [R0,#0x88]
550AA8:  MOV             R0, R5
550AAA:  POP.W           {R4,R5,R7,LR}
550AAE:  BX              R2
