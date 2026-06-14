; =========================================================
; Game Engine Function: _Z25_rwRasterSetFromImage1555PhiP7RwImage
; Address            : 0x1AAEC8 - 0x1AB0EA
; =========================================================

1AAEC8:  PUSH            {R4-R7,LR}
1AAECA:  ADD             R7, SP, #0xC
1AAECC:  PUSH.W          {R8-R11}
1AAED0:  SUB             SP, SP, #0x20
1AAED2:  LDRD.W          R12, R3, [R2,#4]
1AAED6:  ADD.W           R11, R2, #0xC
1AAEDA:  STR             R3, [SP,#0x3C+var_24]
1AAEDC:  LDM.W           R11, {R3,R6,R11}
1AAEE0:  CMP             R3, #4
1AAEE2:  IT NE
1AAEE4:  CMPNE           R3, #8
1AAEE6:  BEQ.W           loc_1AB076
1AAEEA:  CMP             R3, #0x20 ; ' '
1AAEEC:  BNE.W           loc_1AB0E0
1AAEF0:  LDR             R2, [SP,#0x3C+var_24]
1AAEF2:  CMP             R2, #1
1AAEF4:  BLT.W           loc_1AB0DC
1AAEF8:  BIC.W           R2, R12, #7
1AAEFC:  STR             R2, [SP,#0x3C+var_34]
1AAEFE:  MOV.W           R2, R12,LSL#2
1AAF02:  VMOV.I32        Q8, #0x8000
1AAF06:  STR             R2, [SP,#0x3C+var_38]
1AAF08:  MOV.W           R2, R12,LSL#1
1AAF0C:  STR             R2, [SP,#0x3C+var_3C]
1AAF0E:  MOV.W           R2, #0x3E0
1AAF12:  VMOV.I32        Q9, #0x7C00
1AAF16:  VDUP.32         Q10, R2
1AAF1A:  MOVS            R3, #0
1AAF1C:  STRD.W          R11, R0, [SP,#0x3C+var_2C]
1AAF20:  STR             R6, [SP,#0x3C+var_20]
1AAF22:  CMP.W           R12, #1
1AAF26:  STR             R3, [SP,#0x3C+var_30]
1AAF28:  BLT.W           loc_1AB05A
1AAF2C:  MOVS            R2, #0
1AAF2E:  CMP.W           R12, #8
1AAF32:  BCC             loc_1AAF6E
1AAF34:  LDR             R3, [SP,#0x3C+var_34]
1AAF36:  MOV.W           R10, #0x8000
1AAF3A:  MOV.W           R9, #0x7C00
1AAF3E:  CMP             R3, #0
1AAF40:  LDRD.W          R3, R8, [SP,#0x3C+var_2C]
1AAF44:  BEQ             loc_1AB020
1AAF46:  LDR             R6, [SP,#0x3C+var_30]
1AAF48:  MOV             R5, R1
1AAF4A:  LDR             R4, [SP,#0x3C+var_20]
1AAF4C:  LDR             R2, [SP,#0x3C+var_38]
1AAF4E:  MLA.W           R3, R6, R5, R0
1AAF52:  MLA.W           R2, R4, R6, R2
1AAF56:  ADD             R2, R11
1AAF58:  CMP             R3, R2
1AAF5A:  BCS             loc_1AAF7C
1AAF5C:  LDR             R2, [SP,#0x3C+var_3C]
1AAF5E:  MLA.W           R3, R4, R6, R11
1AAF62:  MLA.W           R2, R6, R5, R2
1AAF66:  ADD             R2, R0
1AAF68:  CMP             R3, R2
1AAF6A:  BCS             loc_1AAF7C
1AAF6C:  MOVS            R2, #0
1AAF6E:  LDRD.W          R3, R8, [SP,#0x3C+var_2C]
1AAF72:  MOV.W           R10, #0x8000
1AAF76:  MOV.W           R9, #0x7C00
1AAF7A:  B               loc_1AB020
1AAF7C:  LDR.W           LR, [SP,#0x3C+var_34]
1AAF80:  MOV             R4, R5
1AAF82:  LDR.W           R9, [SP,#0x3C+var_2C]
1AAF86:  LDR.W           R10, [SP,#0x3C+var_28]
1AAF8A:  ADD.W           R3, R9, LR,LSL#2
1AAF8E:  MOV             R2, LR
1AAF90:  ADD.W           R8, R10, LR,LSL#1
1AAF94:  VLD4.8          {D22-D25}, [R9]!
1AAF98:  SUBS.W          LR, LR, #8
1AAF9C:  VMOVL.U8        Q14, D22
1AAFA0:  VMOVL.U8        Q13, D25
1AAFA4:  VMOVL.U8        Q15, D23
1AAFA8:  VMOVL.U8        Q11, D24
1AAFAC:  VSHLL.U16       Q1, D28, #7
1AAFB0:  VSHLL.U16       Q0, D26, #8
1AAFB4:  VSHLL.U16       Q12, D27, #8
1AAFB8:  VSHLL.U16       Q13, D29, #7
1AAFBC:  VSHLL.U16       Q14, D31, #2
1AAFC0:  VMOVL.U16       Q2, D23
1AAFC4:  VAND            Q12, Q12, Q8
1AAFC8:  VAND            Q13, Q13, Q9
1AAFCC:  VMOVL.U16       Q11, D22
1AAFD0:  VAND            Q0, Q0, Q8
1AAFD4:  VAND            Q1, Q1, Q9
1AAFD8:  VSHLL.U16       Q15, D30, #2
1AAFDC:  VORR            Q12, Q13, Q12
1AAFE0:  VAND            Q14, Q14, Q10
1AAFE4:  VAND            Q13, Q15, Q10
1AAFE8:  VORR            Q15, Q1, Q0
1AAFEC:  VSHR.U32        Q0, Q2, #3
1AAFF0:  VORR            Q12, Q12, Q14
1AAFF4:  VSHR.U32        Q11, Q11, #3
1AAFF8:  VORR            Q13, Q15, Q13
1AAFFC:  VORR            Q12, Q12, Q0
1AB000:  VORR            Q11, Q13, Q11
1AB004:  VMOVN.I32       D25, Q12
1AB008:  VMOVN.I32       D24, Q11
1AB00C:  VST1.16         {D24-D25}, [R10]!
1AB010:  BNE             loc_1AAF94
1AB012:  CMP             R12, R2
1AB014:  MOV             R1, R4
1AB016:  MOV.W           R10, #0x8000
1AB01A:  MOV.W           R9, #0x7C00
1AB01E:  BEQ             loc_1AB05A
1AB020:  SUB.W           LR, R12, R2
1AB024:  ADDS            R3, #1
1AB026:  LDRB.W          R4, [R3,#-1]
1AB02A:  SUBS.W          LR, LR, #1
1AB02E:  LDRB            R6, [R3,#2]
1AB030:  LDRB            R5, [R3]
1AB032:  LDRB            R2, [R3,#1]
1AB034:  AND.W           R4, R9, R4,LSL#7
1AB038:  AND.W           R6, R10, R6,LSL#8
1AB03C:  ADD.W           R3, R3, #4
1AB040:  ORR.W           R6, R6, R4
1AB044:  MOV.W           R4, #0x3E0
1AB048:  AND.W           R5, R4, R5,LSL#2
1AB04C:  ORR.W           R6, R6, R5
1AB050:  ORR.W           R2, R6, R2,LSR#3
1AB054:  STRH.W          R2, [R8],#2
1AB058:  BNE             loc_1AB026
1AB05A:  LDR             R2, [SP,#0x3C+var_2C]
1AB05C:  LDR             R6, [SP,#0x3C+var_20]
1AB05E:  LDR             R3, [SP,#0x3C+var_30]
1AB060:  ADD             R2, R6
1AB062:  STR             R2, [SP,#0x3C+var_2C]
1AB064:  LDR             R2, [SP,#0x3C+var_28]
1AB066:  ADDS            R3, #1
1AB068:  ADD             R2, R1
1AB06A:  STR             R2, [SP,#0x3C+var_28]
1AB06C:  LDR             R2, [SP,#0x3C+var_24]
1AB06E:  CMP             R3, R2
1AB070:  BNE.W           loc_1AAF22
1AB074:  B               loc_1AB0DC
1AB076:  LDR             R3, [SP,#0x3C+var_24]
1AB078:  CMP             R3, #1
1AB07A:  BLT             loc_1AB0DC
1AB07C:  STR             R6, [SP,#0x3C+var_20]
1AB07E:  MOV.W           LR, #0
1AB082:  STR             R1, [SP,#0x3C+var_28]
1AB084:  MOV.W           R8, #0x7C00
1AB088:  LDR             R1, [R2,#0x18]
1AB08A:  MOV.W           R9, #0x8000
1AB08E:  MOV.W           R10, #0x3E0
1AB092:  CMP.W           R12, #1
1AB096:  BLT             loc_1AB0CA
1AB098:  MOVS            R2, #0
1AB09A:  LDRB.W          R4, [R11,R2]
1AB09E:  LDRB.W          R6, [R1,R4,LSL#2]
1AB0A2:  ADD.W           R4, R1, R4,LSL#2
1AB0A6:  LDRB            R5, [R4,#1]
1AB0A8:  LDRB            R3, [R4,#2]
1AB0AA:  AND.W           R6, R8, R6,LSL#7
1AB0AE:  LDRB            R4, [R4,#3]
1AB0B0:  AND.W           R5, R10, R5,LSL#2
1AB0B4:  AND.W           R4, R9, R4,LSL#8
1AB0B8:  ORRS            R4, R6
1AB0BA:  ORRS            R4, R5
1AB0BC:  ORR.W           R3, R4, R3,LSR#3
1AB0C0:  STRH.W          R3, [R0,R2,LSL#1]
1AB0C4:  ADDS            R2, #1
1AB0C6:  CMP             R12, R2
1AB0C8:  BNE             loc_1AB09A
1AB0CA:  LDR             R2, [SP,#0x3C+var_20]
1AB0CC:  ADD.W           LR, LR, #1
1AB0D0:  ADD             R11, R2
1AB0D2:  LDR             R2, [SP,#0x3C+var_28]
1AB0D4:  ADD             R0, R2
1AB0D6:  LDR             R2, [SP,#0x3C+var_24]
1AB0D8:  CMP             LR, R2
1AB0DA:  BNE             loc_1AB092
1AB0DC:  MOVS            R0, #1
1AB0DE:  B               loc_1AB0E2
1AB0E0:  MOVS            R0, #0
1AB0E2:  ADD             SP, SP, #0x20 ; ' '
1AB0E4:  POP.W           {R8-R11}
1AB0E8:  POP             {R4-R7,PC}
