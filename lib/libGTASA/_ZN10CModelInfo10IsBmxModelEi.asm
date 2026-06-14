; =========================================================
; Game Engine Function: _ZN10CModelInfo10IsBmxModelEi
; Address            : 0x386324 - 0x386358
; =========================================================

386324:  PUSH            {R4,R6,R7,LR}
386326:  ADD             R7, SP, #8
386328:  MOV             R4, R0
38632A:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x386330)
38632C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
38632E:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
386330:  LDR.W           R0, [R0,R4,LSL#2]
386334:  CBZ             R0, loc_386354
386336:  LDR             R1, [R0]
386338:  LDR             R1, [R1,#0x14]
38633A:  BLX             R1
38633C:  CMP             R0, #6
38633E:  BNE             loc_386354
386340:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x386346)
386342:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
386344:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
386346:  LDR.W           R0, [R0,R4,LSL#2]
38634A:  LDR             R0, [R0,#0x54]
38634C:  CMP             R0, #0xA
38634E:  ITT EQ
386350:  MOVEQ           R0, #1
386352:  POPEQ           {R4,R6,R7,PC}
386354:  MOVS            R0, #0
386356:  POP             {R4,R6,R7,PC}
