; =========================================================
; Game Engine Function: opus_packet_unpad
; Address            : 0xDBAF4 - 0xDBB54
; =========================================================

DBAF4:  PUSH            {R4-R7,LR}
DBAF6:  ADD             R7, SP, #0xC
DBAF8:  PUSH.W          {R11}
DBAFC:  SUB             SP, SP, #0x140
DBAFE:  MOV             R4, R0
DBB00:  LDR             R0, =(__stack_chk_guard_ptr - 0xDBB0A)
DBB02:  MOV             R5, R1
DBB04:  CMP             R5, #1
DBB06:  ADD             R0, PC; __stack_chk_guard_ptr
DBB08:  LDR             R0, [R0]; __stack_chk_guard
DBB0A:  LDR             R0, [R0]
DBB0C:  STR             R0, [SP,#0x150+var_14]
DBB0E:  BLT             loc_DBB36
DBB10:  ADD             R0, SP, #0x150+var_140
DBB12:  MOVS            R6, #0
DBB14:  MOV             R1, R4
DBB16:  MOV             R2, R5
DBB18:  STR             R6, [SP,#0x150+var_13C]
DBB1A:  BLX             j_opus_repacketizer_cat
DBB1E:  CMP             R0, #0
DBB20:  BLT             loc_DBB3A
DBB22:  LDR             R2, [SP,#0x150+var_13C]
DBB24:  ADD             R0, SP, #0x150+var_140
DBB26:  MOVS            R1, #0
DBB28:  MOV             R3, R4
DBB2A:  STRD.W          R5, R6, [SP,#0x150+var_150]
DBB2E:  STR             R6, [SP,#0x150+var_148]
DBB30:  BLX             j_opus_repacketizer_out_range_impl
DBB34:  B               loc_DBB3A
DBB36:  MOV.W           R0, #0xFFFFFFFF
DBB3A:  LDR             R1, =(__stack_chk_guard_ptr - 0xDBB42)
DBB3C:  LDR             R2, [SP,#0x150+var_14]
DBB3E:  ADD             R1, PC; __stack_chk_guard_ptr
DBB40:  LDR             R1, [R1]; __stack_chk_guard
DBB42:  LDR             R1, [R1]
DBB44:  SUBS            R1, R1, R2
DBB46:  ITTT EQ
DBB48:  ADDEQ           SP, SP, #0x140
DBB4A:  POPEQ.W         {R11}
DBB4E:  POPEQ           {R4-R7,PC}
DBB50:  BLX             __stack_chk_fail
