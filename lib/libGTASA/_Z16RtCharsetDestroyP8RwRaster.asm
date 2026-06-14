; =========================================================
; Game Engine Function: _Z16RtCharsetDestroyP8RwRaster
; Address            : 0x1ED230 - 0x1ED274
; =========================================================

1ED230:  PUSH            {R4,R6,R7,LR}
1ED232:  ADD             R7, SP, #8
1ED234:  SUB             SP, SP, #8
1ED236:  MOV             R4, R0
1ED238:  CBZ             R4, loc_1ED258
1ED23A:  LDR             R0, =(_rtgBuffer_ptr - 0x1ED240)
1ED23C:  ADD             R0, PC; _rtgBuffer_ptr
1ED23E:  LDR             R0, [R0]; _rtgBuffer
1ED240:  LDR             R1, [R0]
1ED242:  CBZ             R1, loc_1ED24E
1ED244:  LDR             R0, [R0,#(dword_6BD518 - 0x6BD514)]
1ED246:  CMP             R0, R4
1ED248:  IT EQ
1ED24A:  BLXEQ           j__Z20RtCharsetBufferFlushv; RtCharsetBufferFlush(void)
1ED24E:  MOV             R0, R4
1ED250:  BLX             j__Z15RwRasterDestroyP8RwRaster; RwRasterDestroy(RwRaster *)
1ED254:  MOVS            R4, #1
1ED256:  B               loc_1ED26E
1ED258:  MOVS            R0, #0x16
1ED25A:  MOVS            R4, #0
1ED25C:  MOVT            R0, #0x8000; int
1ED260:  STR             R4, [SP,#0x10+var_10]
1ED262:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1ED266:  STR             R0, [SP,#0x10+var_C]
1ED268:  MOV             R0, SP
1ED26A:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1ED26E:  MOV             R0, R4
1ED270:  ADD             SP, SP, #8
1ED272:  POP             {R4,R6,R7,PC}
