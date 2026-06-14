; =========================================================
; Game Engine Function: sub_1EEC64
; Address            : 0x1EEC64 - 0x1EED0C
; =========================================================

1EEC64:  SUB             SP, SP, #8
1EEC66:  PUSH            {R4-R7,LR}
1EEC68:  ADD             R7, SP, #0xC
1EEC6A:  PUSH.W          {R8}
1EEC6E:  SUB             SP, SP, #0x118
1EEC70:  STRD.W          R2, R3, [R7,#var_s8]
1EEC74:  MOV             R4, R0
1EEC76:  LDR             R0, =(__stack_chk_guard_ptr - 0x1EEC7E)
1EEC78:  MOV             R5, R1
1EEC7A:  ADD             R0, PC; __stack_chk_guard_ptr
1EEC7C:  LDR             R0, [R0]; __stack_chk_guard
1EEC7E:  LDR             R0, [R0]
1EEC80:  STR             R0, [SP,#0x128+var_14]
1EEC82:  ADD.W           R0, R7, #8
1EEC86:  STRD.W          R0, R0, [SP,#0x128+var_11C]
1EEC8A:  MOV             R0, R4
1EEC8C:  BL              sub_1EE5C6
1EEC90:  LDR             R0, [SP,#0x128+var_11C]
1EEC92:  MOV.W           R8, #0
1EEC96:  STRD.W          R5, R0, [SP,#0x128+var_128]
1EEC9A:  ADD             R0, SP, #0x128+var_114
1EEC9C:  MOV.W           R1, #0x100
1EECA0:  MOVS            R2, #0
1EECA2:  MOV.W           R3, #0x100
1EECA6:  BLX             __vsnprintf_chk
1EECAA:  MOV             R6, R0
1EECAC:  CBZ             R0, loc_1EECEA
1EECAE:  MOV.W           R8, #1
1EECB2:  CMP             R6, #0xFF
1EECB4:  BHI             loc_1EECC2
1EECB6:  ADD             R1, SP, #0x128+var_114
1EECB8:  MOV             R0, R4
1EECBA:  MOV             R2, R6
1EECBC:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKcj; std::string::assign(char const*,uint)
1EECC0:  B               loc_1EECEA
1EECC2:  MOV             R0, R4
1EECC4:  MOV             R1, R6
1EECC6:  BL              sub_1EED24
1EECCA:  LDR             R0, [R4,#8]
1EECCC:  MOV.W           R8, #1
1EECD0:  LDRB            R1, [R4]
1EECD2:  LDR             R2, [SP,#0x128+var_118]
1EECD4:  LSLS            R1, R1, #0x1F
1EECD6:  STRD.W          R5, R2, [SP,#0x128+var_128]
1EECDA:  IT EQ
1EECDC:  ADDEQ           R0, R4, #1
1EECDE:  ADDS            R1, R6, #1
1EECE0:  MOVS            R2, #0
1EECE2:  MOV.W           R3, #0xFFFFFFFF
1EECE6:  BLX             __vsnprintf_chk
1EECEA:  LDR             R0, [SP,#0x128+var_14]
1EECEC:  LDR             R1, =(__stack_chk_guard_ptr - 0x1EECF2)
1EECEE:  ADD             R1, PC; __stack_chk_guard_ptr
1EECF0:  LDR             R1, [R1]; __stack_chk_guard
1EECF2:  LDR             R1, [R1]
1EECF4:  CMP             R1, R0
1EECF6:  ITTTT EQ
1EECF8:  ADDEQ           SP, SP, #0x118
1EECFA:  POPEQ.W         {R8}
1EECFE:  POPEQ.W         {R4-R7,LR}
1EED02:  ADDEQ           SP, SP, #8
1EED04:  IT EQ
1EED06:  BXEQ            LR
1EED08:  BLX             __stack_chk_fail
