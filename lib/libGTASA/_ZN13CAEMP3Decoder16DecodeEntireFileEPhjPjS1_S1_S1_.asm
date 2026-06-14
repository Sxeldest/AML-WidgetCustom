; =========================================================
; Game Engine Function: _ZN13CAEMP3Decoder16DecodeEntireFileEPhjPjS1_S1_S1_
; Address            : 0x27ED6C - 0x27EE8C
; =========================================================

27ED6C:  PUSH            {R4-R7,LR}
27ED6E:  ADD             R7, SP, #0xC
27ED70:  PUSH.W          {R8-R11}
27ED74:  SUB.W           SP, SP, #0x4000
27ED78:  SUB             SP, SP, #0x24
27ED7A:  MOV             R6, R0
27ED7C:  LDR             R0, =(__stack_chk_guard_ptr - 0x27ED86)
27ED7E:  MOV             R8, R1
27ED80:  MOVS            R1, #0
27ED82:  ADD             R0, PC; __stack_chk_guard_ptr
27ED84:  MOV             R10, R3
27ED86:  MOV             R9, R2
27ED88:  MOVS            R5, #0
27ED8A:  LDR             R0, [R0]; __stack_chk_guard
27ED8C:  LDR             R0, [R0]
27ED8E:  STR.W           R0, [R7,#var_24]
27ED92:  MOVS            R0, #0
27ED94:  BLX             j_mpg123_new
27ED98:  MOVS            R1, #2; int
27ED9A:  MOVS            R2, #0x20 ; ' '; int
27ED9C:  MOV             R11, R0
27ED9E:  STRD.W          R5, R5, [SP,#0x4040+var_4040]; double
27EDA2:  BLX             j_mpg123_param
27EDA6:  MOV             R0, R11
27EDA8:  BLX             j_mpg123_format_all
27EDAC:  MOV             R0, R11
27EDAE:  BLX             j_mpg123_open_feed
27EDB2:  CMP             R0, #0
27EDB4:  BNE             loc_27EE68
27EDB6:  MOV             R0, R11
27EDB8:  MOV             R1, R6
27EDBA:  MOV             R2, R8
27EDBC:  LDR             R5, [R7,#arg_0]
27EDBE:  BLX             j_mpg123_feed
27EDC2:  ADD             R3, SP, #0x4040+var_402C
27EDC4:  MOV             R0, R11
27EDC6:  MOV             R1, R5
27EDC8:  MOV             R2, R10
27EDCA:  BLX             j_mpg123_getformat
27EDCE:  CBZ             R0, loc_27EDD4
27EDD0:  MOVS            R5, #0
27EDD2:  B               loc_27EE68
27EDD4:  ADD.W           R0, R8, R8,LSL#1
27EDD8:  STR.W           R9, [SP,#0x4040+var_4034]
27EDDC:  LSLS            R4, R0, #1
27EDDE:  MOV             R0, R4; byte_count
27EDE0:  BLX             malloc
27EDE4:  ADD             R6, SP, #0x4040+var_4028
27EDE6:  MOV             R5, R0
27EDE8:  MOV.W           R8, #0
27EDEC:  ADD             R3, SP, #0x4040+var_4030
27EDEE:  MOV             R0, R11
27EDF0:  MOV             R1, R6
27EDF2:  MOV.W           R2, #0x4000
27EDF6:  BLX             j_mpg123_read
27EDFA:  LDR.W           R9, [SP,#0x4040+var_4030]
27EDFE:  CMP.W           R9, #0
27EE02:  BEQ             loc_27EE46
27EE04:  ADD.W           R10, R9, R8
27EE08:  CMP             R10, R4
27EE0A:  BLS             loc_27EE30
27EE0C:  ADD.W           R0, R10, R10,LSL#1
27EE10:  LSRS            R4, R0, #1
27EE12:  MOV             R0, R4; byte_count
27EE14:  BLX             malloc
27EE18:  MOV             R1, R5; void *
27EE1A:  MOV             R2, R8; size_t
27EE1C:  MOV             R6, R11
27EE1E:  MOV             R11, R0
27EE20:  BLX             memcpy_1
27EE24:  MOV             R0, R5; p
27EE26:  BLX             free
27EE2A:  MOV             R5, R11
27EE2C:  MOV             R11, R6
27EE2E:  ADD             R6, SP, #0x4040+var_4028
27EE30:  ADD.W           R0, R5, R8; void *
27EE34:  MOV             R1, R6; void *
27EE36:  MOV             R2, R9; size_t
27EE38:  BLX             memcpy_1
27EE3C:  LDR             R0, [SP,#0x4040+var_4030]
27EE3E:  MOV             R8, R10
27EE40:  CMP             R0, #0
27EE42:  BNE             loc_27EDEC
27EE44:  B               loc_27EE48
27EE46:  MOV             R10, R8
27EE48:  MOV             R0, R11
27EE4A:  BLX             j_mpg123_delete
27EE4E:  LDR             R1, [SP,#0x4040+var_4034]
27EE50:  MOV.W           R0, #0x1F4
27EE54:  MUL.W           R0, R10, R0
27EE58:  STR.W           R10, [R1]
27EE5C:  LDR             R1, [R7,#arg_0]
27EE5E:  LDR             R1, [R1]
27EE60:  BLX             __aeabi_uidiv
27EE64:  LDR             R1, [R7,#arg_4]
27EE66:  STR             R0, [R1]
27EE68:  LDR             R0, =(__stack_chk_guard_ptr - 0x27EE72)
27EE6A:  LDR.W           R1, [R7,#var_24]
27EE6E:  ADD             R0, PC; __stack_chk_guard_ptr
27EE70:  LDR             R0, [R0]; __stack_chk_guard
27EE72:  LDR             R0, [R0]
27EE74:  SUBS            R0, R0, R1
27EE76:  ITTTT EQ
27EE78:  MOVEQ           R0, R5
27EE7A:  ADDEQ.W         SP, SP, #0x4000
27EE7E:  ADDEQ           SP, SP, #0x24 ; '$'
27EE80:  POPEQ.W         {R8-R11}
27EE84:  IT EQ
27EE86:  POPEQ           {R4-R7,PC}
27EE88:  BLX             __stack_chk_fail
