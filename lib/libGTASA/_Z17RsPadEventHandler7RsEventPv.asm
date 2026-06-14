; =========================================================
; Game Engine Function: _Z17RsPadEventHandler7RsEventPv
; Address            : 0x4D42D4 - 0x4D42EE
; =========================================================

4D42D4:  LDR             R2, =(RsGlobal_ptr - 0x4D42DA)
4D42D6:  ADD             R2, PC; RsGlobal_ptr
4D42D8:  LDR             R2, [R2]; RsGlobal
4D42DA:  LDR             R2, [R2,#(dword_9FC930 - 0x9FC8FC)]
4D42DC:  CMP             R2, #0
4D42DE:  ITT EQ
4D42E0:  MOVEQ           R0, #2
4D42E2:  BXEQ            LR
4D42E4:  LDR             R2, =(RsGlobal_ptr - 0x4D42EA)
4D42E6:  ADD             R2, PC; RsGlobal_ptr
4D42E8:  LDR             R2, [R2]; RsGlobal
4D42EA:  LDR             R2, [R2,#(off_9FC934 - 0x9FC8FC)]
4D42EC:  BX              R2
