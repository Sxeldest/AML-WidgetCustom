; =========================================================
; Game Engine Function: sub_FBF00
; Address            : 0xFBF00 - 0xFBF14
; =========================================================

FBF00:  PUSH            {R7,LR}
FBF02:  MOV             R7, SP
FBF04:  BLX             j__ZNSt11logic_errorC2EPKc; std::logic_error::logic_error(char const*)
FBF08:  LDR             R1, =(_ZTVSt12out_of_range_ptr - 0xFBF0E)
FBF0A:  ADD             R1, PC; _ZTVSt12out_of_range_ptr
FBF0C:  LDR             R1, [R1]; `vtable for'std::out_of_range ...
FBF0E:  ADDS            R1, #8
FBF10:  STR             R1, [R0]
FBF12:  POP             {R7,PC}
