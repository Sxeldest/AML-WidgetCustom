; =========================================================
; Game Engine Function: sub_1A9D90
; Address            : 0x1A9D90 - 0x1A9DCE
; =========================================================

1A9D90:  LDR             R0, =(AllValidWinJoys_ptr - 0x1A9D9C)
1A9D92:  LDR             R1, =(_ZN7CMatrixD2Ev_ptr_0 - 0x1A9D9E)
1A9D94:  LDR.W           R12, =(MarketingCamBaseRotation_ptr - 0x1A9DA2)
1A9D98:  ADD             R0, PC; AllValidWinJoys_ptr
1A9D9A:  ADD             R1, PC; _ZN7CMatrixD2Ev_ptr_0
1A9D9C:  LDR             R2, =(unk_67A000 - 0x1A9DA8)
1A9D9E:  ADD             R12, PC; MarketingCamBaseRotation_ptr
1A9DA0:  LDR             R3, [R0]; AllValidWinJoys
1A9DA2:  LDR             R0, [R1]; CMatrix::~CMatrix() ; lpfunc
1A9DA4:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A9DA6:  LDR.W           R1, [R12]; MarketingCamBaseRotation ; obj
1A9DAA:  MOV.W           R12, #0
1A9DAE:  STRB.W          R12, [R3,#(byte_A987D2 - 0xA987CC)]
1A9DB2:  STRH.W          R12, [R3,#(word_A987D0 - 0xA987CC)]
1A9DB6:  STR.W           R12, [R3]
1A9DBA:  STRB.W          R12, [R3,#(byte_A987E2 - 0xA987CC)]
1A9DBE:  STRH.W          R12, [R3,#(word_A987E0 - 0xA987CC)]
1A9DC2:  STRD.W          R12, R12, [R1,#(dword_A9887C - 0xA9883C)]
1A9DC6:  STR.W           R12, [R3,#(dword_A987DC - 0xA987CC)]
1A9DCA:  B.W             j___cxa_atexit
