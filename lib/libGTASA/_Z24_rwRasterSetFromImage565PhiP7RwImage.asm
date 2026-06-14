; =========================================================
; Game Engine Function: _Z24_rwRasterSetFromImage565PhiP7RwImage
; Address            : 0x1AB0EA - 0x1AB2D2
; =========================================================

1AB0EA:  PUSH            {R4-R7,LR}
1AB0EC:  ADD             R7, SP, #0xC
1AB0EE:  PUSH.W          {R8-R11}
1AB0F2:  SUB             SP, SP, #0x24
1AB0F4:  ADD.W           LR, R2, #0xC
1AB0F8:  MOV             R9, R1
1AB0FA:  LDRD.W          R10, R11, [R2,#4]
1AB0FE:  LDM.W           LR, {R1,R12,LR}
1AB102:  CMP             R1, #4
1AB104:  STR.W           R12, [SP,#0x40+var_20]
1AB108:  IT NE
1AB10A:  CMPNE           R1, #8
1AB10C:  BEQ.W           loc_1AB272
1AB110:  CMP             R1, #0x20 ; ' '
1AB112:  BNE.W           loc_1AB2C8
1AB116:  CMP.W           R11, #1
1AB11A:  BLT.W           loc_1AB2C4
1AB11E:  MOV.W           R1, #0xFFFFFFFF
1AB122:  MOV.W           R5, #0x7E0
1AB126:  ADD.W           R1, R1, R10,LSL#2
1AB12A:  STR             R1, [SP,#0x40+var_38]
1AB12C:  ANDS.W          R1, R10, #7
1AB130:  VMOV.I32        Q8, #0xF800
1AB134:  IT EQ
1AB136:  MOVEQ           R1, #8
1AB138:  VDUP.32         Q9, R5
1AB13C:  SUB.W           R1, R10, R1
1AB140:  STR             R1, [SP,#0x40+var_34]
1AB142:  MOV.W           R1, R10,LSL#1
1AB146:  MOV.W           R2, #0xF800
1AB14A:  STR             R1, [SP,#0x40+var_3C]
1AB14C:  MOVS            R1, #0
1AB14E:  STRD.W          LR, R0, [SP,#0x40+var_28]
1AB152:  STR.W           R11, [SP,#0x40+var_30]
1AB156:  STR.W           R10, [SP,#0x40+var_40]
1AB15A:  CMP.W           R10, #1
1AB15E:  STR             R1, [SP,#0x40+var_2C]
1AB160:  BLT             loc_1AB256
1AB162:  MOV.W           R12, #0
1AB166:  CMP.W           R10, #8
1AB16A:  BCC             loc_1AB19E
1AB16C:  LDR             R1, [SP,#0x40+var_34]
1AB16E:  LDRD.W          R8, R11, [SP,#0x40+var_28]
1AB172:  CMP             R1, #0
1AB174:  BEQ             loc_1AB226
1AB176:  LDR             R6, [SP,#0x40+var_2C]
1AB178:  LDR             R3, [SP,#0x40+var_20]
1AB17A:  LDR             R1, [SP,#0x40+var_38]
1AB17C:  MLA.W           R4, R6, R9, R0
1AB180:  MLA.W           R1, R3, R6, R1
1AB184:  ADD             R1, LR
1AB186:  CMP             R4, R1
1AB188:  BCS             loc_1AB1A4
1AB18A:  LDR             R1, [SP,#0x40+var_3C]
1AB18C:  MLA.W           R4, R3, R6, LR
1AB190:  MLA.W           R1, R6, R9, R1
1AB194:  ADD             R1, R0
1AB196:  CMP             R4, R1
1AB198:  BCS             loc_1AB1A4
1AB19A:  MOV.W           R12, #0
1AB19E:  LDRD.W          R8, R11, [SP,#0x40+var_28]
1AB1A2:  B               loc_1AB226
1AB1A4:  LDR.W           R12, [SP,#0x40+var_34]
1AB1A8:  MOV             R1, R9
1AB1AA:  LDR.W           R10, [SP,#0x40+var_28]
1AB1AE:  LDR.W           R9, [SP,#0x40+var_24]
1AB1B2:  ADD.W           R8, R10, R12,LSL#2
1AB1B6:  ADD.W           R11, R9, R12,LSL#1
1AB1BA:  VLD4.8          {D20-D23}, [R10]!
1AB1BE:  SUBS.W          R12, R12, #8
1AB1C2:  VMOVL.U8        Q12, D20
1AB1C6:  VMOVL.U8        Q13, D22
1AB1CA:  VMOVL.U8        Q10, D21
1AB1CE:  VSHLL.U16       Q11, D24, #8
1AB1D2:  VSHLL.U16       Q12, D25, #8
1AB1D6:  VSHLL.U16       Q15, D20, #3
1AB1DA:  VSHLL.U16       Q10, D21, #3
1AB1DE:  VMOVL.U16       Q14, D27
1AB1E2:  VMOVL.U16       Q13, D26
1AB1E6:  VAND            Q12, Q12, Q8
1AB1EA:  VAND            Q10, Q10, Q9
1AB1EE:  VAND            Q11, Q11, Q8
1AB1F2:  VAND            Q15, Q15, Q9
1AB1F6:  VORR            Q10, Q10, Q12
1AB1FA:  VSHR.U32        Q12, Q14, #3
1AB1FE:  VORR            Q11, Q15, Q11
1AB202:  VSHR.U32        Q13, Q13, #3
1AB206:  VORR            Q10, Q10, Q12
1AB20A:  VORR            Q11, Q11, Q13
1AB20E:  VMOVN.I32       D21, Q10
1AB212:  VMOVN.I32       D20, Q11
1AB216:  VST1.16         {D20-D21}, [R9]!
1AB21A:  BNE             loc_1AB1BA
1AB21C:  LDR.W           R12, [SP,#0x40+var_34]
1AB220:  MOV             R9, R1
1AB222:  LDR.W           R10, [SP,#0x40+var_40]
1AB226:  SUB.W           R1, R10, R12
1AB22A:  LDR.W           R12, [SP,#0x40+var_20]
1AB22E:  LDRB.W          R4, [R8]
1AB232:  SUBS            R1, #1
1AB234:  LDRB.W          R3, [R8,#1]
1AB238:  LDRB.W          R6, [R8,#2]
1AB23C:  ADD.W           R8, R8, #4
1AB240:  AND.W           R4, R2, R4,LSL#8
1AB244:  AND.W           R3, R5, R3,LSL#3
1AB248:  ORR.W           R3, R3, R4
1AB24C:  ORR.W           R3, R3, R6,LSR#3
1AB250:  STRH.W          R3, [R11],#2
1AB254:  BNE             loc_1AB22E
1AB256:  LDR             R1, [SP,#0x40+var_28]
1AB258:  LDR.W           R11, [SP,#0x40+var_30]
1AB25C:  ADD             R1, R12
1AB25E:  STR             R1, [SP,#0x40+var_28]
1AB260:  LDR             R1, [SP,#0x40+var_24]
1AB262:  ADD             R1, R9
1AB264:  STR             R1, [SP,#0x40+var_24]
1AB266:  LDR             R1, [SP,#0x40+var_2C]
1AB268:  ADDS            R1, #1
1AB26A:  CMP             R1, R11
1AB26C:  BNE.W           loc_1AB15A
1AB270:  B               loc_1AB2C4
1AB272:  CMP.W           R11, #1
1AB276:  BLT             loc_1AB2C4
1AB278:  LDR             R2, [R2,#0x18]
1AB27A:  MOV.W           R12, #0
1AB27E:  MOV.W           R8, #0xF800
1AB282:  MOV.W           R5, #0x7E0
1AB286:  CMP.W           R10, #1
1AB28A:  BLT             loc_1AB2B6
1AB28C:  MOVS            R3, #0
1AB28E:  LDRB.W          R6, [LR,R3]
1AB292:  LDRB.W          R4, [R2,R6,LSL#2]
1AB296:  ADD.W           R6, R2, R6,LSL#2
1AB29A:  LDRB            R1, [R6,#1]
1AB29C:  LDRB            R6, [R6,#2]
1AB29E:  AND.W           R4, R8, R4,LSL#8
1AB2A2:  AND.W           R1, R5, R1,LSL#3
1AB2A6:  ORRS            R1, R4
1AB2A8:  ORR.W           R1, R1, R6,LSR#3
1AB2AC:  STRH.W          R1, [R0,R3,LSL#1]
1AB2B0:  ADDS            R3, #1
1AB2B2:  CMP             R10, R3
1AB2B4:  BNE             loc_1AB28E
1AB2B6:  LDR             R1, [SP,#0x40+var_20]
1AB2B8:  ADD.W           R12, R12, #1
1AB2BC:  ADD             R0, R9
1AB2BE:  CMP             R12, R11
1AB2C0:  ADD             LR, R1
1AB2C2:  BNE             loc_1AB286
1AB2C4:  MOVS            R0, #1
1AB2C6:  B               loc_1AB2CA
1AB2C8:  MOVS            R0, #0
1AB2CA:  ADD             SP, SP, #0x24 ; '$'
1AB2CC:  POP.W           {R8-R11}
1AB2D0:  POP             {R4-R7,PC}
