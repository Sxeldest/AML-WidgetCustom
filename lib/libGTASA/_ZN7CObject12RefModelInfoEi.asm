; =========================================================
; Game Engine Function: _ZN7CObject12RefModelInfoEi
; Address            : 0x455B2C - 0x455B3E
; =========================================================

455B2C:  LDR             R2, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x455B36)
455B2E:  STRH.W          R1, [R0,#0x14E]
455B32:  ADD             R2, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
455B34:  LDR             R2, [R2]; CModelInfo::ms_modelInfoPtrs ...
455B36:  LDR.W           R0, [R2,R1,LSL#2]; this
455B3A:  B.W             sub_1A1264
