; =========================================================
; Game Engine Function: _ZN10CModelInfo19IsMonsterTruckModelEi
; Address            : 0x3862AC - 0x3862E0
; =========================================================

3862AC:  PUSH            {R4,R6,R7,LR}
3862AE:  ADD             R7, SP, #8
3862B0:  MOV             R4, R0
3862B2:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3862B8)
3862B4:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3862B6:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3862B8:  LDR.W           R0, [R0,R4,LSL#2]
3862BC:  CBZ             R0, loc_3862DC
3862BE:  LDR             R1, [R0]
3862C0:  LDR             R1, [R1,#0x14]
3862C2:  BLX             R1
3862C4:  CMP             R0, #6
3862C6:  BNE             loc_3862DC
3862C8:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3862CE)
3862CA:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3862CC:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3862CE:  LDR.W           R0, [R0,R4,LSL#2]
3862D2:  LDR             R0, [R0,#0x54]
3862D4:  CMP             R0, #1
3862D6:  ITT EQ
3862D8:  MOVEQ           R0, #1
3862DA:  POPEQ           {R4,R6,R7,PC}
3862DC:  MOVS            R0, #0
3862DE:  POP             {R4,R6,R7,PC}
