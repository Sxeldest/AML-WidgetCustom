; =========================================================
; Game Engine Function: sub_140090
; Address            : 0x140090 - 0x140104
; =========================================================

140090:  PUSH            {R4-R7,LR}
140092:  ADD             R7, SP, #0xC
140094:  PUSH.W          {R11}
140098:  MOV             R4, R0
14009A:  LDR             R0, =(byte_3142F4 - 0x1400A0)
14009C:  ADD             R0, PC; byte_3142F4
14009E:  LDRB            R0, [R0]
1400A0:  DMB.W           ISH
1400A4:  LDR             R5, =(dword_3142F0 - 0x1400AA)
1400A6:  ADD             R5, PC; dword_3142F0
1400A8:  LSLS            R0, R0, #0x1F
1400AA:  BEQ             loc_1400E6
1400AC:  BL              sub_F0B30
1400B0:  LDR             R1, [R5]
1400B2:  SUBS            R0, R0, R1
1400B4:  CMP             R0, #0x64 ; 'd'
1400B6:  BCC             loc_1400E0
1400B8:  LDR             R0, =(off_23494C - 0x1400BE)
1400BA:  ADD             R0, PC; off_23494C
1400BC:  LDR             R6, [R0]; dword_23DF24
1400BE:  BL              sub_F0B30
1400C2:  LDR             R1, [R6]
1400C4:  MOVS            R2, #1
1400C6:  STR             R0, [R5]
1400C8:  MOV             R0, #0x2B0CBD
1400D0:  ADDS            R3, R1, R0
1400D2:  MOVS            R0, #0xBE
1400D4:  MOVS            R1, #0
1400D6:  BLX             R3
1400D8:  CBZ             R0, loc_1400E0
1400DA:  MOV             R0, R4
1400DC:  BL              sub_1410CC
1400E0:  POP.W           {R11}
1400E4:  POP             {R4-R7,PC}
1400E6:  LDR             R0, =(byte_3142F4 - 0x1400EC)
1400E8:  ADD             R0, PC; byte_3142F4 ; __guard *
1400EA:  BLX             j___cxa_guard_acquire
1400EE:  CMP             R0, #0
1400F0:  BEQ             loc_1400AC
1400F2:  BL              sub_F0B30
1400F6:  LDR             R1, =(byte_3142F4 - 0x1400FE)
1400F8:  STR             R0, [R5]
1400FA:  ADD             R1, PC; byte_3142F4
1400FC:  MOV             R0, R1; __guard *
1400FE:  BLX             j___cxa_guard_release
140102:  B               loc_1400AC
