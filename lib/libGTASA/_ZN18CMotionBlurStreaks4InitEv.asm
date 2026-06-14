; =========================================================
; Game Engine Function: _ZN18CMotionBlurStreaks4InitEv
; Address            : 0x5BFAD4 - 0x5BFAEA
; =========================================================

5BFAD4:  LDR             R0, =(_ZN18CMotionBlurStreaks8aStreaksE_ptr - 0x5BFADC)
5BFAD6:  MOVS            R1, #0
5BFAD8:  ADD             R0, PC; _ZN18CMotionBlurStreaks8aStreaksE_ptr
5BFADA:  LDR             R0, [R0]; CMotionBlurStreaks::aStreaks ...
5BFADC:  STR             R1, [R0,#(dword_A56654 - 0xA56600)]
5BFADE:  STR             R1, [R0]; CMotionBlurStreaks::aStreaks
5BFAE0:  STR.W           R1, [R0,#(dword_A566A8 - 0xA56600)]
5BFAE4:  STR.W           R1, [R0,#(dword_A566FC - 0xA56600)]
5BFAE8:  BX              LR
