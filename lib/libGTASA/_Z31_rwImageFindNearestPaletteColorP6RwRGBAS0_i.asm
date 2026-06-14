; =========================================================
; Game Engine Function: _Z31_rwImageFindNearestPaletteColorP6RwRGBAS0_i
; Address            : 0x1AA1F8 - 0x1AA2C4
; =========================================================

1AA1F8:  PUSH            {R4-R7,LR}
1AA1FA:  ADD             R7, SP, #0xC
1AA1FC:  PUSH.W          {R8,R9,R11}
1AA200:  SUB             SP, SP, #0x10
1AA202:  CMP             R2, #1
1AA204:  BLT             loc_1AA2B6
1AA206:  LDRH            R3, [R1,#2]
1AA208:  ADD.W           R8, SP, #0x28+var_24
1AA20C:  STRH.W          R3, [SP,#0x28+var_1C]
1AA210:  ADD             R3, SP, #0x28+var_1C
1AA212:  LDRH            R1, [R1]
1AA214:  MOV             LR, SP
1AA216:  VLD1.16         {D16[0]}, [R3@16]
1AA21A:  STRH.W          R1, [SP,#0x28+var_20]
1AA21E:  ADD             R1, SP, #0x28+var_20
1AA220:  MOV             R3, #0x7FFFFFFF
1AA224:  MOV.W           R12, #0
1AA228:  VLD1.16         {D17[0]}, [R1@16]
1AA22C:  VMOVL.U8        Q9, D16
1AA230:  MOVS            R1, #0
1AA232:  VMOVL.U8        Q10, D17
1AA236:  VMOVL.U16       Q8, D18
1AA23A:  VLDR            D22, =?bad floating?
1AA23E:  VMOVL.U16       Q9, D20
1AA242:  VLDR            D21, =?bad floating?
1AA246:  VMOV.I32        D20, #0xFF
1AA24A:  LDRH            R5, [R0]
1AA24C:  STRH.W          R5, [SP,#0x28+var_28]
1AA250:  LDRH            R5, [R0,#2]
1AA252:  VLD1.16         {D23[0]}, [LR@16]
1AA256:  ADDS            R0, #4
1AA258:  VMOVL.U8        Q13, D23
1AA25C:  STRH.W          R5, [SP,#0x28+var_24]
1AA260:  VLD1.16         {D24[0]}, [R8@16]
1AA264:  VMOVL.U16       Q13, D26
1AA268:  VMOVL.U8        Q12, D24
1AA26C:  VSUB.I32        D23, D18, D26
1AA270:  VMOVL.U16       Q12, D24
1AA274:  VAND            D23, D23, D20
1AA278:  VSUB.I32        D24, D16, D24
1AA27C:  VMUL.I32        D23, D23, D23
1AA280:  VAND            D24, D24, D20
1AA284:  VMUL.I32        D24, D24, D24
1AA288:  VMUL.I32        D23, D23, D21
1AA28C:  VMUL.I32        D24, D24, D22
1AA290:  VMOV.32         R9, D23[0]
1AA294:  VMOV.32         R6, D23[1]
1AA298:  VMOV.32         R4, D24[0]
1AA29C:  VMOV.32         R5, D24[1]
1AA2A0:  ADD             R6, R9
1AA2A2:  ADD             R4, R6
1AA2A4:  ADD             R4, R5
1AA2A6:  CMP             R4, R3
1AA2A8:  ITT LT
1AA2AA:  MOVLT           R12, R1
1AA2AC:  MOVLT           R3, R4
1AA2AE:  ADDS            R1, #1
1AA2B0:  CMP             R2, R1
1AA2B2:  BNE             loc_1AA24A
1AA2B4:  B               loc_1AA2BA
1AA2B6:  MOV.W           R12, #0
1AA2BA:  MOV             R0, R12
1AA2BC:  ADD             SP, SP, #0x10
1AA2BE:  POP.W           {R8,R9,R11}
1AA2C2:  POP             {R4-R7,PC}
