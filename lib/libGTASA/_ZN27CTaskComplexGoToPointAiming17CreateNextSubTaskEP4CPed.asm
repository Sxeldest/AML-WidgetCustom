; =========================================================
; Game Engine Function: _ZN27CTaskComplexGoToPointAiming17CreateNextSubTaskEP4CPed
; Address            : 0x51DB9C - 0x51DBAC
; =========================================================

51DB9C:  PUSH            {R7,LR}
51DB9E:  MOV             R7, SP
51DBA0:  LDR             R0, [R0,#8]
51DBA2:  LDR             R1, [R0]
51DBA4:  LDR             R1, [R1,#0x14]
51DBA6:  BLX             R1
51DBA8:  MOVS            R0, #0
51DBAA:  POP             {R7,PC}
