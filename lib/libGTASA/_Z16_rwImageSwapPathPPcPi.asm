; =========================================================
; Game Engine Function: _Z16_rwImageSwapPathPPcPi
; Address            : 0x1D97F4 - 0x1D9824
; =========================================================

1D97F4:  LDR             R2, =(RwEngineInstance_ptr - 0x1D97FC)
1D97F6:  LDR             R3, =(dword_6BCF04 - 0x1D97FE)
1D97F8:  ADD             R2, PC; RwEngineInstance_ptr
1D97FA:  ADD             R3, PC; dword_6BCF04
1D97FC:  LDR             R2, [R2]; RwEngineInstance
1D97FE:  LDR.W           R12, [R3]
1D9802:  LDR             R3, [R2]
1D9804:  ADD             R3, R12
1D9806:  LDR             R3, [R3,#4]
1D9808:  STR             R3, [R0]
1D980A:  LDR             R3, [R2]
1D980C:  ADD             R3, R12
1D980E:  LDR             R3, [R3,#8]
1D9810:  STR             R3, [R1]
1D9812:  LDR             R3, [R2]
1D9814:  LDR             R0, [R0]
1D9816:  ADD             R3, R12
1D9818:  STR             R0, [R3,#4]
1D981A:  LDR             R0, [R2]
1D981C:  LDR             R1, [R1]
1D981E:  ADD             R0, R12
1D9820:  STR             R1, [R0,#8]
1D9822:  BX              LR
