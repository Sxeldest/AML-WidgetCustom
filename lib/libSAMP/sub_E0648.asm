; =========================================================
; Game Engine Function: sub_E0648
; Address            : 0xE0648 - 0xE06D0
; =========================================================

E0648:  PUSH            {R4-R7,LR}
E064A:  ADD             R7, SP, #0xC
E064C:  PUSH.W          {R11}
E0650:  SUB             SP, SP, #0x10
E0652:  MOV             R4, R1
E0654:  LDRB            R1, [R0]
E0656:  MOV             R5, R2
E0658:  STR             R0, [SP,#0x20+var_1C]
E065A:  SUB.W           R2, R1, #0x30 ; '0'
E065E:  CMP             R2, #9
E0660:  BHI             loc_E067C
E0662:  ADD             R0, SP, #0x20+var_1C
E0664:  MOV             R1, R4
E0666:  MOV.W           R2, #0xFFFFFFFF
E066A:  BL              sub_E036C
E066E:  MOV             R1, R0
E0670:  ADDS            R0, #1
E0672:  BEQ             loc_E06C6
E0674:  LDR             R2, [R5]
E0676:  LDR             R0, [SP,#0x20+var_1C]
E0678:  STR             R1, [R2]
E067A:  B               loc_E06B4
E067C:  CMP             R1, #0x7B ; '{'
E067E:  BNE             loc_E06B4
E0680:  ADDS            R6, R0, #1
E0682:  CMP             R6, R4
E0684:  BEQ             loc_E06BC
E0686:  LDRB            R0, [R6]
E0688:  STR             R5, [SP,#0x20+var_20]
E068A:  CMP             R0, #0x3A ; ':'
E068C:  IT NE
E068E:  CMPNE           R0, #0x7D ; '}'
E0690:  BNE             loc_E069A
E0692:  MOV             R0, R5
E0694:  BL              sub_E09D8
E0698:  B               loc_E06A6
E069A:  MOV             R2, SP
E069C:  MOV             R0, R6
E069E:  MOV             R1, R4
E06A0:  BL              sub_E0804
E06A4:  MOV             R6, R0
E06A6:  CMP             R6, R4
E06A8:  BEQ             loc_E06BC
E06AA:  LDRB            R0, [R6]
E06AC:  CMP             R0, #0x7D ; '}'
E06AE:  BNE             loc_E06BC
E06B0:  ADDS            R0, R6, #1
E06B2:  STR             R0, [SP,#0x20+var_1C]
E06B4:  ADD             SP, SP, #0x10
E06B6:  POP.W           {R11}
E06BA:  POP             {R4-R7,PC}
E06BC:  LDR             R1, =(aInvalidFormatS - 0xE06C4); "invalid format string" ...
E06BE:  ADD             R0, SP, #0x20+var_14; this
E06C0:  ADD             R1, PC; "invalid format string"
E06C2:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
E06C6:  LDR             R1, =(aNumberIsTooBig - 0xE06CE); "number is too big" ...
E06C8:  ADD             R0, SP, #0x20+var_18; this
E06CA:  ADD             R1, PC; "number is too big"
E06CC:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
