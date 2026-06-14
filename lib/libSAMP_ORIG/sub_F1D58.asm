; =========================================================
; Game Engine Function: sub_F1D58
; Address            : 0xF1D58 - 0xF1ECA
; =========================================================

F1D58:  PUSH            {R4-R7,LR}
F1D5A:  ADD             R7, SP, #0xC
F1D5C:  PUSH.W          {R8-R11}
F1D60:  LDRB            R4, [R7,#arg_C]
F1D62:  STR             R0, [R2]
F1D64:  LDR             R0, [R7,#arg_4]
F1D66:  LSLS            R4, R4, #0x1E
F1D68:  LDR.W           R10, [R7,#arg_0]
F1D6C:  STR             R3, [R0]
F1D6E:  BPL             loc_F1D98
F1D70:  SUB.W           R4, R10, R3
F1D74:  CMP             R4, #3
F1D76:  BGE             loc_F1D7C
F1D78:  MOVS            R0, #1
F1D7A:  B               loc_F1EC4
F1D7C:  ADDS            R4, R3, #1
F1D7E:  STR             R4, [R0]
F1D80:  MOVS            R4, #0xEF
F1D82:  STRB            R4, [R3]
F1D84:  LDR             R3, [R0]
F1D86:  ADDS            R4, R3, #1
F1D88:  STR             R4, [R0]
F1D8A:  MOVS            R4, #0xBB
F1D8C:  STRB            R4, [R3]
F1D8E:  LDR             R3, [R0]
F1D90:  ADDS            R4, R3, #1
F1D92:  STR             R4, [R0]
F1D94:  MOVS            R4, #0xBF
F1D96:  STRB            R4, [R3]
F1D98:  LDR.W           R11, [R7,#arg_8]
F1D9C:  MOV.W           R8, #0
F1DA0:  LDR             R6, [R2]
F1DA2:  MOV.W           R12, #0xC0
F1DA6:  MOV.W           R9, #2
F1DAA:  CMP             R6, R1
F1DAC:  BCS.W           loc_F1EC2
F1DB0:  LDR             R5, [R6]
F1DB2:  UXTH            R4, R5
F1DB4:  CMP             R4, R11
F1DB6:  BHI.W           loc_F1EBE
F1DBA:  CMP             R4, #0x7F
F1DBC:  BHI             loc_F1DCA
F1DBE:  LDR             R3, [R0]
F1DC0:  SUB.W           R4, R10, R3
F1DC4:  CMP             R4, #1
F1DC6:  BGE             loc_F1EB0
F1DC8:  B               loc_F1D78
F1DCA:  CMP.W           R8, R4,LSR#11
F1DCE:  BNE             loc_F1DE4
F1DD0:  LDR             R3, [R0]
F1DD2:  SUB.W           R4, R10, R3
F1DD6:  CMP             R4, #2
F1DD8:  BLT             loc_F1D78
F1DDA:  ADDS            R4, R3, #1
F1DDC:  STR             R4, [R0]
F1DDE:  ORR.W           R4, R12, R5,LSR#6
F1DE2:  B               loc_F1EA8
F1DE4:  LSRS            R3, R4, #0xB
F1DE6:  CMP             R3, #0x1A
F1DE8:  BLS             loc_F1E86
F1DEA:  LSRS            R3, R4, #0xA
F1DEC:  CMP             R3, #0x36 ; '6'
F1DEE:  BHI             loc_F1E80
F1DF0:  SUBS            R3, R1, R6
F1DF2:  CMP             R3, #8
F1DF4:  BLT             loc_F1D78
F1DF6:  LDR.W           R12, [R6,#4]!
F1DFA:  AND.W           R3, R12, #0xFC00
F1DFE:  CMP.W           R3, #0xDC00
F1E02:  BNE             loc_F1EBE
F1E04:  LDR             R3, [R0]
F1E06:  SUB.W           R3, R10, R3
F1E0A:  CMP             R3, #4
F1E0C:  BLT             loc_F1D78
F1E0E:  MOV.W           LR, R5,LSL#10
F1E12:  AND.W           R3, R5, #0x3C0
F1E16:  UXTH.W          R4, LR
F1E1A:  ORR.W           LR, R4, R3,LSL#10
F1E1E:  MOV             R4, R12
F1E20:  BFC.W           R4, #0xA, #0x16
F1E24:  ADD             R4, LR
F1E26:  ADD.W           R4, R4, #0x10000
F1E2A:  CMP             R4, R11
F1E2C:  BHI             loc_F1EBE
F1E2E:  STR             R6, [R2]
F1E30:  LDR             R4, [R0]
F1E32:  ADDS            R6, R4, #1
F1E34:  STR             R6, [R0]
F1E36:  MOVS            R6, #1
F1E38:  ADD.W           R3, R6, R3,LSR#6
F1E3C:  LSRS            R6, R3, #2
F1E3E:  ADDS            R6, #0xF0
F1E40:  STRB            R6, [R4]
F1E42:  LDR             R4, [R0]
F1E44:  ADDS            R6, R4, #1
F1E46:  STR             R6, [R0]
F1E48:  UBFX.W          R6, R5, #2, #4
F1E4C:  BFI.W           R6, R3, #4, #2
F1E50:  ADD.W           R3, R6, #0x80
F1E54:  STRB            R3, [R4]
F1E56:  LDR             R3, [R0]
F1E58:  ADDS            R4, R3, #1
F1E5A:  STR             R4, [R0]
F1E5C:  AND.W           R4, R5, #3
F1E60:  UBFX.W          R5, R12, #6, #4
F1E64:  BFI.W           R12, R9, #6, #0x1A
F1E68:  ORR.W           R4, R5, R4,LSL#4
F1E6C:  ADDS            R4, #0x80
F1E6E:  STRB            R4, [R3]
F1E70:  LDR             R3, [R0]
F1E72:  ADDS            R4, R3, #1
F1E74:  STR             R4, [R0]
F1E76:  STRB.W          R12, [R3]
F1E7A:  MOV.W           R12, #0xC0
F1E7E:  B               loc_F1EB6
F1E80:  CMP.W           R4, #0xE000
F1E84:  BCC             loc_F1EBE
F1E86:  LDR             R3, [R0]
F1E88:  SUB.W           R6, R10, R3
F1E8C:  CMP             R6, #3
F1E8E:  BLT.W           loc_F1D78
F1E92:  LSRS            R4, R4, #0xC
F1E94:  ADDS            R6, R3, #1
F1E96:  STR             R6, [R0]
F1E98:  ADDS            R4, #0xE0
F1E9A:  STRB            R4, [R3]
F1E9C:  LDR             R3, [R0]
F1E9E:  ADDS            R4, R3, #1
F1EA0:  STR             R4, [R0]
F1EA2:  LSRS            R4, R5, #6
F1EA4:  BFI.W           R4, R9, #6, #0x1A
F1EA8:  STRB            R4, [R3]
F1EAA:  BFI.W           R5, R9, #6, #0x1A
F1EAE:  LDR             R3, [R0]
F1EB0:  ADDS            R4, R3, #1
F1EB2:  STR             R4, [R0]
F1EB4:  STRB            R5, [R3]
F1EB6:  LDR             R3, [R2]
F1EB8:  ADDS            R6, R3, #4
F1EBA:  STR             R6, [R2]
F1EBC:  B               loc_F1DAA
F1EBE:  MOVS            R0, #2
F1EC0:  B               loc_F1EC4
F1EC2:  MOVS            R0, #0
F1EC4:  POP.W           {R8-R11}
F1EC8:  POP             {R4-R7,PC}
