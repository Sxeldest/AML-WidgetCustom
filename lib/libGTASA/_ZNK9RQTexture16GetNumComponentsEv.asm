; =========================================================
; Game Engine Function: _ZNK9RQTexture16GetNumComponentsEv
; Address            : 0x1D3BA0 - 0x1D3BB4
; =========================================================

1D3BA0:  LDR             R0, [R0,#0x10]
1D3BA2:  CMP             R0, #0x12
1D3BA4:  ITT HI
1D3BA6:  MOVHI           R0, #0
1D3BA8:  BXHI            LR
1D3BAA:  LDR             R1, =(unk_5ECAA0 - 0x1D3BB0)
1D3BAC:  ADD             R1, PC; unk_5ECAA0
1D3BAE:  LDR.W           R0, [R1,R0,LSL#2]
1D3BB2:  BX              LR
