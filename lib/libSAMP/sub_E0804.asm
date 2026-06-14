; =========================================================
; Game Engine Function: sub_E0804
; Address            : 0xE0804 - 0xE08A2
; =========================================================

E0804:  PUSH            {R4,R5,R7,LR}
E0806:  ADD             R7, SP, #8
E0808:  SUB             SP, SP, #0x10
E080A:  MOV             R5, R1
E080C:  MOV             R1, R0
E080E:  LDRB            R0, [R0]
E0810:  MOV             R4, R2
E0812:  STR             R1, [SP,#0x18+var_14]
E0814:  SUB.W           R2, R0, #0x30 ; '0'
E0818:  CMP             R2, #9
E081A:  BHI             loc_E0828
E081C:  CMP             R0, #0x30 ; '0'
E081E:  BNE             loc_E0862
E0820:  ADDS            R0, R1, #1
E0822:  MOVS            R1, #0
E0824:  STR             R0, [SP,#0x18+var_14]
E0826:  B               loc_E0872
E0828:  CMP             R0, #0x5F ; '_'
E082A:  BEQ             loc_E0836
E082C:  AND.W           R0, R0, #0xDF
E0830:  SUBS            R0, #0x41 ; 'A'
E0832:  CMP             R0, #0x19
E0834:  BHI             loc_E0898
E0836:  ADDS            R0, R1, #1
E0838:  CMP             R0, R5
E083A:  BEQ             loc_E0858
E083C:  LDRB.W          R2, [R0],#1
E0840:  SUB.W           R3, R2, #0x30 ; '0'
E0844:  CMP             R3, #0xA
E0846:  BCC             loc_E0838
E0848:  CMP             R2, #0x5F ; '_'
E084A:  BEQ             loc_E0838
E084C:  AND.W           R2, R2, #0xDF
E0850:  SUBS            R2, #0x41 ; 'A'
E0852:  CMP             R2, #0x1A
E0854:  BCC             loc_E0838
E0856:  SUBS            R5, R0, #1
E0858:  LDR             R0, [R4]
E085A:  SUBS            R2, R5, R1
E085C:  BL              sub_E0968
E0860:  B               loc_E0888
E0862:  ADD             R0, SP, #0x18+var_14
E0864:  MOV             R1, R5
E0866:  MOV             R2, #0x7FFFFFFF
E086A:  BL              sub_E036C
E086E:  MOV             R1, R0
E0870:  LDR             R0, [SP,#0x18+var_14]
E0872:  CMP             R0, R5
E0874:  BEQ             loc_E088E
E0876:  LDRB            R0, [R0]
E0878:  CMP             R0, #0x3A ; ':'
E087A:  IT NE
E087C:  CMPNE           R0, #0x7D ; '}'
E087E:  BNE             loc_E088E
E0880:  LDR             R0, [R4]
E0882:  BL              sub_E08AC
E0886:  LDR             R5, [SP,#0x18+var_14]
E0888:  MOV             R0, R5
E088A:  ADD             SP, SP, #0x10
E088C:  POP             {R4,R5,R7,PC}
E088E:  LDR             R1, =(aInvalidFormatS - 0xE0896); "invalid format string" ...
E0890:  ADD             R0, SP, #0x18+var_10; this
E0892:  ADD             R1, PC; "invalid format string"
E0894:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
E0898:  LDR             R1, =(aInvalidFormatS - 0xE08A0); "invalid format string" ...
E089A:  ADD             R0, SP, #0x18+var_C; this
E089C:  ADD             R1, PC; "invalid format string"
E089E:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
