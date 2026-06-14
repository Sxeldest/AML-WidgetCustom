; =========================================================
; Game Engine Function: _ZNK11CAutomobile11IsDoorReadyE6eDoors
; Address            : 0x550A50 - 0x550A80
; =========================================================

550A50:  PUSH            {R4,R5,R7,LR}
550A52:  ADD             R7, SP, #8
550A54:  MOV             R4, R1
550A56:  MOV             R5, R0
550A58:  ADD.W           R0, R4, R4,LSL#1
550A5C:  ADD.W           R0, R5, R0,LSL#3
550A60:  ADDW            R0, R0, #0x5CC; this
550A64:  BLX             j__ZNK5CDoor8IsClosedEv; CDoor::IsClosed(void)
550A68:  CMP             R0, #0
550A6A:  ITT NE
550A6C:  MOVNE           R0, #1
550A6E:  POPNE           {R4,R5,R7,PC}
550A70:  LDR             R0, [R5]
550A72:  MOV             R1, R4
550A74:  LDR.W           R2, [R0,#0x88]
550A78:  MOV             R0, R5
550A7A:  POP.W           {R4,R5,R7,LR}
550A7E:  BX              R2
