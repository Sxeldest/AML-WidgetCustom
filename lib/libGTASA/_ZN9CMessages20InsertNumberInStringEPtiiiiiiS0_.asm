; =========================================================
; Game Engine Function: _ZN9CMessages20InsertNumberInStringEPtiiiiiiS0_
; Address            : 0x54BE14 - 0x54BF7E
; =========================================================

54BE14:  PUSH            {R4-R7,LR}
54BE16:  ADD             R7, SP, #0xC
54BE18:  PUSH.W          {R8-R11}
54BE1C:  SUB             SP, SP, #0x34
54BE1E:  MOV             R8, R0
54BE20:  LDR             R0, =(__stack_chk_guard_ptr - 0x54BE2C)
54BE22:  LDR.W           R10, [R7,#arg_C]
54BE26:  MOV             R6, R2
54BE28:  ADD             R0, PC; __stack_chk_guard_ptr
54BE2A:  MOV             R5, R3
54BE2C:  MOV             R2, R1
54BE2E:  CMP.W           R8, #0
54BE32:  LDR             R0, [R0]; __stack_chk_guard
54BE34:  LDR             R0, [R0]
54BE36:  STR             R0, [SP,#0x50+var_20]
54BE38:  BEQ.W           loc_54BF5E
54BE3C:  SUB.W           R4, R7, #-var_2A
54BE40:  ADR             R1, dword_54BF84
54BE42:  MOV             R0, R4
54BE44:  BL              sub_5E6BC0
54BE48:  MOV             R0, R4; char *
54BE4A:  BLX             strlen
54BE4E:  ADD             R1, SP, #0x50+var_40; unsigned __int16 *
54BE50:  MOV             R9, R0
54BE52:  MOV             R0, R4; char *
54BE54:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
54BE58:  LDRH.W          R0, [R8]
54BE5C:  CMP             R0, #0
54BE5E:  BEQ.W           loc_54BF52
54BE62:  ADD.W           R0, R8, #2
54BE66:  MOVS            R4, #0
54BE68:  LDRH.W          R1, [R0,R4,LSL#1]
54BE6C:  ADDS            R4, #1
54BE6E:  CMP             R1, #0
54BE70:  BNE             loc_54BE68
54BE72:  CMP             R4, #0
54BE74:  BEQ             loc_54BF52
54BE76:  STR.W           R9, [SP,#0x50+var_44]
54BE7A:  ADD             R1, SP, #0x50+var_40; void *
54BE7C:  STRD.W          R6, R5, [SP,#0x50+var_4C]
54BE80:  MOVS            R5, #0
54BE82:  MOV.W           R11, #0
54BE86:  MOV.W           R9, #0
54BE8A:  MOV             LR, R5
54BE8C:  ADD.W           R2, R8, R9,LSL#1
54BE90:  ADD.W           R12, R10, R11,LSL#1
54BE94:  MOVS            R0, #0
54BE96:  MOVS            R5, #0
54BE98:  LDRH            R3, [R2,R0]
54BE9A:  CMP             R3, #0x7E ; '~'
54BE9C:  BNE             loc_54BEB0
54BE9E:  ADD.W           R6, R2, R5,LSL#1
54BEA2:  LDRH            R6, [R6,#2]
54BEA4:  CMP             R6, #0x31 ; '1'
54BEA6:  BNE             loc_54BEB0
54BEA8:  ADDS            R6, R2, R0
54BEAA:  LDRH            R6, [R6,#4]
54BEAC:  CMP             R6, #0x7E ; '~'
54BEAE:  BEQ             loc_54BEC2
54BEB0:  STRH.W          R3, [R12,R5,LSL#1]
54BEB4:  ADDS            R5, #1
54BEB6:  ADD.W           R3, R9, R5
54BEBA:  ADDS            R0, #2
54BEBC:  CMP             R3, R4
54BEBE:  BCC             loc_54BE98
54BEC0:  B               loc_54BF58
54BEC2:  LDR             R6, [SP,#0x50+var_44]
54BEC4:  ADD.W           R2, R9, R5
54BEC8:  CBZ             R6, loc_54BEE4
54BECA:  ADD             R0, R12; void *
54BECC:  STR             R2, [SP,#0x50+var_50]
54BECE:  LSLS            R2, R6, #1; size_t
54BED0:  MOV             R9, LR
54BED2:  BLX             memcpy_1
54BED6:  ADD.W           R0, R6, R11
54BEDA:  LDR             R2, [SP,#0x50+var_50]
54BEDC:  ADD.W           R11, R0, R5
54BEE0:  MOV             LR, R9
54BEE2:  B               loc_54BEE6
54BEE4:  ADD             R11, R5
54BEE6:  ADD.W           R9, R2, #3
54BEEA:  ADD.W           R5, LR, #1
54BEEE:  UXTB.W          R0, LR
54BEF2:  CMP             R0, #4; switch 5 cases
54BEF4:  BHI             def_54BEF6; jumptable 0054BEF6 default case
54BEF6:  TBB.W           [PC,R0]; switch jump
54BEFA:  DCB 3; jump table for switch statement
54BEFB:  DCB 8
54BEFC:  DCB 0xD
54BEFD:  DCB 0x12
54BEFE:  DCB 0x17
54BEFF:  ALIGN 2
54BF00:  SUB.W           R0, R7, #-var_2A; jumptable 0054BEF6 case 0
54BF04:  ADR             R1, dword_54BF84
54BF06:  LDR             R2, [SP,#0x50+var_4C]
54BF08:  B               loc_54BF30
54BF0A:  SUB.W           R0, R7, #-var_2A; jumptable 0054BEF6 case 1
54BF0E:  ADR             R1, dword_54BF84
54BF10:  LDR             R2, [SP,#0x50+var_48]
54BF12:  B               loc_54BF30
54BF14:  SUB.W           R0, R7, #-var_2A; jumptable 0054BEF6 case 2
54BF18:  ADR             R1, dword_54BF84
54BF1A:  LDR             R2, [R7,#arg_0]
54BF1C:  B               loc_54BF30
54BF1E:  SUB.W           R0, R7, #-var_2A; jumptable 0054BEF6 case 3
54BF22:  ADR             R1, dword_54BF84
54BF24:  LDR             R2, [R7,#arg_4]
54BF26:  B               loc_54BF30
54BF28:  LDR             R2, [R7,#arg_8]; jumptable 0054BEF6 case 4
54BF2A:  SUB.W           R0, R7, #-var_2A
54BF2E:  ADR             R1, dword_54BF84
54BF30:  BL              sub_5E6BC0
54BF34:  SUB.W           R6, R7, #-var_2A; jumptable 0054BEF6 default case
54BF38:  MOV             R0, R6; char *
54BF3A:  BLX             strlen
54BF3E:  STR             R0, [SP,#0x50+var_44]
54BF40:  MOV             R0, R6; char *
54BF42:  ADD             R6, SP, #0x50+var_40
54BF44:  MOV             R1, R6; unsigned __int16 *
54BF46:  BLX             j__Z14AsciiToGxtCharPKcPt; AsciiToGxtChar(char const*,ushort *)
54BF4A:  MOV             R1, R6
54BF4C:  CMP             R9, R4
54BF4E:  BCC             loc_54BE8A
54BF50:  B               loc_54BF5A
54BF52:  MOV.W           R11, #0
54BF56:  B               loc_54BF5A
54BF58:  ADD             R11, R5
54BF5A:  ADD.W           R10, R10, R11,LSL#1
54BF5E:  MOVS            R0, #0
54BF60:  STRH.W          R0, [R10]
54BF64:  LDR             R0, =(__stack_chk_guard_ptr - 0x54BF6C)
54BF66:  LDR             R1, [SP,#0x50+var_20]
54BF68:  ADD             R0, PC; __stack_chk_guard_ptr
54BF6A:  LDR             R0, [R0]; __stack_chk_guard
54BF6C:  LDR             R0, [R0]
54BF6E:  SUBS            R0, R0, R1
54BF70:  ITTT EQ
54BF72:  ADDEQ           SP, SP, #0x34 ; '4'
54BF74:  POPEQ.W         {R8-R11}
54BF78:  POPEQ           {R4-R7,PC}
54BF7A:  BLX             __stack_chk_fail
