; =========================================================
; Game Engine Function: _ZN4CHud15ResetWastedTextEv
; Address            : 0x437180 - 0x43719A
; =========================================================

437180:  LDR             R0, =(_ZN4CHud12m_BigMessageE_ptr - 0x43718A)
437182:  MOVS            R2, #0
437184:  LDR             R1, =(BigMessageInUse_ptr - 0x43718C)
437186:  ADD             R0, PC; _ZN4CHud12m_BigMessageE_ptr
437188:  ADD             R1, PC; BigMessageInUse_ptr
43718A:  LDR             R0, [R0]; CHud::m_BigMessage ...
43718C:  LDR             R1, [R1]; BigMessageInUse
43718E:  STRH.W          R2, [R0,#(word_99116C - 0x990F6C)]
437192:  STR             R2, [R1,#(dword_991FE4 - 0x991FDC)]
437194:  STR             R2, [R1]
437196:  STRH            R2, [R0]; CHud::m_BigMessage
437198:  BX              LR
