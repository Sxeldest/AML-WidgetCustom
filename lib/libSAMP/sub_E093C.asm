; =========================================================
; Game Engine Function: sub_E093C
; Address            : 0xE093C - 0xE0962
; =========================================================

E093C:  PUSH            {R7,LR}
E093E:  MOV             R7, SP
E0940:  MOV             R12, R0
E0942:  LDR             R0, [R1,#4]; this
E0944:  LDR             R3, [R0,#8]
E0946:  CMP             R3, #1
E0948:  BGE             loc_E095A
E094A:  LDR             R1, [R1,#8]
E094C:  MOV.W           R3, #0xFFFFFFFF
E0950:  STR             R3, [R0,#8]
E0952:  MOV             R0, R12
E0954:  BL              sub_E0290
E0958:  POP             {R7,PC}
E095A:  LDR             R1, =(aCannotSwitchFr_0 - 0xE0960); "cannot switch from automatic to manual "... ...
E095C:  ADD             R1, PC; "cannot switch from automatic to manual "...
E095E:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
