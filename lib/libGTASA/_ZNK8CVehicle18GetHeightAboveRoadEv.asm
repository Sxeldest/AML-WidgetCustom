; =========================================================
; Game Engine Function: _ZNK8CVehicle18GetHeightAboveRoadEv
; Address            : 0x56D328 - 0x56D340
; =========================================================

56D328:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x56D332)
56D32A:  LDRSH.W         R0, [R0,#0x26]
56D32E:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
56D330:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
56D332:  LDR.W           R0, [R1,R0,LSL#2]
56D336:  LDR             R0, [R0,#0x2C]
56D338:  LDR             R0, [R0,#8]
56D33A:  EOR.W           R0, R0, #0x80000000
56D33E:  BX              LR
