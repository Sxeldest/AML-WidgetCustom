; =========================================================
; Game Engine Function: _ZN6CRopes16FindPickUpHeightEP7CEntity
; Address            : 0x414E94 - 0x414EA8
; =========================================================

414E94:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x414E9E)
414E96:  LDRSH.W         R0, [R0,#0x26]
414E9A:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
414E9C:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
414E9E:  LDR.W           R0, [R1,R0,LSL#2]
414EA2:  LDR             R0, [R0,#0x2C]
414EA4:  LDR             R0, [R0,#0x14]
414EA6:  BX              LR
