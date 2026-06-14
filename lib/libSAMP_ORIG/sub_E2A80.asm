; =========================================================
; Game Engine Function: sub_E2A80
; Address            : 0xE2A80 - 0xE2A92
; =========================================================

E2A80:  PUSH            {R7,LR}
E2A82:  MOV             R7, SP
E2A84:  BL              sub_E2F44
E2A88:  LDR             R1, =(_ZTVNSt6__ndk119__iostream_categoryE - 0xE2A8E); `vtable for'std::__iostream_category ...
E2A8A:  ADD             R1, PC; `vtable for'std::__iostream_category
E2A8C:  ADDS            R1, #8
E2A8E:  STR             R1, [R0]
E2A90:  POP             {R7,PC}
