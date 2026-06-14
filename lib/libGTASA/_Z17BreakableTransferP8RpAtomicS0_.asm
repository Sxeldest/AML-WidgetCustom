; =========================================================
; Game Engine Function: _Z17BreakableTransferP8RpAtomicS0_
; Address            : 0x451078 - 0x45108A
; =========================================================

451078:  LDR             R2, =(g_BreakablePlugin_ptr - 0x451080)
45107A:  LDR             R0, [R0,#0x18]
45107C:  ADD             R2, PC; g_BreakablePlugin_ptr
45107E:  LDR             R1, [R1,#0x18]
451080:  LDR             R2, [R2]; g_BreakablePlugin
451082:  LDR             R2, [R2]
451084:  LDR             R0, [R0,R2]
451086:  STR             R0, [R1,R2]
451088:  BX              LR
