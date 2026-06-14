; =========================================================
; Game Engine Function: sub_1CAC6C
; Address            : 0x1CAC6C - 0x1CAD28
; =========================================================

1CAC6C:  PUSH            {R4,R6,R7,LR}
1CAC6E:  ADD             R7, SP, #8
1CAC70:  MOV             R4, R0
1CAC72:  MOV.W           R12, #0
1CAC76:  MOVS            R1, #0
1CAC78:  MOVS            R2, #0
1CAC7A:  ADD.W           R3, R4, R2,LSL#2
1CAC7E:  LDR             R3, [R3,#8]
1CAC80:  CBZ             R3, loc_1CACA0
1CAC82:  LDR             R0, [R3]
1CAC84:  LDR             R0, [R0,#0x14]
1CAC86:  ADD.W           R0, R0, R1,LSL#2
1CAC8A:  LDR             R0, [R0,#0x20]
1CAC8C:  CMP             R0, #0
1CAC8E:  BEQ             loc_1CACB6
1CAC90:  LDR             R0, [R3,#0x2C]
1CAC92:  ADDS            R1, #1
1CAC94:  MOVS            R3, #0
1CAC96:  CMP             R1, R0
1CAC98:  ITT CS
1CAC9A:  MOVCS           R3, #1
1CAC9C:  MOVCS           R1, R12
1CAC9E:  B               loc_1CACA2
1CACA0:  MOVS            R3, #1
1CACA2:  ADD             R2, R3
1CACA4:  CMP             R2, #8
1CACA6:  BCC             loc_1CAC7A
1CACA8:  LDR             R0, [R4]
1CACAA:  CBZ             R0, loc_1CACC4
1CACAC:  BLX             j__Z15RwMatrixDestroyP11RwMatrixTag; RwMatrixDestroy(RwMatrixTag *)
1CACB0:  MOVS            R0, #0
1CACB2:  STR             R0, [R4]
1CACB4:  B               loc_1CACC4
1CACB6:  LDR             R0, [R4]
1CACB8:  CBNZ            R0, loc_1CACC4
1CACBA:  BLX             j__Z14RwMatrixCreatev; RwMatrixCreate(void)
1CACBE:  CMP             R0, #0
1CACC0:  STR             R0, [R4]
1CACC2:  BEQ             loc_1CAD22
1CACC4:  MOV.W           R12, #0
1CACC8:  MOVS            R1, #0
1CACCA:  MOVS            R2, #0
1CACCC:  ADD.W           R3, R4, R2,LSL#2
1CACD0:  LDR             R3, [R3,#8]
1CACD2:  CBZ             R3, loc_1CACF2
1CACD4:  LDR             R0, [R3]
1CACD6:  LDR             R0, [R0,#0x14]
1CACD8:  ADD.W           R0, R0, R1,LSL#2
1CACDC:  LDR             R0, [R0,#0x20]
1CACDE:  CMP             R0, #1
1CACE0:  BEQ             loc_1CAD0A
1CACE2:  LDR             R0, [R3,#0x2C]
1CACE4:  ADDS            R1, #1
1CACE6:  MOVS            R3, #0
1CACE8:  CMP             R1, R0
1CACEA:  ITT CS
1CACEC:  MOVCS           R3, #1
1CACEE:  MOVCS           R1, R12
1CACF0:  B               loc_1CACF4
1CACF2:  MOVS            R3, #1
1CACF4:  ADD             R2, R3
1CACF6:  CMP             R2, #8
1CACF8:  BCC             loc_1CACCC
1CACFA:  LDR             R0, [R4,#4]
1CACFC:  CBZ             R0, loc_1CAD0E
1CACFE:  BLX             j__Z15RwMatrixDestroyP11RwMatrixTag; RwMatrixDestroy(RwMatrixTag *)
1CAD02:  MOVS            R0, #0
1CAD04:  STR             R0, [R4,#4]
1CAD06:  MOV             R0, R4
1CAD08:  POP             {R4,R6,R7,PC}
1CAD0A:  LDR             R0, [R4,#4]
1CAD0C:  CBZ             R0, loc_1CAD12
1CAD0E:  MOV             R0, R4
1CAD10:  POP             {R4,R6,R7,PC}
1CAD12:  BLX             j__Z14RwMatrixCreatev; RwMatrixCreate(void)
1CAD16:  CMP             R0, #0
1CAD18:  STR             R0, [R4,#4]
1CAD1A:  IT EQ
1CAD1C:  MOVEQ           R4, #0
1CAD1E:  MOV             R0, R4
1CAD20:  POP             {R4,R6,R7,PC}
1CAD22:  MOVS            R4, #0
1CAD24:  MOV             R0, R4
1CAD26:  POP             {R4,R6,R7,PC}
