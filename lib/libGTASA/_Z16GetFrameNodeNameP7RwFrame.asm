; =========================================================
; Game Engine Function: _Z16GetFrameNodeNameP7RwFrame
; Address            : 0x48241C - 0x48242E
; =========================================================

48241C:  LDR             R1, =(dword_9ECCC0 - 0x482422)
48241E:  ADD             R1, PC; dword_9ECCC0
482420:  LDR             R2, [R1]
482422:  MOVS            R1, #0
482424:  CMP             R2, #0
482426:  IT GT
482428:  ADDGT           R1, R0, R2
48242A:  MOV             R0, R1
48242C:  BX              LR
