; =========================================================
; Game Engine Function: sub_790E0
; Address            : 0x790E0 - 0x7915C
; =========================================================

790E0:  PUSH            {R7,LR}
790E2:  MOV             R7, SP
790E4:  SUB             SP, SP, #0x10
790E6:  LDR             R1, =(byte_116D33 - 0x790F6)
790E8:  MOVW            R3, #0x6E49
790EC:  LDR             R2, =(__stack_chk_guard_ptr - 0x790F8)
790EE:  MOVT            R3, #0x7263
790F2:  ADD             R1, PC; byte_116D33
790F4:  ADD             R2, PC; __stack_chk_guard_ptr
790F6:  LDR             R2, [R2]; __stack_chk_guard
790F8:  LDR             R2, [R2]
790FA:  STR             R2, [SP,#0x18+var_C]
790FC:  LDR             R0, [R0,#4]
790FE:  LDRB            R2, [R1]
79100:  CMP             R2, #0
79102:  ITT NE
79104:  MOVWNE          R3, #0x6544
79108:  MOVTNE          R3, #0x7263
7910C:  LDR             R0, [R0,#0x78]
7910E:  EOR.W           R2, R2, #1
79112:  STRB            R2, [R1]
79114:  MOV             R1, #0x65736165
7911C:  STR.W           R3, [SP,#0x18+var_17]
79120:  LDR             R0, [R0,#0x54]
79122:  STR.W           R1, [SP,#0x18+var_13]
79126:  MOVS            R1, #0
79128:  STRB.W          R1, [SP,#0x18+var_F]
7912C:  MOVS            R1, #0x10
7912E:  STRB.W          R1, [SP,#0x18+var_18]
79132:  MOV             R1, SP
79134:  BL              sub_7D3F4
79138:  LDRB.W          R0, [SP,#0x18+var_18]
7913C:  LSLS            R0, R0, #0x1F
7913E:  ITT NE
79140:  LDRNE           R0, [SP,#0x18+var_13+3]; void *
79142:  BLXNE           j__ZdlPv; operator delete(void *)
79146:  LDR             R0, [SP,#0x18+var_C]
79148:  LDR             R1, =(__stack_chk_guard_ptr - 0x7914E)
7914A:  ADD             R1, PC; __stack_chk_guard_ptr
7914C:  LDR             R1, [R1]; __stack_chk_guard
7914E:  LDR             R1, [R1]
79150:  CMP             R1, R0
79152:  ITT EQ
79154:  ADDEQ           SP, SP, #0x10
79156:  POPEQ           {R7,PC}
79158:  BLX             __stack_chk_fail
