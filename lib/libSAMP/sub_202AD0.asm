; =========================================================
; Game Engine Function: sub_202AD0
; Address            : 0x202AD0 - 0x202B7E
; =========================================================

202AD0:  PUSH            {R4-R7,LR}
202AD2:  ADD             R7, SP, #0xC
202AD4:  PUSH.W          {R3-R11}
202AD8:  MOV             R5, R0
202ADA:  LDR             R0, =(__stack_chk_guard_ptr - 0x202AE6)
202ADC:  MOV             R9, R1
202ADE:  MOV             R1, #0x7FFFFFFF
202AE2:  ADD             R0, PC; __stack_chk_guard_ptr
202AE4:  MOV             R8, R2
202AE6:  LDR             R0, [R0]; __stack_chk_guard
202AE8:  LDR             R0, [R0]
202AEA:  STR             R0, [SP,#0x30+var_20]
202AEC:  LDRD.W          R11, R10, [R5]
202AF0:  LDR             R0, [R2]
202AF2:  SUBS.W          R0, R0, R11
202AF6:  MOV.W           R4, R0,LSL#1
202AFA:  IT EQ
202AFC:  MOVEQ           R4, #4
202AFE:  CMP             R0, R1
202B00:  IT CS
202B02:  MOVCS.W         R4, #0xFFFFFFFF
202B06:  LDR             R0, =(_ZNSt6__ndk112__do_nothingEPv_ptr - 0x202B0C)
202B08:  ADD             R0, PC; _ZNSt6__ndk112__do_nothingEPv_ptr
202B0A:  LDR             R6, [R0]; std::__do_nothing(void *)
202B0C:  SUBS.W          R0, R10, R6
202B10:  IT NE
202B12:  MOVNE           R0, R11; ptr
202B14:  LDR.W           R1, [R9]
202B18:  STR             R1, [SP,#0x30+var_2C]
202B1A:  MOV             R1, R4; size
202B1C:  BLX             realloc
202B20:  CBZ             R0, loc_202B7A
202B22:  CMP             R10, R6
202B24:  ITT NE
202B26:  MOVNE           R1, #0
202B28:  STRNE           R1, [R5]
202B2A:  STR             R0, [SP,#0x30+var_28]
202B2C:  ADD.W           R10, SP, #0x30+var_28
202B30:  LDR             R0, =(free_ptr - 0x202B38)
202B32:  MOV             R1, R10
202B34:  ADD             R0, PC; free_ptr
202B36:  LDR             R0, [R0]; __imp_free
202B38:  STR             R0, [SP,#0x30+var_24]
202B3A:  MOV             R0, R5
202B3C:  BL              sub_20F316
202B40:  MOV             R0, R10
202B42:  BL              sub_202C06
202B46:  LDR             R0, [SP,#0x30+var_2C]
202B48:  LDR             R1, [R5]
202B4A:  SUB.W           R0, R0, R11
202B4E:  ADD             R0, R1
202B50:  STR.W           R0, [R9]
202B54:  LDR             R1, [R5]
202B56:  BIC.W           R0, R4, #3
202B5A:  ADD             R0, R1
202B5C:  STR.W           R0, [R8]
202B60:  LDR             R0, [SP,#0x30+var_20]
202B62:  LDR             R1, =(__stack_chk_guard_ptr - 0x202B68)
202B64:  ADD             R1, PC; __stack_chk_guard_ptr
202B66:  LDR             R1, [R1]; __stack_chk_guard
202B68:  LDR             R1, [R1]
202B6A:  CMP             R1, R0
202B6C:  ITTT EQ
202B6E:  ADDEQ           SP, SP, #0x14
202B70:  POPEQ.W         {R8-R11}
202B74:  POPEQ           {R4-R7,PC}
202B76:  BLX             __stack_chk_fail
202B7A:  BLX             j__ZSt17__throw_bad_allocv; std::__throw_bad_alloc(void)
