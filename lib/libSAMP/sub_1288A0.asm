; =========================================================
; Game Engine Function: sub_1288A0
; Address            : 0x1288A0 - 0x1288DC
; =========================================================

1288A0:  PUSH            {R4,R5,R7,LR}
1288A2:  ADD             R7, SP, #8
1288A4:  SUB             SP, SP, #8
1288A6:  LDR             R5, =(a15streaminglim - 0x1288AE); "15StreamingLimits" ...
1288A8:  MOV             R4, R0
1288AA:  ADD             R5, PC; "15StreamingLimits"
1288AC:  MOV             R1, R5; s
1288AE:  BL              sub_DC6DC
1288B2:  MOVS            R0, #0
1288B4:  STR             R0, [SP,#0x10+status]
1288B6:  ADD             R3, SP, #0x10+status; lpstatus
1288B8:  MOV             R0, R5; lpmangled
1288BA:  MOVS            R1, #0; lpout
1288BC:  MOVS            R2, #0; lpoutlen
1288BE:  BLX             j___cxa_demangle
1288C2:  MOV             R5, R0
1288C4:  CBZ             R0, loc_1288D8
1288C6:  LDR             R0, [SP,#0x10+status]
1288C8:  CBNZ            R0, loc_1288D2
1288CA:  MOV             R0, R4; int
1288CC:  MOV             R1, R5; s
1288CE:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
1288D2:  MOV             R0, R5; ptr
1288D4:  BLX             free
1288D8:  ADD             SP, SP, #8
1288DA:  POP             {R4,R5,R7,PC}
