; =========================================================
; Game Engine Function: sub_220680
; Address            : 0x220680 - 0x22074A
; =========================================================

220680:  PUSH            {R4-R7,LR}
220682:  ADD             R7, SP, #0xC
220684:  PUSH.W          {R1-R11}
220688:  MOV             R5, R0
22068A:  LDR             R0, =(__stack_chk_guard_ptr - 0x220694)
22068C:  MOV             R8, R2
22068E:  MOV             R10, R1
220690:  ADD             R0, PC; __stack_chk_guard_ptr
220692:  LDR             R0, [R0]; __stack_chk_guard
220694:  LDR             R0, [R0]
220696:  STR             R0, [SP,#0x38+var_20]
220698:  MOVS            R0, #0
22069A:  STR             R0, [SP,#0x38+var_24]
22069C:  CBZ             R1, loc_2206A2
22069E:  STR.W           R5, [R10]
2206A2:  MOV             R0, R5; s
2206A4:  BLX             wcslen
2206A8:  LSLS            R0, R0, #2
2206AA:  ADDS            R4, R0, #1
2206AC:  MOV             R0, R4; unsigned int
2206AE:  BLX             j__Znaj; operator new[](uint)
2206B2:  STRD.W          R5, R0, [SP,#0x38+var_2C]
2206B6:  ADD             R1, SP, #0x38+var_2C
2206B8:  ADD             R3, SP, #0x38+var_24
2206BA:  MOV             R2, R4
2206BC:  MOV             R6, R0
2206BE:  BL              sub_2200EC
2206C2:  ADDS            R0, #1
2206C4:  BEQ             loc_220720
2206C6:  ADD             R1, SP, #0x38+endptr; endptr
2206C8:  MOV             R0, R6; nptr
2206CA:  MOV             R2, R8; base
2206CC:  BLX             strtol
2206D0:  MOV             R8, R0
2206D2:  CMP.W           R10, #0
2206D6:  BEQ             loc_220724
2206D8:  BLX             __errno
2206DC:  MOV             R9, R0
2206DE:  LDR             R0, [SP,#0x38+endptr]
2206E0:  LDR.W           R11, [R9]
2206E4:  SUBS            R4, R0, R6
2206E6:  ADDS            R0, R4, #1; unsigned int
2206E8:  BLX             j__Znaj; operator new[](uint)
2206EC:  MOV             R1, R6; src
2206EE:  MOV             R2, R4; n
2206F0:  STR             R0, [SP,#0x38+var_34]
2206F2:  BLX             strncpy
2206F6:  MOVS            R1, #0
2206F8:  STR             R0, [SP,#0x38+var_38]
2206FA:  STRB            R1, [R0,R4]
2206FC:  ADD             R3, SP, #0x38+var_24
2206FE:  MOV             R1, SP
220700:  MOVS            R0, #0
220702:  MOVS            R2, #0
220704:  BL              sub_21FF8C
220708:  ADDS            R1, R0, #1
22070A:  BEQ             loc_220746
22070C:  ADD.W           R0, R5, R0,LSL#2
220710:  STR.W           R11, [R9]
220714:  STR.W           R0, [R10]
220718:  ADD             R0, SP, #0x38+var_34
22071A:  BL              sub_220A28
22071E:  B               loc_220724
220720:  MOV.W           R8, #0
220724:  ADD             R0, SP, #0x38+var_28
220726:  BL              sub_220A28
22072A:  LDR             R0, [SP,#0x38+var_20]
22072C:  LDR             R1, =(__stack_chk_guard_ptr - 0x220732)
22072E:  ADD             R1, PC; __stack_chk_guard_ptr
220730:  LDR             R1, [R1]; __stack_chk_guard
220732:  LDR             R1, [R1]
220734:  CMP             R1, R0
220736:  ITTTT EQ
220738:  MOVEQ           R0, R8
22073A:  ADDEQ           SP, SP, #0x1C
22073C:  POPEQ.W         {R8-R11}
220740:  POPEQ           {R4-R7,PC}
220742:  BLX             __stack_chk_fail
220746:  BLX             abort
