; =========================================================
; Game Engine Function: sub_F4DA4
; Address            : 0xF4DA4 - 0xF4DE0
; =========================================================

F4DA4:  PUSH            {R4,R5,R7,LR}
F4DA6:  ADD             R7, SP, #8
F4DA8:  SUB             SP, SP, #8
F4DAA:  LDR             R5, =(a13custommapico - 0xF4DB2); "13CustomMapIcon" ...
F4DAC:  MOV             R4, R0
F4DAE:  ADD             R5, PC; "13CustomMapIcon"
F4DB0:  MOV             R1, R5; s
F4DB2:  BL              sub_DC6DC
F4DB6:  MOVS            R0, #0
F4DB8:  STR             R0, [SP,#0x10+status]
F4DBA:  ADD             R3, SP, #0x10+status; lpstatus
F4DBC:  MOV             R0, R5; lpmangled
F4DBE:  MOVS            R1, #0; lpout
F4DC0:  MOVS            R2, #0; lpoutlen
F4DC2:  BLX             j___cxa_demangle
F4DC6:  MOV             R5, R0
F4DC8:  CBZ             R0, loc_F4DDC
F4DCA:  LDR             R0, [SP,#0x10+status]
F4DCC:  CBNZ            R0, loc_F4DD6
F4DCE:  MOV             R0, R4; int
F4DD0:  MOV             R1, R5; s
F4DD2:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
F4DD6:  MOV             R0, R5; ptr
F4DD8:  BLX             free
F4DDC:  ADD             SP, SP, #8
F4DDE:  POP             {R4,R5,R7,PC}
