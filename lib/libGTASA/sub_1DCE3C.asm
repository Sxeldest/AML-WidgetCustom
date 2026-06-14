; =========================================================
; Game Engine Function: sub_1DCE3C
; Address            : 0x1DCE3C - 0x1DCF60
; =========================================================

1DCE3C:  PUSH            {R4-R7,LR}
1DCE3E:  ADD             R7, SP, #0xC
1DCE40:  PUSH.W          {R8-R11}
1DCE44:  SUB             SP, SP, #0x24
1DCE46:  MOV             R11, R2
1DCE48:  STRD.W          R1, R0, [SP,#0x40+var_34]
1DCE4C:  LDR.W           R12, [R11]
1DCE50:  MOV             R9, R3
1DCE52:  LDR             R6, [R7,#arg_0]
1DCE54:  LDR.W           R1, [R12,#0x18]; void *
1DCE58:  CBZ             R1, loc_1DCEAE
1DCE5A:  MOVS            R2, #1
1DCE5C:  CMP.W           R9, #2
1DCE60:  BLT             loc_1DCE94
1DCE62:  LSL.W           R3, R2, R6
1DCE66:  LDR.W           R5, [R11,R2,LSL#2]
1DCE6A:  LDR             R4, [R5,#0x18]
1DCE6C:  CBZ             R4, loc_1DCEA8
1DCE6E:  CMP             R6, #0x1F
1DCE70:  BEQ             loc_1DCE8E
1DCE72:  MOV             LR, R6
1DCE74:  MOVS            R5, #0
1DCE76:  LDR.W           R0, [R4,R5,LSL#2]
1DCE7A:  LDR.W           R6, [R1,R5,LSL#2]
1DCE7E:  CMP             R6, R0
1DCE80:  BNE             loc_1DCE8A
1DCE82:  ADDS            R5, #1
1DCE84:  CMP             R5, R3
1DCE86:  BLT             loc_1DCE76
1DCE88:  B               loc_1DCE8C
1DCE8A:  MOVS            R2, #0x40 ; '@'
1DCE8C:  MOV             R6, LR
1DCE8E:  ADDS            R2, #1
1DCE90:  CMP             R2, R9
1DCE92:  BLT             loc_1DCE66
1DCE94:  CMP             R2, R9
1DCE96:  BNE             loc_1DCEAE
1DCE98:  LDR.W           R0, [R12,#0xC]
1DCE9C:  MOVS            R2, #4
1DCE9E:  LSLS            R2, R0; size_t
1DCEA0:  LDR             R0, [SP,#0x40+var_30]; void *
1DCEA2:  BLX             memcpy_1
1DCEA6:  B               loc_1DCF56
1DCEA8:  MOVS            R2, #0x40 ; '@'
1DCEAA:  CMP             R2, R9
1DCEAC:  BEQ             loc_1DCE98
1DCEAE:  ADD             R0, SP, #0x40+var_2C
1DCEB0:  BLX             j__Z15_rwPalQuantInitP10rwPalQuant; _rwPalQuantInit(rwPalQuant *)
1DCEB4:  CMP             R0, #0
1DCEB6:  BEQ             loc_1DCF3E
1DCEB8:  CMP.W           R9, #1
1DCEBC:  BLT             loc_1DCF42
1DCEBE:  ADD             R4, SP, #0x40+var_2C
1DCEC0:  MOVS            R5, #0
1DCEC2:  LDR.W           R1, [R11,R5,LSL#2]
1DCEC6:  MOV             R0, R4
1DCEC8:  MOV.W           R2, #0x3F800000
1DCECC:  BLX             j__Z19_rwPalQuantAddImageP10rwPalQuantP7RwImagef; _rwPalQuantAddImage(rwPalQuant *,RwImage *,float)
1DCED0:  ADDS            R5, #1
1DCED2:  CMP             R9, R5
1DCED4:  BNE             loc_1DCEC2
1DCED6:  MOVS            R0, #1
1DCED8:  ADD             R5, SP, #0x40+var_2C
1DCEDA:  LSL.W           R1, R0, R6
1DCEDE:  LDR             R0, [SP,#0x40+var_30]
1DCEE0:  MOV             R2, R5
1DCEE2:  BLX             j__Z25_rwPalQuantResolvePaletteP6RwRGBAiP10rwPalQuant; _rwPalQuantResolvePalette(RwRGBA *,int,rwPalQuant *)
1DCEE6:  CMP.W           R9, #1
1DCEEA:  BLT             loc_1DCF50
1DCEEC:  MOV.W           R8, #0
1DCEF0:  LDR.W           R4, [R11,R8,LSL#2]
1DCEF4:  MOV             R2, R6; int
1DCEF6:  LDRD.W          R0, R1, [R4,#4]; int
1DCEFA:  BLX             j__Z13RwImageCreateiii; RwImageCreate(int,int,int)
1DCEFE:  MOV             R10, R0
1DCF00:  CMP.W           R10, #0
1DCF04:  BEQ             loc_1DCF3E
1DCF06:  MOV             R0, R10
1DCF08:  BLX             j__Z21RwImageAllocatePixelsP7RwImage; RwImageAllocatePixels(RwImage *)
1DCF0C:  LDRD.W          R2, R1, [R10,#0xC]
1DCF10:  MOVS            R3, #0
1DCF12:  LDR.W           R0, [R10,#0x14]
1DCF16:  STRD.W          R5, R4, [SP,#0x40+var_40]
1DCF1A:  BLX             j__Z21_rwPalQuantMatchImagePhiiiP10rwPalQuantP7RwImage; _rwPalQuantMatchImage(uchar *,int,int,int,rwPalQuant *,RwImage *)
1DCF1E:  LDR             R0, [SP,#0x40+var_30]
1DCF20:  STR.W           R0, [R10,#0x18]
1DCF24:  STR.W           R10, [R11,R8,LSL#2]
1DCF28:  LDR             R0, [SP,#0x40+var_34]
1DCF2A:  CMP             R4, R0
1DCF2C:  ITT NE
1DCF2E:  MOVNE           R0, R4
1DCF30:  BLXNE           j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1DCF34:  ADD.W           R8, R8, #1
1DCF38:  CMP             R8, R9
1DCF3A:  BLT             loc_1DCEF0
1DCF3C:  B               loc_1DCF50
1DCF3E:  MOVS            R0, #0
1DCF40:  B               loc_1DCF58
1DCF42:  MOVS            R0, #1
1DCF44:  ADD             R2, SP, #0x40+var_2C
1DCF46:  LSL.W           R1, R0, R6
1DCF4A:  LDR             R0, [SP,#0x40+var_30]
1DCF4C:  BLX             j__Z25_rwPalQuantResolvePaletteP6RwRGBAiP10rwPalQuant; _rwPalQuantResolvePalette(RwRGBA *,int,rwPalQuant *)
1DCF50:  ADD             R0, SP, #0x40+var_2C
1DCF52:  BLX             j__Z15_rwPalQuantTermP10rwPalQuant; _rwPalQuantTerm(rwPalQuant *)
1DCF56:  MOVS            R0, #1
1DCF58:  ADD             SP, SP, #0x24 ; '$'
1DCF5A:  POP.W           {R8-R11}
1DCF5E:  POP             {R4-R7,PC}
