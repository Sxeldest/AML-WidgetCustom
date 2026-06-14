; =========================================================
; Game Engine Function: sub_21EAE0
; Address            : 0x21EAE0 - 0x21EB46
; =========================================================

21EAE0:  PUSH            {R4-R7,LR}
21EAE2:  ADD             R7, SP, #0xC
21EAE4:  PUSH.W          {R6-R10}
21EAE8:  LDR             R1, =(__stack_chk_guard_ptr - 0x21EAEE)
21EAEA:  ADD             R1, PC; __stack_chk_guard_ptr
21EAEC:  LDR             R1, [R1]; __stack_chk_guard
21EAEE:  LDR             R1, [R1]
21EAF0:  STR             R1, [SP,#0x20+var_1C]
21EAF2:  CBZ             R2, loc_21EB3E
21EAF4:  MVNS            R0, R0
21EAF6:  LDR.W           R8, [R7,#arg_0]
21EAFA:  ADD.W           R4, R2, R0,LSL#2
21EAFE:  MOV             R10, R3
21EB00:  MOV             R9, SP
21EB02:  MOV             R6, R4
21EB04:  LDR             R5, [R6]
21EB06:  CBZ             R5, loc_21EB20
21EB08:  LDR             R0, [R4,R5]
21EB0A:  MOV             R2, R9
21EB0C:  STR.W           R8, [SP,#0x20+var_20]
21EB10:  LDR             R1, [R0]
21EB12:  LDR             R3, [R1,#0x10]
21EB14:  MOV             R1, R10
21EB16:  BLX             R3
21EB18:  ADDS            R4, #4
21EB1A:  ADDS            R6, #4
21EB1C:  CMP             R0, #0
21EB1E:  BEQ             loc_21EB04
21EB20:  LDR             R0, [SP,#0x20+var_1C]
21EB22:  LDR             R1, =(__stack_chk_guard_ptr - 0x21EB28)
21EB24:  ADD             R1, PC; __stack_chk_guard_ptr
21EB26:  LDR             R1, [R1]; __stack_chk_guard
21EB28:  LDR             R1, [R1]
21EB2A:  CMP             R1, R0
21EB2C:  ITTTT EQ
21EB2E:  CLZEQ.W         R0, R5
21EB32:  LSREQ           R0, R0, #5
21EB34:  POPEQ.W         {R2,R3,R8-R10}
21EB38:  POPEQ           {R4-R7,PC}
21EB3A:  BLX             __stack_chk_fail
21EB3E:  LDR             R1, [R7,#arg_4]; void *
21EB40:  MOVS            R0, #0; int
21EB42:  BL              sub_21E854
