; =========================================================
; Game Engine Function: sub_209C4C
; Address            : 0x209C4C - 0x209DBE
; =========================================================

209C4C:  PUSH            {R4-R7,LR}
209C4E:  ADD             R7, SP, #0xC
209C50:  PUSH.W          {R8-R11}
209C54:  LDRB            R4, [R7,#arg_C]
209C56:  STR             R0, [R2]
209C58:  LDR             R0, [R7,#arg_4]
209C5A:  LSLS            R4, R4, #0x1E
209C5C:  LDR.W           R10, [R7,#arg_0]
209C60:  STR             R3, [R0]
209C62:  BPL             loc_209C8C
209C64:  SUB.W           R4, R10, R3
209C68:  CMP             R4, #3
209C6A:  BGE             loc_209C70
209C6C:  MOVS            R0, #1
209C6E:  B               loc_209DB8
209C70:  ADDS            R4, R3, #1
209C72:  STR             R4, [R0]
209C74:  MOVS            R4, #0xEF
209C76:  STRB            R4, [R3]
209C78:  LDR             R3, [R0]
209C7A:  ADDS            R4, R3, #1
209C7C:  STR             R4, [R0]
209C7E:  MOVS            R4, #0xBB
209C80:  STRB            R4, [R3]
209C82:  LDR             R3, [R0]
209C84:  ADDS            R4, R3, #1
209C86:  STR             R4, [R0]
209C88:  MOVS            R4, #0xBF
209C8A:  STRB            R4, [R3]
209C8C:  LDR.W           R11, [R7,#arg_8]
209C90:  MOV.W           R8, #0
209C94:  LDR             R6, [R2]
209C96:  MOV.W           R12, #0xC0
209C9A:  MOV.W           R9, #2
209C9E:  CMP             R6, R1
209CA0:  BCS.W           loc_209DB6
209CA4:  LDR             R5, [R6]
209CA6:  UXTH            R4, R5
209CA8:  CMP             R4, R11
209CAA:  BHI.W           loc_209DB2
209CAE:  CMP             R4, #0x7F
209CB0:  BHI             loc_209CBE
209CB2:  LDR             R3, [R0]
209CB4:  SUB.W           R4, R10, R3
209CB8:  CMP             R4, #1
209CBA:  BGE             loc_209DA4
209CBC:  B               loc_209C6C
209CBE:  CMP.W           R8, R4,LSR#11
209CC2:  BNE             loc_209CD8
209CC4:  LDR             R3, [R0]
209CC6:  SUB.W           R4, R10, R3
209CCA:  CMP             R4, #2
209CCC:  BLT             loc_209C6C
209CCE:  ADDS            R4, R3, #1
209CD0:  STR             R4, [R0]
209CD2:  ORR.W           R4, R12, R5,LSR#6
209CD6:  B               loc_209D9C
209CD8:  LSRS            R3, R4, #0xB
209CDA:  CMP             R3, #0x1A
209CDC:  BLS             loc_209D7A
209CDE:  LSRS            R3, R4, #0xA
209CE0:  CMP             R3, #0x36 ; '6'
209CE2:  BHI             loc_209D74
209CE4:  SUBS            R3, R1, R6
209CE6:  CMP             R3, #8
209CE8:  BLT             loc_209C6C
209CEA:  LDR.W           R12, [R6,#4]!
209CEE:  AND.W           R3, R12, #0xFC00
209CF2:  CMP.W           R3, #0xDC00
209CF6:  BNE             loc_209DB2
209CF8:  LDR             R3, [R0]
209CFA:  SUB.W           R3, R10, R3
209CFE:  CMP             R3, #4
209D00:  BLT             loc_209C6C
209D02:  MOV.W           LR, R5,LSL#10
209D06:  AND.W           R3, R5, #0x3C0
209D0A:  UXTH.W          R4, LR
209D0E:  ORR.W           LR, R4, R3,LSL#10
209D12:  MOV             R4, R12
209D14:  BFC.W           R4, #0xA, #0x16
209D18:  ADD             R4, LR
209D1A:  ADD.W           R4, R4, #0x10000
209D1E:  CMP             R4, R11
209D20:  BHI             loc_209DB2
209D22:  STR             R6, [R2]
209D24:  LDR             R4, [R0]
209D26:  ADDS            R6, R4, #1
209D28:  STR             R6, [R0]
209D2A:  MOVS            R6, #1
209D2C:  ADD.W           R3, R6, R3,LSR#6
209D30:  LSRS            R6, R3, #2
209D32:  ADDS            R6, #0xF0
209D34:  STRB            R6, [R4]
209D36:  LDR             R4, [R0]
209D38:  ADDS            R6, R4, #1
209D3A:  STR             R6, [R0]
209D3C:  UBFX.W          R6, R5, #2, #4
209D40:  BFI.W           R6, R3, #4, #2
209D44:  ADD.W           R3, R6, #0x80
209D48:  STRB            R3, [R4]
209D4A:  LDR             R3, [R0]
209D4C:  ADDS            R4, R3, #1
209D4E:  STR             R4, [R0]
209D50:  AND.W           R4, R5, #3
209D54:  UBFX.W          R5, R12, #6, #4
209D58:  BFI.W           R12, R9, #6, #0x1A
209D5C:  ORR.W           R4, R5, R4,LSL#4
209D60:  ADDS            R4, #0x80
209D62:  STRB            R4, [R3]
209D64:  LDR             R3, [R0]
209D66:  ADDS            R4, R3, #1
209D68:  STR             R4, [R0]
209D6A:  STRB.W          R12, [R3]
209D6E:  MOV.W           R12, #0xC0
209D72:  B               loc_209DAA
209D74:  CMP.W           R4, #0xE000
209D78:  BCC             loc_209DB2
209D7A:  LDR             R3, [R0]
209D7C:  SUB.W           R6, R10, R3
209D80:  CMP             R6, #3
209D82:  BLT.W           loc_209C6C
209D86:  LSRS            R4, R4, #0xC
209D88:  ADDS            R6, R3, #1
209D8A:  STR             R6, [R0]
209D8C:  ADDS            R4, #0xE0
209D8E:  STRB            R4, [R3]
209D90:  LDR             R3, [R0]
209D92:  ADDS            R4, R3, #1
209D94:  STR             R4, [R0]
209D96:  LSRS            R4, R5, #6
209D98:  BFI.W           R4, R9, #6, #0x1A
209D9C:  STRB            R4, [R3]
209D9E:  BFI.W           R5, R9, #6, #0x1A
209DA2:  LDR             R3, [R0]
209DA4:  ADDS            R4, R3, #1
209DA6:  STR             R4, [R0]
209DA8:  STRB            R5, [R3]
209DAA:  LDR             R3, [R2]
209DAC:  ADDS            R6, R3, #4
209DAE:  STR             R6, [R2]
209DB0:  B               loc_209C9E
209DB2:  MOVS            R0, #2
209DB4:  B               loc_209DB8
209DB6:  MOVS            R0, #0
209DB8:  POP.W           {R8-R11}
209DBC:  POP             {R4-R7,PC}
