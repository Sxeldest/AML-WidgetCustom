; =========================================================
; Game Engine Function: sub_E06D8
; Address            : 0xE06D8 - 0xE078C
; =========================================================

E06D8:  PUSH            {R4-R7,LR}
E06DA:  ADD             R7, SP, #0xC
E06DC:  PUSH.W          {R11}
E06E0:  SUB             SP, SP, #0x18
E06E2:  MOV             R5, R1
E06E4:  ADDS            R1, R0, #1
E06E6:  CMP             R1, R5
E06E8:  STR             R1, [SP,#0x28+var_24]
E06EA:  BEQ             loc_E076E
E06EC:  LDRB            R1, [R1]
E06EE:  MOV             R4, R2
E06F0:  SUB.W           R2, R1, #0x30 ; '0'
E06F4:  CMP             R2, #9
E06F6:  BHI             loc_E070E
E06F8:  ADD             R0, SP, #0x28+var_24
E06FA:  MOV             R1, R5
E06FC:  MOV.W           R2, #0xFFFFFFFF
E0700:  BL              sub_E036C
E0704:  ADDS            R1, R0, #1
E0706:  BEQ             loc_E0782
E0708:  LDR             R1, [R4]
E070A:  STR             R0, [R1,#4]
E070C:  B               loc_E0746
E070E:  CMP             R1, #0x7B ; '{'
E0710:  BNE             loc_E076E
E0712:  ADDS            R6, R0, #2
E0714:  CMP             R6, R5
E0716:  BEQ             loc_E0778
E0718:  LDRB            R0, [R6]
E071A:  STR             R4, [SP,#0x28+var_28]
E071C:  CMP             R0, #0x3A ; ':'
E071E:  IT NE
E0720:  CMPNE           R0, #0x7D ; '}'
E0722:  BNE             loc_E072C
E0724:  MOV             R0, R4
E0726:  BL              sub_E0B80
E072A:  B               loc_E0738
E072C:  MOV             R2, SP
E072E:  MOV             R0, R6
E0730:  MOV             R1, R5
E0732:  BL              sub_E0A24
E0736:  MOV             R6, R0
E0738:  CMP             R6, R5
E073A:  BEQ             loc_E0778
E073C:  ADDS            R0, R6, #1
E073E:  STR             R0, [SP,#0x28+var_24]
E0740:  LDRB            R0, [R6]
E0742:  CMP             R0, #0x7D ; '}'
E0744:  BNE             loc_E0778
E0746:  LDR             R0, [R4,#0xC]
E0748:  CMP             R0, #0xE
E074A:  BHI             loc_E075A
E074C:  MOVS            R1, #1
E074E:  LSL.W           R0, R1, R0
E0752:  MOVW            R1, #0x41FE
E0756:  TST             R0, R1
E0758:  BNE             loc_E0764
E075A:  LDR             R0, [SP,#0x28+var_24]
E075C:  ADD             SP, SP, #0x18
E075E:  POP.W           {R11}
E0762:  POP             {R4-R7,PC}
E0764:  LDR             R1, =(aPrecisionNotAl - 0xE076C); "precision not allowed for this argument"... ...
E0766:  ADD             R0, SP, #0x28+var_14; this
E0768:  ADD             R1, PC; "precision not allowed for this argument"...
E076A:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
E076E:  LDR             R1, =(aMissingPrecisi - 0xE0776); "missing precision specifier" ...
E0770:  ADD             R0, SP, #0x28+var_18; this
E0772:  ADD             R1, PC; "missing precision specifier"
E0774:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
E0778:  LDR             R1, =(aInvalidFormatS - 0xE0780); "invalid format string" ...
E077A:  ADD             R0, SP, #0x28+var_1C; this
E077C:  ADD             R1, PC; "invalid format string"
E077E:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
E0782:  LDR             R1, =(aNumberIsTooBig - 0xE078A); "number is too big" ...
E0784:  ADD             R0, SP, #0x28+var_20; this
E0786:  ADD             R1, PC; "number is too big"
E0788:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
