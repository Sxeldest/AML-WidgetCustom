; =========================================================
; Game Engine Function: sub_219FB0
; Address            : 0x219FB0 - 0x21A028
; =========================================================

219FB0:  PUSH            {R4-R7,LR}
219FB2:  ADD             R7, SP, #0xC
219FB4:  PUSH.W          {R4-R9,R11}
219FB8:  MOV             R6, R0
219FBA:  LDR             R0, =(__stack_chk_guard_ptr - 0x219FC4)
219FBC:  MOV             R8, R2
219FBE:  MOV             R9, R1
219FC0:  ADD             R0, PC; __stack_chk_guard_ptr
219FC2:  MOV             R1, R6
219FC4:  MOVS            R2, #1
219FC6:  LDR             R0, [R0]; __stack_chk_guard
219FC8:  LDR             R0, [R0]
219FCA:  STR             R0, [SP,#0x28+var_1C]
219FCC:  ADD             R0, SP, #0x28+var_24
219FCE:  BL              sub_215BB4
219FD2:  LDRD.W          R4, R5, [SP,#0x28+var_24]
219FD6:  CMP             R4, R5
219FD8:  ITT NE
219FDA:  LDRDNE.W        R0, R1, [R6]
219FDE:  CMPNE           R0, R1
219FE0:  BEQ             loc_21A00C
219FE2:  LDRB            R1, [R0]
219FE4:  CMP             R1, #0x45 ; 'E'
219FE6:  BNE             loc_21A00C
219FE8:  ADDS            R0, #1
219FEA:  STR             R0, [R6]
219FEC:  ADD.W           R0, R6, #0x198
219FF0:  MOVS            R1, #0x18
219FF2:  BL              sub_216EF0
219FF6:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle14IntegerLiteralE - 0x219FFE); `vtable for'`anonymous namespace'::itanium_demangle::IntegerLiteral ...
219FF8:  LDR             R1, =0x1010145
219FFA:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::IntegerLiteral
219FFC:  STRD.W          R9, R8, [R0,#8]
21A000:  ADDS            R2, #8
21A002:  STRD.W          R4, R5, [R0,#0x10]
21A006:  STRD.W          R2, R1, [R0]
21A00A:  B               loc_21A00E
21A00C:  MOVS            R0, #0
21A00E:  LDR             R1, [SP,#0x28+var_1C]
21A010:  LDR             R2, =(__stack_chk_guard_ptr - 0x21A016)
21A012:  ADD             R2, PC; __stack_chk_guard_ptr
21A014:  LDR             R2, [R2]; __stack_chk_guard
21A016:  LDR             R2, [R2]
21A018:  CMP             R2, R1
21A01A:  ITTT EQ
21A01C:  ADDEQ           SP, SP, #0x10
21A01E:  POPEQ.W         {R8,R9,R11}
21A022:  POPEQ           {R4-R7,PC}
21A024:  BLX             __stack_chk_fail
