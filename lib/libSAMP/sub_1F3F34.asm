; =========================================================
; Game Engine Function: sub_1F3F34
; Address            : 0x1F3F34 - 0x1F3F46
; =========================================================

1F3F34:  PUSH            {R7,LR}
1F3F36:  MOV             R7, SP
1F3F38:  BLX             j__ZNSt6__ndk114error_categoryC2Ev; std::error_category::error_category(void)
1F3F3C:  LDR             R1, =(_ZTVNSt6__ndk112__do_messageE - 0x1F3F42); `vtable for'std::__do_message ...
1F3F3E:  ADD             R1, PC; `vtable for'std::__do_message
1F3F40:  ADDS            R1, #8
1F3F42:  STR             R1, [R0]
1F3F44:  POP             {R7,PC}
