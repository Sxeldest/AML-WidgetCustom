; =========================================================
; Game Engine Function: sub_207CB4
; Address            : 0x207CB4 - 0x207D0C
; =========================================================

207CB4:  PUSH            {R4-R7,LR}
207CB6:  ADD             R7, SP, #0xC
207CB8:  PUSH.W          {R8}
207CBC:  SUB             SP, SP, #0x10
207CBE:  MOV             R4, R0
207CC0:  LDR             R0, =(__stack_chk_guard_ptr - 0x207CCA)
207CC2:  MOV             R8, R3
207CC4:  MOV             R5, R2
207CC6:  ADD             R0, PC; __stack_chk_guard_ptr
207CC8:  MOV             R6, R1
207CCA:  LDR             R0, [R0]; __stack_chk_guard
207CCC:  LDR             R0, [R0]
207CCE:  STR             R0, [SP,#0x20+var_14]
207CD0:  LDR             R0, [R7,#arg_4]
207CD2:  BL              sub_21FCA0
207CD6:  STR             R0, [SP,#0x20+var_18]
207CD8:  LDR             R0, [R7,#arg_0]
207CDA:  MOV             R1, R6
207CDC:  STR             R0, [SP,#0x20+var_20]
207CDE:  MOV             R0, R4
207CE0:  MOV             R2, R5
207CE2:  MOV             R3, R8
207CE4:  BL              sub_21FFB4
207CE8:  MOV             R4, R0
207CEA:  ADD             R0, SP, #0x20+var_18
207CEC:  BL              sub_20E0DC
207CF0:  LDR             R0, [SP,#0x20+var_14]
207CF2:  LDR             R1, =(__stack_chk_guard_ptr - 0x207CF8)
207CF4:  ADD             R1, PC; __stack_chk_guard_ptr
207CF6:  LDR             R1, [R1]; __stack_chk_guard
207CF8:  LDR             R1, [R1]
207CFA:  CMP             R1, R0
207CFC:  ITTTT EQ
207CFE:  MOVEQ           R0, R4
207D00:  ADDEQ           SP, SP, #0x10
207D02:  POPEQ.W         {R8}
207D06:  POPEQ           {R4-R7,PC}
207D08:  BLX             __stack_chk_fail
