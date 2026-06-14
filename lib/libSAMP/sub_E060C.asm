; =========================================================
; Game Engine Function: sub_E060C
; Address            : 0xE060C - 0xE0644
; =========================================================

E060C:  PUSH            {R7,LR}
E060E:  MOV             R7, SP
E0610:  SUB             SP, SP, #8
E0612:  LDR             R1, [R0,#0xC]
E0614:  SUBS            R1, #1
E0616:  CMP             R1, #0xB
E0618:  BCS             loc_E063A
E061A:  LDR             R1, [R0]
E061C:  LDRH.W          R2, [R1,#9]
E0620:  LSLS            R3, R2, #0x1C
E0622:  BNE             loc_E0632
E0624:  ORR.W           R2, R2, #4
E0628:  BIC.W           R2, R2, #0xB
E062C:  STRH.W          R2, [R1,#9]
E0630:  LDR             R1, [R0]
E0632:  MOVS            R0, #0x30 ; '0'
E0634:  STRB            R0, [R1,#0xB]
E0636:  ADD             SP, SP, #8
E0638:  POP             {R7,PC}
E063A:  LDR             R1, =(aFormatSpecifie - 0xE0642); "format specifier requires numeric argum"... ...
E063C:  ADD             R0, SP, #0x10+var_C; this
E063E:  ADD             R1, PC; "format specifier requires numeric argum"...
E0640:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
