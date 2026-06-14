; =========================================================
; Game Engine Function: sub_22059C
; Address            : 0x22059C - 0x220678
; =========================================================

22059C:  PUSH            {R4-R7,LR}
22059E:  ADD             R7, SP, #0xC
2205A0:  PUSH.W          {R7-R11}
2205A4:  VPUSH           {D4-D8}
2205A8:  MOV             R5, R0
2205AA:  LDR             R0, =(__stack_chk_guard_ptr - 0x2205B2)
2205AC:  MOV             R11, R1
2205AE:  ADD             R0, PC; __stack_chk_guard_ptr
2205B0:  LDR             R0, [R0]; __stack_chk_guard
2205B2:  LDR             R0, [R0]
2205B4:  STR             R0, [SP,#0x48+var_2C]
2205B6:  MOVS            R0, #0
2205B8:  STR             R0, [SP,#0x48+var_30]
2205BA:  CBZ             R1, loc_2205C0
2205BC:  STR.W           R5, [R11]
2205C0:  MOV             R0, R5; s
2205C2:  BLX             wcslen
2205C6:  LSLS            R0, R0, #2
2205C8:  ADDS            R4, R0, #1
2205CA:  MOV             R0, R4; unsigned int
2205CC:  BLX             j__Znaj; operator new[](uint)
2205D0:  STRD.W          R5, R0, [SP,#0x48+var_38]
2205D4:  ADD             R1, SP, #0x48+var_38
2205D6:  ADD             R3, SP, #0x48+var_30
2205D8:  MOV             R2, R4
2205DA:  MOV             R6, R0
2205DC:  BL              sub_2200EC
2205E0:  ADDS            R0, #1
2205E2:  BEQ             loc_220646
2205E4:  ADD             R1, SP, #0x48+endptr; endptr
2205E6:  MOV             R0, R6; nptr
2205E8:  BLX             strtod
2205EC:  MOV             R8, R0
2205EE:  MOV             R9, R1
2205F0:  CMP.W           R11, #0
2205F4:  BEQ             loc_220640
2205F6:  BLX             __errno
2205FA:  MOV             R10, R0
2205FC:  LDR             R0, [SP,#0x48+endptr]
2205FE:  LDR.W           R1, [R10]
220602:  SUBS            R4, R0, R6
220604:  STR             R1, [SP,#0x48+var_48]
220606:  ADDS            R0, R4, #1; unsigned int
220608:  BLX             j__Znaj; operator new[](uint)
22060C:  MOV             R1, R6; src
22060E:  MOV             R2, R4; n
220610:  STR             R0, [SP,#0x48+var_40]
220612:  BLX             strncpy
220616:  MOVS            R1, #0
220618:  STR             R0, [SP,#0x48+var_44]
22061A:  STRB            R1, [R0,R4]
22061C:  ADD             R1, SP, #0x48+var_44
22061E:  ADD             R3, SP, #0x48+var_30
220620:  MOVS            R0, #0
220622:  MOVS            R2, #0
220624:  BL              sub_21FF8C
220628:  ADDS            R1, R0, #1
22062A:  BEQ             loc_220674
22062C:  LDR             R1, [SP,#0x48+var_48]
22062E:  ADD.W           R0, R5, R0,LSL#2
220632:  STR.W           R1, [R10]
220636:  STR.W           R0, [R11]
22063A:  ADD             R0, SP, #0x48+var_40
22063C:  BL              sub_220A28
220640:  VMOV            D8, R8, R9
220644:  B               loc_22064A
220646:  VMOV.I32        D8, #0
22064A:  ADD             R0, SP, #0x48+var_34
22064C:  BL              sub_220A28
220650:  LDR             R0, [SP,#0x48+var_2C]
220652:  LDR             R1, =(__stack_chk_guard_ptr - 0x220658)
220654:  ADD             R1, PC; __stack_chk_guard_ptr
220656:  LDR             R1, [R1]; __stack_chk_guard
220658:  LDR             R1, [R1]
22065A:  CMP             R1, R0
22065C:  ITTTT EQ
22065E:  VMOVEQ          R0, R1, D8
220662:  VPOPEQ          {D4-D8}
220666:  ADDEQ           SP, SP, #4
220668:  POPEQ.W         {R8-R11}
22066C:  IT EQ
22066E:  POPEQ           {R4-R7,PC}
220670:  BLX             __stack_chk_fail
220674:  BLX             abort
