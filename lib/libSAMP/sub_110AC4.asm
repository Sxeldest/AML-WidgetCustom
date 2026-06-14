; =========================================================
; Game Engine Function: sub_110AC4
; Address            : 0x110AC4 - 0x110B00
; =========================================================

110AC4:  PUSH            {R4,R5,R7,LR}
110AC6:  ADD             R7, SP, #8
110AC8:  SUB             SP, SP, #8
110ACA:  LDR             R5, =(a14wingfreeplan - 0x110AD2); "14WingFreePlanes" ...
110ACC:  MOV             R4, R0
110ACE:  ADD             R5, PC; "14WingFreePlanes"
110AD0:  MOV             R1, R5; s
110AD2:  BL              sub_DC6DC
110AD6:  MOVS            R0, #0
110AD8:  STR             R0, [SP,#0x10+status]
110ADA:  ADD             R3, SP, #0x10+status; lpstatus
110ADC:  MOV             R0, R5; lpmangled
110ADE:  MOVS            R1, #0; lpout
110AE0:  MOVS            R2, #0; lpoutlen
110AE2:  BLX             j___cxa_demangle
110AE6:  MOV             R5, R0
110AE8:  CBZ             R0, loc_110AFC
110AEA:  LDR             R0, [SP,#0x10+status]
110AEC:  CBNZ            R0, loc_110AF6
110AEE:  MOV             R0, R4; int
110AF0:  MOV             R1, R5; s
110AF2:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
110AF6:  MOV             R0, R5; ptr
110AF8:  BLX             free
110AFC:  ADD             SP, SP, #8
110AFE:  POP             {R4,R5,R7,PC}
