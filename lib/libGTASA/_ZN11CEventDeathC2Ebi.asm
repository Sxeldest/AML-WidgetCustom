; =========================================================
; Game Engine Function: _ZN11CEventDeathC2Ebi
; Address            : 0x373A8C - 0x373AA6
; =========================================================

373A8C:  LDR.W           R12, =(_ZTV11CEventDeath_ptr - 0x373A98)
373A90:  MOVS            R3, #0
373A92:  STRB            R3, [R0,#8]
373A94:  ADD             R12, PC; _ZTV11CEventDeath_ptr
373A96:  STR             R3, [R0,#4]
373A98:  STRB            R1, [R0,#9]
373A9A:  LDR.W           R1, [R12]; `vtable for'CEventDeath ...
373A9E:  STR             R2, [R0,#0xC]
373AA0:  ADDS            R1, #8
373AA2:  STR             R1, [R0]
373AA4:  BX              LR
