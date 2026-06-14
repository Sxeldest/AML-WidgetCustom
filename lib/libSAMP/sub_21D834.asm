; =========================================================
; Game Engine Function: sub_21D834
; Address            : 0x21D834 - 0x21D8FC
; =========================================================

21D834:  PUSH            {R4-R7,LR}
21D836:  ADD             R7, SP, #0xC
21D838:  PUSH.W          {R8}
21D83C:  SUB             SP, SP, #0x10
21D83E:  MOV             R8, R0
21D840:  LDR             R0, =(__stack_chk_guard_ptr - 0x21D846)
21D842:  ADD             R0, PC; __stack_chk_guard_ptr
21D844:  LDR             R0, [R0]; __stack_chk_guard
21D846:  LDR             R0, [R0]
21D848:  STR             R0, [SP,#0x20+var_14]
21D84A:  LDRB.W          R0, [R8,#0x10]
21D84E:  CMP             R0, #0
21D850:  BNE             loc_21D8E2
21D852:  MOVS            R0, #1
21D854:  MOV             R5, R1
21D856:  STRB.W          R0, [R8,#0x10]
21D85A:  ADD             R0, SP, #0x20+var_1C
21D85C:  MOV             R1, R8
21D85E:  MOV             R2, R5
21D860:  BL              sub_21D9BC
21D864:  LDR             R6, [SP,#0x20+var_18]
21D866:  LDR             R0, [R6]
21D868:  LDR             R2, [R0,#0x10]
21D86A:  MOV             R0, R6
21D86C:  MOV             R1, R5
21D86E:  BLX             R2
21D870:  MOV             R0, R6
21D872:  MOV             R1, R5
21D874:  BL              sub_217AF6
21D878:  CBZ             R0, loc_21D890
21D87A:  LDR             R4, =(asc_84C32 - 0x21D882); " " ...
21D87C:  MOVS            R1, #2; size_t
21D87E:  ADD             R4, PC; " "
21D880:  MOV             R0, R4; char *
21D882:  BLX             __strlen_chk
21D886:  ADDS            R2, R4, R0
21D888:  MOV             R0, R5
21D88A:  MOV             R1, R4
21D88C:  BL              sub_216F98
21D890:  MOV             R0, R6
21D892:  MOV             R1, R5
21D894:  BL              sub_217AF6
21D898:  CBNZ            R0, loc_21D8A4
21D89A:  MOV             R0, R6
21D89C:  MOV             R1, R5
21D89E:  BL              sub_217B0A
21D8A2:  CBZ             R0, loc_21D8BA
21D8A4:  LDR             R4, =(aQjk+6 - 0x21D8AC); "(" ...
21D8A6:  MOVS            R1, #2; size_t
21D8A8:  ADD             R4, PC; "("
21D8AA:  MOV             R0, R4; char *
21D8AC:  BLX             __strlen_chk
21D8B0:  ADDS            R2, R4, R0
21D8B2:  MOV             R0, R5
21D8B4:  MOV             R1, R4
21D8B6:  BL              sub_216F98
21D8BA:  LDR             R0, [SP,#0x20+var_1C]
21D8BC:  LDR             R1, =(asc_8F736 - 0x21D8C6); "&" ...
21D8BE:  LDR             R6, =(asc_8F0DA - 0x21D8C8); "&&" ...
21D8C0:  CMP             R0, #0
21D8C2:  ADD             R1, PC; "&"
21D8C4:  ADD             R6, PC; "&&"
21D8C6:  IT EQ
21D8C8:  MOVEQ           R6, R1
21D8CA:  MOV             R0, R6; char *
21D8CC:  MOVS            R1, #3; size_t
21D8CE:  BLX             __strlen_chk
21D8D2:  ADDS            R2, R6, R0
21D8D4:  MOV             R0, R5
21D8D6:  MOV             R1, R6
21D8D8:  BL              sub_216F98
21D8DC:  MOVS            R0, #0
21D8DE:  STRB.W          R0, [R8,#0x10]
21D8E2:  LDR             R0, [SP,#0x20+var_14]
21D8E4:  LDR             R1, =(__stack_chk_guard_ptr - 0x21D8EA)
21D8E6:  ADD             R1, PC; __stack_chk_guard_ptr
21D8E8:  LDR             R1, [R1]; __stack_chk_guard
21D8EA:  LDR             R1, [R1]
21D8EC:  CMP             R1, R0
21D8EE:  ITTT EQ
21D8F0:  ADDEQ           SP, SP, #0x10
21D8F2:  POPEQ.W         {R8}
21D8F6:  POPEQ           {R4-R7,PC}
21D8F8:  BLX             __stack_chk_fail
