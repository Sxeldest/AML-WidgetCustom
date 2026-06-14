; =========================================================
; Game Engine Function: _ZN4CPed9PreRenderEv
; Address            : 0x4A5902 - 0x4A590E
; =========================================================

4A5902:  LDR.W           R1, [R0,#0x44C]
4A5906:  CMP             R1, #0x32 ; '2'
4A5908:  IT NE
4A590A:  BNE             _ZN4CPed18PreRenderAfterTestEv; CPed::PreRenderAfterTest(void)
4A590C:  BX              LR
