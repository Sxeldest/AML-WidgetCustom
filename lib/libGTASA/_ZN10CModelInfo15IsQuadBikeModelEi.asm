; =========================================================
; Game Engine Function: _ZN10CModelInfo15IsQuadBikeModelEi
; Address            : 0x3862E8 - 0x38631C
; =========================================================

3862E8:  PUSH            {R4,R6,R7,LR}
3862EA:  ADD             R7, SP, #8
3862EC:  MOV             R4, R0
3862EE:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3862F4)
3862F0:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3862F2:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3862F4:  LDR.W           R0, [R0,R4,LSL#2]
3862F8:  CBZ             R0, loc_386318
3862FA:  LDR             R1, [R0]
3862FC:  LDR             R1, [R1,#0x14]
3862FE:  BLX             R1
386300:  CMP             R0, #6
386302:  BNE             loc_386318
386304:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x38630A)
386306:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
386308:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
38630A:  LDR.W           R0, [R0,R4,LSL#2]
38630E:  LDR             R0, [R0,#0x54]
386310:  CMP             R0, #2
386312:  ITT EQ
386314:  MOVEQ           R0, #1
386316:  POPEQ           {R4,R6,R7,PC}
386318:  MOVS            R0, #0
38631A:  POP             {R4,R6,R7,PC}
