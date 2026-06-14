; =========================================================
; Game Engine Function: sub_E157C
; Address            : 0xE157C - 0xE15CE
; =========================================================

E157C:  PUSH            {R7,LR}
E157E:  MOV             R7, SP
E1580:  LDRB            R2, [R0,#8]
E1582:  SUBS            R3, R2, #1
E1584:  CMP             R3, #6
E1586:  ITT CC
E1588:  MOVCC           R0, #0
E158A:  POPCC           {R7,PC}
E158C:  CMP             R2, #0x12
E158E:  BHI             loc_E15C8
E1590:  MOVS            R3, #1
E1592:  LSL.W           R2, R3, R2
E1596:  MOV             R3, #0x48001
E159E:  TST             R2, R3
E15A0:  BEQ             loc_E15C8
E15A2:  LDRH.W          R0, [R0,#9]
E15A6:  AND.W           R2, R0, #0xF
E15AA:  CMP             R2, #4
E15AC:  BEQ             loc_E15BC
E15AE:  ANDS.W          R2, R0, #0x70 ; 'p'
E15B2:  ITTT EQ
E15B4:  ANDSEQ.W        R0, R0, #0x80
E15B8:  MOVEQ           R0, #1
E15BA:  POPEQ           {R7,PC}
E15BC:  LDR             R2, =(aInvalidFormatS_0 - 0xE15C2); "invalid format specifier for char" ...
E15BE:  ADD             R2, PC; "invalid format specifier for char"
E15C0:  MOV             R0, R1; this
E15C2:  MOV             R1, R2; fmt::v8::detail *
E15C4:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
E15C8:  LDR             R2, =(aInvalidTypeSpe - 0xE15CE); "invalid type specifier" ...
E15CA:  ADD             R2, PC; "invalid type specifier"
E15CC:  B               loc_E15C0
