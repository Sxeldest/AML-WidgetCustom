; =========================================================
; Game Engine Function: sub_FC284
; Address            : 0xFC284 - 0xFC298
; =========================================================

FC284:  PUSH            {R7,LR}
FC286:  MOV             R7, SP
FC288:  BLX             j__ZNSt11logic_errorC2ERKNSt6__ndk112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE; std::logic_error::logic_error(std::string const&)
FC28C:  LDR             R1, =(_ZTVSt12out_of_range_ptr - 0xFC292)
FC28E:  ADD             R1, PC; _ZTVSt12out_of_range_ptr
FC290:  LDR             R1, [R1]; `vtable for'std::out_of_range ...
FC292:  ADDS            R1, #8
FC294:  STR             R1, [R0]
FC296:  POP             {R7,PC}
