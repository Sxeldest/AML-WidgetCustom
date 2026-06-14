; =========================================================
; Game Engine Function: sub_20ED78
; Address            : 0x20ED78 - 0x20EE26
; =========================================================

20ED78:  PUSH            {R4-R7,LR}
20ED7A:  ADD             R7, SP, #0xC
20ED7C:  PUSH.W          {R5-R11}
20ED80:  MOV             R4, R0
20ED82:  LDR             R0, =(__stack_chk_guard_ptr - 0x20ED8C)
20ED84:  MOV             R8, R2
20ED86:  CMP             R4, R1
20ED88:  ADD             R0, PC; __stack_chk_guard_ptr
20ED8A:  LDR             R0, [R0]; __stack_chk_guard
20ED8C:  LDR             R0, [R0]
20ED8E:  STR             R0, [SP,#0x28+var_20]
20ED90:  BEQ             loc_20EDEE
20ED92:  LDRB.W          R10, [R4]
20ED96:  MOV             R9, R3
20ED98:  MOV             R5, R1
20ED9A:  CMP.W           R10, #0x2D ; '-'
20ED9E:  ITT EQ
20EDA0:  ADDEQ           R4, #1
20EDA2:  CMPEQ           R4, R5
20EDA4:  BEQ             loc_20EDEE
20EDA6:  BLX             __errno
20EDAA:  MOV             R6, R0
20EDAC:  LDR.W           R11, [R0]
20EDB0:  MOVS            R0, #0; this
20EDB2:  STR             R0, [R6]
20EDB4:  BLX             j__ZNSt6__ndk16__clocEv; std::__cloc(void)
20EDB8:  ADD             R1, SP, #0x28+var_24
20EDBA:  MOV             R3, R0
20EDBC:  MOV             R0, R4
20EDBE:  MOV             R2, R9
20EDC0:  BL              sub_220340
20EDC4:  MOV             R2, R0
20EDC6:  LDR             R0, [R6]
20EDC8:  CBZ             R0, loc_20EDE4
20EDCA:  LDR             R3, [SP,#0x28+var_24]
20EDCC:  CMP             R3, R5
20EDCE:  BNE             loc_20EDEE
20EDD0:  CMP             R0, #0x22 ; '"'
20EDD2:  BNE             loc_20EE14
20EDD4:  MOVS            R0, #4
20EDD6:  MOV.W           R3, #0xFFFFFFFF
20EDDA:  STR.W           R0, [R8]
20EDDE:  MOV.W           R0, #0xFFFFFFFF
20EDE2:  B               loc_20EDF8
20EDE4:  LDR             R0, [SP,#0x28+var_24]
20EDE6:  STR.W           R11, [R6]
20EDEA:  CMP             R0, R5
20EDEC:  BEQ             loc_20EE14
20EDEE:  MOVS            R0, #4
20EDF0:  MOVS            R3, #0
20EDF2:  STR.W           R0, [R8]
20EDF6:  MOVS            R0, #0
20EDF8:  LDR             R1, [SP,#0x28+var_20]
20EDFA:  LDR             R2, =(__stack_chk_guard_ptr - 0x20EE00)
20EDFC:  ADD             R2, PC; __stack_chk_guard_ptr
20EDFE:  LDR             R2, [R2]; __stack_chk_guard
20EE00:  LDR             R2, [R2]
20EE02:  CMP             R2, R1
20EE04:  ITTTT EQ
20EE06:  MOVEQ           R1, R3
20EE08:  ADDEQ           SP, SP, #0xC
20EE0A:  POPEQ.W         {R8-R11}
20EE0E:  POPEQ           {R4-R7,PC}
20EE10:  BLX             __stack_chk_fail
20EE14:  MOVS            R3, #0
20EE16:  NEGS            R0, R2
20EE18:  SBCS            R3, R1
20EE1A:  CMP.W           R10, #0x2D ; '-'
20EE1E:  ITT NE
20EE20:  MOVNE           R0, R2
20EE22:  MOVNE           R3, R1
20EE24:  B               loc_20EDF8
