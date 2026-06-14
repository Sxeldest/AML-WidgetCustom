; =========================================================
; Game Engine Function: sub_214F74
; Address            : 0x214F74 - 0x214FEC
; =========================================================

214F74:  PUSH            {R4-R7,LR}
214F76:  ADD             R7, SP, #0xC
214F78:  PUSH.W          {R11}
214F7C:  SUB             SP, SP, #0x18
214F7E:  MOV             R4, R0
214F80:  LDR             R0, =(__stack_chk_guard_ptr - 0x214F88)
214F82:  MOV             R5, R1
214F84:  ADD             R0, PC; __stack_chk_guard_ptr
214F86:  LDR             R0, [R0]; __stack_chk_guard
214F88:  LDR             R0, [R0]
214F8A:  STR             R0, [SP,#0x28+var_14]
214F8C:  LDRD.W          R0, R1, [R4]
214F90:  SUBS            R0, R1, R0
214F92:  MOVS            R1, #1
214F94:  ADD.W           R1, R1, R0,ASR#3
214F98:  MOV             R0, R4
214F9A:  BL              sub_215000
214F9E:  MOV             R1, R0
214FA0:  LDRD.W          R0, R2, [R4]
214FA4:  ADD.W           R3, R4, #8
214FA8:  MOV             R6, SP
214FAA:  SUBS            R0, R2, R0
214FAC:  ASRS            R2, R0, #3
214FAE:  MOV             R0, R6
214FB0:  BL              sub_215030
214FB4:  LDR             R2, [SP,#0x28+var_20]
214FB6:  LDRD.W          R0, R1, [R5]
214FBA:  STRD.W          R0, R1, [R2]
214FBE:  LDR             R0, [SP,#0x28+var_20]
214FC0:  ADDS            R0, #8
214FC2:  STR             R0, [SP,#0x28+var_20]
214FC4:  MOV             R0, R4
214FC6:  MOV             R1, R6
214FC8:  BL              sub_215064
214FCC:  MOV             R0, SP
214FCE:  BL              sub_215094
214FD2:  LDR             R0, [SP,#0x28+var_14]
214FD4:  LDR             R1, =(__stack_chk_guard_ptr - 0x214FDA)
214FD6:  ADD             R1, PC; __stack_chk_guard_ptr
214FD8:  LDR             R1, [R1]; __stack_chk_guard
214FDA:  LDR             R1, [R1]
214FDC:  CMP             R1, R0
214FDE:  ITTT EQ
214FE0:  ADDEQ           SP, SP, #0x18
214FE2:  POPEQ.W         {R11}
214FE6:  POPEQ           {R4-R7,PC}
214FE8:  BLX             __stack_chk_fail
