; =========================================================
; Game Engine Function: sub_11FDA8
; Address            : 0x11FDA8 - 0x11FDE4
; =========================================================

11FDA8:  PUSH            {R4,R5,R7,LR}
11FDAA:  ADD             R7, SP, #8
11FDAC:  SUB             SP, SP, #8
11FDAE:  LDR             R5, =(a16fixfxemitter - 0x11FDB6); "16FixFxEmitterBP_c" ...
11FDB0:  MOV             R4, R0
11FDB2:  ADD             R5, PC; "16FixFxEmitterBP_c"
11FDB4:  MOV             R1, R5; s
11FDB6:  BL              sub_DC6DC
11FDBA:  MOVS            R0, #0
11FDBC:  STR             R0, [SP,#0x10+status]
11FDBE:  ADD             R3, SP, #0x10+status; lpstatus
11FDC0:  MOV             R0, R5; lpmangled
11FDC2:  MOVS            R1, #0; lpout
11FDC4:  MOVS            R2, #0; lpoutlen
11FDC6:  BLX             j___cxa_demangle
11FDCA:  MOV             R5, R0
11FDCC:  CBZ             R0, loc_11FDE0
11FDCE:  LDR             R0, [SP,#0x10+status]
11FDD0:  CBNZ            R0, loc_11FDDA
11FDD2:  MOV             R0, R4; int
11FDD4:  MOV             R1, R5; s
11FDD6:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
11FDDA:  MOV             R0, R5; ptr
11FDDC:  BLX             free
11FDE0:  ADD             SP, SP, #8
11FDE2:  POP             {R4,R5,R7,PC}
