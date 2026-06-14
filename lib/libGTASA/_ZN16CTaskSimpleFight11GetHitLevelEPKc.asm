; =========================================================
; Game Engine Function: _ZN16CTaskSimpleFight11GetHitLevelEPKc
; Address            : 0x475184 - 0x4751EA
; =========================================================

475184:  PUSH            {R4,R6,R7,LR}
475186:  ADD             R7, SP, #8
475188:  MOV             R4, R0
47518A:  LDRB            R0, [R4]
47518C:  SUBS            R0, #0x42 ; 'B'; switch 11 cases
47518E:  CMP             R0, #0xA
475190:  BHI             def_475194; jumptable 00475194 default case, cases 67-70,73-75
475192:  MOVS            R1, #0
475194:  TBB.W           [PC,R0]; switch jump
475198:  DCB 6; jump table for switch statement
475199:  DCB 9
47519A:  DCB 9
47519B:  DCB 9
47519C:  DCB 9
47519D:  DCB 0x1D
47519E:  DCB 0x1B
47519F:  DCB 9
4751A0:  DCB 9
4751A1:  DCB 9
4751A2:  DCB 0x20
4751A3:  ALIGN 2
4751A4:  MOVS            R1, #3; jumptable 00475194 case 66
4751A6:  UXTB            R0, R1
4751A8:  POP             {R4,R6,R7,PC}
4751AA:  ADR             R1, dword_4751EC; jumptable 00475194 default case, cases 67-70,73-75
4751AC:  MOV             R0, R4; char *
4751AE:  BLX             strcmp
4751B2:  CBZ             R0, loc_4751DE
4751B4:  ADR             R1, dword_4751F0; char *
4751B6:  MOV             R0, R4; char *
4751B8:  BLX             strcmp
4751BC:  CBZ             R0, loc_4751E4
4751BE:  ADR             R1, dword_4751F4; char *
4751C0:  MOV             R0, R4; char *
4751C2:  BLX             strcmp
4751C6:  MOVS            R1, #7
4751C8:  CMP             R0, #0
4751CA:  IT EQ
4751CC:  MOVEQ           R1, #6
4751CE:  UXTB            R0, R1; jumptable 00475194 case 72
4751D0:  POP             {R4,R6,R7,PC}
4751D2:  MOVS            R1, #2; jumptable 00475194 case 71
4751D4:  UXTB            R0, R1
4751D6:  POP             {R4,R6,R7,PC}
4751D8:  MOVS            R1, #1; jumptable 00475194 case 76
4751DA:  UXTB            R0, R1
4751DC:  POP             {R4,R6,R7,PC}
4751DE:  MOVS            R1, #4
4751E0:  UXTB            R0, R1
4751E2:  POP             {R4,R6,R7,PC}
4751E4:  MOVS            R1, #5
4751E6:  UXTB            R0, R1
4751E8:  POP             {R4,R6,R7,PC}
