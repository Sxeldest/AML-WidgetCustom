; =========================================================
; Game Engine Function: sub_12AB58
; Address            : 0x12AB58 - 0x12AB66
; =========================================================

12AB58:  LDR             R3, =(_ZTV13ImGuiRenderer - 0x12AB60); `vtable for'ImGuiRenderer ...
12AB5A:  STR             R2, [R0,#8]
12AB5C:  ADD             R3, PC; `vtable for'ImGuiRenderer
12AB5E:  ADDS            R3, #8
12AB60:  STRD.W          R3, R1, [R0]
12AB64:  BX              LR
