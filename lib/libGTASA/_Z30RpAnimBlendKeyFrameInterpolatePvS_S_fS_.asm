; =========================================================
; Game Engine Function: _Z30RpAnimBlendKeyFrameInterpolatePvS_S_fS_
; Address            : 0x3903F0 - 0x390404
; =========================================================

3903F0:  ADR             R1, dword_390410
3903F2:  VLD1.64         {D16-D17}, [R1@128]
3903F6:  MOVS            R1, #0
3903F8:  STRD.W          R1, R1, [R0,#0x14]
3903FC:  VST1.32         {D16-D17}, [R0]!
390400:  STR             R1, [R0]
390402:  BX              LR
