; =========================================================
; Game Engine Function: sub_216E90
; Address            : 0x216E90 - 0x216EF0
; =========================================================

216E90:  PUSH            {R4-R7,LR}
216E92:  ADD             R7, SP, #0xC
216E94:  PUSH.W          {R11}
216E98:  LDRD.W          R3, R2, [R0]
216E9C:  CMP             R2, R3
216E9E:  BEQ             loc_216EE2
216EA0:  LDRB            R4, [R3]
216EA2:  CMP             R4, #0x30 ; '0'
216EA4:  BCC             loc_216EE2
216EA6:  CMP             R4, #0x3A ; ':'
216EA8:  ITT CS
216EAA:  SUBCS           R4, #0x41 ; 'A'
216EAC:  CMPCS           R4, #0x19
216EAE:  BHI             loc_216EE2
216EB0:  MOVS            R4, #0
216EB2:  CMP             R3, R2
216EB4:  BEQ             loc_216EE6
216EB6:  LDRB            R5, [R3]
216EB8:  CMP             R5, #0x30 ; '0'
216EBA:  BCC             loc_216EE6
216EBC:  CMP             R5, #0x3A ; ':'
216EBE:  BCS             loc_216EC6
216EC0:  MOV             R6, #0xFFFFFFD0
216EC4:  B               loc_216ED2
216EC6:  SUB.W           R6, R5, #0x41 ; 'A'
216ECA:  CMP             R6, #0x1A
216ECC:  BCS             loc_216EE6
216ECE:  MOV             R6, #0xFFFFFFC9
216ED2:  ADD.W           R4, R4, R4,LSL#3
216ED6:  ADDS            R3, #1
216ED8:  STR             R3, [R0]
216EDA:  ADD.W           R4, R6, R4,LSL#2
216EDE:  ADD             R4, R5
216EE0:  B               loc_216EB2
216EE2:  MOVS            R0, #1
216EE4:  B               loc_216EEA
216EE6:  MOVS            R0, #0
216EE8:  STR             R4, [R1]
216EEA:  POP.W           {R11}
216EEE:  POP             {R4-R7,PC}
