; =========================================================
; Game Engine Function: sub_E2B90
; Address            : 0xE2B90 - 0xE2D8E
; =========================================================

E2B90:  PUSH            {R4-R7,LR}
E2B92:  ADD             R7, SP, #0xC
E2B94:  PUSH.W          {R8-R11}
E2B98:  SUB             SP, SP, #0x2C
E2B9A:  CMP             R1, #4
E2B9C:  MOV             R4, R0
E2B9E:  STR             R2, [SP,#0x48+var_20]
E2BA0:  BCC             loc_E2C86
E2BA2:  STR             R1, [SP,#0x48+var_40]
E2BA4:  ADD             R1, R0
E2BA6:  MOV             R4, R0
E2BA8:  SUBS            R0, R1, #3
E2BAA:  STR             R0, [SP,#0x48+var_2C]
E2BAC:  MOVS            R5, #0
E2BAE:  LDR             R0, =(unk_91EB0 - 0xE2BB8)
E2BB0:  MOVT            R5, #0x80FF
E2BB4:  ADD             R0, PC; unk_91EB0
E2BB6:  STR             R0, [SP,#0x48+var_30]
E2BB8:  LDR             R0, =(unk_91F0C - 0xE2BBE)
E2BBA:  ADD             R0, PC; unk_91F0C
E2BBC:  STR             R0, [SP,#0x48+var_34]
E2BBE:  LDR             R0, =(unk_91EF8 - 0xE2BC4)
E2BC0:  ADD             R0, PC; unk_91EF8
E2BC2:  STR             R0, [SP,#0x48+var_38]
E2BC4:  LDR             R0, =(unk_91EE4 - 0xE2BCA)
E2BC6:  ADD             R0, PC; unk_91EE4
E2BC8:  STR             R0, [SP,#0x48+var_3C]
E2BCA:  LDR             R0, =(unk_91ED0 - 0xE2BD2)
E2BCC:  STR             R4, [SP,#0x48+var_44]
E2BCE:  ADD             R0, PC; unk_91ED0
E2BD0:  MOV             R9, R0
E2BD2:  LDR             R0, [SP,#0x48+var_2C]
E2BD4:  CMP             R4, R0
E2BD6:  BCS             loc_E2C82
E2BD8:  LDRB            R1, [R4]
E2BDA:  LDR             R6, [SP,#0x48+var_30]
E2BDC:  LDRB            R2, [R4,#1]
E2BDE:  LSRS            R0, R1, #3
E2BE0:  LDRB            R3, [R4,#2]
E2BE2:  LDRB            R6, [R6,R0]
E2BE4:  LSR.W           R0, R5, R0
E2BE8:  AND.W           R0, R0, #1
E2BEC:  LDRB.W          R10, [R4,#3]
E2BF0:  ADD             R6, R0
E2BF2:  LDR             R0, [SP,#0x48+var_34]
E2BF4:  LDR.W           R8, [R9,R6,LSL#2]
E2BF8:  LDR.W           R12, [R0,R6,LSL#2]
E2BFC:  LDR             R0, [SP,#0x48+var_38]
E2BFE:  AND.W           R1, R1, R8
E2C02:  LDR.W           R11, [R0,R6,LSL#2]
E2C06:  LDR             R0, [SP,#0x48+var_3C]
E2C08:  LDR.W           LR, [R0,R6,LSL#2]
E2C0C:  AND.W           R0, R2, #0x3F ; '?'
E2C10:  LSLS            R0, R0, #0xC
E2C12:  ORR.W           R0, R0, R1,LSL#18
E2C16:  AND.W           R1, R3, #0x3F ; '?'
E2C1A:  ORR.W           R0, R0, R1,LSL#6
E2C1E:  AND.W           R1, R10, #0x3F ; '?'
E2C22:  ADD             R0, R1
E2C24:  MOVS            R1, #0x30 ; '0'
E2C26:  AND.W           R1, R1, R2,LSR#2
E2C2A:  MOVS            R2, #0xC
E2C2C:  AND.W           R2, R2, R3,LSR#4
E2C30:  MOV             R3, R6
E2C32:  ADD             R1, R2
E2C34:  ORR.W           R2, R1, R10,LSR#6
E2C38:  LSR.W           R1, R0, R11
E2C3C:  MOVW            R0, #:lower16:(loc_10FFFE+1)
E2C40:  CMP             LR, R1
E2C42:  MOVT            R0, #:upper16:(loc_10FFFE+1)
E2C46:  IT HI
E2C48:  ADDHI           R2, #0x40 ; '@'
E2C4A:  CMP             R0, R1
E2C4C:  MOVW            R0, #0x7FF
E2C50:  IT CC
E2C52:  ADDCC.W         R2, R2, #0x100
E2C56:  BIC.W           R0, R1, R0
E2C5A:  CMP.W           R0, #0xD800
E2C5E:  IT EQ
E2C60:  ORREQ.W         R2, R2, #0x80
E2C64:  EOR.W           R0, R2, #0x2A ; '*'
E2C68:  MOV             R2, R4
E2C6A:  LSRS.W          R0, R0, R12
E2C6E:  IT NE
E2C70:  MOVNE.W         R1, #0xFFFFFFFF
E2C74:  ADD             R0, SP, #0x48+var_20
E2C76:  BL              sub_E2DB8
E2C7A:  ADD             R4, R6
E2C7C:  CMP             R0, #0
E2C7E:  BNE             loc_E2BD2
E2C80:  B               loc_E2D86
E2C82:  LDRD.W          R0, R1, [SP,#0x48+var_44]
E2C86:  ADD             R0, R1
E2C88:  SUBS            R5, R0, R4
E2C8A:  BEQ             loc_E2D86
E2C8C:  ADD.W           R11, SP, #0x48+var_28
E2C90:  MOVS            R0, #0
E2C92:  STR.W           R0, [SP,#0x48+var_28+3]
E2C96:  MOV             R1, R4
E2C98:  STR             R0, [SP,#0x48+var_28]
E2C9A:  MOV             R0, R11
E2C9C:  MOV             R2, R5
E2C9E:  MOVS            R3, #7
E2CA0:  BLX             __memcpy_chk
E2CA4:  LDR             R0, =(unk_91EB0 - 0xE2CAA)
E2CA6:  ADD             R0, PC; unk_91EB0
E2CA8:  STR             R0, [SP,#0x48+var_2C]
E2CAA:  LDR             R0, =(unk_91F0C - 0xE2CB0)
E2CAC:  ADD             R0, PC; unk_91F0C
E2CAE:  STR             R0, [SP,#0x48+var_30]
E2CB0:  LDR             R0, =(unk_91EF8 - 0xE2CB6)
E2CB2:  ADD             R0, PC; unk_91EF8
E2CB4:  STR             R0, [SP,#0x48+var_34]
E2CB6:  LDR             R0, =(unk_91EE4 - 0xE2CBC)
E2CB8:  ADD             R0, PC; unk_91EE4
E2CBA:  STR             R0, [SP,#0x48+var_38]
E2CBC:  LDR             R0, =(unk_91ED0 - 0xE2CC2)
E2CBE:  ADD             R0, PC; unk_91ED0
E2CC0:  STRD.W          R5, R0, [SP,#0x48+var_40]
E2CC4:  LDRB.W          R1, [R11]
E2CC8:  MOVS            R5, #0
E2CCA:  LDR             R6, [SP,#0x48+var_2C]
E2CCC:  MOVT            R5, #0x80FF
E2CD0:  LDRB.W          R2, [R11,#1]
E2CD4:  LSRS            R0, R1, #3
E2CD6:  LDRB.W          R3, [R11,#2]
E2CDA:  LDRB            R6, [R6,R0]
E2CDC:  LSR.W           R0, R5, R0
E2CE0:  AND.W           R0, R0, #1
E2CE4:  LDRB.W          R10, [R11,#3]
E2CE8:  ADD             R6, R0
E2CEA:  LDR             R0, [SP,#0x48+var_30]
E2CEC:  LDR.W           R12, [R0,R6,LSL#2]
E2CF0:  LDR             R0, [SP,#0x48+var_34]
E2CF2:  LDR.W           R9, [R0,R6,LSL#2]
E2CF6:  LDR             R0, [SP,#0x48+var_38]
E2CF8:  LDR.W           LR, [R0,R6,LSL#2]
E2CFC:  LDR             R0, [SP,#0x48+var_3C]
E2CFE:  LDR.W           R8, [R0,R6,LSL#2]
E2D02:  AND.W           R0, R2, #0x3F ; '?'
E2D06:  LSLS            R0, R0, #0xC
E2D08:  AND.W           R1, R1, R8
E2D0C:  ORR.W           R0, R0, R1,LSL#18
E2D10:  AND.W           R1, R3, #0x3F ; '?'
E2D14:  ORR.W           R0, R0, R1,LSL#6
E2D18:  AND.W           R1, R10, #0x3F ; '?'
E2D1C:  ADD             R0, R1
E2D1E:  MOVS            R1, #0x30 ; '0'
E2D20:  AND.W           R1, R1, R2,LSR#2
E2D24:  MOVS            R2, #0xC
E2D26:  AND.W           R2, R2, R3,LSR#4
E2D2A:  MOV             R3, R6
E2D2C:  ADD             R1, R2
E2D2E:  ORR.W           R2, R1, R10,LSR#6
E2D32:  LSR.W           R1, R0, R9
E2D36:  MOVW            R0, #:lower16:(loc_10FFFE+1)
E2D3A:  CMP             LR, R1
E2D3C:  MOVT            R0, #:upper16:(loc_10FFFE+1)
E2D40:  IT HI
E2D42:  ADDHI           R2, #0x40 ; '@'
E2D44:  CMP             R0, R1
E2D46:  MOVW            R0, #0x7FF
E2D4A:  IT CC
E2D4C:  ADDCC.W         R2, R2, #0x100
E2D50:  BIC.W           R0, R1, R0
E2D54:  CMP.W           R0, #0xD800
E2D58:  IT EQ
E2D5A:  ORREQ.W         R2, R2, #0x80
E2D5E:  EOR.W           R0, R2, #0x2A ; '*'
E2D62:  MOV             R2, R4
E2D64:  LSRS.W          R0, R0, R12
E2D68:  IT NE
E2D6A:  MOVNE.W         R1, #0xFFFFFFFF
E2D6E:  ADD             R0, SP, #0x48+var_20
E2D70:  BL              sub_E2DB8
E2D74:  CBZ             R0, loc_E2D86
E2D76:  ADD             R11, R6
E2D78:  ADD             R0, SP, #0x48+var_28
E2D7A:  LDR             R5, [SP,#0x48+var_40]
E2D7C:  SUB.W           R0, R11, R0
E2D80:  ADD             R4, R6
E2D82:  CMP             R0, R5
E2D84:  BLT             loc_E2CC4
E2D86:  ADD             SP, SP, #0x2C ; ','
E2D88:  POP.W           {R8-R11}
E2D8C:  POP             {R4-R7,PC}
