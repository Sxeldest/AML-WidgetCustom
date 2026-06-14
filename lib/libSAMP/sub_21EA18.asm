; =========================================================
; Game Engine Function: sub_21EA18
; Address            : 0x21EA18 - 0x21EAB4
; =========================================================

21EA18:  PUSH            {R2-R5,R7,LR}
21EA1A:  ADD             R7, SP, #0x10
21EA1C:  MOV             R4, R0
21EA1E:  LDR             R0, =(__stack_chk_guard_ptr - 0x21EA26)
21EA20:  CMP             R1, #0xFF
21EA22:  ADD             R0, PC; __stack_chk_guard_ptr
21EA24:  LDR             R0, [R0]; __stack_chk_guard
21EA26:  LDR             R0, [R0]
21EA28:  STR             R0, [SP,#0x10+var_C]
21EA2A:  BEQ             loc_21EA52
21EA2C:  MOV             R5, R1
21EA2E:  LDR             R1, [R4]
21EA30:  AND.W           R0, R5, #0xF
21EA34:  STR             R1, [SP,#0x10+var_10]
21EA36:  CMP             R0, #0xC; switch 13 cases
21EA38:  BHI             def_21EA3A; jumptable 0021EA3A default case, cases 5-8
21EA3A:  TBB.W           [PC,R0]; switch jump
21EA3E:  DCB 7; jump table for switch statement
21EA3F:  DCB 0xF
21EA40:  DCB 0x13
21EA41:  DCB 7
21EA42:  DCB 0xC
21EA43:  DCB 0x39
21EA44:  DCB 0x39
21EA45:  DCB 0x39
21EA46:  DCB 0x39
21EA47:  DCB 0x16
21EA48:  DCB 0x1A
21EA49:  DCB 7
21EA4A:  DCB 0xC
21EA4B:  ALIGN 2
21EA4C:  LDR.W           R0, [R1],#4; jumptable 0021EA3A cases 0,3,11
21EA50:  B               loc_21EA76
21EA52:  MOVS            R0, #0
21EA54:  B               loc_21EA98
21EA56:  LDR.W           R0, [R1],#8; jumptable 0021EA3A cases 4,12
21EA5A:  B               loc_21EA76
21EA5C:  MOV             R0, SP; jumptable 0021EA3A case 1
21EA5E:  BL              sub_21EABC
21EA62:  B               loc_21EA78
21EA64:  LDRH.W          R0, [R1],#2; jumptable 0021EA3A case 2
21EA68:  B               loc_21EA76
21EA6A:  MOV             R0, SP; jumptable 0021EA3A case 9
21EA6C:  BL              sub_21EB50
21EA70:  B               loc_21EA78
21EA72:  LDRSH.W         R0, [R1],#2; jumptable 0021EA3A case 10
21EA76:  STR             R1, [SP,#0x10+var_10]
21EA78:  UBFX.W          R1, R5, #4, #3
21EA7C:  CBZ             R1, loc_21EA88
21EA7E:  CMP             R1, #1
21EA80:  BNE             loc_21EAAC
21EA82:  CBZ             R0, loc_21EA92
21EA84:  LDR             R1, [R4]
21EA86:  ADD             R0, R1
21EA88:  CBZ             R0, loc_21EA92
21EA8A:  LSLS            R1, R5, #0x18
21EA8C:  IT MI
21EA8E:  LDRMI           R0, [R0]
21EA90:  B               loc_21EA94
21EA92:  MOVS            R0, #0
21EA94:  LDR             R1, [SP,#0x10+var_10]
21EA96:  STR             R1, [R4]
21EA98:  LDR             R1, [SP,#0x10+var_C]
21EA9A:  LDR             R2, =(__stack_chk_guard_ptr - 0x21EAA0)
21EA9C:  ADD             R2, PC; __stack_chk_guard_ptr
21EA9E:  LDR             R2, [R2]; __stack_chk_guard
21EAA0:  LDR             R2, [R2]
21EAA2:  CMP             R2, R1
21EAA4:  IT EQ
21EAA6:  POPEQ           {R2-R5,R7,PC}
21EAA8:  BLX             __stack_chk_fail
21EAAC:  BLX             abort
21EAB0:  BLX             abort; jumptable 0021EA3A default case, cases 5-8
