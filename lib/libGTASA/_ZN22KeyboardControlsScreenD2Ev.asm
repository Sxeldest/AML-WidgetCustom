; =========================================================
; Game Engine Function: _ZN22KeyboardControlsScreenD2Ev
; Address            : 0x2A25C8 - 0x2A2642
; =========================================================

2A25C8:  PUSH            {R4-R7,LR}
2A25CA:  ADD             R7, SP, #0xC
2A25CC:  PUSH.W          {R8-R10}
2A25D0:  MOV             R9, R0
2A25D2:  LDR             R0, =(_ZTV22KeyboardControlsScreen_ptr - 0x2A25DC)
2A25D4:  LDR.W           R1, [R9,#0x38]
2A25D8:  ADD             R0, PC; _ZTV22KeyboardControlsScreen_ptr
2A25DA:  CMP             R1, #0
2A25DC:  LDR             R0, [R0]; `vtable for'KeyboardControlsScreen ...
2A25DE:  ADD.W           R0, R0, #8
2A25E2:  STR.W           R0, [R9]
2A25E6:  BEQ             loc_2A261C
2A25E8:  MOV.W           R8, #0
2A25EC:  MOV.W           R6, #0x208
2A25F0:  MOVS            R5, #0
2A25F2:  LDR.W           R10, [R9,#0x3C]
2A25F6:  ADD.W           R4, R10, R6
2A25FA:  LDR             R0, [R4,#8]; p
2A25FC:  STR.W           R8, [R4,#4]
2A2600:  CBZ             R0, loc_2A260A
2A2602:  BLX             free
2A2606:  STR.W           R8, [R4,#8]
2A260A:  STR.W           R8, [R10,R6]
2A260E:  ADD.W           R6, R6, #0x214
2A2612:  ADDS            R5, #1
2A2614:  LDR.W           R0, [R9,#0x38]
2A2618:  CMP             R5, R0
2A261A:  BCC             loc_2A25F2
2A261C:  LDR.W           R0, [R9,#0x3C]; p
2A2620:  MOVS            R4, #0
2A2622:  STR.W           R4, [R9,#0x38]
2A2626:  CBZ             R0, loc_2A2630
2A2628:  BLX             free
2A262C:  STR.W           R4, [R9,#0x3C]
2A2630:  STR.W           R4, [R9,#0x34]
2A2634:  MOV             R0, R9; this
2A2636:  POP.W           {R8-R10}
2A263A:  POP.W           {R4-R7,LR}
2A263E:  B.W             j_j__ZN12SelectScreenD2Ev; j_SelectScreen::~SelectScreen()
