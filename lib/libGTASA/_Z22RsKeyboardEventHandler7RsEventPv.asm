; =========================================================
; Game Engine Function: _Z22RsKeyboardEventHandler7RsEventPv
; Address            : 0x4D420C - 0x4D4226
; =========================================================

4D420C:  LDR             R2, =(RsGlobal_ptr - 0x4D4212)
4D420E:  ADD             R2, PC; RsGlobal_ptr
4D4210:  LDR             R2, [R2]; RsGlobal
4D4212:  LDR             R2, [R2,#(dword_9FC918 - 0x9FC8FC)]
4D4214:  CMP             R2, #0
4D4216:  ITT EQ
4D4218:  MOVEQ           R0, #2
4D421A:  BXEQ            LR
4D421C:  LDR             R2, =(RsGlobal_ptr - 0x4D4222)
4D421E:  ADD             R2, PC; RsGlobal_ptr
4D4220:  LDR             R2, [R2]; RsGlobal
4D4222:  LDR             R2, [R2,#(off_9FC91C - 0x9FC8FC)]
4D4224:  BX              R2
