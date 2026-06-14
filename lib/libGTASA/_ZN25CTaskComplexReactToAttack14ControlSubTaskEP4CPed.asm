; =========================================================
; Game Engine Function: _ZN25CTaskComplexReactToAttack14ControlSubTaskEP4CPed
; Address            : 0x4E018C - 0x4E01AE
; =========================================================

4E018C:  PUSH            {R4,R6,R7,LR}
4E018E:  ADD             R7, SP, #8
4E0190:  MOV             R4, R0
4E0192:  LDRB            R0, [R4,#0xC]
4E0194:  CBZ             R0, loc_4E01A2
4E0196:  LDR             R0, [R4]
4E0198:  LDR             R2, [R0,#0x2C]
4E019A:  MOV             R0, R4
4E019C:  POP.W           {R4,R6,R7,LR}
4E01A0:  BX              R2
4E01A2:  LDR             R0, [R4,#8]
4E01A4:  LDR             R1, [R0]
4E01A6:  LDR             R1, [R1,#0x14]
4E01A8:  BLX             R1
4E01AA:  LDR             R0, [R4,#8]
4E01AC:  POP             {R4,R6,R7,PC}
