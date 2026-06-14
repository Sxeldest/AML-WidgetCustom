; =========================================================
; Game Engine Function: _ZN19CAEStreamingChannel16GetActiveTrackIDEv
; Address            : 0x3A9818 - 0x3A9832
; =========================================================

3A9818:  MOV             R1, #0x24038
3A9820:  LDR             R0, [R0,R1]
3A9822:  CMP             R0, #0
3A9824:  ITT EQ
3A9826:  MOVEQ.W         R0, #0xFFFFFFFF
3A982A:  BXEQ            LR
3A982C:  LDR             R1, [R0]
3A982E:  LDR             R1, [R1,#0x20]
3A9830:  BX              R1
