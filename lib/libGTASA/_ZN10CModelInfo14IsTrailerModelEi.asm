; =========================================================
; Game Engine Function: _ZN10CModelInfo14IsTrailerModelEi
; Address            : 0x386360 - 0x386394
; =========================================================

386360:  PUSH            {R4,R6,R7,LR}
386362:  ADD             R7, SP, #8
386364:  MOV             R4, R0
386366:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x38636C)
386368:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
38636A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
38636C:  LDR.W           R0, [R0,R4,LSL#2]
386370:  CBZ             R0, loc_386390
386372:  LDR             R1, [R0]
386374:  LDR             R1, [R1,#0x14]
386376:  BLX             R1
386378:  CMP             R0, #6
38637A:  BNE             loc_386390
38637C:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x386382)
38637E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
386380:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
386382:  LDR.W           R0, [R0,R4,LSL#2]
386386:  LDR             R0, [R0,#0x54]
386388:  CMP             R0, #0xB
38638A:  ITT EQ
38638C:  MOVEQ           R0, #1
38638E:  POPEQ           {R4,R6,R7,PC}
386390:  MOVS            R0, #0
386392:  POP             {R4,R6,R7,PC}
