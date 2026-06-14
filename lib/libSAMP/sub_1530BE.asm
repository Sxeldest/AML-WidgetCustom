; =========================================================
; Game Engine Function: sub_1530BE
; Address            : 0x1530BE - 0x1530E6
; =========================================================

1530BE:  PUSH            {R4,R6,R7,LR}
1530C0:  ADD             R7, SP, #8
1530C2:  LDRB            R0, [R0,#4]
1530C4:  MOV             R4, R1
1530C6:  CBZ             R0, loc_1530D8
1530C8:  LDR             R0, [R4,#0xC]
1530CA:  MOVS            R1, #0
1530CC:  STR             R1, [R4,#0xC]
1530CE:  CBZ             R0, loc_1530DA
1530D0:  LDR             R1, [R0]
1530D2:  LDR             R1, [R1,#4]
1530D4:  BLX             R1
1530D6:  B               loc_1530DA
1530D8:  CBZ             R4, locret_1530E4
1530DA:  MOV             R0, R4; void *
1530DC:  POP.W           {R4,R6,R7,LR}
1530E0:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
1530E4:  POP             {R4,R6,R7,PC}
