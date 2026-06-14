; =========================================================
; Game Engine Function: _ZN14DownloadScreen14CancelDownloadEPv
; Address            : 0x2A80EC - 0x2A80F8
; =========================================================

2A80EC:  LDR             R0, =(RsGlobal_ptr - 0x2A80F4)
2A80EE:  MOVS            R1, #1
2A80F0:  ADD             R0, PC; RsGlobal_ptr
2A80F2:  LDR             R0, [R0]; RsGlobal
2A80F4:  STR             R1, [R0,#(dword_9FC90C - 0x9FC8FC)]
2A80F6:  BX              LR
