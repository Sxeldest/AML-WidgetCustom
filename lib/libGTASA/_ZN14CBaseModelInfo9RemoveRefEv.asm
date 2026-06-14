; =========================================================
; Game Engine Function: _ZN14CBaseModelInfo9RemoveRefEv
; Address            : 0x385084 - 0x385094
; =========================================================

385084:  LDRSH.W         R1, [R0,#0x20]; int
385088:  LDRH            R2, [R0,#0x1E]
38508A:  SUBS            R2, #1
38508C:  STRH            R2, [R0,#0x1E]
38508E:  MOV             R0, R1; this
385090:  B.W             sub_18C184
