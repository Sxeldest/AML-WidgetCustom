; =========================================================
; Game Engine Function: sub_1F2D14
; Address            : 0x1F2D14 - 0x1F2DBC
; =========================================================

1F2D14:  SUB             SP, SP, #8
1F2D16:  PUSH            {R4-R7,LR}
1F2D18:  ADD             R7, SP, #0xC
1F2D1A:  PUSH.W          {R8}
1F2D1E:  SUB             SP, SP, #0x118
1F2D20:  STRD.W          R2, R3, [R7,#var_s8]
1F2D24:  MOV             R4, R0
1F2D26:  LDR             R0, =(__stack_chk_guard_ptr - 0x1F2D2E)
1F2D28:  MOV             R5, R1
1F2D2A:  ADD             R0, PC; __stack_chk_guard_ptr
1F2D2C:  LDR             R0, [R0]; __stack_chk_guard
1F2D2E:  LDR             R0, [R0]
1F2D30:  STR             R0, [SP,#0x128+var_14]
1F2D32:  ADD.W           R0, R7, #8
1F2D36:  STRD.W          R0, R0, [SP,#0x128+var_11C]
1F2D3A:  MOV             R0, R4
1F2D3C:  BL              sub_1EE5C6
1F2D40:  LDR             R0, [SP,#0x128+var_11C]
1F2D42:  MOV.W           R8, #0
1F2D46:  STRD.W          R5, R0, [SP,#0x128+var_128]
1F2D4A:  ADD             R0, SP, #0x128+var_114
1F2D4C:  MOV.W           R1, #0x100
1F2D50:  MOVS            R2, #0
1F2D52:  MOV.W           R3, #0x100
1F2D56:  BLX             __vsnprintf_chk
1F2D5A:  MOV             R6, R0
1F2D5C:  CBZ             R0, loc_1F2D9A
1F2D5E:  MOV.W           R8, #1
1F2D62:  CMP             R6, #0xFF
1F2D64:  BHI             loc_1F2D72
1F2D66:  ADD             R1, SP, #0x128+var_114
1F2D68:  MOV             R0, R4
1F2D6A:  MOV             R2, R6
1F2D6C:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKcj; std::string::assign(char const*,uint)
1F2D70:  B               loc_1F2D9A
1F2D72:  MOV             R0, R4
1F2D74:  MOV             R1, R6
1F2D76:  BL              sub_1EED24
1F2D7A:  LDR             R0, [R4,#8]
1F2D7C:  MOV.W           R8, #1
1F2D80:  LDRB            R1, [R4]
1F2D82:  LDR             R2, [SP,#0x128+var_118]
1F2D84:  LSLS            R1, R1, #0x1F
1F2D86:  STRD.W          R5, R2, [SP,#0x128+var_128]
1F2D8A:  IT EQ
1F2D8C:  ADDEQ           R0, R4, #1
1F2D8E:  ADDS            R1, R6, #1
1F2D90:  MOVS            R2, #0
1F2D92:  MOV.W           R3, #0xFFFFFFFF
1F2D96:  BLX             __vsnprintf_chk
1F2D9A:  LDR             R0, [SP,#0x128+var_14]
1F2D9C:  LDR             R1, =(__stack_chk_guard_ptr - 0x1F2DA2)
1F2D9E:  ADD             R1, PC; __stack_chk_guard_ptr
1F2DA0:  LDR             R1, [R1]; __stack_chk_guard
1F2DA2:  LDR             R1, [R1]
1F2DA4:  CMP             R1, R0
1F2DA6:  ITTTT EQ
1F2DA8:  ADDEQ           SP, SP, #0x118
1F2DAA:  POPEQ.W         {R8}
1F2DAE:  POPEQ.W         {R4-R7,LR}
1F2DB2:  ADDEQ           SP, SP, #8
1F2DB4:  IT EQ
1F2DB6:  BXEQ            LR
1F2DB8:  BLX             __stack_chk_fail
