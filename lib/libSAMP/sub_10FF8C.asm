; =========================================================
; Game Engine Function: sub_10FF8C
; Address            : 0x10FF8C - 0x10FFC8
; =========================================================

10FF8C:  PUSH            {R4,R5,R7,LR}
10FF8E:  ADD             R7, SP, #8
10FF90:  SUB             SP, SP, #8
10FF92:  LDR             R5, =(a13streamcleane - 0x10FF9A); "13StreamCleaner" ...
10FF94:  MOV             R4, R0
10FF96:  ADD             R5, PC; "13StreamCleaner"
10FF98:  MOV             R1, R5; s
10FF9A:  BL              sub_DC6DC
10FF9E:  MOVS            R0, #0
10FFA0:  STR             R0, [SP,#0x10+status]
10FFA2:  ADD             R3, SP, #0x10+status; lpstatus
10FFA4:  MOV             R0, R5; lpmangled
10FFA6:  MOVS            R1, #0; lpout
10FFA8:  MOVS            R2, #0; lpoutlen
10FFAA:  BLX             j___cxa_demangle
10FFAE:  MOV             R5, R0
10FFB0:  CBZ             R0, loc_10FFC4
10FFB2:  LDR             R0, [SP,#0x10+status]
10FFB4:  CBNZ            R0, loc_10FFBE
10FFB6:  MOV             R0, R4; int
10FFB8:  MOV             R1, R5; s
10FFBA:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
10FFBE:  MOV             R0, R5; ptr
10FFC0:  BLX             free
10FFC4:  ADD             SP, SP, #8
10FFC6:  POP             {R4,R5,R7,PC}
