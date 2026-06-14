; =========================================================
; Game Engine Function: _ZN20CAEStreamTransformer10InitialiseEv
; Address            : 0x3AA730 - 0x3AA73C
; =========================================================

3AA730:  ADR             R1, dword_3AA740
3AA732:  VLD1.64         {D16-D17}, [R1@128]
3AA736:  VST1.8          {D16-D17}, [R0]
3AA73A:  BX              LR
