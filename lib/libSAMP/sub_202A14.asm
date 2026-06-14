; =========================================================
; Game Engine Function: sub_202A14
; Address            : 0x202A14 - 0x202ABE
; =========================================================

202A14:  PUSH            {R4-R7,LR}
202A16:  ADD             R7, SP, #0xC
202A18:  PUSH.W          {R3-R11}
202A1C:  MOV             R5, R0
202A1E:  LDR             R0, =(__stack_chk_guard_ptr - 0x202A2A)
202A20:  MOV             R9, R1
202A22:  MOV             R1, #0x7FFFFFFF
202A26:  ADD             R0, PC; __stack_chk_guard_ptr
202A28:  MOV             R8, R2
202A2A:  LDR             R0, [R0]; __stack_chk_guard
202A2C:  LDR             R0, [R0]
202A2E:  STR             R0, [SP,#0x30+var_20]
202A30:  LDRD.W          R11, R10, [R5]
202A34:  LDR             R0, [R2]
202A36:  SUBS.W          R0, R0, R11
202A3A:  MOV.W           R4, R0,LSL#1
202A3E:  IT EQ
202A40:  MOVEQ           R4, #1
202A42:  CMP             R0, R1
202A44:  IT CS
202A46:  MOVCS.W         R4, #0xFFFFFFFF
202A4A:  LDR             R0, =(_ZNSt6__ndk112__do_nothingEPv_ptr - 0x202A50)
202A4C:  ADD             R0, PC; _ZNSt6__ndk112__do_nothingEPv_ptr
202A4E:  LDR             R6, [R0]; std::__do_nothing(void *)
202A50:  SUBS.W          R0, R10, R6
202A54:  IT NE
202A56:  MOVNE           R0, R11; ptr
202A58:  LDR.W           R1, [R9]
202A5C:  STR             R1, [SP,#0x30+var_2C]
202A5E:  MOV             R1, R4; size
202A60:  BLX             realloc
202A64:  CBZ             R0, loc_202ABA
202A66:  CMP             R10, R6
202A68:  ITT NE
202A6A:  MOVNE           R1, #0
202A6C:  STRNE           R1, [R5]
202A6E:  STR             R0, [SP,#0x30+var_28]
202A70:  ADD.W           R10, SP, #0x30+var_28
202A74:  LDR             R0, =(free_ptr - 0x202A7C)
202A76:  MOV             R1, R10
202A78:  ADD             R0, PC; free_ptr
202A7A:  LDR             R0, [R0]; __imp_free
202A7C:  STR             R0, [SP,#0x30+var_24]
202A7E:  MOV             R0, R5
202A80:  BL              sub_20F2FA
202A84:  MOV             R0, R10
202A86:  BL              sub_1EFB88
202A8A:  LDR             R0, [SP,#0x30+var_2C]
202A8C:  LDR             R1, [R5]
202A8E:  SUB.W           R0, R0, R11
202A92:  ADD             R0, R1
202A94:  STR.W           R0, [R9]
202A98:  LDR             R0, [R5]
202A9A:  ADD             R0, R4
202A9C:  STR.W           R0, [R8]
202AA0:  LDR             R0, [SP,#0x30+var_20]
202AA2:  LDR             R1, =(__stack_chk_guard_ptr - 0x202AA8)
202AA4:  ADD             R1, PC; __stack_chk_guard_ptr
202AA6:  LDR             R1, [R1]; __stack_chk_guard
202AA8:  LDR             R1, [R1]
202AAA:  CMP             R1, R0
202AAC:  ITTT EQ
202AAE:  ADDEQ           SP, SP, #0x14
202AB0:  POPEQ.W         {R8-R11}
202AB4:  POPEQ           {R4-R7,PC}
202AB6:  BLX             __stack_chk_fail
202ABA:  BLX             j__ZSt17__throw_bad_allocv; std::__throw_bad_alloc(void)
