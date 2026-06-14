; =========================================================
; Game Engine Function: sub_1DCF60
; Address            : 0x1DCF60 - 0x1DCFE2
; =========================================================

1DCF60:  PUSH            {R4-R7,LR}
1DCF62:  ADD             R7, SP, #0xC
1DCF64:  PUSH.W          {R8}
1DCF68:  SUB.W           SP, SP, #0x418
1DCF6C:  MOV             R4, R0
1DCF6E:  ADD             R0, SP, #0x428+var_420
1DCF70:  MOV             R5, R1
1DCF72:  BLX             j__Z15_rwPalQuantInitP10rwPalQuant; _rwPalQuantInit(rwPalQuant *)
1DCF76:  CBZ             R0, loc_1DCFD8
1DCF78:  ADD.W           R8, SP, #0x428+var_420
1DCF7C:  LDR             R1, [R4]
1DCF7E:  MOV.W           R2, #0x3F800000
1DCF82:  MOV             R0, R8
1DCF84:  BLX             j__Z19_rwPalQuantAddImageP10rwPalQuantP7RwImagef; _rwPalQuantAddImage(rwPalQuant *,RwImage *,float)
1DCF88:  MOVS            R0, #1
1DCF8A:  MOV             R2, R8
1DCF8C:  LSL.W           R6, R0, R5
1DCF90:  ADD             R0, SP, #0x428+var_410
1DCF92:  MOV             R1, R6
1DCF94:  BLX             j__Z25_rwPalQuantResolvePaletteP6RwRGBAiP10rwPalQuant; _rwPalQuantResolvePalette(RwRGBA *,int,rwPalQuant *)
1DCF98:  LDR             R1, [R4]
1DCF9A:  MOV             R2, R5; int
1DCF9C:  LDRD.W          R0, R1, [R1,#4]; int
1DCFA0:  BLX             j__Z13RwImageCreateiii; RwImageCreate(int,int,int)
1DCFA4:  MOV             R5, R0
1DCFA6:  CBZ             R5, loc_1DCFD8
1DCFA8:  MOV             R0, R5
1DCFAA:  BLX             j__Z21RwImageAllocatePixelsP7RwImage; RwImageAllocatePixels(RwImage *)
1DCFAE:  LDRD.W          R2, R1, [R5,#0xC]
1DCFB2:  LDR             R3, [R4]
1DCFB4:  LDR             R0, [R5,#0x14]
1DCFB6:  STRD.W          R8, R3, [SP,#0x428+var_428]
1DCFBA:  MOVS            R3, #0
1DCFBC:  BLX             j__Z21_rwPalQuantMatchImagePhiiiP10rwPalQuantP7RwImage; _rwPalQuantMatchImage(uchar *,int,int,int,rwPalQuant *,RwImage *)
1DCFC0:  LDR             R0, [R5,#0x18]; void *
1DCFC2:  ADD             R1, SP, #0x428+var_410; void *
1DCFC4:  LSLS            R2, R6, #2; size_t
1DCFC6:  BLX             memcpy_1
1DCFCA:  LDR             R0, [R4]
1DCFCC:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1DCFD0:  MOV             R0, R8
1DCFD2:  STR             R5, [R4]
1DCFD4:  BLX             j__Z15_rwPalQuantTermP10rwPalQuant; _rwPalQuantTerm(rwPalQuant *)
1DCFD8:  ADD.W           SP, SP, #0x418
1DCFDC:  POP.W           {R8}
1DCFE0:  POP             {R4-R7,PC}
