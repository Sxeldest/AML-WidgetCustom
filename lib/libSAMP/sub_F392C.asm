; =========================================================
; Game Engine Function: sub_F392C
; Address            : 0xF392C - 0xF3968
; =========================================================

F392C:  PUSH            {R4,R5,R7,LR}
F392E:  ADD             R7, SP, #8
F3930:  SUB             SP, SP, #8
F3932:  LDR             R5, =(a19ctouchinterf - 0xF393A); "19CTouchInterfaceHook" ...
F3934:  MOV             R4, R0
F3936:  ADD             R5, PC; "19CTouchInterfaceHook"
F3938:  MOV             R1, R5; s
F393A:  BL              sub_DC6DC
F393E:  MOVS            R0, #0
F3940:  STR             R0, [SP,#0x10+status]
F3942:  ADD             R3, SP, #0x10+status; lpstatus
F3944:  MOV             R0, R5; lpmangled
F3946:  MOVS            R1, #0; lpout
F3948:  MOVS            R2, #0; lpoutlen
F394A:  BLX             j___cxa_demangle
F394E:  MOV             R5, R0
F3950:  CBZ             R0, loc_F3964
F3952:  LDR             R0, [SP,#0x10+status]
F3954:  CBNZ            R0, loc_F395E
F3956:  MOV             R0, R4; int
F3958:  MOV             R1, R5; s
F395A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
F395E:  MOV             R0, R5; ptr
F3960:  BLX             free
F3964:  ADD             SP, SP, #8
F3966:  POP             {R4,R5,R7,PC}
