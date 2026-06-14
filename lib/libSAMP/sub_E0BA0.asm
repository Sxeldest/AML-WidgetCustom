; =========================================================
; Game Engine Function: sub_E0BA0
; Address            : 0xE0BA0 - 0xE10F2
; =========================================================

E0BA0:  PUSH            {R4-R7,LR}
E0BA2:  ADD             R7, SP, #0xC
E0BA4:  PUSH.W          {R8-R11}
E0BA8:  SUB             SP, SP, #0x5C
E0BAA:  LDR.W           LR, [R7,#arg_8]
E0BAE:  STR             R0, [SP,#0x78+var_6C]
E0BB0:  LDRB.W          R10, [LR,#8]
E0BB4:  CMP.W           R10, #0xF; switch 16 cases
E0BB8:  BHI.W           def_E0BC6; jumptable 000E0BC6 default case, cases 7-14
E0BBC:  MOV             R11, R0
E0BBE:  MOV             R8, R3
E0BC0:  MOV             R6, R2
E0BC2:  LDR.W           R9, [R7,#arg_0]
E0BC6:  TBH.W           [PC,R10,LSL#1]; switch jump
E0BCA:  DCW 0x10; jump table for switch statement
E0BCC:  DCW 0x10
E0BCE:  DCW 0x98
E0BD0:  DCW 0x5D
E0BD2:  DCW 0x5D
E0BD4:  DCW 0x26
E0BD6:  DCW 0x26
E0BD8:  DCW 0x290
E0BDA:  DCW 0x290
E0BDC:  DCW 0x290
E0BDE:  DCW 0x290
E0BE0:  DCW 0x290
E0BE2:  DCW 0x290
E0BE4:  DCW 0x290
E0BE6:  DCW 0x290
E0BE8:  DCW 0xD3
E0BEA:  LDRH.W          R0, [LR,#9]; jumptable 000E0BC6 cases 0,1
E0BEE:  LSLS            R0, R0, #0x17
E0BF0:  BPL.W           loc_E0EF6
E0BF4:  LDR             R0, [R7,#arg_C]
E0BF6:  MOV             R2, R6
E0BF8:  MOV             R3, R8
E0BFA:  STR.W           R9, [SP,#0x78+var_78]
E0BFE:  MOV             R4, LR
E0C00:  STRD.W          LR, R0, [SP,#0x78+var_74]
E0C04:  ADD             R0, SP, #0x78+var_6C
E0C06:  BL              sub_DD6FC
E0C0A:  CMP             R0, #0
E0C0C:  BEQ.W           loc_E0EF0
E0C10:  LDR.W           R11, [SP,#0x78+var_6C]
E0C14:  B               loc_E10E0
E0C16:  LDRH.W          R0, [LR,#9]; jumptable 000E0BC6 cases 5,6
E0C1A:  LSLS            R1, R0, #0x18
E0C1C:  BPL             loc_E0C3C
E0C1E:  MOVW            R1, #0x6230
E0C22:  CMP.W           R10, #6
E0C26:  IT EQ
E0C28:  MOVWEQ          R1, #0x4230
E0C2C:  CMP.W           R9, #0
E0C30:  IT NE
E0C32:  LSLNE           R1, R1, #8
E0C34:  ORR.W           R1, R1, R9
E0C38:  ADD.W           R9, R1, #0x2000000
E0C3C:  MOVS            R4, #0
E0C3E:  MOV             R1, R6
E0C40:  MOV             R2, R8
E0C42:  MOVS.W          R2, R2,LSR#1
E0C46:  SUB.W           R4, R4, #1
E0C4A:  MOV.W           R1, R1,RRX
E0C4E:  ORRS.W          R3, R1, R2
E0C52:  BNE             loc_E0C42
E0C54:  LDRD.W          R3, R2, [LR]
E0C58:  ADDS            R1, R2, #1
E0C5A:  ADD.W           R10, SP, #0x78+var_68
E0C5E:  ORRS            R1, R3
E0C60:  BEQ.W           loc_E0D8C
E0C64:  AND.W           R0, R0, #0xF
E0C68:  NEGS            R1, R4
E0C6A:  RSB.W           R5, R4, R9,LSR#24
E0C6E:  CMP             R0, #4
E0C70:  BNE.W           loc_E0E78
E0C74:  MOV             R2, R5
E0C76:  SUBS            R0, R3, R5
E0C78:  CMP             R3, R5
E0C7A:  IT HI
E0C7C:  MOVHI           R2, R3
E0C7E:  IT CC
E0C80:  MOVCC           R0, #0
E0C82:  B               loc_E1034
E0C84:  LDRH.W          R0, [LR,#9]; jumptable 000E0BC6 cases 3,4
E0C88:  LSLS            R1, R0, #0x18
E0C8A:  BPL             loc_E0CAA
E0C8C:  MOVW            R1, #0x7830
E0C90:  CMP.W           R10, #4
E0C94:  IT EQ
E0C96:  MOVWEQ          R1, #0x5830
E0C9A:  CMP.W           R9, #0
E0C9E:  IT NE
E0CA0:  LSLNE           R1, R1, #8
E0CA2:  ORR.W           R1, R1, R9
E0CA6:  ADD.W           R9, R1, #0x2000000
E0CAA:  MOVS            R4, #0
E0CAC:  MOV             R1, R6
E0CAE:  MOV             R2, R8
E0CB0:  LSRS            R1, R1, #4
E0CB2:  SUBS            R4, #1
E0CB4:  ORR.W           R1, R1, R2,LSL#28
E0CB8:  ORR.W           R3, R1, R2,LSR#4
E0CBC:  LSRS            R2, R2, #4
E0CBE:  CMP             R3, #0
E0CC0:  BNE             loc_E0CB0
E0CC2:  LDRD.W          R1, R2, [LR]
E0CC6:  ADDS            R3, R2, #1
E0CC8:  ORRS            R3, R1
E0CCA:  BEQ.W           loc_E0DFA
E0CCE:  SUB.W           R5, R10, #4
E0CD2:  AND.W           R0, R0, #0xF
E0CD6:  CLZ.W           R5, R5
E0CDA:  NEGS            R3, R4
E0CDC:  CMP             R0, #4
E0CDE:  MOV.W           R12, R5,LSR#5
E0CE2:  RSB.W           R5, R4, R9,LSR#24
E0CE6:  BNE.W           loc_E0E88
E0CEA:  MOV             R2, R5
E0CEC:  SUBS            R0, R1, R5
E0CEE:  CMP             R1, R5
E0CF0:  IT HI
E0CF2:  MOVHI           R2, R1
E0CF4:  IT CC
E0CF6:  MOVCC           R0, #0
E0CF8:  B               loc_E1054
E0CFA:  MOVS            R4, #0; jumptable 000E0BC6 case 2
E0CFC:  MOV             R0, R6
E0CFE:  MOV             R1, R8
E0D00:  LSRS            R0, R0, #3
E0D02:  SUBS            R4, #1
E0D04:  ORR.W           R0, R0, R1,LSL#29
E0D08:  ORR.W           R2, R0, R1,LSR#3
E0D0C:  LSRS            R1, R1, #3
E0D0E:  CMP             R2, #0
E0D10:  BNE             loc_E0D00
E0D12:  LDRH.W          R2, [LR,#9]
E0D16:  RSB.W           R12, R4, #0
E0D1A:  LDR.W           R1, [LR,#4]
E0D1E:  LSLS            R0, R2, #0x18
E0D20:  BPL             loc_E0D40
E0D22:  CMP             R1, R12
E0D24:  BGT             loc_E0D40
E0D26:  ORRS.W          R0, R6, R8
E0D2A:  BEQ             loc_E0D40
E0D2C:  MOV.W           R0, #0x3000
E0D30:  CMP.W           R9, #0
E0D34:  IT EQ
E0D36:  MOVEQ           R0, #0x30 ; '0'
E0D38:  ORR.W           R0, R0, R9
E0D3C:  ADD.W           R9, R0, #0x1000000
E0D40:  LDR.W           R3, [LR]
E0D44:  ADDS            R0, R1, #1
E0D46:  ADD.W           R10, SP, #0x78+var_68
E0D4A:  ORRS            R0, R3
E0D4C:  BEQ.W           loc_E0FB4
E0D50:  AND.W           R2, R2, #0xF
E0D54:  RSB.W           R0, R4, R9,LSR#24
E0D58:  CMP             R2, #4
E0D5A:  BNE.W           loc_E1022
E0D5E:  MOV             R2, R0
E0D60:  CMP             R3, R0
E0D62:  IT HI
E0D64:  MOVHI           R2, R3
E0D66:  SUB.W           R3, R3, R0
E0D6A:  IT CC
E0D6C:  MOVCC           R3, #0
E0D6E:  B               loc_E10C4
E0D70:  MOVS            R0, #0; jumptable 000E0BC6 case 15
E0D72:  MOV             R1, LR
E0D74:  STRB.W          R0, [SP,#0x78+var_68]
E0D78:  ADD             R0, SP, #0x78+var_68
E0D7A:  STR             R0, [SP,#0x78+var_78]
E0D7C:  MOV             R0, R11
E0D7E:  MOVS            R2, #1
E0D80:  MOVS            R3, #1
E0D82:  STRB.W          R6, [SP,#0x78+var_68+1]
E0D86:  BL              sub_DDF34
E0D8A:  B               loc_E10DE
E0D8C:  CMP.W           R9, #0
E0D90:  ITT NE
E0D92:  BICNE.W         R5, R9, #0xFF000000
E0D96:  CMPNE           R5, #0
E0D98:  BEQ             loc_E0DC2
E0D9A:  LDRD.W          R0, R2, [R11,#8]
E0D9E:  ADDS            R1, R0, #1
E0DA0:  CMP             R2, R1
E0DA2:  BCS             loc_E0DB4
E0DA4:  LDR.W           R0, [R11]
E0DA8:  LDR             R2, [R0]
E0DAA:  MOV             R0, R11
E0DAC:  BLX             R2
E0DAE:  LDR.W           R0, [R11,#8]
E0DB2:  ADDS            R1, R0, #1
E0DB4:  LDR.W           R2, [R11,#4]
E0DB8:  STR.W           R1, [R11,#8]
E0DBC:  STRB            R5, [R2,R0]
E0DBE:  LSRS            R5, R5, #8
E0DC0:  BNE             loc_E0D9A
E0DC2:  LDRD.W          R1, R3, [R11,#8]
E0DC6:  MVNS            R0, R4
E0DC8:  SUBS            R2, R1, R4
E0DCA:  CMP             R3, R2
E0DCC:  BCC             loc_E0E98
E0DCE:  LDR.W           R3, [R11,#4]
E0DD2:  STR.W           R2, [R11,#8]
E0DD6:  CMP             R3, #0
E0DD8:  BEQ             loc_E0E98
E0DDA:  ADD             R1, R3
E0DDC:  ADD             R0, R1
E0DDE:  MOVS            R1, #0x18
E0DE0:  MOV             R2, R6
E0DE2:  MOVS.W          R8, R8,LSR#1
E0DE6:  BFI.W           R2, R1, #1, #0x1F
E0DEA:  STRB.W          R2, [R0],#-1
E0DEE:  MOV.W           R6, R6,RRX
E0DF2:  ORRS.W          R2, R6, R8
E0DF6:  BNE             loc_E0DE0
E0DF8:  B               loc_E10E0
E0DFA:  CMP.W           R9, #0
E0DFE:  ITT NE
E0E00:  BICNE.W         R5, R9, #0xFF000000
E0E04:  CMPNE           R5, #0
E0E06:  BEQ             loc_E0E30
E0E08:  LDRD.W          R0, R2, [R11,#8]
E0E0C:  ADDS            R1, R0, #1
E0E0E:  CMP             R2, R1
E0E10:  BCS             loc_E0E22
E0E12:  LDR.W           R0, [R11]
E0E16:  LDR             R2, [R0]
E0E18:  MOV             R0, R11
E0E1A:  BLX             R2
E0E1C:  LDR.W           R0, [R11,#8]
E0E20:  ADDS            R1, R0, #1
E0E22:  LDR.W           R2, [R11,#4]
E0E26:  STR.W           R1, [R11,#8]
E0E2A:  STRB            R5, [R2,R0]
E0E2C:  LSRS            R5, R5, #8
E0E2E:  BNE             loc_E0E08
E0E30:  LDRD.W          R2, R3, [R11,#8]
E0E34:  MVNS            R1, R4
E0E36:  SUBS            R0, R2, R4
E0E38:  CMP             R3, R0
E0E3A:  BCC             loc_E0EBA
E0E3C:  LDR.W           R3, [R11,#4]
E0E40:  STR.W           R0, [R11,#8]
E0E44:  CBZ             R3, loc_E0EBA
E0E46:  LDR             R4, =(a0123456789abcd - 0xE0E52); "0123456789abcdef" ...
E0E48:  ADD             R2, R3
E0E4A:  LDR             R0, =(a0123456789abcd_0 - 0xE0E58); "0123456789ABCDEF" ...
E0E4C:  ADD             R1, R2
E0E4E:  ADD             R4, PC; "0123456789abcdef"
E0E50:  CMP.W           R10, #4
E0E54:  ADD             R0, PC; "0123456789ABCDEF"
E0E56:  IT NE
E0E58:  MOVNE           R0, R4
E0E5A:  AND.W           R2, R6, #0xF
E0E5E:  LSRS            R3, R6, #4
E0E60:  ORR.W           R6, R3, R8,LSL#28
E0E64:  LDRB            R2, [R0,R2]
E0E66:  ORR.W           R3, R6, R8,LSR#4
E0E6A:  MOV.W           R8, R8,LSR#4
E0E6E:  STRB.W          R2, [R1],#-1
E0E72:  CMP             R3, #0
E0E74:  BNE             loc_E0E5A
E0E76:  B               loc_E10E0
E0E78:  CMP             R2, R1
E0E7A:  BLE.W           loc_E1030
E0E7E:  MOV.W           R3, R9,LSR#24
E0E82:  ADDS            R0, R2, R4
E0E84:  ADD             R2, R3
E0E86:  B               loc_E1034
E0E88:  CMP             R2, R3
E0E8A:  BLE.W           loc_E1050
E0E8E:  MOV.W           R1, R9,LSR#24
E0E92:  ADDS            R0, R2, R4
E0E94:  ADD             R2, R1
E0E96:  B               loc_E1054
E0E98:  ADD             R0, R10
E0E9A:  SUB.W           R1, R10, R4
E0E9E:  MOVS            R2, #0x18
E0EA0:  MOV             R3, R6
E0EA2:  MOVS.W          R8, R8,LSR#1
E0EA6:  BFI.W           R3, R2, #1, #0x1F
E0EAA:  STRB.W          R3, [R0],#-1
E0EAE:  MOV.W           R6, R6,RRX
E0EB2:  ORRS.W          R3, R6, R8
E0EB6:  BNE             loc_E0EA0
E0EB8:  B               loc_E1098
E0EBA:  ADD             R3, SP, #0x78+var_68
E0EBC:  CMP.W           R10, #4
E0EC0:  ADD.W           R0, R1, R3
E0EC4:  LDR             R1, =(a0123456789abcd - 0xE0ECC); "0123456789abcdef" ...
E0EC6:  LDR             R2, =(a0123456789abcd_0 - 0xE0ECE); "0123456789ABCDEF" ...
E0EC8:  ADD             R1, PC; "0123456789abcdef"
E0ECA:  ADD             R2, PC; "0123456789ABCDEF"
E0ECC:  IT NE
E0ECE:  MOVNE           R2, R1
E0ED0:  SUBS            R1, R3, R4
E0ED2:  AND.W           R3, R6, #0xF
E0ED6:  LSRS            R6, R6, #4
E0ED8:  ORR.W           R6, R6, R8,LSL#28
E0EDC:  LDRB            R3, [R2,R3]
E0EDE:  ORR.W           R5, R6, R8,LSR#4
E0EE2:  MOV.W           R8, R8,LSR#4
E0EE6:  STRB.W          R3, [R0],#-1
E0EEA:  CMP             R5, #0
E0EEC:  BNE             loc_E0ED2
E0EEE:  B               loc_E1098
E0EF0:  LDR.W           R11, [SP,#0x78+var_6C]
E0EF4:  MOV             LR, R4
E0EF6:  ORR.W           R1, R6, #1
E0EFA:  LDR             R2, =(unk_91C38 - 0xE0F18)
E0EFC:  CLZ.W           R1, R1
E0F00:  LDR             R0, =(unk_91BF8 - 0xE0F12)
E0F02:  ADDS            R1, #0x20 ; ' '
E0F04:  CMP.W           R8, #0
E0F08:  IT NE
E0F0A:  CLZNE.W         R1, R8
E0F0E:  ADD             R0, PC; unk_91BF8
E0F10:  EOR.W           R1, R1, #0x3F ; '?'
E0F14:  ADD             R2, PC; unk_91C38
E0F16:  LDRB.W          R10, [R0,R1]
E0F1A:  LDRD.W          R0, R1, [LR]
E0F1E:  LDR.W           R3, [R2,R10,LSL#3]
E0F22:  ADD.W           R2, R2, R10,LSL#3
E0F26:  LDR             R2, [R2,#4]
E0F28:  SUBS            R3, R6, R3
E0F2A:  SBCS.W          R2, R8, R2
E0F2E:  IT CC
E0F30:  SUBCC.W         R10, R10, #1
E0F34:  ADDS            R2, R1, #1
E0F36:  ORRS            R2, R0
E0F38:  BEQ             loc_E0F56
E0F3A:  LDRH.W          R3, [LR,#9]
E0F3E:  ADD.W           R2, R10, R9,LSR#24
E0F42:  AND.W           R3, R3, #0xF
E0F46:  CMP             R3, #4
E0F48:  BNE             loc_E0FA4
E0F4A:  SUBS            R3, R0, R2
E0F4C:  IT CC
E0F4E:  MOVCC           R3, #0
E0F50:  IT HI
E0F52:  MOVHI           R2, R0
E0F54:  B               loc_E10A4
E0F56:  CMP.W           R9, #0
E0F5A:  ITT NE
E0F5C:  BICNE.W         R4, R9, #0xFF000000
E0F60:  CMPNE           R4, #0
E0F62:  BEQ             loc_E0F8C
E0F64:  LDRD.W          R0, R2, [R11,#8]
E0F68:  ADDS            R1, R0, #1
E0F6A:  CMP             R2, R1
E0F6C:  BCS             loc_E0F7E
E0F6E:  LDR.W           R0, [R11]
E0F72:  LDR             R2, [R0]
E0F74:  MOV             R0, R11
E0F76:  BLX             R2
E0F78:  LDR.W           R0, [R11,#8]
E0F7C:  ADDS            R1, R0, #1
E0F7E:  LDR.W           R2, [R11,#4]
E0F82:  STR.W           R1, [R11,#8]
E0F86:  STRB            R4, [R2,R0]
E0F88:  LSRS            R4, R4, #8
E0F8A:  BNE             loc_E0F64
E0F8C:  ADD             R4, SP, #0x78+var_68
E0F8E:  ADD             R0, SP, #0x78+var_24
E0F90:  MOV             R2, R6
E0F92:  MOV             R3, R8
E0F94:  MOV             R1, R4
E0F96:  STR.W           R10, [SP,#0x78+var_78]
E0F9A:  BL              sub_DD0CC
E0F9E:  LDR             R1, [SP,#0x78+var_20]
E0FA0:  MOV             R0, R4
E0FA2:  B               loc_E109A
E0FA4:  CMP             R1, R10
E0FA6:  BLE             loc_E10A2
E0FA8:  MOV.W           R0, R9,LSR#24
E0FAC:  SUB.W           R3, R1, R10
E0FB0:  ADDS            R2, R1, R0
E0FB2:  B               loc_E10A4
E0FB4:  CMP.W           R9, #0
E0FB8:  ITT NE
E0FBA:  BICNE.W         R5, R9, #0xFF000000
E0FBE:  CMPNE           R5, #0
E0FC0:  BEQ             loc_E0FEA
E0FC2:  LDRD.W          R0, R2, [R11,#8]
E0FC6:  ADDS            R1, R0, #1
E0FC8:  CMP             R2, R1
E0FCA:  BCS             loc_E0FDC
E0FCC:  LDR.W           R0, [R11]
E0FD0:  LDR             R2, [R0]
E0FD2:  MOV             R0, R11
E0FD4:  BLX             R2
E0FD6:  LDR.W           R0, [R11,#8]
E0FDA:  ADDS            R1, R0, #1
E0FDC:  LDR.W           R2, [R11,#4]
E0FE0:  STR.W           R1, [R11,#8]
E0FE4:  STRB            R5, [R2,R0]
E0FE6:  LSRS            R5, R5, #8
E0FE8:  BNE             loc_E0FC2
E0FEA:  LDRD.W          R1, R3, [R11,#8]
E0FEE:  MVNS            R0, R4
E0FF0:  SUBS            R2, R1, R4
E0FF2:  CMP             R3, R2
E0FF4:  BCC             loc_E1076
E0FF6:  LDR.W           R3, [R11,#4]
E0FFA:  STR.W           R2, [R11,#8]
E0FFE:  CBZ             R3, loc_E1076
E1000:  ADD             R1, R3
E1002:  ADD             R0, R1
E1004:  MOVS            R1, #6
E1006:  LSRS            R2, R6, #3
E1008:  BFI.W           R6, R1, #3, #0x1D
E100C:  STRB.W          R6, [R0],#-1
E1010:  ORR.W           R6, R2, R8,LSL#29
E1014:  ORR.W           R2, R6, R8,LSR#3
E1018:  MOV.W           R8, R8,LSR#3
E101C:  CMP             R2, #0
E101E:  BNE             loc_E1006
E1020:  B               loc_E10E0
E1022:  CMP             R1, R12
E1024:  BLE             loc_E10C0
E1026:  MOV.W           R0, R9,LSR#24
E102A:  ADDS            R3, R1, R4
E102C:  ADDS            R2, R0, R1
E102E:  B               loc_E10C4
E1030:  MOVS            R0, #0
E1032:  MOV             R2, R5
E1034:  STR             R0, [SP,#0x78+var_60]
E1036:  MOV             R0, R11
E1038:  STR             R1, [SP,#0x78+var_50]
E103A:  MOV             R1, LR
E103C:  MOV             R3, R2
E103E:  STRD.W          R9, R2, [SP,#0x78+var_68]
E1042:  STRD.W          R6, R8, [SP,#0x78+var_58]
E1046:  STR.W           R10, [SP,#0x78+var_78]
E104A:  BL              sub_E1304
E104E:  B               loc_E10DE
E1050:  MOVS            R0, #0
E1052:  MOV             R2, R5
E1054:  ADD             R1, SP, #0x78+var_68
E1056:  STR             R3, [SP,#0x78+var_50]
E1058:  STR             R0, [SP,#0x78+var_60]
E105A:  MOV             R0, R11
E105C:  STR             R1, [SP,#0x78+var_78]
E105E:  MOV             R1, LR
E1060:  MOV             R3, R2
E1062:  STR             R6, [SP,#0x78+var_58]
E1064:  STRD.W          R9, R2, [SP,#0x78+var_68]
E1068:  STRB.W          R12, [SP,#0x78+var_4C]
E106C:  STR.W           R8, [SP,#0x78+var_54]
E1070:  BL              sub_E11C8
E1074:  B               loc_E10DE
E1076:  ADD             R0, R10
E1078:  SUB.W           R1, R10, R4
E107C:  MOVS            R2, #6
E107E:  LSRS            R3, R6, #3
E1080:  BFI.W           R6, R2, #3, #0x1D
E1084:  STRB.W          R6, [R0],#-1
E1088:  ORR.W           R6, R3, R8,LSL#29
E108C:  ORR.W           R3, R6, R8,LSR#3
E1090:  MOV.W           R8, R8,LSR#3
E1094:  CMP             R3, #0
E1096:  BNE             loc_E107E
E1098:  ADD             R0, SP, #0x78+var_68
E109A:  MOV             R2, R11
E109C:  BL              sub_DCF1C
E10A0:  B               loc_E10DE
E10A2:  MOVS            R3, #0
E10A4:  ADD             R0, SP, #0x78+var_58
E10A6:  STR             R3, [SP,#0x78+var_60]
E10A8:  STM.W           R0, {R6,R8,R10}
E10AC:  ADD             R0, SP, #0x78+var_68
E10AE:  MOV             R1, LR
E10B0:  STR             R0, [SP,#0x78+var_78]
E10B2:  MOV             R0, R11
E10B4:  MOV             R3, R2
E10B6:  STRD.W          R9, R2, [SP,#0x78+var_68]
E10BA:  BL              sub_E1110
E10BE:  B               loc_E10DE
E10C0:  MOVS            R3, #0
E10C2:  MOV             R2, R0
E10C4:  ADD             R0, SP, #0x78+var_58
E10C6:  STR             R3, [SP,#0x78+var_60]
E10C8:  STM.W           R0, {R6,R8,R12}
E10CC:  MOV             R0, R11
E10CE:  MOV             R1, LR
E10D0:  MOV             R3, R2
E10D2:  STRD.W          R9, R2, [SP,#0x78+var_68]
E10D6:  STR.W           R10, [SP,#0x78+var_78]
E10DA:  BL              sub_E140C
E10DE:  MOV             R11, R0
E10E0:  MOV             R0, R11
E10E2:  ADD             SP, SP, #0x5C ; '\'
E10E4:  POP.W           {R8-R11}
E10E8:  POP             {R4-R7,PC}
E10EA:  LDR             R0, =(aInvalidTypeSpe - 0xE10F0); jumptable 000E0BC6 default case, cases 7-14
E10EC:  ADD             R0, PC; "invalid type specifier"
E10EE:  BLX             j__ZN3fmt2v86detail18throw_format_errorEPKc; fmt::v8::detail::throw_format_error(char const*)
