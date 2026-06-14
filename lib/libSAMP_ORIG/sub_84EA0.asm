; =========================================================
; Game Engine Function: sub_84EA0
; Address            : 0x84EA0 - 0x84F6A
; =========================================================

84EA0:  PUSH            {R4-R7,LR}
84EA2:  ADD             R7, SP, #0xC
84EA4:  PUSH.W          {R8-R10}
84EA8:  SUB             SP, SP, #8
84EAA:  MOV             R9, R0
84EAC:  MOVS            R0, #0x20 ; ' '; unsigned int
84EAE:  MOV             R5, R3
84EB0:  MOV             R4, R2
84EB2:  MOV             R10, R1
84EB4:  BLX             j__Znwj; operator new(uint)
84EB8:  MOV             R8, R0
84EBA:  LDR             R0, [R7,#arg_0]
84EBC:  STR             R0, [SP,#0x20+var_20]
84EBE:  MOV             R0, R8
84EC0:  MOV             R1, R10
84EC2:  MOV             R2, R4
84EC4:  MOV             R3, R5
84EC6:  BL              sub_8396C
84ECA:  MOV             R4, R9
84ECC:  LDR.W           R6, [R4,#0x44]!
84ED0:  CBZ             R6, loc_84EF4
84ED2:  ADD.W           R4, R9, #0x44 ; 'D'
84ED6:  B               loc_84EE0
84ED8:  LDR             R0, [R6]
84EDA:  CBZ             R0, loc_84EF8
84EDC:  MOV             R4, R6
84EDE:  MOV             R6, R0
84EE0:  LDRB            R0, [R6,#0x10]
84EE2:  CMP             R0, R10
84EE4:  BHI             loc_84ED8
84EE6:  BCS             loc_84EFA
84EE8:  MOV             R4, R6
84EEA:  LDR.W           R0, [R4,#4]!
84EEE:  CBZ             R0, loc_84EFA
84EF0:  MOV             R6, R4
84EF2:  B               loc_84EDC
84EF4:  MOV             R6, R4
84EF6:  B               loc_84EFA
84EF8:  MOV             R4, R6
84EFA:  LDR             R5, [R4]
84EFC:  CBNZ            R5, loc_84F3A
84EFE:  MOVS            R0, #0x18; unsigned int
84F00:  BLX             j__Znwj; operator new(uint)
84F04:  MOV             R5, R0
84F06:  MOVS            R0, #0
84F08:  STR             R0, [R5,#0x14]
84F0A:  STRD.W          R0, R0, [R5]
84F0E:  STR             R6, [R5,#8]
84F10:  STR             R5, [R4]
84F12:  LDR.W           R0, [R9,#0x40]
84F16:  STRB.W          R10, [R5,#0x10]
84F1A:  LDR             R0, [R0]
84F1C:  CMP             R0, #0
84F1E:  ITTE NE
84F20:  STRNE.W         R0, [R9,#0x40]
84F24:  LDRNE           R1, [R4]
84F26:  MOVEQ           R1, R5
84F28:  LDR.W           R0, [R9,#0x44]
84F2C:  BL              sub_77D8A
84F30:  LDR.W           R0, [R9,#0x48]
84F34:  ADDS            R0, #1
84F36:  STR.W           R0, [R9,#0x48]
84F3A:  LDR             R0, [R5,#0x14]
84F3C:  STR.W           R8, [R5,#0x14]
84F40:  CMP             R0, #0
84F42:  ITTT NE
84F44:  LDRNE           R1, [R0]
84F46:  LDRNE           R1, [R1,#4]
84F48:  BLXNE           R1
84F4A:  LDRD.W          R4, R6, [R9,#0x1C]
84F4E:  CMP             R4, R6
84F50:  BEQ             loc_84F62
84F52:  LDR             R0, [R5,#0x14]
84F54:  LDR.W           R1, [R4],#4
84F58:  LDR             R2, [R0]
84F5A:  LDR             R2, [R2,#8]
84F5C:  BLX             R2
84F5E:  CMP             R4, R6
84F60:  BNE             loc_84F52
84F62:  ADD             SP, SP, #8
84F64:  POP.W           {R8-R10}
84F68:  POP             {R4-R7,PC}
