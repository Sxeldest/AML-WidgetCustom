; =========================================================
; Game Engine Function: sub_1FAB64
; Address            : 0x1FAB64 - 0x1FAB76
; =========================================================

1FAB64:  PUSH            {R7,LR}
1FAB66:  MOV             R7, SP
1FAB68:  BL              sub_1F3F34
1FAB6C:  LDR             R1, =(_ZTVNSt6__ndk119__iostream_categoryE - 0x1FAB72); `vtable for'std::__iostream_category ...
1FAB6E:  ADD             R1, PC; `vtable for'std::__iostream_category
1FAB70:  ADDS            R1, #8
1FAB72:  STR             R1, [R0]
1FAB74:  POP             {R7,PC}
