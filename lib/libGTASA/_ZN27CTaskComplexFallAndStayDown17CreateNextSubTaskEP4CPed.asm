; =========================================================
; Game Engine Function: _ZN27CTaskComplexFallAndStayDown17CreateNextSubTaskEP4CPed
; Address            : 0x52BD0C - 0x52BD1C
; =========================================================

52BD0C:  PUSH            {R7,LR}
52BD0E:  MOV             R7, SP
52BD10:  LDR             R0, [R0,#8]
52BD12:  LDR             R1, [R0]
52BD14:  LDR             R1, [R1,#0x14]
52BD16:  BLX             R1
52BD18:  MOVS            R0, #0
52BD1A:  POP             {R7,PC}
