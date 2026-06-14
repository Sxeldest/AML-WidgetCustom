; =========================================================
; Game Engine Function: sub_127C0C
; Address            : 0x127C0C - 0x127C48
; =========================================================

127C0C:  PUSH            {R4,R5,R7,LR}
127C0E:  ADD             R7, SP, #8
127C10:  SUB             SP, SP, #8
127C12:  LDR             R5, =(a11planeshamal - 0x127C1A); "11PlaneShamal" ...
127C14:  MOV             R4, R0
127C16:  ADD             R5, PC; "11PlaneShamal"
127C18:  MOV             R1, R5; s
127C1A:  BL              sub_DC6DC
127C1E:  MOVS            R0, #0
127C20:  STR             R0, [SP,#0x10+status]
127C22:  ADD             R3, SP, #0x10+status; lpstatus
127C24:  MOV             R0, R5; lpmangled
127C26:  MOVS            R1, #0; lpout
127C28:  MOVS            R2, #0; lpoutlen
127C2A:  BLX             j___cxa_demangle
127C2E:  MOV             R5, R0
127C30:  CBZ             R0, loc_127C44
127C32:  LDR             R0, [SP,#0x10+status]
127C34:  CBNZ            R0, loc_127C3E
127C36:  MOV             R0, R4; int
127C38:  MOV             R1, R5; s
127C3A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
127C3E:  MOV             R0, R5; ptr
127C40:  BLX             free
127C44:  ADD             SP, SP, #8
127C46:  POP             {R4,R5,R7,PC}
