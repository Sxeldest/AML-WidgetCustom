; =========================================================
; Game Engine Function: sub_65790
; Address            : 0x65790 - 0x65812
; =========================================================

65790:  PUSH            {R7,LR}
65792:  MOV             R7, SP
65794:  SUB             SP, SP, #0x30
65796:  LDR             R0, =(unk_50D10 - 0x657A0)
65798:  LDR             R1, =(byte_1A3FF8 - 0x657A6)
6579A:  LDR             R2, =(__stack_chk_guard_ptr - 0x657A8)
6579C:  ADD             R0, PC; unk_50D10
6579E:  VLD1.64         {D16-D17}, [R0]!
657A2:  ADD             R1, PC; byte_1A3FF8
657A4:  ADD             R2, PC; __stack_chk_guard_ptr
657A6:  VLD1.64         {D18-D19}, [R0]!
657AA:  LDR             R2, [R2]; __stack_chk_guard
657AC:  VLDR            D20, [R0]
657B0:  MOV             R0, SP
657B2:  LDR             R2, [R2]
657B4:  STR             R2, [SP,#0x38+var_C]
657B6:  VST1.64         {D16-D17}, [R0,#0x38+var_38]!
657BA:  VST1.64         {D18-D19}, [R0]!
657BE:  VSTR            D20, [R0]
657C2:  LDRB            R0, [R1]
657C4:  DMB.W           ISH
657C8:  LSLS            R0, R0, #0x1F
657CA:  BEQ             loc_657E2
657CC:  LDR             R0, [SP,#0x38+var_C]
657CE:  LDR             R1, =(__stack_chk_guard_ptr - 0x657D4)
657D0:  ADD             R1, PC; __stack_chk_guard_ptr
657D2:  LDR             R1, [R1]; __stack_chk_guard
657D4:  LDR             R1, [R1]
657D6:  CMP             R1, R0
657D8:  ITT EQ
657DA:  ADDEQ           SP, SP, #0x30 ; '0'
657DC:  POPEQ           {R7,PC}
657DE:  BLX             __stack_chk_fail
657E2:  LDR             R0, =(byte_1A3FF8 - 0x657E8)
657E4:  ADD             R0, PC; byte_1A3FF8 ; __guard *
657E6:  BLX             j___cxa_guard_acquire
657EA:  CMP             R0, #0
657EC:  BEQ             loc_657CC
657EE:  LDR             R0, =(unk_1A3FD0 - 0x657F4)
657F0:  ADD             R0, PC; unk_1A3FD0
657F2:  MOV             R1, SP
657F4:  BL              sub_6706A
657F8:  LDR             R0, =(sub_6712C+1 - 0x65802)
657FA:  LDR             R1, =(unk_1A3FD0 - 0x65804)
657FC:  LDR             R2, =(off_110560 - 0x65806)
657FE:  ADD             R0, PC; sub_6712C ; lpfunc
65800:  ADD             R1, PC; unk_1A3FD0 ; obj
65802:  ADD             R2, PC; off_110560 ; lpdso_handle
65804:  BLX             __cxa_atexit
65808:  LDR             R0, =(byte_1A3FF8 - 0x6580E)
6580A:  ADD             R0, PC; byte_1A3FF8 ; __guard *
6580C:  BLX             j___cxa_guard_release
65810:  B               loc_657CC
