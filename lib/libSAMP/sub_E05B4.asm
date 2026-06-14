; =========================================================
; Game Engine Function: sub_E05B4
; Address            : 0xE05B4 - 0xE0604
; =========================================================

E05B4:  PUSH            {R7,LR}
E05B6:  MOV             R7, SP
E05B8:  SUB             SP, SP, #8
E05BA:  LDR             R2, [R0,#0xC]
E05BC:  SUBS            R3, R2, #1
E05BE:  CMP             R3, #0xB
E05C0:  BCS             loc_E05F0
E05C2:  CMP             R3, #7
E05C4:  BHI             loc_E05D6
E05C6:  CMP             R2, #8
E05C8:  BHI             loc_E05FA
E05CA:  MOVS            R3, #1
E05CC:  LSL.W           R2, R3, R2
E05D0:  TST.W           R2, #0x12A
E05D4:  BEQ             loc_E05FA
E05D6:  LDR             R0, [R0]
E05D8:  AND.W           R1, R1, #7
E05DC:  LDRH.W          R2, [R0,#9]
E05E0:  BIC.W           R2, R2, #0x70 ; 'p'
E05E4:  ORR.W           R1, R2, R1,LSL#4
E05E8:  STRH.W          R1, [R0,#9]
E05EC:  ADD             SP, SP, #8
E05EE:  POP             {R7,PC}
E05F0:  LDR             R1, =(aFormatSpecifie - 0xE05F8); "format specifier requires numeric argum"... ...
E05F2:  MOV             R0, SP; this
E05F4:  ADD             R1, PC; "format specifier requires numeric argum"...
E05F6:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
E05FA:  LDR             R1, =(aFormatSpecifie_0 - 0xE0602); "format specifier requires signed argume"... ...
E05FC:  ADD             R0, SP, #0x10+var_C; this
E05FE:  ADD             R1, PC; "format specifier requires signed argume"...
E0600:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
