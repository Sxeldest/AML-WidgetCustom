; =========================================================
; Game Engine Function: inflate_trees_bits
; Address            : 0x20EEA0 - 0x20EF20
; =========================================================

20EEA0:  PUSH            {R4-R7,LR}
20EEA2:  ADD             R7, SP, #0xC
20EEA4:  PUSH.W          {R8-R11}
20EEA8:  SUB             SP, SP, #0x1C
20EEAA:  LDR.W           R10, [R7,#arg_0]
20EEAE:  MOV.W           R11, #0
20EEB2:  STR.W           R11, [SP,#0x38+var_20]
20EEB6:  MOV             R5, R3
20EEB8:  MOV             R9, R0
20EEBA:  MOV             R6, R2
20EEBC:  LDR.W           R3, [R10,#0x20]
20EEC0:  MOV             R8, R1
20EEC2:  LDR.W           R0, [R10,#0x28]
20EEC6:  MOVS            R1, #0x13
20EEC8:  MOVS            R2, #4
20EECA:  BLX             R3
20EECC:  MOV             R4, R0
20EECE:  CBZ             R4, loc_20EEF8
20EED0:  ADD             R0, SP, #0x38+var_20
20EED2:  STRD.W          R11, R6, [SP,#0x38+var_38]
20EED6:  STRD.W          R8, R5, [SP,#0x38+var_30]
20EEDA:  MOVS            R1, #0x13
20EEDC:  STRD.W          R0, R4, [SP,#0x38+var_28]
20EEE0:  MOV             R0, R9
20EEE2:  MOVS            R2, #0x13
20EEE4:  MOVS            R3, #0
20EEE6:  BL              sub_20EF6C
20EEEA:  MOV             R6, R0
20EEEC:  ADDS            R0, R6, #5
20EEEE:  BEQ             loc_20EF04
20EEF0:  ADDS            R0, R6, #3
20EEF2:  BNE             loc_20EEFE
20EEF4:  ADR             R0, aOversubscribed; "oversubscribed dynamic bit lengths tree"
20EEF6:  B               loc_20EF06
20EEF8:  MOV             R6, #0xFFFFFFFC
20EEFC:  B               loc_20EF16
20EEFE:  LDR.W           R0, [R8]
20EF02:  CBNZ            R0, loc_20EF0E
20EF04:  ADR             R0, aIncompleteDyna; "incomplete dynamic bit lengths tree"
20EF06:  MOV             R6, #0xFFFFFFFD
20EF0A:  STR.W           R0, [R10,#0x18]
20EF0E:  LDRD.W          R2, R0, [R10,#0x24]
20EF12:  MOV             R1, R4
20EF14:  BLX             R2
20EF16:  MOV             R0, R6
20EF18:  ADD             SP, SP, #0x1C
20EF1A:  POP.W           {R8-R11}
20EF1E:  POP             {R4-R7,PC}
