; =========================================================
; Game Engine Function: sub_5E7FB4
; Address            : 0x5E7FB4 - 0x5E8036
; =========================================================

5E7FB4:  PUSH            {R4-R7,LR}
5E7FB6:  ADD             R7, SP, #0xC
5E7FB8:  PUSH.W          {R8}
5E7FBC:  SUB             SP, SP, #0x108
5E7FBE:  MOV             R4, R0
5E7FC0:  LDR             R0, =(__stack_chk_guard_ptr - 0x5E7FCA)
5E7FC2:  MOV             R12, R1
5E7FC4:  CMP             R2, R3
5E7FC6:  ADD             R0, PC; __stack_chk_guard_ptr
5E7FC8:  LDR             R0, [R0]; __stack_chk_guard
5E7FCA:  LDR             R0, [R0]
5E7FCC:  STR             R0, [SP,#0x118+var_14]
5E7FCE:  BLE             loc_5E801C
5E7FD0:  LDR             R0, [R7,#arg_0]
5E7FD2:  ANDS.W          R0, R0, #0x12000
5E7FD6:  BNE             loc_5E801C
5E7FD8:  SUB.W           R8, R2, R3
5E7FDC:  MOV             R0, SP
5E7FDE:  CMP.W           R8, #0x100
5E7FE2:  MOV             R2, R12
5E7FE4:  MOV             R1, R8
5E7FE6:  IT CS
5E7FE8:  MOVCS.W         R1, #0x100
5E7FEC:  BLX.W           j___aeabi_memset8_1
5E7FF0:  CMP.W           R8, #0x100
5E7FF4:  BCC             loc_5E8012
5E7FF6:  MOV             R6, SP
5E7FF8:  MOV             R5, R8
5E7FFA:  MOV             R0, R4; int
5E7FFC:  MOV             R1, R6; ptr
5E7FFE:  MOV.W           R2, #0x100; n
5E8002:  BL              sub_5E8076
5E8006:  SUB.W           R5, R5, #0x100
5E800A:  CMP             R5, #0xFF
5E800C:  BHI             loc_5E7FFA
5E800E:  UXTB.W          R8, R8
5E8012:  MOV             R1, SP; ptr
5E8014:  MOV             R0, R4; int
5E8016:  MOV             R2, R8; n
5E8018:  BL              sub_5E8076
5E801C:  LDR             R0, =(__stack_chk_guard_ptr - 0x5E8024)
5E801E:  LDR             R1, [SP,#0x118+var_14]
5E8020:  ADD             R0, PC; __stack_chk_guard_ptr
5E8022:  LDR             R0, [R0]; __stack_chk_guard
5E8024:  LDR             R0, [R0]
5E8026:  SUBS            R0, R0, R1
5E8028:  ITTT EQ
5E802A:  ADDEQ           SP, SP, #0x108
5E802C:  POPEQ.W         {R8}
5E8030:  POPEQ           {R4-R7,PC}
5E8032:  BLX.W           __stack_chk_fail
