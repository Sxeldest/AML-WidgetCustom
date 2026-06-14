; =========================================================
; Game Engine Function: sub_11E224
; Address            : 0x11E224 - 0x11E260
; =========================================================

11E224:  PUSH            {R4,R5,R7,LR}
11E226:  ADD             R7, SP, #8
11E228:  SUB             SP, SP, #8
11E22A:  LDR             R5, =(aN5fixes5deathe - 0x11E232); "N5fixes5DeathE" ...
11E22C:  MOV             R4, R0
11E22E:  ADD             R5, PC; "N5fixes5DeathE"
11E230:  MOV             R1, R5; s
11E232:  BL              sub_DC6DC
11E236:  MOVS            R0, #0
11E238:  STR             R0, [SP,#0x10+status]
11E23A:  ADD             R3, SP, #0x10+status; lpstatus
11E23C:  MOV             R0, R5; lpmangled
11E23E:  MOVS            R1, #0; lpout
11E240:  MOVS            R2, #0; lpoutlen
11E242:  BLX             j___cxa_demangle
11E246:  MOV             R5, R0
11E248:  CBZ             R0, loc_11E25C
11E24A:  LDR             R0, [SP,#0x10+status]
11E24C:  CBNZ            R0, loc_11E256
11E24E:  MOV             R0, R4; int
11E250:  MOV             R1, R5; s
11E252:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
11E256:  MOV             R0, R5; ptr
11E258:  BLX             free
11E25C:  ADD             SP, SP, #8
11E25E:  POP             {R4,R5,R7,PC}
