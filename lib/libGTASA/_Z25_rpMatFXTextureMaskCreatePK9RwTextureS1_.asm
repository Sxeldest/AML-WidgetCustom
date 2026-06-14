; =========================================================
; Game Engine Function: _Z25_rpMatFXTextureMaskCreatePK9RwTextureS1_
; Address            : 0x1C60A8 - 0x1C62C6
; =========================================================

1C60A8:  PUSH            {R4-R7,LR}
1C60AA:  ADD             R7, SP, #0xC
1C60AC:  PUSH.W          {R8-R11}
1C60B0:  SUB             SP, SP, #0x4C
1C60B2:  MOV             R4, R0
1C60B4:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C60BC)
1C60B6:  MOV             R8, R1
1C60B8:  ADD             R0, PC; __stack_chk_guard_ptr
1C60BA:  LDR             R0, [R0]; __stack_chk_guard
1C60BC:  LDR             R0, [R0]
1C60BE:  STR             R0, [SP,#0x68+var_20]
1C60C0:  LDR.W           R9, [R8]
1C60C4:  LDRD.W          R0, R2, [R9,#0xC]; int
1C60C8:  MOV             R1, R0
1C60CA:  STR             R1, [SP,#0x68+var_60]
1C60CC:  MOV             R1, R2; int
1C60CE:  MOVS            R2, #0x20 ; ' '; int
1C60D0:  STR             R1, [SP,#0x68+var_5C]
1C60D2:  BLX             j__Z13RwImageCreateiii; RwImageCreate(int,int,int)
1C60D6:  MOV             R10, R0
1C60D8:  BLX             j__Z21RwImageAllocatePixelsP7RwImage; RwImageAllocatePixels(RwImage *)
1C60DC:  MOV             R0, R10
1C60DE:  MOV             R1, R9
1C60E0:  BLX             j__Z20RwImageSetFromRasterP7RwImageP8RwRaster; RwImageSetFromRaster(RwImage *,RwRaster *)
1C60E4:  CMP             R4, #0
1C60E6:  STRD.W          R4, R8, [SP,#0x68+var_58]
1C60EA:  BEQ             loc_1C610E
1C60EC:  LDR.W           R8, [R4]
1C60F0:  MOVS            R2, #0x20 ; ' '; int
1C60F2:  LDRD.W          R11, R5, [R8,#0xC]
1C60F6:  MOV             R1, R5; int
1C60F8:  MOV             R0, R11; int
1C60FA:  BLX             j__Z13RwImageCreateiii; RwImageCreate(int,int,int)
1C60FE:  MOV             R6, R0
1C6100:  BLX             j__Z21RwImageAllocatePixelsP7RwImage; RwImageAllocatePixels(RwImage *)
1C6104:  MOV             R0, R6
1C6106:  MOV             R1, R8
1C6108:  BLX             j__Z20RwImageSetFromRasterP7RwImageP8RwRaster; RwImageSetFromRaster(RwImage *,RwRaster *)
1C610C:  B               loc_1C6150
1C610E:  LDRD.W          R11, R5, [R9,#0xC]
1C6112:  MOVS            R2, #0x20 ; ' '; int
1C6114:  MOV             R1, R5; int
1C6116:  MOV             R0, R11; int
1C6118:  BLX             j__Z13RwImageCreateiii; RwImageCreate(int,int,int)
1C611C:  MOV             R6, R0
1C611E:  BLX             j__Z21RwImageAllocatePixelsP7RwImage; RwImageAllocatePixels(RwImage *)
1C6122:  CMP             R5, #1
1C6124:  BLT             loc_1C614C
1C6126:  MOVS            R0, #0
1C6128:  MOV.W           R1, #0xFFFFFFFF
1C612C:  CMP.W           R11, #1
1C6130:  BLT             loc_1C6146
1C6132:  MOVS            R2, #0
1C6134:  LDRD.W          R3, R4, [R6,#0x10]
1C6138:  MLA.W           R3, R0, R3, R4
1C613C:  STR.W           R1, [R3,R2,LSL#2]
1C6140:  ADDS            R2, #1
1C6142:  CMP             R11, R2
1C6144:  BNE             loc_1C6134
1C6146:  ADDS            R0, #1
1C6148:  CMP             R0, R5
1C614A:  BNE             loc_1C612C
1C614C:  MOV.W           R8, #0
1C6150:  LDR             R0, [SP,#0x68+var_5C]
1C6152:  CMP             R5, R0
1C6154:  ITT EQ
1C6156:  LDREQ           R0, [SP,#0x68+var_60]
1C6158:  CMPEQ           R11, R0
1C615A:  BNE             loc_1C6160
1C615C:  MOV             R11, R10
1C615E:  B               loc_1C617E
1C6160:  MOV             R0, R11; int
1C6162:  MOV             R1, R5; int
1C6164:  MOVS            R2, #0x20 ; ' '; int
1C6166:  BLX             j__Z13RwImageCreateiii; RwImageCreate(int,int,int)
1C616A:  MOV             R11, R0
1C616C:  BLX             j__Z21RwImageAllocatePixelsP7RwImage; RwImageAllocatePixels(RwImage *)
1C6170:  MOV             R0, R11
1C6172:  MOV             R1, R10
1C6174:  BLX             j__Z15RwImageResampleP7RwImagePKS_; RwImageResample(RwImage *,RwImage const*)
1C6178:  MOV             R0, R10
1C617A:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1C617E:  MOV             R0, R11
1C6180:  BLX             j__Z15RwImageMakeMaskP7RwImage; RwImageMakeMask(RwImage *)
1C6184:  MOV             R0, R6
1C6186:  MOV             R1, R11
1C6188:  BLX             j__Z16RwImageApplyMaskP7RwImagePKS_; RwImageApplyMask(RwImage *,RwImage const*)
1C618C:  ADD             R5, SP, #0x68+var_40
1C618E:  ADD.W           R10, SP, #0x68+var_48
1C6192:  ADD             R0, SP, #0x68+var_50
1C6194:  ADD             R1, SP, #0x68+var_4C
1C6196:  MOV             R2, R5
1C6198:  MOV             R3, R10
1C619A:  STRD.W          R1, R0, [SP,#0x68+var_68]
1C619E:  MOV             R0, R6
1C61A0:  MOVS            R1, #4
1C61A2:  BLX             j__Z23RwImageFindRasterFormatP7RwImageiPiS1_S1_S1_; RwImageFindRasterFormat(RwImage *,int,int *,int *,int *,int *)
1C61A6:  LDR             R1, [SP,#0x68+var_58]
1C61A8:  MOV.W           R2, #0x9000
1C61AC:  CMP             R1, #0
1C61AE:  IT NE
1C61B0:  MOVNE           R9, R8
1C61B2:  LDRB.W          R0, [R9,#0x22]
1C61B6:  MOV             R9, R1
1C61B8:  LDR             R1, [SP,#0x68+var_50]
1C61BA:  AND.W           R0, R2, R0,LSL#8
1C61BE:  ORR.W           R3, R0, R1; int
1C61C2:  STR             R3, [SP,#0x68+var_50]
1C61C4:  LDRD.W          R2, R1, [SP,#0x68+var_4C]; int
1C61C8:  LDR             R0, [SP,#0x68+var_40]; int
1C61CA:  BLX             j__Z14RwRasterCreateiiii; RwRasterCreate(int,int,int,int)
1C61CE:  MOV             R1, R6
1C61D0:  MOV             R4, R0
1C61D2:  BLX             j__Z20RwRasterSetFromImageP8RwRasterP7RwImage; RwRasterSetFromImage(RwRaster *,RwImage *)
1C61D6:  MOV             R0, R4
1C61D8:  BLX             j__Z15RwTextureCreateP8RwRaster; RwTextureCreate(RwRaster *)
1C61DC:  MOV             R8, R0
1C61DE:  CMP.W           R9, #0
1C61E2:  BEQ             loc_1C61FC
1C61E4:  LDR.W           R0, [R9,#0x50]
1C61E8:  MOVS            R2, #0
1C61EA:  UBFX.W          R1, R0, #0xC, #4
1C61EE:  UBFX.W          R3, R0, #8, #4
1C61F2:  CMP             R3, R1
1C61F4:  IT EQ
1C61F6:  MOVEQ           R2, #1
1C61F8:  LDR             R4, [SP,#0x68+var_54]
1C61FA:  B               loc_1C6210
1C61FC:  LDR             R4, [SP,#0x68+var_54]
1C61FE:  MOVS            R2, #0
1C6200:  LDR             R0, [R4,#0x50]
1C6202:  UBFX.W          R1, R0, #0xC, #4
1C6206:  UBFX.W          R3, R0, #8, #4
1C620A:  CMP             R3, R1
1C620C:  IT EQ
1C620E:  MOVEQ           R2, #1
1C6210:  CMP             R2, #0
1C6212:  UXTB            R0, R0
1C6214:  IT EQ
1C6216:  MOVEQ           R1, R2
1C6218:  LDR.W           R2, [R8,#0x50]
1C621C:  LSLS            R3, R1, #8
1C621E:  ORR.W           R1, R3, R1,LSL#12
1C6222:  ORRS            R0, R1
1C6224:  MOVW            R1, #0xFFFF
1C6228:  BIC.W           R1, R2, R1
1C622C:  ORRS            R0, R1
1C622E:  STR.W           R0, [R8,#0x50]
1C6232:  MOV             R0, R6
1C6234:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1C6238:  MOV             R0, R11
1C623A:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1C623E:  VMOV.I32        Q8, #0
1C6242:  CMP.W           R9, #0
1C6246:  VST1.64         {D16-D17}, [R5]!
1C624A:  VST1.64         {D16-D17}, [R5]
1C624E:  BEQ             loc_1C625E
1C6250:  ADD.W           R0, R9, #0x10
1C6254:  STR             R0, [SP,#0x68+var_48]
1C6256:  ADD.W           R0, R4, #0x10
1C625A:  MOVS            R1, #1
1C625C:  B               loc_1C6266
1C625E:  ADD.W           R0, R4, #0x10
1C6262:  MOVS            R1, #0
1C6264:  STR             R0, [SP,#0x68+var_44]
1C6266:  STR.W           R0, [R10,R1,LSL#2]
1C626A:  ADD             R0, SP, #0x68+var_40
1C626C:  MOVS            R1, #0
1C626E:  LDR             R3, [SP,#0x68+var_48]
1C6270:  LDRB            R2, [R3]
1C6272:  CBZ             R2, loc_1C628A
1C6274:  ADDS            R3, #1
1C6276:  STR             R3, [SP,#0x68+var_48]
1C6278:  LDR             R3, [SP,#0x68+var_44]
1C627A:  ADDS            R1, #1
1C627C:  STRB.W          R2, [R0],#1
1C6280:  LDRB            R2, [R3]
1C6282:  CBNZ            R2, loc_1C6290
1C6284:  CMP             R1, #0x1E
1C6286:  BLT             loc_1C626E
1C6288:  B               loc_1C629E
1C628A:  LDR             R3, [SP,#0x68+var_44]
1C628C:  LDRB            R2, [R3]
1C628E:  CBZ             R2, loc_1C629E
1C6290:  STRB.W          R2, [R0],#1
1C6294:  ADDS            R1, #1
1C6296:  ADDS            R3, #1
1C6298:  STR             R3, [SP,#0x68+var_44]
1C629A:  CMP             R1, #0x1E
1C629C:  BLT             loc_1C626E
1C629E:  MOVS            R1, #0
1C62A0:  STRB            R1, [R0]
1C62A2:  ADD             R1, SP, #0x68+var_40
1C62A4:  MOV             R0, R8
1C62A6:  BLX             j__Z16RwTextureSetNameP9RwTexturePKc; RwTextureSetName(RwTexture *,char const*)
1C62AA:  LDR             R0, =(__stack_chk_guard_ptr - 0x1C62B2)
1C62AC:  LDR             R1, [SP,#0x68+var_20]
1C62AE:  ADD             R0, PC; __stack_chk_guard_ptr
1C62B0:  LDR             R0, [R0]; __stack_chk_guard
1C62B2:  LDR             R0, [R0]
1C62B4:  SUBS            R0, R0, R1
1C62B6:  ITTTT EQ
1C62B8:  MOVEQ           R0, R8
1C62BA:  ADDEQ           SP, SP, #0x4C ; 'L'
1C62BC:  POPEQ.W         {R8-R11}
1C62C0:  POPEQ           {R4-R7,PC}
1C62C2:  BLX             __stack_chk_fail
