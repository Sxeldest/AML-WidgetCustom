; =========================================================
; Game Engine Function: _ZN10CModelInfo16IsFakePlaneModelEi
; Address            : 0x386270 - 0x3862A4
; =========================================================

386270:  PUSH            {R4,R6,R7,LR}
386272:  ADD             R7, SP, #8
386274:  MOV             R4, R0
386276:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x38627C)
386278:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
38627A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
38627C:  LDR.W           R0, [R0,R4,LSL#2]
386280:  CBZ             R0, loc_3862A0
386282:  LDR             R1, [R0]
386284:  LDR             R1, [R1,#0x14]
386286:  BLX             R1
386288:  CMP             R0, #6
38628A:  BNE             loc_3862A0
38628C:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x386292)
38628E:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
386290:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
386292:  LDR.W           R0, [R0,R4,LSL#2]
386296:  LDR             R0, [R0,#0x54]
386298:  CMP             R0, #8
38629A:  ITT EQ
38629C:  MOVEQ           R0, #1
38629E:  POPEQ           {R4,R6,R7,PC}
3862A0:  MOVS            R0, #0
3862A2:  POP             {R4,R6,R7,PC}
