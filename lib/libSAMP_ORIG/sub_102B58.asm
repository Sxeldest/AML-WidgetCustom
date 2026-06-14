; =========================================================
; Game Engine Function: sub_102B58
; Address            : 0x102B58 - 0x102BD0
; =========================================================

102B58:  PUSH            {R4-R7,LR}
102B5A:  ADD             R7, SP, #0xC
102B5C:  PUSH.W          {R4-R9,R11}
102B60:  MOV             R6, R0
102B62:  LDR             R0, =(__stack_chk_guard_ptr - 0x102B6C)
102B64:  MOV             R8, R2
102B66:  MOV             R9, R1
102B68:  ADD             R0, PC; __stack_chk_guard_ptr
102B6A:  MOV             R1, R6
102B6C:  MOVS            R2, #1
102B6E:  LDR             R0, [R0]; __stack_chk_guard
102B70:  LDR             R0, [R0]
102B72:  STR             R0, [SP,#0x28+var_1C]
102B74:  ADD             R0, SP, #0x28+var_24
102B76:  BL              sub_FE75C
102B7A:  LDRD.W          R4, R5, [SP,#0x28+var_24]
102B7E:  CMP             R4, R5
102B80:  ITT NE
102B82:  LDRDNE.W        R0, R1, [R6]
102B86:  CMPNE           R0, R1
102B88:  BEQ             loc_102BB4
102B8A:  LDRB            R1, [R0]
102B8C:  CMP             R1, #0x45 ; 'E'
102B8E:  BNE             loc_102BB4
102B90:  ADDS            R0, #1
102B92:  STR             R0, [R6]
102B94:  ADD.W           R0, R6, #0x198
102B98:  MOVS            R1, #0x18
102B9A:  BL              sub_FFA98
102B9E:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle14IntegerLiteralE - 0x102BA6); `vtable for'`anonymous namespace'::itanium_demangle::IntegerLiteral ...
102BA0:  LDR             R1, =0x1010145
102BA2:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::IntegerLiteral
102BA4:  STRD.W          R9, R8, [R0,#8]
102BA8:  ADDS            R2, #8
102BAA:  STRD.W          R4, R5, [R0,#0x10]
102BAE:  STRD.W          R2, R1, [R0]
102BB2:  B               loc_102BB6
102BB4:  MOVS            R0, #0
102BB6:  LDR             R1, [SP,#0x28+var_1C]
102BB8:  LDR             R2, =(__stack_chk_guard_ptr - 0x102BBE)
102BBA:  ADD             R2, PC; __stack_chk_guard_ptr
102BBC:  LDR             R2, [R2]; __stack_chk_guard
102BBE:  LDR             R2, [R2]
102BC0:  CMP             R2, R1
102BC2:  ITTT EQ
102BC4:  ADDEQ           SP, SP, #0x10
102BC6:  POPEQ.W         {R8,R9,R11}
102BCA:  POPEQ           {R4-R7,PC}
102BCC:  BLX             __stack_chk_fail
