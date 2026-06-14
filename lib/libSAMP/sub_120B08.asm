; =========================================================
; Game Engine Function: sub_120B08
; Address            : 0x120B08 - 0x120B44
; =========================================================

120B08:  PUSH            {R4,R5,R7,LR}
120B0A:  ADD             R7, SP, #8
120B0C:  SUB             SP, SP, #8
120B0E:  LDR             R5, =(a12Rxopenglfix - 0x120B16); "12_rxOpenGLFix" ...
120B10:  MOV             R4, R0
120B12:  ADD             R5, PC; "12_rxOpenGLFix"
120B14:  MOV             R1, R5; s
120B16:  BL              sub_DC6DC
120B1A:  MOVS            R0, #0
120B1C:  STR             R0, [SP,#0x10+status]
120B1E:  ADD             R3, SP, #0x10+status; lpstatus
120B20:  MOV             R0, R5; lpmangled
120B22:  MOVS            R1, #0; lpout
120B24:  MOVS            R2, #0; lpoutlen
120B26:  BLX             j___cxa_demangle
120B2A:  MOV             R5, R0
120B2C:  CBZ             R0, loc_120B40
120B2E:  LDR             R0, [SP,#0x10+status]
120B30:  CBNZ            R0, loc_120B3A
120B32:  MOV             R0, R4; int
120B34:  MOV             R1, R5; s
120B36:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
120B3A:  MOV             R0, R5; ptr
120B3C:  BLX             free
120B40:  ADD             SP, SP, #8
120B42:  POP             {R4,R5,R7,PC}
