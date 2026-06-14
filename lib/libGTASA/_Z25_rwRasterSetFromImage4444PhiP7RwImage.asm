; =========================================================
; Game Engine Function: _Z25_rwRasterSetFromImage4444PhiP7RwImage
; Address            : 0x1AACBA - 0x1AAEC8
; =========================================================

1AACBA:  PUSH            {R4-R7,LR}
1AACBC:  ADD             R7, SP, #0xC
1AACBE:  PUSH.W          {R8-R11}
1AACC2:  SUB             SP, SP, #0x20
1AACC4:  LDRD.W          R10, R3, [R2,#4]
1AACC8:  ADD.W           LR, R2, #0xC
1AACCC:  STR             R3, [SP,#0x3C+var_20]
1AACCE:  LDM.W           LR, {R3,R12,LR}
1AACD2:  CMP             R3, #4
1AACD4:  IT NE
1AACD6:  CMPNE           R3, #8
1AACD8:  BEQ.W           loc_1AAE58
1AACDC:  CMP             R3, #0x20 ; ' '
1AACDE:  BNE.W           loc_1AAEBE
1AACE2:  LDR             R2, [SP,#0x3C+var_20]
1AACE4:  CMP             R2, #1
1AACE6:  BLT.W           loc_1AAEBA
1AACEA:  BIC.W           R2, R10, #7
1AACEE:  VMOV.I8         D16, #0xF0
1AACF2:  VMOV.I32        Q9, #0xF000
1AACF6:  STR             R2, [SP,#0x3C+var_34]
1AACF8:  VMOV.I32        Q10, #0xF00
1AACFC:  MOV.W           R2, R10,LSL#2
1AAD00:  STR             R2, [SP,#0x3C+var_38]
1AAD02:  MOV.W           R2, R10,LSL#1
1AAD06:  MOVS            R3, #0
1AAD08:  STR             R2, [SP,#0x3C+var_3C]
1AAD0A:  STRD.W          LR, R0, [SP,#0x3C+var_28]
1AAD0E:  STR             R1, [SP,#0x3C+var_30]
1AAD10:  CMP.W           R10, #1
1AAD14:  STR             R3, [SP,#0x3C+var_2C]
1AAD16:  BLT.W           loc_1AAE3C
1AAD1A:  MOVS            R1, #0
1AAD1C:  CMP.W           R10, #8
1AAD20:  BCC             loc_1AAD5A
1AAD22:  LDR             R2, [SP,#0x3C+var_34]
1AAD24:  MOV.W           R9, #0xF000
1AAD28:  LDRD.W          R3, R11, [SP,#0x3C+var_28]
1AAD2C:  MOV.W           R8, #0xF00
1AAD30:  CMP             R2, #0
1AAD32:  BEQ             loc_1AAE08
1AAD34:  LDR             R3, [SP,#0x3C+var_2C]
1AAD36:  LDR             R2, [SP,#0x3C+var_30]
1AAD38:  LDR             R1, [SP,#0x3C+var_38]
1AAD3A:  MLA.W           R1, R12, R3, R1
1AAD3E:  MLA.W           R6, R3, R2, R0
1AAD42:  ADD             R1, LR
1AAD44:  CMP             R6, R1
1AAD46:  BCS             loc_1AAD68
1AAD48:  LDR             R1, [SP,#0x3C+var_3C]
1AAD4A:  MLA.W           R6, R12, R3, LR
1AAD4E:  MLA.W           R1, R3, R2, R1
1AAD52:  ADD             R1, R0
1AAD54:  CMP             R6, R1
1AAD56:  BCS             loc_1AAD68
1AAD58:  MOVS            R1, #0
1AAD5A:  LDRD.W          R3, R11, [SP,#0x3C+var_28]
1AAD5E:  MOV.W           R9, #0xF000
1AAD62:  MOV.W           R8, #0xF00
1AAD66:  B               loc_1AAE08
1AAD68:  MOV             R2, R12
1AAD6A:  LDR.W           R12, [SP,#0x3C+var_34]
1AAD6E:  LDR.W           R8, [SP,#0x3C+var_28]
1AAD72:  LDR.W           R9, [SP,#0x3C+var_24]
1AAD76:  ADD.W           R3, R8, R12,LSL#2
1AAD7A:  MOV             R1, R12
1AAD7C:  ADD.W           R11, R9, R12,LSL#1
1AAD80:  VLD4.8          {D22-D25}, [R8]!
1AAD84:  SUBS.W          R12, R12, #8
1AAD88:  VAND            D17, D23, D16
1AAD8C:  VMOVL.U8        Q14, D22
1AAD90:  VMOVL.U8        Q13, D25
1AAD94:  VMOVL.U8        Q11, D24
1AAD98:  VSHLL.U16       Q0, D29, #4
1AAD9C:  VSHLL.U16       Q15, D27, #8
1AADA0:  VSHLL.U16       Q12, D26, #8
1AADA4:  VSHLL.U16       Q13, D28, #4
1AADA8:  VAND            Q14, Q15, Q9
1AADAC:  VAND            Q15, Q0, Q10
1AADB0:  VMOVL.U8        Q0, D17
1AADB4:  VMOVL.U16       Q1, D23
1AADB8:  VMOVL.U16       Q11, D22
1AADBC:  VAND            Q12, Q12, Q9
1AADC0:  VAND            Q13, Q13, Q10
1AADC4:  VMOVL.U16       Q2, D1
1AADC8:  VORR            Q14, Q15, Q14
1AADCC:  VMOVL.U16       Q15, D0
1AADD0:  VORR            Q12, Q13, Q12
1AADD4:  VSHR.U32        Q13, Q1, #4
1AADD8:  VORR            Q14, Q14, Q2
1AADDC:  VSHR.U32        Q11, Q11, #4
1AADE0:  VORR            Q12, Q12, Q15
1AADE4:  VORR            Q13, Q14, Q13
1AADE8:  VORR            Q11, Q12, Q11
1AADEC:  VMOVN.I32       D25, Q13
1AADF0:  VMOVN.I32       D24, Q11
1AADF4:  VST1.16         {D24-D25}, [R9]!
1AADF8:  BNE             loc_1AAD80
1AADFA:  CMP             R10, R1
1AADFC:  MOV             R12, R2
1AADFE:  MOV.W           R9, #0xF000
1AAE02:  MOV.W           R8, #0xF00
1AAE06:  BEQ             loc_1AAE3C
1AAE08:  SUB.W           R1, R10, R1
1AAE0C:  ADDS            R6, R3, #1
1AAE0E:  LDRB.W          R3, [R6,#-1]
1AAE12:  SUBS            R1, #1
1AAE14:  LDRB            R2, [R6,#2]
1AAE16:  LDRB            R4, [R6]
1AAE18:  LDRB            R5, [R6,#1]
1AAE1A:  AND.W           R3, R8, R3,LSL#4
1AAE1E:  AND.W           R2, R9, R2,LSL#8
1AAE22:  ADD.W           R6, R6, #4
1AAE26:  ORR.W           R2, R2, R3
1AAE2A:  AND.W           R3, R4, #0xF0
1AAE2E:  ORR.W           R2, R2, R3
1AAE32:  ORR.W           R2, R2, R5,LSR#4
1AAE36:  STRH.W          R2, [R11],#2
1AAE3A:  BNE             loc_1AAE0E
1AAE3C:  LDR             R1, [SP,#0x3C+var_28]
1AAE3E:  LDR             R2, [SP,#0x3C+var_24]
1AAE40:  ADD             R1, R12
1AAE42:  STR             R1, [SP,#0x3C+var_28]
1AAE44:  LDR             R1, [SP,#0x3C+var_30]
1AAE46:  LDR             R3, [SP,#0x3C+var_2C]
1AAE48:  ADD             R2, R1
1AAE4A:  STR             R2, [SP,#0x3C+var_24]
1AAE4C:  LDR             R2, [SP,#0x3C+var_20]
1AAE4E:  ADDS            R3, #1
1AAE50:  CMP             R3, R2
1AAE52:  BNE.W           loc_1AAD10
1AAE56:  B               loc_1AAEBA
1AAE58:  LDR             R3, [SP,#0x3C+var_20]
1AAE5A:  CMP             R3, #1
1AAE5C:  BLT             loc_1AAEBA
1AAE5E:  STR.W           R12, [SP,#0x3C+var_24]
1AAE62:  MOV.W           R12, #0
1AAE66:  LDR.W           R11, [R2,#0x18]
1AAE6A:  MOV.W           R8, #0xF00
1AAE6E:  MOV.W           R9, #0xF000
1AAE72:  CMP.W           R10, #1
1AAE76:  BLT             loc_1AAEAA
1AAE78:  MOVS            R3, #0
1AAE7A:  LDRB.W          R2, [LR,R3]
1AAE7E:  LDRB.W          R4, [R11,R2,LSL#2]
1AAE82:  ADD.W           R2, R11, R2,LSL#2
1AAE86:  LDRB            R6, [R2,#1]
1AAE88:  LDRB            R5, [R2,#2]
1AAE8A:  AND.W           R4, R8, R4,LSL#4
1AAE8E:  LDRB            R2, [R2,#3]
1AAE90:  AND.W           R2, R9, R2,LSL#8
1AAE94:  ORRS            R2, R4
1AAE96:  AND.W           R4, R6, #0xF0
1AAE9A:  ORRS            R2, R4
1AAE9C:  ORR.W           R2, R2, R5,LSR#4
1AAEA0:  STRH.W          R2, [R0,R3,LSL#1]
1AAEA4:  ADDS            R3, #1
1AAEA6:  CMP             R10, R3
1AAEA8:  BNE             loc_1AAE7A
1AAEAA:  LDR             R2, [SP,#0x3C+var_24]
1AAEAC:  ADD             R0, R1
1AAEAE:  ADD.W           R12, R12, #1
1AAEB2:  ADD             LR, R2
1AAEB4:  LDR             R2, [SP,#0x3C+var_20]
1AAEB6:  CMP             R12, R2
1AAEB8:  BNE             loc_1AAE72
1AAEBA:  MOVS            R0, #1
1AAEBC:  B               loc_1AAEC0
1AAEBE:  MOVS            R0, #0
1AAEC0:  ADD             SP, SP, #0x20 ; ' '
1AAEC2:  POP.W           {R8-R11}
1AAEC6:  POP             {R4-R7,PC}
