; =========================================================
; Game Engine Function: _Z18RtCharsetSetColorsP8RwRasterPK6RwRGBAS3_
; Address            : 0x1ED110 - 0x1ED228
; =========================================================

1ED110:  PUSH            {R4-R7,LR}
1ED112:  ADD             R7, SP, #0xC
1ED114:  PUSH.W          {R8-R11}
1ED118:  SUB             SP, SP, #0x1C
1ED11A:  MOV             R6, R0
1ED11C:  MOV             R8, R2
1ED11E:  MOV             R9, R1
1ED120:  CMP             R6, #0
1ED122:  BEQ             loc_1ED204
1ED124:  CMP.W           R9, #0
1ED128:  IT NE
1ED12A:  CMPNE.W         R8, #0
1ED12E:  BEQ             loc_1ED204
1ED130:  LDR             R0, =(_rtgBuffer_ptr - 0x1ED136)
1ED132:  ADD             R0, PC; _rtgBuffer_ptr
1ED134:  LDR             R0, [R0]; _rtgBuffer
1ED136:  LDR             R1, [R0]
1ED138:  CBZ             R1, loc_1ED144
1ED13A:  LDR             R0, [R0,#(dword_6BD518 - 0x6BD514)]
1ED13C:  CMP             R0, R6
1ED13E:  IT EQ
1ED140:  BLXEQ           j__Z20RtCharsetBufferFlushv; RtCharsetBufferFlush(void)
1ED144:  MOVS            R0, #0x80; int
1ED146:  MOVS            R1, #0x80; int
1ED148:  MOVS            R2, #8; int
1ED14A:  BLX             j__Z13RwImageCreateiii; RwImageCreate(int,int,int)
1ED14E:  MOV             R4, R0
1ED150:  CMP             R4, #0
1ED152:  BEQ             loc_1ED21C
1ED154:  MOV             R0, R4
1ED156:  BLX             j__Z21RwImageAllocatePixelsP7RwImage; RwImageAllocatePixels(RwImage *)
1ED15A:  MOVS            R5, #0
1ED15C:  CMP             R0, #0
1ED15E:  BEQ             loc_1ED1FC
1ED160:  STR             R6, [SP,#0x38+var_30]
1ED162:  MOV.W           R11, #1
1ED166:  LDR             R0, [R4,#0x18]
1ED168:  LDR.W           R1, [R8]
1ED16C:  LDR.W           R10, =(byte_5ED2EF - 0x1ED17A)
1ED170:  STR             R1, [R0]
1ED172:  LDR.W           R1, [R9]
1ED176:  ADD             R10, PC; byte_5ED2EF
1ED178:  STR             R1, [R0,#4]
1ED17A:  LDR             R0, [R4,#0x10]
1ED17C:  STR             R4, [SP,#0x38+var_34]
1ED17E:  LDR             R1, [R4,#0x14]
1ED180:  MOVS            R4, #0
1ED182:  STR             R1, [SP,#0x38+var_28]
1ED184:  RSB.W           R1, R0, R0,LSL#4
1ED188:  STR             R1, [SP,#0x38+var_2C]
1ED18A:  MOVS            R1, #0
1ED18C:  LDR             R3, [SP,#0x38+var_2C]
1ED18E:  ADD.W           R2, R4, R4,LSL#3
1ED192:  MLA.W           R2, R3, R1, R2
1ED196:  LDR             R3, [SP,#0x38+var_28]
1ED198:  ADDS            R6, R3, R2
1ED19A:  MOVS            R3, #0
1ED19C:  MOV             R2, R10
1ED19E:  STR             R5, [R6,#4]
1ED1A0:  ADD.W           R8, R6, R0
1ED1A4:  STR             R5, [R6]
1ED1A6:  STRB            R5, [R6,#8]
1ED1A8:  LDRB.W          R9, [R2]
1ED1AC:  CMP.W           R9, #0
1ED1B0:  BEQ             loc_1ED1CC
1ED1B2:  MOV.W           R12, #0
1ED1B6:  AND.W           LR, R9, #1
1ED1BA:  STRB.W          LR, [R6,R12]
1ED1BE:  UBFX.W          R9, R9, #1, #7
1ED1C2:  ADD.W           R12, R12, #1
1ED1C6:  CMP.W           R9, #0
1ED1CA:  BNE             loc_1ED1B6
1ED1CC:  ADDS            R3, #1
1ED1CE:  ADDS            R2, #1
1ED1D0:  CMP             R3, #0xF
1ED1D2:  MOV             R6, R8
1ED1D4:  BNE             loc_1ED19E
1ED1D6:  ADDS            R4, #1
1ED1D8:  ADD.W           R11, R11, #1
1ED1DC:  CMP             R4, #0xE
1ED1DE:  ADD.W           R10, R10, #0xF
1ED1E2:  IT EQ
1ED1E4:  ADDEQ           R1, #1
1ED1E6:  IT EQ
1ED1E8:  MOVEQ           R4, #0
1ED1EA:  CMP.W           R11, #0x5C ; '\'
1ED1EE:  BNE             loc_1ED18C
1ED1F0:  LDR             R5, [SP,#0x38+var_30]
1ED1F2:  LDR             R4, [SP,#0x38+var_34]
1ED1F4:  MOV             R0, R5
1ED1F6:  MOV             R1, R4
1ED1F8:  BLX             j__Z20RwRasterSetFromImageP8RwRasterP7RwImage; RwRasterSetFromImage(RwRaster *,RwImage *)
1ED1FC:  MOV             R0, R4
1ED1FE:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1ED202:  B               loc_1ED21E
1ED204:  MOVS            R0, #0x16
1ED206:  MOVS            R5, #0
1ED208:  MOVT            R0, #0x8000; int
1ED20C:  STR             R5, [SP,#0x38+var_24]
1ED20E:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1ED212:  STR             R0, [SP,#0x38+var_20]
1ED214:  ADD             R0, SP, #0x38+var_24
1ED216:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1ED21A:  B               loc_1ED21E
1ED21C:  MOVS            R5, #0
1ED21E:  MOV             R0, R5
1ED220:  ADD             SP, SP, #0x1C
1ED222:  POP.W           {R8-R11}
1ED226:  POP             {R4-R7,PC}
