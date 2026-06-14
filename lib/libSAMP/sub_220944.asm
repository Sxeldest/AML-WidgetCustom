; =========================================================
; Game Engine Function: sub_220944
; Address            : 0x220944 - 0x220A1E
; =========================================================

220944:  PUSH            {R4-R7,LR}
220946:  ADD             R7, SP, #0xC
220948:  PUSH.W          {R8-R11}
22094C:  SUB             SP, SP, #0x24
22094E:  MOV             R9, R0
220950:  LDR             R0, =(__stack_chk_guard_ptr - 0x22095A)
220952:  MOV             R8, R3
220954:  MOV             R11, R2
220956:  ADD             R0, PC; __stack_chk_guard_ptr
220958:  MOV             R5, R1
22095A:  LDR             R0, [R0]; __stack_chk_guard
22095C:  LDR             R0, [R0]
22095E:  STR             R0, [SP,#0x40+var_20]
220960:  MOVS            R0, #0
220962:  STR             R0, [SP,#0x40+var_24]
220964:  CBZ             R2, loc_22096A
220966:  STR.W           R5, [R11]
22096A:  MOV             R0, R5; s
22096C:  BLX             wcslen
220970:  LSLS            R0, R0, #2
220972:  ADDS            R4, R0, #1
220974:  MOV             R0, R4; unsigned int
220976:  BLX             j__Znaj; operator new[](uint)
22097A:  STRD.W          R5, R0, [SP,#0x40+var_2C]
22097E:  ADD             R1, SP, #0x40+var_2C
220980:  ADD             R3, SP, #0x40+var_24
220982:  MOV             R2, R4
220984:  MOV             R6, R0
220986:  BL              sub_2200EC
22098A:  ADDS            R0, #1
22098C:  BEQ             loc_2209EC
22098E:  ADD             R1, SP, #0x40+var_30
220990:  MOV             R0, R6
220992:  MOV             R2, R8
220994:  BLX             R9
220996:  MOV             R8, R0
220998:  MOV             R9, R1
22099A:  CMP.W           R11, #0
22099E:  BEQ             loc_2209F4
2209A0:  BLX             __errno
2209A4:  MOV             R10, R0
2209A6:  LDR             R0, [SP,#0x40+var_30]
2209A8:  LDR.W           R1, [R10]
2209AC:  SUBS            R4, R0, R6
2209AE:  STR             R1, [SP,#0x40+var_3C]
2209B0:  ADDS            R0, R4, #1; unsigned int
2209B2:  BLX             j__Znaj; operator new[](uint)
2209B6:  MOV             R1, R6; src
2209B8:  MOV             R2, R4; n
2209BA:  STR             R0, [SP,#0x40+var_34]
2209BC:  BLX             strncpy
2209C0:  MOVS            R1, #0
2209C2:  STR             R0, [SP,#0x40+var_38]
2209C4:  STRB            R1, [R0,R4]
2209C6:  ADD             R1, SP, #0x40+var_38
2209C8:  ADD             R3, SP, #0x40+var_24
2209CA:  MOVS            R0, #0
2209CC:  MOVS            R2, #0
2209CE:  BL              sub_21FF8C
2209D2:  ADDS            R1, R0, #1
2209D4:  BEQ             loc_220A1A
2209D6:  LDR             R1, [SP,#0x40+var_3C]
2209D8:  ADD.W           R0, R5, R0,LSL#2
2209DC:  STR.W           R1, [R10]
2209E0:  STR.W           R0, [R11]
2209E4:  ADD             R0, SP, #0x40+var_34
2209E6:  BL              sub_220A28
2209EA:  B               loc_2209F4
2209EC:  MOV.W           R8, #0
2209F0:  MOV.W           R9, #0
2209F4:  ADD             R0, SP, #0x40+var_28
2209F6:  BL              sub_220A28
2209FA:  LDR             R0, [SP,#0x40+var_20]
2209FC:  LDR             R1, =(__stack_chk_guard_ptr - 0x220A02)
2209FE:  ADD             R1, PC; __stack_chk_guard_ptr
220A00:  LDR             R1, [R1]; __stack_chk_guard
220A02:  LDR             R1, [R1]
220A04:  CMP             R1, R0
220A06:  ITTTT EQ
220A08:  MOVEQ           R0, R8
220A0A:  MOVEQ           R1, R9
220A0C:  ADDEQ           SP, SP, #0x24 ; '$'
220A0E:  POPEQ.W         {R8-R11}
220A12:  IT EQ
220A14:  POPEQ           {R4-R7,PC}
220A16:  BLX             __stack_chk_fail
220A1A:  BLX             abort
