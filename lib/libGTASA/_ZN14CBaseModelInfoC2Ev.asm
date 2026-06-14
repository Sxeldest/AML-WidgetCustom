; =========================================================
; Game Engine Function: _ZN14CBaseModelInfoC2Ev
; Address            : 0x384F88 - 0x384F9E
; =========================================================

384F88:  LDR             R1, =(_ZTV14CBaseModelInfo_ptr - 0x384F94)
384F8A:  MOVS            R2, #0xFFFF0000
384F90:  ADD             R1, PC; _ZTV14CBaseModelInfo_ptr
384F92:  STR.W           R2, [R0,#0x1E]
384F96:  LDR             R1, [R1]; `vtable for'CBaseModelInfo ...
384F98:  ADDS            R1, #8
384F9A:  STR             R1, [R0]
384F9C:  BX              LR
