; =========================================================
; Game Engine Function: sub_FD5BC
; Address            : 0xFD5BC - 0xFD5CE
; =========================================================

FD5BC:  PUSH            {R7,LR}
FD5BE:  MOV             R7, SP
FD5C0:  BL              sub_E2F44
FD5C4:  LDR             R1, =(_ZTVNSt6__ndk123__future_error_categoryE - 0xFD5CA); `vtable for'std::__future_error_category ...
FD5C6:  ADD             R1, PC; `vtable for'std::__future_error_category
FD5C8:  ADDS            R1, #8
FD5CA:  STR             R1, [R0]
FD5CC:  POP             {R7,PC}
