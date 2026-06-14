; =========================================================
; Game Engine Function: sub_13E9BC
; Address            : 0x13E9BC - 0x13F004
; =========================================================

13E9BC:  PUSH            {R4-R7,LR}
13E9BE:  ADD             R7, SP, #0xC
13E9C0:  PUSH.W          {R8-R10}
13E9C4:  SUB             SP, SP, #0x10
13E9C6:  MOV             R4, R0
13E9C8:  LDRB            R0, [R0,#0x13]
13E9CA:  CMP             R0, #0
13E9CC:  BEQ             loc_13EA98
13E9CE:  MOV             R6, R4
13E9D0:  LDR.W           R0, [R6,#0x1C]!
13E9D4:  CMP             R0, #0
13E9D6:  BEQ.W           loc_13EC10
13E9DA:  LDRB.W          R1, [R4,#0x20]
13E9DE:  CMP             R1, #0
13E9E0:  LDR             R1, =(off_234970 - 0x13E9E6)
13E9E2:  ADD             R1, PC; off_234970
13E9E4:  MOV             R9, R1
13E9E6:  BNE             loc_13E9F2
13E9E8:  BL              sub_10414A
13E9EC:  CMP             R0, #0x36 ; '6'
13E9EE:  BEQ             loc_13E9FA
13E9F0:  LDR             R0, [R6]
13E9F2:  BL              sub_1041FA
13E9F6:  CMP             R0, #0
13E9F8:  BEQ             loc_13EA9C
13E9FA:  LDRB.W          R0, [R4,#0x1B0]
13E9FE:  CBZ             R0, loc_13EA06
13EA00:  MOV             R0, R4
13EA02:  BL              sub_140610
13EA06:  LDR             R0, [R4,#0x1C]
13EA08:  MOV.W           R1, #0xFFFFFFFF
13EA0C:  MOVS            R5, #0
13EA0E:  STR             R1, [R4,#4]
13EA10:  MOVS            R1, #1
13EA12:  STRB            R5, [R4,#0x11]
13EA14:  STRB.W          R5, [R4,#0x1B0]
13EA18:  STRB            R5, [R4,#8]
13EA1A:  STRB            R5, [R4,#0x1A]
13EA1C:  BL              sub_10421C
13EA20:  LDRB.W          R0, [R4,#0x22]
13EA24:  CBZ             R0, loc_13EA32
13EA26:  LDR             R0, [R4,#0x1C]
13EA28:  STRB.W          R5, [R4,#0x22]
13EA2C:  LDR             R1, [R0]
13EA2E:  LDR             R1, [R1,#8]
13EA30:  BLX             R1
13EA32:  LDR             R0, [R6]
13EA34:  BL              sub_104108
13EA38:  CMP             R0, #0
13EA3A:  BEQ.W           loc_13ED9E
13EA3E:  LDR             R0, [R6]
13EA40:  BL              sub_10411A
13EA44:  CMP             R0, #0
13EA46:  BNE.W           loc_13ED9E
13EA4A:  MOV             R0, R4
13EA4C:  BL              sub_13F048
13EA50:  LDR             R0, =(off_23496C - 0x13EA56)
13EA52:  ADD             R0, PC; off_23496C
13EA54:  LDR             R0, [R0]; dword_23DEF4
13EA56:  LDR             R0, [R0]
13EA58:  LDR.W           R0, [R0,#0x3B0]
13EA5C:  LDR             R6, [R0,#4]
13EA5E:  LDR             R0, [R4,#0x1C]
13EA60:  BL              sub_104326
13EA64:  MOVW            R12, #0xFFFF
13EA68:  CMP             R0, #0
13EA6A:  BEQ.W           loc_13ED9A
13EA6E:  MOVW            R2, #0xEA60
13EA72:  ADDS            R3, R6, R2
13EA74:  LDRD.W          R2, R3, [R3]
13EA78:  CMP             R2, R3
13EA7A:  BEQ.W           loc_13ED92
13EA7E:  MOV.W           R5, #0x1F40
13EA82:  LDR             R1, [R2]
13EA84:  ADD.W           R1, R6, R1,LSL#2
13EA88:  LDR             R1, [R1,R5]
13EA8A:  CMP             R1, R0
13EA8C:  BEQ.W           loc_13ED92
13EA90:  ADDS            R2, #4
13EA92:  CMP             R2, R3
13EA94:  BNE             loc_13EA82
13EA96:  B               loc_13ED9A
13EA98:  MOVS            R0, #1
13EA9A:  B               loc_13EBD2
13EA9C:  MOVS            R1, #0
13EA9E:  LDR             R0, [R6]
13EAA0:  STRB.W          R1, [R7,#var_1D]
13EAA4:  ADD             R2, SP, #0x28+var_1C
13EAA6:  STR             R1, [SP,#0x28+var_28]
13EAA8:  SUB.W           R1, R7, #-var_1A
13EAAC:  SUB.W           R3, R7, #-var_1D
13EAB0:  BL              sub_104BA4
13EAB4:  MOV             R8, R0
13EAB6:  LDR             R0, [R6]
13EAB8:  BL              sub_104108
13EABC:  CBZ             R0, loc_13EADC
13EABE:  LDRB            R0, [R4,#0x1A]
13EAC0:  CMP             R0, #0x17
13EAC2:  BHI.W           loc_13EDCA
13EAC6:  MOVS            R1, #1
13EAC8:  MOVW            R2, #0x1E0
13EACC:  LSLS            R1, R0
13EACE:  MOVT            R2, #0xF0
13EAD2:  TST             R1, R2
13EAD4:  BEQ.W           loc_13EDCA
13EAD8:  MOVS            R0, #0
13EADA:  STRB            R0, [R4,#0x1A]
13EADC:  LDR             R0, [R6]
13EADE:  BL              sub_106B84
13EAE2:  LDR             R0, [R6]
13EAE4:  BL              sub_1060D4
13EAE8:  LDR             R0, [R6]
13EAEA:  BL              sub_1064BC
13EAEE:  CBZ             R0, loc_13EAF8
13EAF0:  LDR             R0, [R6]
13EAF2:  MOVS            R1, #1
13EAF4:  BL              sub_10421C
13EAF8:  LDR             R0, [R4,#0x1C]
13EAFA:  BL              nullsub_8
13EAFE:  LDR             R0, [R4,#0x1C]
13EB00:  BL              sub_104550
13EB04:  CBZ             R0, loc_13EB0E
13EB06:  MOVS            R1, #0
13EB08:  STRB.W          R1, [R4,#0x2C]
13EB0C:  B               loc_13EB1A
13EB0E:  LDR             R0, [R4,#0x28]
13EB10:  CBZ             R0, loc_13EB1C
13EB12:  LDRB.W          R0, [R4,#0x2C]
13EB16:  CBZ             R0, loc_13EB1C
13EB18:  MOVS            R0, #0
13EB1A:  STR             R0, [R4,#0x28]
13EB1C:  BL              sub_F0B30
13EB20:  LDR             R5, =(dword_23902C - 0x13EB28)
13EB22:  MOV             R10, R0
13EB24:  ADD             R5, PC; dword_23902C
13EB26:  LDR             R0, [R5]
13EB28:  ADDS            R1, R0, #1
13EB2A:  BEQ             loc_13EB52
13EB2C:  SUB.W           R0, R10, R0
13EB30:  MOVW            R1, #0x1389
13EB34:  CMP             R0, R1
13EB36:  BCC             loc_13EB52
13EB38:  LDR             R0, [R6]
13EB3A:  BL              sub_104108
13EB3E:  CBNZ            R0, loc_13EB52
13EB40:  LDR.W           R0, [R9]; dword_23DEF0
13EB44:  LDR             R0, [R0]
13EB46:  LDR             R0, [R0,#4]
13EB48:  BL              sub_F85F0
13EB4C:  MOV.W           R0, #0xFFFFFFFF
13EB50:  STR             R0, [R5]
13EB52:  LDR.W           R0, [R4,#0x1B4]
13EB56:  CMP             R10, R0
13EB58:  BCC             loc_13EB72
13EB5A:  LDR             R0, =(off_23496C - 0x13EB64)
13EB5C:  LDR.W           R1, [R9]; dword_23DEF0
13EB60:  ADD             R0, PC; off_23496C
13EB62:  LDR             R0, [R0]; dword_23DEF4
13EB64:  LDR             R0, [R0]
13EB66:  LDR.W           R2, [R0,#0x20C]
13EB6A:  LDR             R0, [R1]
13EB6C:  LDRB            R1, [R2,#0x1A]
13EB6E:  BL              sub_F9480
13EB72:  LDR.W           R5, [R9]; dword_23DEF0
13EB76:  LDR             R0, [R5]
13EB78:  BL              sub_F9804
13EB7C:  LDR.W           R0, [R4,#0x1B8]
13EB80:  SUB.W           R0, R10, R0
13EB84:  CMP.W           R0, #0x3E8
13EB88:  BLS             loc_13EB94
13EB8A:  MOV             R0, R4
13EB8C:  BL              sub_13F564
13EB90:  STR.W           R10, [R4,#0x1B8]
13EB94:  MOV             R0, R4
13EB96:  BL              sub_13F5E8
13EB9A:  LDR             R0, [R5]
13EB9C:  BL              sub_F97D0
13EBA0:  MOV             R1, R0
13EBA2:  LDRB.W          R0, [R4,#0x1D4]
13EBA6:  CMP             R1, R0
13EBA8:  ITT NE
13EBAA:  MOVNE           R0, R4
13EBAC:  BLNE            sub_13F790
13EBB0:  MOV             R0, R4
13EBB2:  BL              sub_13F810
13EBB6:  LDRB.W          R0, [R4,#0x1B0]
13EBBA:  CMP             R0, #0
13EBBC:  BEQ             loc_13ECB2
13EBBE:  MOV             R0, R4
13EBC0:  BL              sub_13F8EC
13EBC4:  MOVS            R0, #0
13EBC6:  STRB.W          R0, [R4,#0x23]
13EBCA:  LDRB            R0, [R4,#0x13]
13EBCC:  CLZ.W           R0, R0
13EBD0:  LSRS            R0, R0, #5
13EBD2:  LDRB.W          R1, [R4,#0x1B0]
13EBD6:  CBZ             R1, loc_13EC10
13EBD8:  CBZ             R0, loc_13EC10
13EBDA:  LDRB.W          R0, [R4,#0x2D]
13EBDE:  CBZ             R0, loc_13EC08
13EBE0:  LDR             R0, =(off_234A24 - 0x13EBEC)
13EBE2:  MOVS            R1, #0
13EBE4:  STRB.W          R1, [R4,#0x2D]
13EBE8:  ADD             R0, PC; off_234A24
13EBEA:  LDR             R0, [R0]; dword_23DEEC
13EBEC:  LDR             R0, [R0]
13EBEE:  CBZ             R0, loc_13EC08
13EBF0:  LDR             R5, [R0,#0x64]
13EBF2:  LDRB.W          R0, [R5,#0x50]
13EBF6:  CBZ             R0, loc_13EC02
13EBF8:  LDR             R0, [R5]
13EBFA:  MOVS            R1, #0
13EBFC:  LDR             R2, [R0,#0x24]
13EBFE:  MOV             R0, R5
13EC00:  BLX             R2
13EC02:  MOVS            R0, #0
13EC04:  STRB.W          R0, [R5,#0x50]
13EC08:  MOV             R0, R4
13EC0A:  BL              sub_13F8EC
13EC0E:  B               loc_13EDC0
13EC10:  LDRB.W          R0, [R4,#0x20]
13EC14:  CBZ             R0, loc_13EC2A
13EC16:  LDR             R0, [R4,#0x1C]
13EC18:  BL              sub_10414A
13EC1C:  CMP             R0, #0x37 ; '7'
13EC1E:  BEQ             loc_13EC2A
13EC20:  LDR             R0, [R4,#0x1C]
13EC22:  BL              sub_10414A
13EC26:  CMP             R0, #0x36 ; '6'
13EC28:  BNE             loc_13EC6C
13EC2A:  LDR             R0, [R4,#0x1C]
13EC2C:  BL              sub_10414A
13EC30:  CMP             R0, #0x37 ; '7'
13EC32:  BEQ.W           loc_13EDC0
13EC36:  LDR             R0, [R4,#0x1C]
13EC38:  BL              sub_10414A
13EC3C:  CMP             R0, #0x36 ; '6'
13EC3E:  BEQ.W           loc_13EDC0
13EC42:  LDR             R0, =(off_23496C - 0x13EC48)
13EC44:  ADD             R0, PC; off_23496C
13EC46:  LDR             R0, [R0]; dword_23DEF4
13EC48:  LDR             R0, [R0]
13EC4A:  LDR.W           R0, [R0,#0x218]
13EC4E:  CMP             R0, #5
13EC50:  ITT EQ
13EC52:  LDRBEQ          R0, [R4,#0x13]
13EC54:  CMPEQ           R0, #0
13EC56:  BNE.W           loc_13EDC0
13EC5A:  LDRB.W          R0, [R4,#0x1B0]
13EC5E:  CMP             R0, #0
13EC60:  BNE.W           loc_13EDC0
13EC64:  MOV             R0, R4
13EC66:  BL              sub_14081C
13EC6A:  B               loc_13EDC0
13EC6C:  LDR             R0, [R4,#0x1C]
13EC6E:  BL              sub_104000
13EC72:  CBZ             R0, loc_13EC7A
13EC74:  LDR             R0, [R4,#0x1C]
13EC76:  BL              sub_104026
13EC7A:  LDRB.W          R0, [R4,#0x21]
13EC7E:  CMP             R0, #0
13EC80:  BEQ.W           loc_13ED84
13EC84:  LDR             R0, =(off_23496C - 0x13EC8A)
13EC86:  ADD             R0, PC; off_23496C
13EC88:  LDR             R0, [R0]; dword_23DEF4
13EC8A:  LDR             R0, [R0]
13EC8C:  LDR.W           R0, [R0,#0x218]
13EC90:  CMP             R0, #5
13EC92:  BNE             loc_13ED84
13EC94:  LDR             R0, [R4,#0x1C]
13EC96:  BL              sub_1042D8
13EC9A:  VMOV            S0, R0
13EC9E:  VCMP.F32        S0, #0.0
13ECA2:  VMRS            APSR_nzcv, FPSCR
13ECA6:  BLE.W           loc_13EDC0
13ECAA:  MOV             R0, R4
13ECAC:  BL              sub_140610
13ECB0:  B               loc_13EDC0
13ECB2:  LDR             R0, [R6]
13ECB4:  BL              sub_10414A
13ECB8:  CMP             R0, #0x32 ; '2'
13ECBA:  BNE             loc_13ECC8
13ECBC:  LDR             R0, [R6]
13ECBE:  BL              sub_10411A
13ECC2:  CMP             R0, #0
13ECC4:  BEQ.W           loc_13EDD2
13ECC8:  LDR             R0, [R6]
13ECCA:  BL              sub_10414A
13ECCE:  CMP             R0, #1
13ECD0:  BEQ             loc_13ECDE
13ECD2:  LDR             R0, [R6]
13ECD4:  BL              sub_10414A
13ECD8:  CMP             R0, #0xC
13ECDA:  BNE.W           loc_13EE52
13ECDE:  MOV             R0, R4
13ECE0:  BL              sub_13FE54
13ECE4:  LDRB.W          R0, [R4,#0x22]
13ECE8:  CBZ             R0, loc_13ECF8
13ECEA:  LDR             R0, [R4,#0x1C]
13ECEC:  MOVS            R2, #0
13ECEE:  STRB.W          R2, [R4,#0x22]
13ECF2:  LDR             R1, [R0]
13ECF4:  LDR             R1, [R1,#8]
13ECF6:  BLX             R1
13ECF8:  MOV             R0, R4
13ECFA:  BL              sub_140090
13ECFE:  LDRH.W          R0, [R4,#0x1D6]
13ED02:  MOVW            R1, #0xFFFF
13ED06:  CMP             R0, R1
13ED08:  ITT NE
13ED0A:  STRHNE.W        R1, [R4,#0x1D6]
13ED0E:  STRHNE          R0, [R4,#0x18]
13ED10:  LDRH.W          R0, [R4,#0xA2]
13ED14:  CMP             R0, R8
13ED16:  BNE             loc_13ED32
13ED18:  LDRH.W          R0, [R7,#var_1A]
13ED1C:  LDRH.W          R1, [R4,#0xA0]
13ED20:  CMP             R1, R0
13ED22:  ITTT EQ
13ED24:  LDRHEQ.W        R0, [SP,#0x28+var_1C]
13ED28:  LDRHEQ.W        R1, [R4,#0x9E]
13ED2C:  CMPEQ           R1, R0
13ED2E:  BEQ.W           loc_13EEF6
13ED32:  BL              sub_F0B30
13ED36:  STR.W           R0, [R4,#0x1BC]
13ED3A:  MOV             R0, R4
13ED3C:  BL              sub_140170
13ED40:  TST.W           R8, #0x84
13ED44:  BEQ             loc_13EE40
13ED46:  LDR             R0, =(off_234AAC - 0x13ED50)
13ED48:  LDR.W           R1, [R4,#0x1C0]
13ED4C:  ADD             R0, PC; off_234AAC
13ED4E:  LDR             R0, [R0]; dword_314320
13ED50:  LDR             R2, [R0]
13ED52:  SUB.W           R0, R10, R1
13ED56:  CMP             R2, #2
13ED58:  BNE.W           loc_13EF0C
13ED5C:  LDR             R1, =(off_234C14 - 0x13ED62)
13ED5E:  ADD             R1, PC; off_234C14
13ED60:  LDR             R1, [R1]; dword_239044
13ED62:  LDR             R1, [R1]
13ED64:  CMP             R0, R1
13ED66:  BLS.W           loc_13EBC4
13ED6A:  B               loc_13EF12
13ED6C:  DCD off_234970 - 0x13E9E6
13ED70:  DCD off_23496C - 0x13EA56
13ED74:  DCD dword_23902C - 0x13EB28
13ED78:  DCD off_23496C - 0x13EB64
13ED7C:  DCD off_234A24 - 0x13EBEC
13ED80:  DCD off_23496C - 0x13EC48
13ED84:  MOVS            R0, #0
13ED86:  STRB.W          R0, [R4,#0x20]
13ED8A:  MOV             R0, R4
13ED8C:  BL              sub_1407EC
13ED90:  B               loc_13EDC0
13ED92:  CMP             R2, R3
13ED94:  IT NE
13ED96:  LDRNE.W         R12, [R2]
13ED9A:  STRH.W          R12, [R4,#0x18]
13ED9E:  LDR             R0, [R4,#0x1C]
13EDA0:  BL              nullsub_7
13EDA4:  MOV             R0, R4
13EDA6:  BL              sub_13F4D0
13EDAA:  LDR.W           R0, [R9]; dword_23DEF0
13EDAE:  MOVS            R1, #1
13EDB0:  STRB.W          R1, [R4,#0x20]
13EDB4:  MOVS            R1, #0
13EDB6:  STRB            R1, [R4,#0x13]
13EDB8:  MOVS            R1, #0
13EDBA:  LDR             R0, [R0]
13EDBC:  BL              sub_F9480
13EDC0:  MOVS            R0, #1
13EDC2:  ADD             SP, SP, #0x10
13EDC4:  POP.W           {R8-R10}
13EDC8:  POP             {R4-R7,PC}
13EDCA:  CMP             R0, #0x44 ; 'D'
13EDCC:  BEQ.W           loc_13EAD8
13EDD0:  B               loc_13EADC
13EDD2:  LDR             R0, [R4,#0x1C]
13EDD4:  BL              sub_104834
13EDD8:  LDR.W           R0, [R4,#0x1C0]
13EDDC:  SUB.W           R0, R10, R0
13EDE0:  CMP.W           R0, #0x3E8
13EDE4:  BLS             loc_13EDF0
13EDE6:  MOV             R0, R4
13EDE8:  STR.W           R10, [R4,#0x1C0]
13EDEC:  BL              sub_13FB70
13EDF0:  LDR             R0, =(off_23496C - 0x13EDF6)
13EDF2:  ADD             R0, PC; off_23496C
13EDF4:  LDR             R0, [R0]; dword_23DEF4
13EDF6:  LDR             R0, [R0]
13EDF8:  LDR.W           R0, [R0,#0x3B0]
13EDFC:  LDR.W           R8, [R0,#4]
13EE00:  CMP.W           R8, #0
13EE04:  BEQ.W           loc_13EF1E
13EE08:  LDR             R0, [R6]
13EE0A:  BL              sub_104326
13EE0E:  MOVW            R12, #0xFFFF
13EE12:  CMP             R0, #0
13EE14:  BEQ.W           loc_13EF2C
13EE18:  MOVW            R2, #0xEA60
13EE1C:  ADD.W           R3, R8, R2
13EE20:  LDRD.W          R2, R3, [R3]
13EE24:  CMP             R2, R3
13EE26:  BEQ             loc_13EF24
13EE28:  MOV.W           R5, #0x1F40
13EE2C:  LDR             R1, [R2]
13EE2E:  ADD.W           R1, R8, R1,LSL#2
13EE32:  LDR             R1, [R1,R5]
13EE34:  CMP             R1, R0
13EE36:  BEQ             loc_13EF24
13EE38:  ADDS            R2, #4
13EE3A:  CMP             R2, R3
13EE3C:  BNE             loc_13EE2C
13EE3E:  B               loc_13EF2C
13EE40:  LDR.W           R0, [R4,#0x1C0]
13EE44:  SUB.W           R0, R10, R0
13EE48:  CMP.W           R0, #0x3E8
13EE4C:  BLS.W           loc_13EBC4
13EE50:  B               loc_13EF12
13EE52:  LDR             R0, [R6]
13EE54:  BL              sub_10414A
13EE58:  CMP             R0, #0x32 ; '2'
13EE5A:  BNE.W           loc_13EBCA
13EE5E:  LDR             R0, [R6]
13EE60:  BL              sub_10411A
13EE64:  CMP             R0, #0
13EE66:  BEQ.W           loc_13EBCA
13EE6A:  LDRB.W          R0, [R4,#0x22]
13EE6E:  CBZ             R0, loc_13EE7E
13EE70:  LDR             R0, [R4,#0x1C]
13EE72:  MOVS            R2, #0
13EE74:  STRB.W          R2, [R4,#0x22]
13EE78:  LDR             R1, [R0]
13EE7A:  LDR             R1, [R1,#8]
13EE7C:  BLX             R1
13EE7E:  LDR             R0, =(off_234A68 - 0x13EE84)
13EE80:  ADD             R0, PC; off_234A68
13EE82:  LDR             R1, [R0]; dword_23FCE0
13EE84:  LDR             R0, [R4,#0x1C]
13EE86:  LDR.W           R5, [R1,#(dword_23FFDC - 0x23FCE0)]
13EE8A:  BL              sub_104648
13EE8E:  LDR             R1, =(off_23494C - 0x13EE9E)
13EE90:  SUB.W           R2, R0, #0x16
13EE94:  CMP             R2, #0xD
13EE96:  MOV.W           R2, #0
13EE9A:  ADD             R1, PC; off_23494C
13EE9C:  SUB.W           R0, R0, #0x10
13EEA0:  LDR             R1, [R1]; dword_23DF24
13EEA2:  LDR             R1, [R1]
13EEA4:  IT CC
13EEA6:  MOVCC           R2, #1
13EEA8:  CMP             R0, #3
13EEAA:  MOV.W           R0, #0
13EEAE:  IT CC
13EEB0:  MOVCC           R0, #1
13EEB2:  ORRS            R0, R2
13EEB4:  STR.W           R0, [R5,#0xA8]
13EEB8:  MOVW            R0, #:lower16:unk_2B0CBD
13EEBC:  MOVS            R2, #1
13EEBE:  MOVT            R0, #:upper16:unk_2B0CBD
13EEC2:  ADDS            R3, R1, R0
13EEC4:  MOVS            R0, #0xBF
13EEC6:  MOVS            R1, #0
13EEC8:  BLX             R3
13EECA:  LDRB.W          R1, [R4,#0x23]
13EECE:  CMP             R1, #0
13EED0:  BEQ             loc_13EFB2
13EED2:  LDR             R0, [R6]
13EED4:  BL              sub_104648
13EED8:  CBZ             R0, loc_13EEE4
13EEDA:  LDR             R0, [R4,#0x1C]
13EEDC:  BL              sub_104680
13EEE0:  CMP             R0, #0
13EEE2:  BNE             loc_13EFC2
13EEE4:  LDRB.W          R0, [R4,#0x23]
13EEE8:  CMP             R0, #0
13EEEA:  BEQ             loc_13EFC2
13EEEC:  LDR             R0, [R6]
13EEEE:  BL              sub_1046BC
13EEF2:  MOVS            R0, #0
13EEF4:  B               loc_13EFBE
13EEF6:  LDR.W           R0, [R4,#0x1BC]
13EEFA:  SUB.W           R5, R10, R0
13EEFE:  MOV             R0, R4
13EF00:  BL              sub_140128
13EF04:  CMP             R5, R0
13EF06:  BHI.W           loc_13ED32
13EF0A:  B               loc_13ED40
13EF0C:  CMP             R0, #0x64 ; 'd'
13EF0E:  BLS.W           loc_13EBC4
13EF12:  MOV             R0, R4
13EF14:  STR.W           R10, [R4,#0x1C0]
13EF18:  BL              sub_13FB70
13EF1C:  B               loc_13EBC4
13EF1E:  LDRH.W          R12, [R4,#0x1D6]
13EF22:  B               loc_13EF30
13EF24:  CMP             R2, R3
13EF26:  IT NE
13EF28:  LDRNE.W         R12, [R2]
13EF2C:  STRH.W          R12, [R4,#0x1D6]
13EF30:  UXTH.W          R1, R12
13EF34:  MOV             R0, R4
13EF36:  BL              sub_13FCD8
13EF3A:  LDRH.W          R9, [R4,#0x1D6]
13EF3E:  MOV.W           R0, R9,LSR#4
13EF42:  CMP             R0, #0x7C ; '|'
13EF44:  BHI             loc_13EF7A
13EF46:  MOV             R0, R8
13EF48:  MOV             R1, R9
13EF4A:  BL              sub_F2396
13EF4E:  CBZ             R0, loc_13EF7A
13EF50:  LDR.W           R8, [R8,R9,LSL#2]
13EF54:  CMP.W           R8, #0
13EF58:  BEQ             loc_13EF7A
13EF5A:  LDRB.W          R0, [R4,#0x22]
13EF5E:  CMP             R0, #0
13EF60:  BNE             loc_13EFEE
13EF62:  MOV             R0, R8
13EF64:  BL              sub_109A0C
13EF68:  CBZ             R0, loc_13EFE6
13EF6A:  LDR             R0, [R4,#0x1C]
13EF6C:  LDR             R1, [R0]
13EF6E:  LDR             R1, [R1,#0xC]
13EF70:  BLX             R1
13EF72:  MOVS            R0, #1
13EF74:  STRB.W          R0, [R4,#0x22]
13EF78:  B               loc_13EFEE
13EF7A:  LDRB.W          R0, [R4,#0x22]
13EF7E:  CBZ             R0, loc_13EF8E
13EF80:  LDR             R0, [R6]
13EF82:  MOVS            R1, #0
13EF84:  BL              sub_1042F4
13EF88:  LDR             R0, [R6]
13EF8A:  BL              sub_104154
13EF8E:  LDR.W           R0, [R4,#0x1BC]
13EF92:  SUB.W           R5, R10, R0
13EF96:  MOV             R0, R4
13EF98:  BL              sub_13FE10
13EF9C:  CMP             R5, R0
13EF9E:  BLS.W           loc_13EBC4
13EFA2:  BL              sub_F0B30
13EFA6:  STR.W           R0, [R4,#0x1BC]
13EFAA:  MOV             R0, R4
13EFAC:  BL              sub_13F048
13EFB0:  B               loc_13EBC4
13EFB2:  CBZ             R0, loc_13EFC2
13EFB4:  LDR             R0, [R6]
13EFB6:  BL              sub_104700
13EFBA:  CBZ             R0, loc_13EFC2
13EFBC:  MOVS            R0, #1
13EFBE:  STRB.W          R0, [R4,#0x23]
13EFC2:  LDR.W           R0, [R4,#0x1BC]
13EFC6:  SUB.W           R5, R10, R0
13EFCA:  MOV             R0, R4
13EFCC:  BL              sub_13FE10
13EFD0:  CMP             R5, R0
13EFD2:  BLS.W           loc_13EBCA
13EFD6:  BL              sub_F0B30
13EFDA:  STR.W           R0, [R4,#0x1BC]
13EFDE:  MOV             R0, R4
13EFE0:  BL              sub_140448
13EFE4:  B               loc_13EBCA
13EFE6:  LDRB.W          R0, [R4,#0x22]
13EFEA:  CMP             R0, #0
13EFEC:  BEQ             loc_13EF8E
13EFEE:  MOV             R0, R8
13EFF0:  BL              sub_109AB4
13EFF4:  VMOV            S0, R0
13EFF8:  VCMP.F32        S0, #0.0
13EFFC:  VMRS            APSR_nzcv, FPSCR
13F000:  BEQ             loc_13EF80
13F002:  B               loc_13EF8E
