; =========================================================
; Game Engine Function: sub_10CCB4
; Address            : 0x10CCB4 - 0x10CCF0
; =========================================================

10CCB4:  PUSH            {R4,R5,R7,LR}
10CCB6:  ADD             R7, SP, #8
10CCB8:  SUB             SP, SP, #8
10CCBA:  LDR             R5, =(a18displayperfo - 0x10CCC2); "18DisplayPerformance" ...
10CCBC:  MOV             R4, R0
10CCBE:  ADD             R5, PC; "18DisplayPerformance"
10CCC0:  MOV             R1, R5; s
10CCC2:  BL              sub_DC6DC
10CCC6:  MOVS            R0, #0
10CCC8:  STR             R0, [SP,#0x10+status]
10CCCA:  ADD             R3, SP, #0x10+status; lpstatus
10CCCC:  MOV             R0, R5; lpmangled
10CCCE:  MOVS            R1, #0; lpout
10CCD0:  MOVS            R2, #0; lpoutlen
10CCD2:  BLX             j___cxa_demangle
10CCD6:  MOV             R5, R0
10CCD8:  CBZ             R0, loc_10CCEC
10CCDA:  LDR             R0, [SP,#0x10+status]
10CCDC:  CBNZ            R0, loc_10CCE6
10CCDE:  MOV             R0, R4; int
10CCE0:  MOV             R1, R5; s
10CCE2:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
10CCE6:  MOV             R0, R5; ptr
10CCE8:  BLX             free
10CCEC:  ADD             SP, SP, #8
10CCEE:  POP             {R4,R5,R7,PC}
