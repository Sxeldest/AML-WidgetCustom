; =========================================================
; Game Engine Function: sub_213FAC
; Address            : 0x213FAC - 0x213FC0
; =========================================================

213FAC:  PUSH            {R7,LR}
213FAE:  MOV             R7, SP
213FB0:  BLX             j__ZNSt11logic_errorC2ERKNSt6__ndk112basic_stringIcNS0_11char_traitsIcEENS0_9allocatorIcEEEE; std::logic_error::logic_error(std::string const&)
213FB4:  LDR             R1, =(_ZTVSt16invalid_argument_ptr - 0x213FBA)
213FB6:  ADD             R1, PC; _ZTVSt16invalid_argument_ptr
213FB8:  LDR             R1, [R1]; `vtable for'std::invalid_argument ...
213FBA:  ADDS            R1, #8
213FBC:  STR             R1, [R0]
213FBE:  POP             {R7,PC}
