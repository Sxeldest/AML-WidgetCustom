; =========================================================
; Game Engine Function: sub_10E310
; Address            : 0x10E310 - 0x10E34C
; =========================================================

10E310:  PUSH            {R4,R5,R7,LR}
10E312:  ADD             R7, SP, #8
10E314:  SUB             SP, SP, #8
10E316:  LDR             R5, =(a13interiorwate - 0x10E31E); "13InteriorWater" ...
10E318:  MOV             R4, R0
10E31A:  ADD             R5, PC; "13InteriorWater"
10E31C:  MOV             R1, R5; s
10E31E:  BL              sub_DC6DC
10E322:  MOVS            R0, #0
10E324:  STR             R0, [SP,#0x10+status]
10E326:  ADD             R3, SP, #0x10+status; lpstatus
10E328:  MOV             R0, R5; lpmangled
10E32A:  MOVS            R1, #0; lpout
10E32C:  MOVS            R2, #0; lpoutlen
10E32E:  BLX             j___cxa_demangle
10E332:  MOV             R5, R0
10E334:  CBZ             R0, loc_10E348
10E336:  LDR             R0, [SP,#0x10+status]
10E338:  CBNZ            R0, loc_10E342
10E33A:  MOV             R0, R4; int
10E33C:  MOV             R1, R5; s
10E33E:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
10E342:  MOV             R0, R5; ptr
10E344:  BLX             free
10E348:  ADD             SP, SP, #8
10E34A:  POP             {R4,R5,R7,PC}
