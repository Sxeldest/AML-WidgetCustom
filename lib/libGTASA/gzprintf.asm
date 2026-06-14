; =========================================================
; Game Engine Function: gzprintf
; Address            : 0x20CD98 - 0x20CE08
; =========================================================

20CD98:  SUB             SP, SP, #8
20CD9A:  PUSH            {R4-R7,LR}
20CD9C:  ADD             R7, SP, #0xC
20CD9E:  PUSH.W          {R8}
20CDA2:  SUB.W           SP, SP, #0x1000
20CDA6:  SUB             SP, SP, #8
20CDA8:  MOV             R4, R0
20CDAA:  LDR             R0, =(__stack_chk_guard_ptr - 0x20CDB4)
20CDAC:  STR             R3, [R7,#var_sC]
20CDAE:  ADD             R5, SP, #0x1018+var_1014
20CDB0:  ADD             R0, PC; __stack_chk_guard_ptr
20CDB2:  LDR             R0, [R0]; __stack_chk_guard
20CDB4:  LDR             R0, [R0]
20CDB6:  STR             R2, [R7,#var_s8]
20CDB8:  ADD.W           R2, R7, #8
20CDBC:  STR.W           R0, [R7,#var_14]
20CDC0:  MOV             R0, R5
20CDC2:  STR             R2, [SP,#0x1018+var_1018]
20CDC4:  BL              sub_5E6C0C
20CDC8:  MOV             R0, R5; char *
20CDCA:  BLX             strlen
20CDCE:  MOV             R2, R0
20CDD0:  CMP             R2, #1
20CDD2:  BLT             loc_20CDDE
20CDD4:  ADD             R1, SP, #0x1018+var_1014
20CDD6:  MOV             R0, R4
20CDD8:  BLX             j_gzwrite
20CDDC:  B               loc_20CDE0
20CDDE:  MOVS            R0, #0
20CDE0:  LDR             R1, =(__stack_chk_guard_ptr - 0x20CDEA)
20CDE2:  LDR.W           R2, [R7,#var_14]
20CDE6:  ADD             R1, PC; __stack_chk_guard_ptr
20CDE8:  LDR             R1, [R1]; __stack_chk_guard
20CDEA:  LDR             R1, [R1]
20CDEC:  SUBS            R1, R1, R2
20CDEE:  ITTTT EQ
20CDF0:  ADDEQ.W         SP, SP, #0x1000
20CDF4:  ADDEQ           SP, SP, #8
20CDF6:  POPEQ.W         {R8}
20CDFA:  POPEQ.W         {R4-R7,LR}
20CDFE:  ITT EQ
20CE00:  ADDEQ           SP, SP, #8
20CE02:  BXEQ            LR
20CE04:  BLX             __stack_chk_fail
