; =========================================================
; Game Engine Function: sub_1DC180
; Address            : 0x1DC180 - 0x1DC210
; =========================================================

1DC180:  PUSH            {R4-R6,R10,R11,LR}
1DC184:  ADD             R11, SP, #0x10
1DC188:  MOV             R4, R3
1DC18C:  MOV             R5, R1
1DC190:  MOV             R6, R0
1DC194:  CMP             R2, #0xE
1DC198:  BEQ             loc_1DC1C8
1DC19C:  CMP             R2, #0xB
1DC1A0:  BNE             loc_1DC1FC
1DC1A4:  LDR             R0, [R5,#0xFC]
1DC1A8:  ADD             R0, R0, #8; mutex
1DC1AC:  BL              j_EnterCriticalSection
1DC1B0:  LDR             R0, [R6,#0x40]
1DC1B4:  STR             R0, [R4]
1DC1B8:  LDR             R0, [R6,#0x44]
1DC1BC:  STR             R0, [R4,#4]
1DC1C0:  LDR             R0, [R6,#0x48]
1DC1C4:  B               loc_1DC1E8
1DC1C8:  LDR             R0, [R5,#0xFC]
1DC1CC:  ADD             R0, R0, #8; mutex
1DC1D0:  BL              j_EnterCriticalSection
1DC1D4:  LDR             R0, [R6,#0x4C]
1DC1D8:  STR             R0, [R4]
1DC1DC:  LDR             R0, [R6,#0x50]
1DC1E0:  STR             R0, [R4,#4]
1DC1E4:  LDR             R0, [R6,#0x54]
1DC1E8:  STR             R0, [R4,#8]
1DC1EC:  LDR             R0, [R5,#0xFC]
1DC1F0:  ADD             R0, R0, #8; mutex
1DC1F4:  POP             {R4-R6,R10,R11,LR}
1DC1F8:  B               j_LeaveCriticalSection
1DC1FC:  MOV             R0, R6
1DC200:  MOV             R1, R5
1DC204:  MOV             R3, R4
1DC208:  POP             {R4-R6,R10,R11,LR}
1DC20C:  B               sub_1DC004
