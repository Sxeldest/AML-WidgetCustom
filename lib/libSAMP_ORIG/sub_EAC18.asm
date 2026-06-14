; =========================================================
; Game Engine Function: sub_EAC18
; Address            : 0xEAC18 - 0xEACC6
; =========================================================

EAC18:  PUSH            {R4-R7,LR}
EAC1A:  ADD             R7, SP, #0xC
EAC1C:  PUSH.W          {R3-R11}
EAC20:  MOV             R5, R0
EAC22:  LDR             R0, =(__stack_chk_guard_ptr - 0xEAC2E)
EAC24:  MOV             R9, R1
EAC26:  MOV             R1, #0x7FFFFFFF
EAC2A:  ADD             R0, PC; __stack_chk_guard_ptr
EAC2C:  MOV             R8, R2
EAC2E:  LDR             R0, [R0]; __stack_chk_guard
EAC30:  LDR             R0, [R0]
EAC32:  STR             R0, [SP,#0x30+var_20]
EAC34:  LDRD.W          R11, R10, [R5]
EAC38:  LDR             R0, [R2]
EAC3A:  SUBS.W          R0, R0, R11
EAC3E:  MOV.W           R4, R0,LSL#1
EAC42:  IT EQ
EAC44:  MOVEQ           R4, #4
EAC46:  CMP             R0, R1
EAC48:  IT CS
EAC4A:  MOVCS.W         R4, #0xFFFFFFFF
EAC4E:  LDR             R0, =(_ZNSt6__ndk112__do_nothingEPv_ptr - 0xEAC54)
EAC50:  ADD             R0, PC; _ZNSt6__ndk112__do_nothingEPv_ptr
EAC52:  LDR             R6, [R0]; std::__do_nothing(void *)
EAC54:  SUBS.W          R0, R10, R6
EAC58:  IT NE
EAC5A:  MOVNE           R0, R11; ptr
EAC5C:  LDR.W           R1, [R9]
EAC60:  STR             R1, [SP,#0x30+var_2C]
EAC62:  MOV             R1, R4; size
EAC64:  BLX             realloc
EAC68:  CBZ             R0, loc_EACC2
EAC6A:  CMP             R10, R6
EAC6C:  ITT NE
EAC6E:  MOVNE           R1, #0
EAC70:  STRNE           R1, [R5]
EAC72:  STR             R0, [SP,#0x30+var_28]
EAC74:  ADD.W           R10, SP, #0x30+var_28
EAC78:  LDR             R0, =(free_ptr - 0xEAC80)
EAC7A:  MOV             R1, R10
EAC7C:  ADD             R0, PC; free_ptr
EAC7E:  LDR             R0, [R0]; __imp_free
EAC80:  STR             R0, [SP,#0x30+var_24]
EAC82:  MOV             R0, R5
EAC84:  BL              sub_F74C6
EAC88:  MOV             R0, R10
EAC8A:  BL              sub_EAD4E
EAC8E:  LDR             R0, [SP,#0x30+var_2C]
EAC90:  LDR             R1, [R5]
EAC92:  SUB.W           R0, R0, R11
EAC96:  ADD             R0, R1
EAC98:  STR.W           R0, [R9]
EAC9C:  LDR             R1, [R5]
EAC9E:  BIC.W           R0, R4, #3
EACA2:  ADD             R0, R1
EACA4:  STR.W           R0, [R8]
EACA8:  LDR             R0, [SP,#0x30+var_20]
EACAA:  LDR             R1, =(__stack_chk_guard_ptr - 0xEACB0)
EACAC:  ADD             R1, PC; __stack_chk_guard_ptr
EACAE:  LDR             R1, [R1]; __stack_chk_guard
EACB0:  LDR             R1, [R1]
EACB2:  CMP             R1, R0
EACB4:  ITTT EQ
EACB6:  ADDEQ           SP, SP, #0x14
EACB8:  POPEQ.W         {R8-R11}
EACBC:  POPEQ           {R4-R7,PC}
EACBE:  BLX             __stack_chk_fail
EACC2:  BLX             j__ZSt17__throw_bad_allocv; std::__throw_bad_alloc(void)
