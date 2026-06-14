; =========================================================
; Game Engine Function: sub_127DE4
; Address            : 0x127DE4 - 0x127E24
; =========================================================

127DE4:  PUSH            {R7,LR}
127DE6:  MOV             R7, SP
127DE8:  LDR             R0, =(byte_3140E8 - 0x127DEE)
127DEA:  ADD             R0, PC; byte_3140E8
127DEC:  LDRB            R0, [R0]
127DEE:  DMB.W           ISH
127DF2:  LSLS            R0, R0, #0x1F
127DF4:  IT NE
127DF6:  POPNE           {R7,PC}
127DF8:  LDR             R0, =(byte_3140E8 - 0x127DFE)
127DFA:  ADD             R0, PC; byte_3140E8 ; __guard *
127DFC:  BLX             j___cxa_guard_acquire
127E00:  CBZ             R0, locret_127E22
127E02:  LDR             R1, =(unk_3140D0 - 0x127E0E)
127E04:  MOVS            R3, #0
127E06:  LDR             R0, =(sub_127B34+1 - 0x127E10)
127E08:  LDR             R2, =(off_22A540 - 0x127E12)
127E0A:  ADD             R1, PC; unk_3140D0 ; obj
127E0C:  ADD             R0, PC; sub_127B34 ; lpfunc
127E0E:  ADD             R2, PC; off_22A540 ; lpdso_handle
127E10:  STR             R3, [R1,#(dword_3140E0 - 0x3140D0)]
127E12:  BLX             __cxa_atexit
127E16:  LDR             R0, =(byte_3140E8 - 0x127E1C)
127E18:  ADD             R0, PC; byte_3140E8
127E1A:  POP.W           {R7,LR}
127E1E:  B.W             sub_2242B0
127E22:  POP             {R7,PC}
