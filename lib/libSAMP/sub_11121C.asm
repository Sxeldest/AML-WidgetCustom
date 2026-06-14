; =========================================================
; Game Engine Function: sub_11121C
; Address            : 0x11121C - 0x111258
; =========================================================

11121C:  PUSH            {R4,R5,R7,LR}
11121E:  ADD             R7, SP, #8
111220:  SUB             SP, SP, #8
111222:  LDR             R5, =(a8airbrake - 0x11122A); "8airbrake" ...
111224:  MOV             R4, R0
111226:  ADD             R5, PC; "8airbrake"
111228:  MOV             R1, R5; s
11122A:  BL              sub_DC6DC
11122E:  MOVS            R0, #0
111230:  STR             R0, [SP,#0x10+status]
111232:  ADD             R3, SP, #0x10+status; lpstatus
111234:  MOV             R0, R5; lpmangled
111236:  MOVS            R1, #0; lpout
111238:  MOVS            R2, #0; lpoutlen
11123A:  BLX             j___cxa_demangle
11123E:  MOV             R5, R0
111240:  CBZ             R0, loc_111254
111242:  LDR             R0, [SP,#0x10+status]
111244:  CBNZ            R0, loc_11124E
111246:  MOV             R0, R4; int
111248:  MOV             R1, R5; s
11124A:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
11124E:  MOV             R0, R5; ptr
111250:  BLX             free
111254:  ADD             SP, SP, #8
111256:  POP             {R4,R5,R7,PC}
