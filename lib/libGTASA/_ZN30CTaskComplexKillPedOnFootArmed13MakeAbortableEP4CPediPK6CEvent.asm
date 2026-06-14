; =========================================================
; Game Engine Function: _ZN30CTaskComplexKillPedOnFootArmed13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4E2610 - 0x4E2660
; =========================================================

4E2610:  PUSH            {R4-R7,LR}
4E2612:  ADD             R7, SP, #0xC
4E2614:  PUSH.W          {R8}
4E2618:  MOV             R5, R2
4E261A:  MOV             R4, R3
4E261C:  MOV             R8, R1
4E261E:  MOV             R6, R0
4E2620:  CMP             R5, #1
4E2622:  BNE             loc_4E2652
4E2624:  CBZ             R4, loc_4E2652
4E2626:  LDR             R0, [R4]
4E2628:  LDR             R1, [R0,#8]
4E262A:  MOV             R0, R4
4E262C:  BLX             R1
4E262E:  CMP             R0, #0x1F
4E2630:  BNE             loc_4E263A
4E2632:  LDR             R0, [R6,#0xC]
4E2634:  LDR             R1, [R4,#0x10]
4E2636:  CMP             R1, R0
4E2638:  BEQ             loc_4E2658
4E263A:  LDR             R0, [R6,#8]
4E263C:  MOV             R2, R5
4E263E:  MOV             R3, R4
4E2640:  LDR             R1, [R0]
4E2642:  LDR.W           R12, [R1,#0x1C]
4E2646:  MOV             R1, R8
4E2648:  POP.W           {R8}
4E264C:  POP.W           {R4-R7,LR}
4E2650:  BX              R12
4E2652:  SUBS            R0, R5, #1
4E2654:  CMP             R0, #1
4E2656:  BLS             loc_4E263A
4E2658:  MOVS            R0, #0
4E265A:  POP.W           {R8}
4E265E:  POP             {R4-R7,PC}
