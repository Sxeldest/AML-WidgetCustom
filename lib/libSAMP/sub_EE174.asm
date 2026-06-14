; =========================================================
; Game Engine Function: sub_EE174
; Address            : 0xEE174 - 0xEE188
; =========================================================

EE174:  PUSH            {R7,LR}
EE176:  MOV             R7, SP
EE178:  BLX             j__ZNSt11logic_errorC2EPKc; std::logic_error::logic_error(char const*)
EE17C:  LDR             R1, =(_ZTVSt12out_of_range_ptr - 0xEE182)
EE17E:  ADD             R1, PC; _ZTVSt12out_of_range_ptr
EE180:  LDR             R1, [R1]; `vtable for'std::out_of_range ...
EE182:  ADDS            R1, #8
EE184:  STR             R1, [R0]
EE186:  POP             {R7,PC}
