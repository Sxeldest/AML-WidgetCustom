; =========================================================
; Game Engine Function: sub_162AC4
; Address            : 0x162AC4 - 0x162B00
; =========================================================

162AC4:  PUSH            {R4,R5,R7,LR}
162AC6:  ADD             R7, SP, #8
162AC8:  SUB             SP, SP, #8
162ACA:  LDR             R5, =(aN3uef11stackTr - 0x162AD2); "N3UEF11stack_trace11stack_traceE" ...
162ACC:  MOV             R4, R0
162ACE:  ADD             R5, PC; "N3UEF11stack_trace11stack_traceE"
162AD0:  MOV             R1, R5; s
162AD2:  BL              sub_DC6DC
162AD6:  MOVS            R0, #0
162AD8:  STR             R0, [SP,#0x10+status]
162ADA:  ADD             R3, SP, #0x10+status; lpstatus
162ADC:  MOV             R0, R5; lpmangled
162ADE:  MOVS            R1, #0; lpout
162AE0:  MOVS            R2, #0; lpoutlen
162AE2:  BLX             j___cxa_demangle
162AE6:  MOV             R5, R0
162AE8:  CBZ             R0, loc_162AFC
162AEA:  LDR             R0, [SP,#0x10+status]
162AEC:  CBNZ            R0, loc_162AF6
162AEE:  MOV             R0, R4; int
162AF0:  MOV             R1, R5; s
162AF2:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
162AF6:  MOV             R0, R5; ptr
162AF8:  BLX             free
162AFC:  ADD             SP, SP, #8
162AFE:  POP             {R4,R5,R7,PC}
