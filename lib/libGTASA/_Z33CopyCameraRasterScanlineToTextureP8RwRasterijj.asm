; =========================================================
; Game Engine Function: _Z33CopyCameraRasterScanlineToTextureP8RwRasterijj
; Address            : 0x48220C - 0x482270
; =========================================================

48220C:  PUSH            {R4-R7,LR}
48220E:  ADD             R7, SP, #0xC
482210:  PUSH.W          {R8-R10}
482214:  SUB             SP, SP, #8
482216:  MOV             R8, R0
482218:  CMP             R2, R3
48221A:  BCS             loc_482266
48221C:  LDR             R0, =(unk_9EC2C0 - 0x48222C)
48221E:  SUBS            R6, R3, R2
482220:  ADD.W           R10, SP, #0x20+var_1C
482224:  MOV.W           R9, #0xFF
482228:  ADD             R0, PC; unk_9EC2C0
48222A:  ADD.W           R0, R0, R2,LSL#2
48222E:  ADDS            R4, R0, #1
482230:  LDR             R0, =(pDst_ptr - 0x482236)
482232:  ADD             R0, PC; pDst_ptr
482234:  LDR             R5, [R0]; pDst
482236:  LDRB.W          R1, [R4,#-1]; unsigned __int8
48223A:  MOV             R0, R10; this
48223C:  LDRB            R2, [R4]; unsigned __int8
48223E:  LDRB            R3, [R4,#1]; unsigned __int8
482240:  STR.W           R9, [SP,#0x20+var_20]; unsigned __int8
482244:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
482248:  LDRB.W          R0, [R8,#0x22]
48224C:  LSLS            R1, R0, #8
48224E:  MOV             R0, R10
482250:  BLX             j__Z13RwRGBAToPixelP6RwRGBAi; RwRGBAToPixel(RwRGBA *,int)
482254:  LDR             R1, [R5]
482256:  ADDS            R4, #4
482258:  SUBS            R6, #1
48225A:  STR             R0, [R1]
48225C:  LDR             R0, [R5]
48225E:  ADD.W           R0, R0, #4
482262:  STR             R0, [R5]
482264:  BNE             loc_482236
482266:  MOVS            R0, #1
482268:  ADD             SP, SP, #8
48226A:  POP.W           {R8-R10}
48226E:  POP             {R4-R7,PC}
