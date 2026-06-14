; =========================================================
; Game Engine Function: sub_E07D0
; Address            : 0xE07D0 - 0xE07FE
; =========================================================

E07D0:  PUSH            {R7,LR}
E07D2:  MOV             R7, SP
E07D4:  SUB             SP, SP, #8
E07D6:  CMP             R1, #4
E07D8:  BNE             loc_E07E2
E07DA:  LDR             R2, [R0,#0xC]
E07DC:  SUBS            R2, #1
E07DE:  CMP             R2, #0xB
E07E0:  BCS             loc_E07F4
E07E2:  LDR             R0, [R0]
E07E4:  LDRH.W          R2, [R0,#9]
E07E8:  BFI.W           R2, R1, #0, #4
E07EC:  STRH.W          R2, [R0,#9]
E07F0:  ADD             SP, SP, #8
E07F2:  POP             {R7,PC}
E07F4:  LDR             R1, =(aFormatSpecifie - 0xE07FC); "format specifier requires numeric argum"... ...
E07F6:  ADD             R0, SP, #0x10+var_C; this
E07F8:  ADD             R1, PC; "format specifier requires numeric argum"...
E07FA:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
