; =========================================================
; Game Engine Function: _Z19RsMouseEventHandler7RsEventPv
; Address            : 0x4D42B0 - 0x4D42CA
; =========================================================

4D42B0:  LDR             R2, =(RsGlobal_ptr - 0x4D42B6)
4D42B2:  ADD             R2, PC; RsGlobal_ptr
4D42B4:  LDR             R2, [R2]; RsGlobal
4D42B6:  LDR             R2, [R2,#(dword_9FC924 - 0x9FC8FC)]
4D42B8:  CMP             R2, #0
4D42BA:  ITT EQ
4D42BC:  MOVEQ           R0, #2
4D42BE:  BXEQ            LR
4D42C0:  LDR             R2, =(RsGlobal_ptr - 0x4D42C6)
4D42C2:  ADD             R2, PC; RsGlobal_ptr
4D42C4:  LDR             R2, [R2]; RsGlobal
4D42C6:  LDR             R2, [R2,#(off_9FC928 - 0x9FC8FC)]
4D42C8:  BX              R2
