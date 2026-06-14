; =========================================================
; Game Engine Function: sub_220754
; Address            : 0x220754 - 0x22081E
; =========================================================

220754:  PUSH            {R4-R7,LR}
220756:  ADD             R7, SP, #0xC
220758:  PUSH.W          {R1-R11}
22075C:  MOV             R5, R0
22075E:  LDR             R0, =(__stack_chk_guard_ptr - 0x220768)
220760:  MOV             R8, R2
220762:  MOV             R10, R1
220764:  ADD             R0, PC; __stack_chk_guard_ptr
220766:  LDR             R0, [R0]; __stack_chk_guard
220768:  LDR             R0, [R0]
22076A:  STR             R0, [SP,#0x38+var_20]
22076C:  MOVS            R0, #0
22076E:  STR             R0, [SP,#0x38+var_24]
220770:  CBZ             R1, loc_220776
220772:  STR.W           R5, [R10]
220776:  MOV             R0, R5; s
220778:  BLX             wcslen
22077C:  LSLS            R0, R0, #2
22077E:  ADDS            R4, R0, #1
220780:  MOV             R0, R4; unsigned int
220782:  BLX             j__Znaj; operator new[](uint)
220786:  STRD.W          R5, R0, [SP,#0x38+var_2C]
22078A:  ADD             R1, SP, #0x38+var_2C
22078C:  ADD             R3, SP, #0x38+var_24
22078E:  MOV             R2, R4
220790:  MOV             R6, R0
220792:  BL              sub_2200EC
220796:  ADDS            R0, #1
220798:  BEQ             loc_2207F4
22079A:  ADD             R1, SP, #0x38+endptr; endptr
22079C:  MOV             R0, R6; nptr
22079E:  MOV             R2, R8; base
2207A0:  BLX             strtoul
2207A4:  MOV             R8, R0
2207A6:  CMP.W           R10, #0
2207AA:  BEQ             loc_2207F8
2207AC:  BLX             __errno
2207B0:  MOV             R9, R0
2207B2:  LDR             R0, [SP,#0x38+endptr]
2207B4:  LDR.W           R11, [R9]
2207B8:  SUBS            R4, R0, R6
2207BA:  ADDS            R0, R4, #1; unsigned int
2207BC:  BLX             j__Znaj; operator new[](uint)
2207C0:  MOV             R1, R6; src
2207C2:  MOV             R2, R4; n
2207C4:  STR             R0, [SP,#0x38+var_34]
2207C6:  BLX             strncpy
2207CA:  MOVS            R1, #0
2207CC:  STR             R0, [SP,#0x38+var_38]
2207CE:  STRB            R1, [R0,R4]
2207D0:  ADD             R3, SP, #0x38+var_24
2207D2:  MOV             R1, SP
2207D4:  MOVS            R0, #0
2207D6:  MOVS            R2, #0
2207D8:  BL              sub_21FF8C
2207DC:  ADDS            R1, R0, #1
2207DE:  BEQ             loc_22081A
2207E0:  ADD.W           R0, R5, R0,LSL#2
2207E4:  STR.W           R11, [R9]
2207E8:  STR.W           R0, [R10]
2207EC:  ADD             R0, SP, #0x38+var_34
2207EE:  BL              sub_220A28
2207F2:  B               loc_2207F8
2207F4:  MOV.W           R8, #0
2207F8:  ADD             R0, SP, #0x38+var_28
2207FA:  BL              sub_220A28
2207FE:  LDR             R0, [SP,#0x38+var_20]
220800:  LDR             R1, =(__stack_chk_guard_ptr - 0x220806)
220802:  ADD             R1, PC; __stack_chk_guard_ptr
220804:  LDR             R1, [R1]; __stack_chk_guard
220806:  LDR             R1, [R1]
220808:  CMP             R1, R0
22080A:  ITTTT EQ
22080C:  MOVEQ           R0, R8
22080E:  ADDEQ           SP, SP, #0x1C
220810:  POPEQ.W         {R8-R11}
220814:  POPEQ           {R4-R7,PC}
220816:  BLX             __stack_chk_fail
22081A:  BLX             abort
