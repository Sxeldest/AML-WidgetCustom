; =========================================================
; Game Engine Function: sub_E2F44
; Address            : 0xE2F44 - 0xE2F56
; =========================================================

E2F44:  PUSH            {R7,LR}
E2F46:  MOV             R7, SP
E2F48:  BLX             j__ZNSt6__ndk114error_categoryC2Ev; std::error_category::error_category(void)
E2F4C:  LDR             R1, =(_ZTVNSt6__ndk112__do_messageE - 0xE2F52); `vtable for'std::__do_message ...
E2F4E:  ADD             R1, PC; `vtable for'std::__do_message
E2F50:  ADDS            R1, #8
E2F52:  STR             R1, [R0]
E2F54:  POP             {R7,PC}
