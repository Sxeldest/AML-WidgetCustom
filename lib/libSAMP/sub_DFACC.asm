; =========================================================
; Game Engine Function: sub_DFACC
; Address            : 0xDFACC - 0xDFB0C
; =========================================================

DFACC:  PUSH            {R7,LR}
DFACE:  MOV             R7, SP
DFAD0:  SUB             SP, SP, #0x10
DFAD2:  LDRB            R3, [R2,#8]
DFAD4:  CBZ             R3, loc_DFADA
DFAD6:  CMP             R3, #0x11
DFAD8:  BNE             loc_DFB02
DFADA:  STR             R1, [SP,#0x18+var_10]
DFADC:  ORR.W           R1, R1, #1
DFAE0:  CLZ.W           R1, R1
DFAE4:  MOVS            R3, #8
DFAE6:  SUB.W           R3, R3, R1,LSR#2
DFAEA:  STR             R3, [SP,#0x18+var_C]
DFAEC:  ADD             R3, SP, #0x18+var_10
DFAEE:  STR             R3, [SP,#0x18+var_18]
DFAF0:  MOVS            R3, #0xA
DFAF2:  SUB.W           R3, R3, R1,LSR#2
DFAF6:  MOV             R1, R2
DFAF8:  MOV             R2, R3
DFAFA:  BL              sub_DFB10
DFAFE:  ADD             SP, SP, #0x10
DFB00:  POP             {R7,PC}
DFB02:  LDR             R1, =(aInvalidTypeSpe - 0xDFB0A); "invalid type specifier" ...
DFB04:  ADD             R0, SP, #0x18+var_14; this
DFB06:  ADD             R1, PC; "invalid type specifier"
DFB08:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
