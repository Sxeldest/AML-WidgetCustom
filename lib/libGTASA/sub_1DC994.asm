; =========================================================
; Game Engine Function: sub_1DC994
; Address            : 0x1DC994 - 0x1DCB7C
; =========================================================

1DC994:  PUSH            {R4-R7,LR}
1DC996:  ADD             R7, SP, #0xC
1DC998:  PUSH.W          {R8-R11}
1DC99C:  SUB.W           SP, SP, #0x448
1DC9A0:  SUB             SP, SP, #4
1DC9A2:  MOV             R4, R0
1DC9A4:  MOV             R8, R1
1DC9A6:  LDRD.W          R0, R1, [R4,#0xC]; int
1DC9AA:  CMP.W           R8, #0
1DC9AE:  BEQ             loc_1DC9C4
1DC9B0:  LDR.W           R2, [R8,#0xC]
1DC9B4:  CMP             R2, #0x20 ; ' '
1DC9B6:  BNE             loc_1DC9EC
1DC9B8:  MOV             R5, R8
1DC9BA:  SUB.W           R0, R7, #-var_5C
1DC9BE:  STR.W           R8, [R7,#var_5C]
1DC9C2:  B               loc_1DCA16
1DC9C4:  MOVS            R2, #0x20 ; ' '; int
1DC9C6:  BLX             j__Z13RwImageCreateiii; RwImageCreate(int,int,int)
1DC9CA:  MOV             R5, R0
1DC9CC:  CMP             R5, #0
1DC9CE:  STR.W           R5, [R7,#var_5C]
1DC9D2:  BEQ.W           loc_1DCB1C
1DC9D6:  MOV             R0, R5
1DC9D8:  BLX             j__Z21RwImageAllocatePixelsP7RwImage; RwImageAllocatePixels(RwImage *)
1DC9DC:  CMP             R0, #0
1DC9DE:  BEQ.W           loc_1DCB1C
1DC9E2:  MOV             R0, R5
1DC9E4:  MOV             R1, R4
1DC9E6:  BLX             j__Z20RwImageSetFromRasterP7RwImageP8RwRaster; RwImageSetFromRaster(RwImage *,RwRaster *)
1DC9EA:  B               loc_1DCA12
1DC9EC:  MOVS            R2, #0x20 ; ' '; int
1DC9EE:  BLX             j__Z13RwImageCreateiii; RwImageCreate(int,int,int)
1DC9F2:  MOV             R5, R0
1DC9F4:  CMP             R5, #0
1DC9F6:  STR.W           R5, [R7,#var_5C]
1DC9FA:  BEQ.W           loc_1DCB1C
1DC9FE:  MOV             R0, R5
1DCA00:  BLX             j__Z21RwImageAllocatePixelsP7RwImage; RwImageAllocatePixels(RwImage *)
1DCA04:  CMP             R0, #0
1DCA06:  BEQ.W           loc_1DCB1C
1DCA0A:  MOV             R0, R5
1DCA0C:  MOV             R1, R8
1DCA0E:  BLX             j__Z11RwImageCopyP7RwImagePKS_; RwImageCopy(RwImage *,RwImage const*)
1DCA12:  SUB.W           R0, R7, #-var_5C
1DCA16:  STR             R0, [SP,#0x468+var_464]
1DCA18:  LDRB.W          R0, [R4,#0x22]
1DCA1C:  ORR.W           R1, R0, #0xEF
1DCA20:  EOR.W           R1, R1, #0x10
1DCA24:  ANDS            R1, R0
1DCA26:  AND.W           R0, R0, #0x10
1DCA2A:  STRB.W          R1, [R4,#0x22]
1DCA2E:  STR             R0, [SP,#0x468+var_460]
1DCA30:  MOV             R0, R4
1DCA32:  BLX             j__Z20RwRasterGetNumLevelsP8RwRaster; RwRasterGetNumLevels(RwRaster *)
1DCA36:  MOV             R11, R0
1DCA38:  CMP.W           R11, #2
1DCA3C:  BLT             loc_1DCA7C
1DCA3E:  SUB.W           R6, R7, #-var_5C
1DCA42:  MOV.W           R10, #1
1DCA46:  MOV.W           R9, #0
1DCA4A:  UXTB.W          R1, R10
1DCA4E:  MOV             R0, R4
1DCA50:  MOVS            R2, #2
1DCA52:  STR.W           R9, [R6,R10,LSL#2]
1DCA56:  BLX             j__Z12RwRasterLockP8RwRasterhi; RwRasterLock(RwRaster *,uchar,int)
1DCA5A:  CBZ             R0, loc_1DCAAA
1DCA5C:  LDRD.W          R1, R2, [R4,#0xC]; int
1DCA60:  MOV             R0, R5; int
1DCA62:  BLX             j__Z21RwImageCreateResamplePK7RwImageii; RwImageCreateResample(RwImage const*,int,int)
1DCA66:  MOV             R5, R0
1DCA68:  MOV             R0, R4
1DCA6A:  STR.W           R5, [R6,R10,LSL#2]
1DCA6E:  BLX             j__Z14RwRasterUnlockP8RwRaster; RwRasterUnlock(RwRaster *)
1DCA72:  CBZ             R5, loc_1DCAAA
1DCA74:  ADD.W           R10, R10, #1
1DCA78:  CMP             R10, R11
1DCA7A:  BLT             loc_1DCA4A
1DCA7C:  LDRB.W          R0, [R4,#0x22]
1DCA80:  MOV.W           R1, #0x6000
1DCA84:  TST.W           R1, R0,LSL#8
1DCA88:  BEQ             loc_1DCACC
1DCA8A:  LSLS            R0, R0, #8
1DCA8C:  LSLS            R0, R0, #0x11
1DCA8E:  BMI             loc_1DCAEC
1DCA90:  MOVS            R0, #8
1DCA92:  LDR             R2, [SP,#0x468+var_464]
1DCA94:  STR             R0, [SP,#0x468+var_468]
1DCA96:  ADD             R0, SP, #0x468+var_45C
1DCA98:  MOV             R1, R8
1DCA9A:  MOV             R3, R11
1DCA9C:  BL              sub_1DCE3C
1DCAA0:  CMP.W           R11, #1
1DCAA4:  BLT             loc_1DCB20
1DCAA6:  CBZ             R0, loc_1DCB04
1DCAA8:  B               loc_1DCB20
1DCAAA:  CMP.W           R10, #1
1DCAAE:  BLT             loc_1DCB10
1DCAB0:  SUB.W           R5, R10, #1
1DCAB4:  LDR.W           R0, [R6,R5,LSL#2]
1DCAB8:  CMP             R0, R8
1DCABA:  IT NE
1DCABC:  BLXNE           j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1DCAC0:  SUBS            R0, R5, #1
1DCAC2:  ADDS            R1, R5, #1
1DCAC4:  CMP             R1, #1
1DCAC6:  MOV             R5, R0
1DCAC8:  BGT             loc_1DCAB4
1DCACA:  B               loc_1DCB10
1DCACC:  CMP.W           R11, #1
1DCAD0:  BLT             loc_1DCB62
1DCAD2:  SUB.W           R5, R7, #-var_5C
1DCAD6:  MOV             R6, R11
1DCAD8:  LDR.W           R0, [R5],#4
1DCADC:  BLX             j__Z19RwImageGammaCorrectP7RwImage; RwImageGammaCorrect(RwImage *)
1DCAE0:  SUBS            R6, #1
1DCAE2:  BNE             loc_1DCAD8
1DCAE4:  CMP.W           R11, #1
1DCAE8:  BGE             loc_1DCB2E
1DCAEA:  B               loc_1DCB62
1DCAEC:  MOVS            R0, #4
1DCAEE:  LDR             R2, [SP,#0x468+var_464]
1DCAF0:  STR             R0, [SP,#0x468+var_468]
1DCAF2:  ADD             R0, SP, #0x468+var_45C
1DCAF4:  MOV             R1, R8
1DCAF6:  MOV             R3, R11
1DCAF8:  BL              sub_1DCE3C
1DCAFC:  CMP.W           R11, #1
1DCB00:  BLT             loc_1DCB20
1DCB02:  CBNZ            R0, loc_1DCB20
1DCB04:  LDR.W           R0, [R7,#var_5C]
1DCB08:  CMP             R0, R8
1DCB0A:  BEQ             loc_1DCB10
1DCB0C:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1DCB10:  LDRB.W          R0, [R4,#0x22]
1DCB14:  LDR             R1, [SP,#0x468+var_460]
1DCB16:  ORRS            R0, R1
1DCB18:  STRB.W          R0, [R4,#0x22]
1DCB1C:  MOVS            R4, #0
1DCB1E:  B               loc_1DCB6E
1DCB20:  LDR.W           R0, [R7,#var_5C]
1DCB24:  BLX             j__Z19RwImageGammaCorrectP7RwImage; RwImageGammaCorrect(RwImage *)
1DCB28:  CMP.W           R11, #1
1DCB2C:  BLT             loc_1DCB62
1DCB2E:  SUB.W           R9, R7, #-var_5C
1DCB32:  MOVS            R6, #0
1DCB34:  UXTB            R1, R6
1DCB36:  MOV             R0, R4
1DCB38:  MOVS            R2, #5
1DCB3A:  BLX             j__Z12RwRasterLockP8RwRasterhi; RwRasterLock(RwRaster *,uchar,int)
1DCB3E:  LDR.W           R5, [R9,R6,LSL#2]
1DCB42:  CBZ             R0, loc_1DCB52
1DCB44:  MOV             R0, R4
1DCB46:  MOV             R1, R5
1DCB48:  BLX             j__Z20RwRasterSetFromImageP8RwRasterP7RwImage; RwRasterSetFromImage(RwRaster *,RwImage *)
1DCB4C:  MOV             R0, R4
1DCB4E:  BLX             j__Z14RwRasterUnlockP8RwRaster; RwRasterUnlock(RwRaster *)
1DCB52:  CMP             R5, R8
1DCB54:  ITT NE
1DCB56:  MOVNE           R0, R5
1DCB58:  BLXNE           j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1DCB5C:  ADDS            R6, #1
1DCB5E:  CMP             R11, R6
1DCB60:  BNE             loc_1DCB34
1DCB62:  LDRB.W          R0, [R4,#0x22]
1DCB66:  LDR             R1, [SP,#0x468+var_460]
1DCB68:  ORRS            R0, R1
1DCB6A:  STRB.W          R0, [R4,#0x22]
1DCB6E:  MOV             R0, R4
1DCB70:  ADD.W           SP, SP, #0x448
1DCB74:  ADD             SP, SP, #4
1DCB76:  POP.W           {R8-R11}
1DCB7A:  POP             {R4-R7,PC}
