; =========================================================
; Game Engine Function: sub_219D24
; Address            : 0x219D24 - 0x219E2A
; =========================================================

219D24:  PUSH            {R4-R7,LR}
219D26:  ADD             R7, SP, #0xC
219D28:  PUSH.W          {R8}
219D2C:  SUB             SP, SP, #0x10
219D2E:  MOV             R4, R0
219D30:  LDR             R0, =(__stack_chk_guard_ptr - 0x219D36)
219D32:  ADD             R0, PC; __stack_chk_guard_ptr
219D34:  LDR             R0, [R0]; __stack_chk_guard
219D36:  LDR             R0, [R0]
219D38:  STR             R0, [SP,#0x20+var_14]
219D3A:  LDRD.W          R0, R1, [R4]
219D3E:  SUBS            R1, R1, R0
219D40:  BEQ             loc_219D7C
219D42:  LDRB            R2, [R0]
219D44:  CMP             R2, #0x64 ; 'd'
219D46:  BNE             loc_219D7C
219D48:  CMP             R1, #1
219D4A:  BEQ             loc_219D7C
219D4C:  LDRB            R1, [R0,#1]
219D4E:  CMP             R1, #0x58 ; 'X'
219D50:  BEQ             loc_219D9E
219D52:  CMP             R1, #0x78 ; 'x'
219D54:  BEQ             loc_219DE0
219D56:  CMP             R1, #0x69 ; 'i'
219D58:  BNE             loc_219D7C
219D5A:  ADDS            R0, #2
219D5C:  STR             R0, [R4]
219D5E:  MOV             R0, R4
219D60:  BL              sub_21B5BC
219D64:  CMP             R0, #0
219D66:  STR             R0, [SP,#0x20+var_18]
219D68:  BEQ             loc_219E0E
219D6A:  MOV             R0, R4
219D6C:  BL              sub_219D24
219D70:  MOV             R1, R0
219D72:  STR             R0, [SP,#0x20+var_1C]
219D74:  MOVS            R0, #0
219D76:  CMP             R1, #0
219D78:  BNE             loc_219DFA
219D7A:  B               loc_219E10
219D7C:  LDR             R0, [SP,#0x20+var_14]
219D7E:  LDR             R1, =(__stack_chk_guard_ptr - 0x219D84)
219D80:  ADD             R1, PC; __stack_chk_guard_ptr
219D82:  LDR             R1, [R1]; __stack_chk_guard
219D84:  LDR             R1, [R1]
219D86:  CMP             R1, R0
219D88:  ITTTT EQ
219D8A:  MOVEQ           R0, R4
219D8C:  ADDEQ           SP, SP, #0x10
219D8E:  POPEQ.W         {R8}
219D92:  POPEQ.W         {R4-R7,LR}
219D96:  IT EQ
219D98:  BEQ.W           sub_217B38
219D9C:  B               loc_219E26
219D9E:  ADDS            R0, #2
219DA0:  STR             R0, [R4]
219DA2:  MOV             R0, R4
219DA4:  BL              sub_217B38
219DA8:  CBZ             R0, loc_219E0E
219DAA:  MOV             R5, R0
219DAC:  MOV             R0, R4
219DAE:  BL              sub_217B38
219DB2:  CBZ             R0, loc_219E0E
219DB4:  MOV             R6, R0
219DB6:  MOV             R0, R4
219DB8:  BL              sub_219D24
219DBC:  CBZ             R0, loc_219E0E
219DBE:  MOV             R8, R0
219DC0:  ADD.W           R0, R4, #0x198
219DC4:  MOVS            R1, #0x14
219DC6:  BL              sub_216EF0
219DCA:  LDR             R2, =(_ZTVN12_GLOBAL__N_116itanium_demangle15BracedRangeExprE - 0x219DD2); `vtable for'`anonymous namespace'::itanium_demangle::BracedRangeExpr ...
219DCC:  LDR             R1, =0x101014A
219DCE:  ADD             R2, PC; `vtable for'`anonymous namespace'::itanium_demangle::BracedRangeExpr
219DD0:  ADDS            R2, #8
219DD2:  STRD.W          R2, R1, [R0]
219DD6:  ADD.W           R1, R0, #8
219DDA:  STM.W           R1, {R5,R6,R8}
219DDE:  B               loc_219E10
219DE0:  ADDS            R0, #2
219DE2:  STR             R0, [R4]
219DE4:  MOV             R0, R4
219DE6:  BL              sub_217B38
219DEA:  STR             R0, [SP,#0x20+var_18]
219DEC:  CBZ             R0, loc_219E0E
219DEE:  MOV             R0, R4
219DF0:  BL              sub_219D24
219DF4:  STR             R0, [SP,#0x20+var_1C]
219DF6:  CBZ             R0, loc_219E0E
219DF8:  MOVS            R0, #1
219DFA:  STRB.W          R0, [R7,#var_1D]
219DFE:  ADD             R1, SP, #0x20+var_18
219E00:  ADD             R2, SP, #0x20+var_1C
219E02:  SUB.W           R3, R7, #-var_1D
219E06:  MOV             R0, R4
219E08:  BL              sub_21C2B0
219E0C:  B               loc_219E10
219E0E:  MOVS            R0, #0
219E10:  LDR             R1, [SP,#0x20+var_14]
219E12:  LDR             R2, =(__stack_chk_guard_ptr - 0x219E18)
219E14:  ADD             R2, PC; __stack_chk_guard_ptr
219E16:  LDR             R2, [R2]; __stack_chk_guard
219E18:  LDR             R2, [R2]
219E1A:  CMP             R2, R1
219E1C:  ITTT EQ
219E1E:  ADDEQ           SP, SP, #0x10
219E20:  POPEQ.W         {R8}
219E24:  POPEQ           {R4-R7,PC}
219E26:  BLX             __stack_chk_fail
