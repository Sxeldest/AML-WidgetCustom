; =========================================================
; Game Engine Function: sub_19DB94
; Address            : 0x19DB94 - 0x19DC70
; =========================================================

19DB94:  PUSH            {R4-R7,LR}
19DB96:  ADD             R7, SP, #0xC
19DB98:  PUSH.W          {R8-R11}
19DB9C:  SUB             SP, SP, #0xC
19DB9E:  LDR             R6, =(__stack_chk_guard_ptr - 0x19DBA8)
19DBA0:  MUL.W           R5, R1, R2
19DBA4:  ADD             R6, PC; __stack_chk_guard_ptr
19DBA6:  LDR             R6, [R6]; __stack_chk_guard
19DBA8:  LDR             R6, [R6]
19DBAA:  STR.W           R6, [R7,#var_24]
19DBAE:  MOVS            R6, #7
19DBB0:  ADD.W           R6, R6, R5,LSL#1
19DBB4:  BIC.W           R6, R6, #7
19DBB8:  SUB.W           LR, SP, R6
19DBBC:  LSLS            R6, R5, #1
19DBBE:  STR.W           R6, [R7,#n]
19DBC2:  MOV             SP, LR
19DBC4:  CBZ             R3, loc_19DC0E
19DBC6:  CMP             R2, #1
19DBC8:  IT GE
19DBCA:  CMPGE           R1, #1
19DBCC:  BLT             loc_19DC46
19DBCE:  LDR             R3, =(unk_C27A8 - 0x19DBE0)
19DBD0:  MOV.W           R12, R2,LSL#1
19DBD4:  MOV.W           R9, R1,LSL#1
19DBD8:  MOV.W           R11, #0
19DBDC:  ADD             R3, PC; unk_C27A8
19DBDE:  MOV             R10, R0
19DBE0:  ADD.W           R3, R3, R2,LSL#2
19DBE4:  SUB.W           R8, R3, #8
19DBE8:  LDR.W           R3, [R8,R11,LSL#2]
19DBEC:  MOV             R6, R1
19DBEE:  MLA.W           R5, R9, R3, LR
19DBF2:  MOV             R3, R10
19DBF4:  LDRH            R4, [R3]
19DBF6:  ADD             R3, R12
19DBF8:  STRH.W          R4, [R5],#2
19DBFC:  SUBS            R6, #1
19DBFE:  BNE             loc_19DBF4
19DC00:  ADD.W           R11, R11, #1
19DC04:  ADD.W           R10, R10, #2
19DC08:  CMP             R11, R2
19DC0A:  BNE             loc_19DBE8
19DC0C:  B               loc_19DC46
19DC0E:  CMP             R2, #1
19DC10:  IT GE
19DC12:  CMPGE           R1, #1
19DC14:  BLT             loc_19DC46
19DC16:  LSLS            R3, R2, #1
19DC18:  MOV.W           R8, R1,LSL#1
19DC1C:  MOV.W           R9, #0
19DC20:  MOV             R10, R0
19DC22:  MOV             R11, LR
19DC24:  MOV             R6, R10
19DC26:  MOV             R4, R11
19DC28:  MOV             R5, R1
19DC2A:  LDRH.W          R12, [R6]
19DC2E:  ADD             R6, R3
19DC30:  STRH.W          R12, [R4],#2
19DC34:  SUBS            R5, #1
19DC36:  BNE             loc_19DC2A
19DC38:  ADD.W           R9, R9, #1
19DC3C:  ADD             R11, R8
19DC3E:  ADD.W           R10, R10, #2
19DC42:  CMP             R9, R2
19DC44:  BNE             loc_19DC24
19DC46:  LDR.W           R2, [R7,#n]; n
19DC4A:  MOV             R1, LR; src
19DC4C:  BLX             j_memcpy
19DC50:  LDR             R0, =(__stack_chk_guard_ptr - 0x19DC5A)
19DC52:  LDR.W           R1, [R7,#var_24]
19DC56:  ADD             R0, PC; __stack_chk_guard_ptr
19DC58:  LDR             R0, [R0]; __stack_chk_guard
19DC5A:  LDR             R0, [R0]
19DC5C:  SUBS            R0, R0, R1
19DC5E:  ITTTT EQ
19DC60:  SUBEQ.W         R4, R7, #-var_1C
19DC64:  MOVEQ           SP, R4
19DC66:  POPEQ.W         {R8-R11}
19DC6A:  POPEQ           {R4-R7,PC}
19DC6C:  BLX             __stack_chk_fail
