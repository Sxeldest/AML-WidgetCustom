; =========================================================
; Game Engine Function: sub_EAB5C
; Address            : 0xEAB5C - 0xEAC06
; =========================================================

EAB5C:  PUSH            {R4-R7,LR}
EAB5E:  ADD             R7, SP, #0xC
EAB60:  PUSH.W          {R3-R11}
EAB64:  MOV             R5, R0
EAB66:  LDR             R0, =(__stack_chk_guard_ptr - 0xEAB72)
EAB68:  MOV             R9, R1
EAB6A:  MOV             R1, #0x7FFFFFFF
EAB6E:  ADD             R0, PC; __stack_chk_guard_ptr
EAB70:  MOV             R8, R2
EAB72:  LDR             R0, [R0]; __stack_chk_guard
EAB74:  LDR             R0, [R0]
EAB76:  STR             R0, [SP,#0x30+var_20]
EAB78:  LDRD.W          R11, R10, [R5]
EAB7C:  LDR             R0, [R2]
EAB7E:  SUBS.W          R0, R0, R11
EAB82:  MOV.W           R4, R0,LSL#1
EAB86:  IT EQ
EAB88:  MOVEQ           R4, #1
EAB8A:  CMP             R0, R1
EAB8C:  IT CS
EAB8E:  MOVCS.W         R4, #0xFFFFFFFF
EAB92:  LDR             R0, =(_ZNSt6__ndk112__do_nothingEPv_ptr - 0xEAB98)
EAB94:  ADD             R0, PC; _ZNSt6__ndk112__do_nothingEPv_ptr
EAB96:  LDR             R6, [R0]; std::__do_nothing(void *)
EAB98:  SUBS.W          R0, R10, R6
EAB9C:  IT NE
EAB9E:  MOVNE           R0, R11; ptr
EABA0:  LDR.W           R1, [R9]
EABA4:  STR             R1, [SP,#0x30+var_2C]
EABA6:  MOV             R1, R4; size
EABA8:  BLX             realloc
EABAC:  CBZ             R0, loc_EAC02
EABAE:  CMP             R10, R6
EABB0:  ITT NE
EABB2:  MOVNE           R1, #0
EABB4:  STRNE           R1, [R5]
EABB6:  STR             R0, [SP,#0x30+var_28]
EABB8:  ADD.W           R10, SP, #0x30+var_28
EABBC:  LDR             R0, =(free_ptr - 0xEABC4)
EABBE:  MOV             R1, R10
EABC0:  ADD             R0, PC; free_ptr
EABC2:  LDR             R0, [R0]; __imp_free
EABC4:  STR             R0, [SP,#0x30+var_24]
EABC6:  MOV             R0, R5
EABC8:  BL              sub_F74AA
EABCC:  MOV             R0, R10
EABCE:  BL              sub_E7230
EABD2:  LDR             R0, [SP,#0x30+var_2C]
EABD4:  LDR             R1, [R5]
EABD6:  SUB.W           R0, R0, R11
EABDA:  ADD             R0, R1
EABDC:  STR.W           R0, [R9]
EABE0:  LDR             R0, [R5]
EABE2:  ADD             R0, R4
EABE4:  STR.W           R0, [R8]
EABE8:  LDR             R0, [SP,#0x30+var_20]
EABEA:  LDR             R1, =(__stack_chk_guard_ptr - 0xEABF0)
EABEC:  ADD             R1, PC; __stack_chk_guard_ptr
EABEE:  LDR             R1, [R1]; __stack_chk_guard
EABF0:  LDR             R1, [R1]
EABF2:  CMP             R1, R0
EABF4:  ITTT EQ
EABF6:  ADDEQ           SP, SP, #0x14
EABF8:  POPEQ.W         {R8-R11}
EABFC:  POPEQ           {R4-R7,PC}
EABFE:  BLX             __stack_chk_fail
EAC02:  BLX             j__ZSt17__throw_bad_allocv; std::__throw_bad_alloc(void)
