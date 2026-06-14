; =========================================================
; Game Engine Function: sub_E08D0
; Address            : 0xE08D0 - 0xE092E
; =========================================================

E08D0:  PUSH            {R7,LR}
E08D2:  MOV             R7, SP
E08D4:  SUB             SP, SP, #8
E08D6:  SUBS            R2, #1; switch 15 cases
E08D8:  CMP             R2, #0xE
E08DA:  BHI             def_E08DC; jumptable 000E08DC default case, cases 5-15
E08DC:  TBB.W           [PC,R2]; switch jump
E08E0:  DCB 8; jump table for switch statement
E08E1:  DCB 0xC
E08E2:  DCB 0xE
E08E3:  DCB 0x11
E08E4:  DCB 0x18
E08E5:  DCB 0x18
E08E6:  DCB 0x18
E08E7:  DCB 0x18
E08E8:  DCB 0x18
E08E9:  DCB 0x18
E08EA:  DCB 0x18
E08EB:  DCB 0x18
E08EC:  DCB 0x18
E08ED:  DCB 0x18
E08EE:  DCB 0x18
E08EF:  ALIGN 2
E08F0:  CMP.W           R0, #0xFFFFFFFF; jumptable 000E08DC case 1
E08F4:  BGT             loc_E090C
E08F6:  B               loc_E0924
E08F8:  MOVS            R1, #0; jumptable 000E08DC case 2
E08FA:  B               loc_E0902; jumptable 000E08DC case 4
E08FC:  CMP.W           R1, #0xFFFFFFFF; jumptable 000E08DC case 3
E0900:  BLE             loc_E0924
E0902:  SUBS.W          R2, R0, #0x80000000; jumptable 000E08DC case 4
E0906:  SBCS.W          R1, R1, #0
E090A:  BCS             loc_E091A
E090C:  ADD             SP, SP, #8
E090E:  POP             {R7,PC}
E0910:  LDR             R1, =(aWidthIsNotInte - 0xE0918); jumptable 000E08DC default case, cases 5-15
E0912:  ADD             R0, SP, #0x10+var_C; this
E0914:  ADD             R1, PC; "width is not integer"
E0916:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
E091A:  LDR             R1, =(aNumberIsTooBig - 0xE0922); "number is too big" ...
E091C:  ADD             R0, SP, #0x10+var_C; this
E091E:  ADD             R1, PC; "number is too big"
E0920:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
E0924:  LDR             R1, =(aNegativeWidth - 0xE092C); "negative width" ...
E0926:  ADD             R0, SP, #0x10+var_C; this
E0928:  ADD             R1, PC; "negative width"
E092A:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
