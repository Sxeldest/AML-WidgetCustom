; =========================================================
; Game Engine Function: _ZN10CStreaming13IsInitialisedEv
; Address            : 0x2CF5FC - 0x2CF60C
; =========================================================

2CF5FC:  LDR             R0, =(_ZN10CStreaming17ms_bIsInitialisedE_ptr - 0x2CF602)
2CF5FE:  ADD             R0, PC; _ZN10CStreaming17ms_bIsInitialisedE_ptr
2CF600:  LDR             R0, [R0]; CStreaming::ms_bIsInitialised ...
2CF602:  LDR             R0, [R0]; CStreaming::ms_bIsInitialised
2CF604:  CMP             R0, #0
2CF606:  IT NE
2CF608:  MOVNE           R0, #1
2CF60A:  BX              LR
