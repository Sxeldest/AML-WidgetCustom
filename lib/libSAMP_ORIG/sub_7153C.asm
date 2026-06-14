; =========================================================
; Game Engine Function: sub_7153C
; Address            : 0x7153C - 0x7154A
; =========================================================

7153C:  LDR             R3, =(_ZTV13ImGuiRenderer - 0x71544); `vtable for'ImGuiRenderer ...
7153E:  STR             R2, [R0,#8]
71540:  ADD             R3, PC; `vtable for'ImGuiRenderer
71542:  ADDS            R3, #8
71544:  STRD.W          R3, R1, [R0]
71548:  BX              LR
