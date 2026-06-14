; =========================================================
; Game Engine Function: sub_162248
; Address            : 0x162248 - 0x162284
; =========================================================

162248:  PUSH            {R4,R5,R7,LR}
16224A:  ADD             R7, SP, #8
16224C:  SUB             SP, SP, #8
16224E:  LDR             R5, =(a10packetLog - 0x162256); "10packet_log" ...
162250:  MOV             R4, R0
162252:  ADD             R5, PC; "10packet_log"
162254:  MOV             R1, R5; s
162256:  BL              sub_DC6DC
16225A:  MOVS            R0, #0
16225C:  STR             R0, [SP,#0x10+status]
16225E:  ADD             R3, SP, #0x10+status; lpstatus
162260:  MOV             R0, R5; lpmangled
162262:  MOVS            R1, #0; lpout
162264:  MOVS            R2, #0; lpoutlen
162266:  BLX             j___cxa_demangle
16226A:  MOV             R5, R0
16226C:  CBZ             R0, loc_162280
16226E:  LDR             R0, [SP,#0x10+status]
162270:  CBNZ            R0, loc_16227A
162272:  MOV             R0, R4; int
162274:  MOV             R1, R5; s
162276:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6assignEPKc; std::string::assign(char const*)
16227A:  MOV             R0, R5; ptr
16227C:  BLX             free
162280:  ADD             SP, SP, #8
162282:  POP             {R4,R5,R7,PC}
