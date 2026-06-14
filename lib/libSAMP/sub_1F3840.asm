; =========================================================
; Game Engine Function: sub_1F3840
; Address            : 0x1F3840 - 0x1F3852
; =========================================================

1F3840:  PUSH            {R7,LR}
1F3842:  MOV             R7, SP
1F3844:  BL              sub_1F3F34
1F3848:  LDR             R1, =(_ZTVNSt6__ndk123__future_error_categoryE - 0x1F384E); `vtable for'std::__future_error_category ...
1F384A:  ADD             R1, PC; `vtable for'std::__future_error_category
1F384C:  ADDS            R1, #8
1F384E:  STR             R1, [R0]
1F3850:  POP             {R7,PC}
