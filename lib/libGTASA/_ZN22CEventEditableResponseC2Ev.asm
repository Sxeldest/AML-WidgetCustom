; =========================================================
; Game Engine Function: _ZN22CEventEditableResponseC2Ev
; Address            : 0x3706BC - 0x3706DC
; =========================================================

3706BC:  LDR             R1, =(_ZTV22CEventEditableResponse_ptr - 0x3706CA)
3706BE:  MOVS            R2, #0
3706C0:  STR             R2, [R0,#4]
3706C2:  MOVW            R2, #0x100
3706C6:  ADD             R1, PC; _ZTV22CEventEditableResponse_ptr
3706C8:  MOVT            R2, #0xC8
3706CC:  STR             R2, [R0,#8]
3706CE:  MOVW            R2, #0xFFFF
3706D2:  LDR             R1, [R1]; `vtable for'CEventEditableResponse ...
3706D4:  STRH            R2, [R0,#0xC]
3706D6:  ADDS            R1, #8
3706D8:  STR             R1, [R0]
3706DA:  BX              LR
