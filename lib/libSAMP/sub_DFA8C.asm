; =========================================================
; Game Engine Function: sub_DFA8C
; Address            : 0xDFA8C - 0xDFAB2
; =========================================================

DFA8C:  PUSH            {R4,R5,R7,LR}
DFA8E:  ADD             R7, SP, #8
DFA90:  CBZ             R1, loc_DFAAA
DFA92:  MOV             R4, R0
DFA94:  MOV             R0, R1; s
DFA96:  MOV             R5, R1
DFA98:  BLX             strlen
DFA9C:  ADDS            R1, R5, R0; char *
DFA9E:  MOV             R0, R5
DFAA0:  MOV             R2, R4
DFAA2:  POP.W           {R4,R5,R7,LR}
DFAA6:  B.W             sub_DFAB8
DFAAA:  LDR             R0, =(aStringPointerI - 0xDFAB0); "string pointer is null" ...
DFAAC:  ADD             R0, PC; "string pointer is null"
DFAAE:  BLX             j__ZN3fmt2v86detail18throw_format_errorEPKc; fmt::v8::detail::throw_format_error(char const*)
