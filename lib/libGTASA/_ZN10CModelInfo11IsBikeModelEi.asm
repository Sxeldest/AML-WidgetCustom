; =========================================================
; Game Engine Function: _ZN10CModelInfo11IsBikeModelEi
; Address            : 0x386234 - 0x386268
; =========================================================

386234:  PUSH            {R4,R6,R7,LR}
386236:  ADD             R7, SP, #8
386238:  MOV             R4, R0
38623A:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x386240)
38623C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
38623E:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
386240:  LDR.W           R0, [R0,R4,LSL#2]
386244:  CBZ             R0, loc_386264
386246:  LDR             R1, [R0]
386248:  LDR             R1, [R1,#0x14]
38624A:  BLX             R1
38624C:  CMP             R0, #6
38624E:  BNE             loc_386264
386250:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x386256)
386252:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
386254:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
386256:  LDR.W           R0, [R0,R4,LSL#2]
38625A:  LDR             R0, [R0,#0x54]
38625C:  CMP             R0, #9
38625E:  ITT EQ
386260:  MOVEQ           R0, #1
386262:  POPEQ           {R4,R6,R7,PC}
386264:  MOVS            R0, #0
386266:  POP             {R4,R6,R7,PC}
