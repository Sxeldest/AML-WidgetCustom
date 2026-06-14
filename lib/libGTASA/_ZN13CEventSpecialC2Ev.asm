; =========================================================
; Game Engine Function: _ZN13CEventSpecialC2Ev
; Address            : 0x3771B0 - 0x3771D0
; =========================================================

3771B0:  LDR             R1, =(_ZTV13CEventSpecial_ptr - 0x3771BE)
3771B2:  MOVS            R2, #0
3771B4:  STR             R2, [R0,#4]
3771B6:  MOVW            R2, #0x100
3771BA:  ADD             R1, PC; _ZTV13CEventSpecial_ptr
3771BC:  MOVT            R2, #0xC8
3771C0:  STR             R2, [R0,#8]
3771C2:  MOVW            R2, #0xFFFF
3771C6:  LDR             R1, [R1]; `vtable for'CEventSpecial ...
3771C8:  STRH            R2, [R0,#0xC]
3771CA:  ADDS            R1, #8
3771CC:  STR             R1, [R0]
3771CE:  BX              LR
