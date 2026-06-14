; =========================================================
; Game Engine Function: silk_NLSF_decode
; Address            : 0xB7F80 - 0xB8084
; =========================================================

B7F80:  PUSH            {R4-R7,LR}
B7F82:  ADD             R7, SP, #0xC
B7F84:  PUSH.W          {R8-R11}
B7F88:  SUB             SP, SP, #0x54
B7F8A:  MOV             R11, R0
B7F8C:  LDR             R0, =(__stack_chk_guard_ptr - 0xB7F98)
B7F8E:  MOV             R9, R1
B7F90:  ADD.W           R8, SP, #0x70+var_30
B7F94:  ADD             R0, PC; __stack_chk_guard_ptr
B7F96:  MOV             R4, R2
B7F98:  MOV             R1, R8
B7F9A:  LDR             R0, [R0]; __stack_chk_guard
B7F9C:  LDR             R0, [R0]
B7F9E:  STR             R0, [SP,#0x70+var_20]
B7FA0:  ADD             R0, SP, #0x70+var_50
B7FA2:  LDRSB.W         R3, [R9]
B7FA6:  BLX             j_silk_NLSF_unpack
B7FAA:  MOV             LR, R4
B7FAC:  LDRSH.W         R2, [LR,#2]
B7FB0:  CMP             R2, #0
B7FB2:  BLE             loc_B8006
B7FB4:  LDRSH.W         R1, [LR,#4]
B7FB8:  MOV             R0, SP
B7FBA:  SUB.W           R12, R0, #2
B7FBE:  MOVS            R6, #0
B7FC0:  MOV             R3, R2
B7FC2:  ADD.W           R0, R8, R3
B7FC6:  SXTH            R6, R6
B7FC8:  LDRB.W          R5, [R0,#-1]
B7FCC:  LDRSB.W         R0, [R9,R3]
B7FD0:  SMULBB.W        R6, R6, R5
B7FD4:  SUBS            R5, R3, #1
B7FD6:  CMP             R0, #1
B7FD8:  MOV.W           R4, R0,LSL#10
B7FDC:  MOV.W           R6, R6,ASR#8
B7FE0:  BLT             loc_B7FE6
B7FE2:  SUBS            R4, #0x66 ; 'f'
B7FE4:  B               loc_B7FEE
B7FE6:  CMP             R0, #0
B7FE8:  IT NE
B7FEA:  ORRNE.W         R4, R4, #0x66 ; 'f'
B7FEE:  UXTH            R0, R4
B7FF0:  SMLABT.W        R6, R1, R4, R6
B7FF4:  MULS            R0, R1
B7FF6:  ADD.W           R6, R6, R0,ASR#16
B7FFA:  ADDS            R0, R5, #1
B7FFC:  STRH.W          R6, [R12,R3,LSL#1]
B8000:  CMP             R0, #1
B8002:  MOV             R3, R5
B8004:  BGT             loc_B7FC2
B8006:  CMP             R2, #1
B8008:  BLT             loc_B8060
B800A:  LDRSB.W         R0, [R9]
B800E:  MOV             R10, SP
B8010:  LDRD.W          R3, R5, [LR,#8]
B8014:  MOV.W           R9, #0
B8018:  SMULBB.W        R1, R2, R0
B801C:  SMLABB.W        R6, R2, R0, R3
B8020:  ADD.W           R4, R5, R1,LSL#1
B8024:  MOVW            R5, #0x7FFF
B8028:  LDRSH.W         R0, [R10,R9,LSL#1]
B802C:  MOV             R8, LR
B802E:  LDRSH.W         R1, [R4,R9,LSL#1]
B8032:  LSLS            R0, R0, #0xE
B8034:  BLX             sub_108848
B8038:  LDRB.W          R1, [R6,R9]
B803C:  MOV             LR, R8
B803E:  ADD.W           R0, R0, R1,LSL#7
B8042:  MOVS            R1, #0
B8044:  CMP             R0, #0
B8046:  IT LE
B8048:  MOVLE           R0, R1
B804A:  CMP             R0, R5
B804C:  IT GE
B804E:  MOVGE           R0, R5
B8050:  STRH.W          R0, [R11,R9,LSL#1]
B8054:  ADD.W           R9, R9, #1
B8058:  LDRSH.W         R2, [LR,#2]
B805C:  CMP             R9, R2
B805E:  BLT             loc_B8028
B8060:  LDR.W           R1, [LR,#0x24]
B8064:  MOV             R0, R11
B8066:  BLX             j_silk_NLSF_stabilize
B806A:  LDR             R0, =(__stack_chk_guard_ptr - 0xB8072)
B806C:  LDR             R1, [SP,#0x70+var_20]
B806E:  ADD             R0, PC; __stack_chk_guard_ptr
B8070:  LDR             R0, [R0]; __stack_chk_guard
B8072:  LDR             R0, [R0]
B8074:  SUBS            R0, R0, R1
B8076:  ITTT EQ
B8078:  ADDEQ           SP, SP, #0x54 ; 'T'
B807A:  POPEQ.W         {R8-R11}
B807E:  POPEQ           {R4-R7,PC}
B8080:  BLX             __stack_chk_fail
