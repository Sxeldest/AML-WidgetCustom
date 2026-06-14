; =========================================================
; Game Engine Function: sub_FC26C
; Address            : 0xFC26C - 0xFC280
; =========================================================

FC26C:  PUSH            {R7,LR}
FC26E:  MOV             R7, SP
FC270:  BLX             j__ZNSt11logic_errorC2ERKNSt6__ndk112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE; std::logic_error::logic_error(std::string const&)
FC274:  LDR             R1, =(_ZTVSt16invalid_argument_ptr - 0xFC27A)
FC276:  ADD             R1, PC; _ZTVSt16invalid_argument_ptr
FC278:  LDR             R1, [R1]; `vtable for'std::invalid_argument ...
FC27A:  ADDS            R1, #8
FC27C:  STR             R1, [R0]
FC27E:  POP             {R7,PC}
