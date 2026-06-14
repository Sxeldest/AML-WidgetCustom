; =========================================================
; Game Engine Function: sub_21E3A0
; Address            : 0x21E3A0 - 0x21E3B2
; =========================================================

21E3A0:  PUSH            {R7,LR}
21E3A2:  MOV             R7, SP
21E3A4:  LDR             R0, =(off_23CAA8 - 0x21E3AC); "uncaught" ...
21E3A6:  LDR             R1, =(aUnexpected_0 - 0x21E3AE); "unexpected" ...
21E3A8:  ADD             R0, PC; off_23CAA8
21E3AA:  ADD             R1, PC; "unexpected"
21E3AC:  STR             R1, [R0]; "uncaught" ...
21E3AE:  BLX             j__ZSt9terminatev; std::terminate(void)
