; =========================================================
; Game Engine Function: png_destroy_png_struct
; Address            : 0x1F3F4C - 0x1F3FAA
; =========================================================

1F3F4C:  PUSH            {R4,R6,R7,LR}
1F3F4E:  ADD             R7, SP, #8
1F3F50:  SUB.W           SP, SP, #0x3D0
1F3F54:  MOV             R4, R0
1F3F56:  LDR             R0, =(__stack_chk_guard_ptr - 0x1F3F5E)
1F3F58:  CMP             R4, #0
1F3F5A:  ADD             R0, PC; __stack_chk_guard_ptr
1F3F5C:  LDR             R0, [R0]; __stack_chk_guard
1F3F5E:  LDR             R0, [R0]
1F3F60:  STR             R0, [SP,#0x3D8+var_C]
1F3F62:  BEQ             loc_1F3F92
1F3F64:  MOV             R0, SP; void *
1F3F66:  MOV             R1, R4; void *
1F3F68:  MOV.W           R2, #0x3CC; size_t
1F3F6C:  BLX             memcpy_0
1F3F70:  MOV             R0, R4
1F3F72:  MOV.W           R1, #0x3CC
1F3F76:  BLX             j___aeabi_memclr8_0
1F3F7A:  LDR             R2, [SP,#0x3D8+var_BC]
1F3F7C:  CBZ             R2, loc_1F3F86
1F3F7E:  MOV             R0, SP
1F3F80:  MOV             R1, R4
1F3F82:  BLX             R2
1F3F84:  B               loc_1F3F8C
1F3F86:  MOV             R0, R4; p
1F3F88:  BLX             free
1F3F8C:  MOV             R0, SP
1F3F8E:  BLX             j_png_free_jmpbuf
1F3F92:  LDR             R0, =(__stack_chk_guard_ptr - 0x1F3F9A)
1F3F94:  LDR             R1, [SP,#0x3D8+var_C]
1F3F96:  ADD             R0, PC; __stack_chk_guard_ptr
1F3F98:  LDR             R0, [R0]; __stack_chk_guard
1F3F9A:  LDR             R0, [R0]
1F3F9C:  SUBS            R0, R0, R1
1F3F9E:  ITT EQ
1F3FA0:  ADDEQ.W         SP, SP, #0x3D0
1F3FA4:  POPEQ           {R4,R6,R7,PC}
1F3FA6:  BLX             __stack_chk_fail
