; =========================================================
; Game Engine Function: _ZN22CTaskComplexFleeEntity17CreateNextSubTaskEP4CPed
; Address            : 0x513328 - 0x513340
; =========================================================

513328:  LDR             R1, [R0,#0xC]
51332A:  CBZ             R1, loc_51333C
51332C:  PUSH            {R7,LR}
51332E:  MOV             R7, SP
513330:  LDR             R0, [R0,#8]
513332:  LDR             R1, [R0]
513334:  LDR             R1, [R1,#0x14]
513336:  BLX             R1
513338:  POP.W           {R7,LR}
51333C:  MOVS            R0, #0
51333E:  BX              LR
