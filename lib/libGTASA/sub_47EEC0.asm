; =========================================================
; Game Engine Function: sub_47EEC0
; Address            : 0x47EEC0 - 0x47EF28
; =========================================================

47EEC0:  PUSH            {R4,R6,R7,LR}
47EEC2:  ADD             R7, SP, #8
47EEC4:  MOV             R4, R0
47EEC6:  LDR.W           R0, [R4,#0x17C]
47EECA:  CBNZ            R0, loc_47EED8
47EECC:  MOV             R0, R4
47EECE:  BL              sub_47E110
47EED2:  CBZ             R0, loc_47EF24
47EED4:  LDR.W           R0, [R4,#0x17C]
47EED8:  LDR.W           R1, [R4,#0x194]
47EEDC:  LDR             R1, [R1,#0x10]
47EEDE:  ADD.W           R2, R1, #0xD0
47EEE2:  CMP             R0, R2
47EEE4:  BNE             loc_47EF08
47EEE6:  LDR             R0, [R4]
47EEE8:  MOVS            R1, #0x62 ; 'b'
47EEEA:  STR             R1, [R0,#0x14]
47EEEC:  LDR.W           R1, [R4,#0x194]
47EEF0:  LDR             R0, [R4]
47EEF2:  LDR             R1, [R1,#0x10]
47EEF4:  STR             R1, [R0,#0x18]
47EEF6:  MOVS            R1, #3
47EEF8:  LDR             R0, [R4]
47EEFA:  LDR             R2, [R0,#4]
47EEFC:  MOV             R0, R4
47EEFE:  BLX             R2
47EF00:  MOVS            R0, #0
47EF02:  STR.W           R0, [R4,#0x17C]
47EF06:  B               loc_47EF12
47EF08:  LDR             R0, [R4,#0x18]
47EF0A:  LDR             R2, [R0,#0x14]
47EF0C:  MOV             R0, R4
47EF0E:  BLX             R2
47EF10:  CBZ             R0, loc_47EF24
47EF12:  LDR.W           R0, [R4,#0x194]
47EF16:  LDR             R1, [R0,#0x10]
47EF18:  ADDS            R1, #1
47EF1A:  AND.W           R1, R1, #7
47EF1E:  STR             R1, [R0,#0x10]
47EF20:  MOVS            R0, #1
47EF22:  POP             {R4,R6,R7,PC}
47EF24:  MOVS            R0, #0
47EF26:  POP             {R4,R6,R7,PC}
