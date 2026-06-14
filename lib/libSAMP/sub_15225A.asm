; =========================================================
; Game Engine Function: sub_15225A
; Address            : 0x15225A - 0x152356
; =========================================================

15225A:  PUSH            {R4-R7,LR}
15225C:  ADD             R7, SP, #0xC
15225E:  PUSH.W          {R8,R9,R11}
152262:  SUB             SP, SP, #0x20
152264:  MOV             R9, R0
152266:  MOV             R0, SP; this
152268:  MOV             R4, R2
15226A:  MOV             R8, R1
15226C:  BLX             j__ZNSt6__ndk16chrono12steady_clock3nowEv; std::chrono::steady_clock::now(void)
152270:  LDRD.W          R5, R6, [R4]
152274:  LDRD.W          R0, R1, [SP,#0x38+var_38]
152278:  SUBS            R0, R0, R5
15227A:  SBCS.W          R0, R1, R6
15227E:  BGE             loc_1522D4
152280:  ADD             R0, SP, #0x38+var_30; this
152282:  BLX             j__ZNSt6__ndk16chrono12steady_clock3nowEv; std::chrono::steady_clock::now(void)
152286:  LDRD.W          R0, R1, [SP,#0x38+var_30]
15228A:  SUBS            R5, R5, R0
15228C:  SBCS            R6, R1
15228E:  SUBS            R0, R5, #1
152290:  SBCS.W          R0, R6, #0
152294:  BLT             loc_152334
152296:  ADD             R0, SP, #0x38+var_20; this
152298:  BLX             j__ZNSt6__ndk16chrono12steady_clock3nowEv; std::chrono::steady_clock::now(void)
15229C:  ADD             R0, SP, #0x38+var_28; this
15229E:  BLX             j__ZNSt6__ndk16chrono12system_clock3nowEv; std::chrono::system_clock::now(void)
1522A2:  LDRD.W          R0, R2, [SP,#0x38+var_28]
1522A6:  ORRS.W          R1, R0, R2
1522AA:  BEQ             loc_1522D8
1522AC:  SUBS            R1, R0, #1
1522AE:  SBCS.W          R1, R2, #0
1522B2:  BLT             loc_1522E0
1522B4:  MOVW            R3, #0x53F7
1522B8:  MOVW            R1, #:lower16:(loc_20C49A+1)
1522BC:  MOVT            R3, #0xA5E3
1522C0:  MOVT            R1, #:upper16:(loc_20C49A+1)
1522C4:  SUBS            R3, R3, R0
1522C6:  SBCS            R1, R2
1522C8:  BCS             loc_1522FE
1522CA:  MOV             R12, #0x7FFFFFFF
1522CE:  MOV.W           R1, #0xFFFFFFFF
1522D2:  B               loc_15230A
1522D4:  MOVS            R0, #1
1522D6:  B               loc_15234E
1522D8:  MOVS            R1, #0
1522DA:  MOV.W           R12, #0
1522DE:  B               loc_15230A
1522E0:  MOVW            R3, #0xAC08
1522E4:  MOVW            R1, #0x3B64
1522E8:  MOVT            R3, #0x5A1C
1522EC:  MOVT            R1, #0xFFDF
1522F0:  SUBS            R3, R3, R0
1522F2:  SBCS            R1, R2
1522F4:  BCC             loc_1522FE
1522F6:  MOV.W           R12, #0x80000000
1522FA:  MOVS            R1, #0
1522FC:  B               loc_152320
1522FE:  MOV.W           R3, #0x3E8
152302:  UMULL.W         R1, R0, R0, R3
152306:  MLA.W           R12, R2, R3, R0
15230A:  MVNS            R0, R5
15230C:  MOV             R3, #0x7FFFFFFF
152310:  SUBS            R2, R3, R6
152312:  SUBS            R0, R0, R1
152314:  SBCS.W          R0, R2, R12
152318:  BGE             loc_152320
15231A:  MOV.W           R2, #0xFFFFFFFF
15231E:  B               loc_152326
152320:  ADDS            R2, R1, R5
152322:  ADC.W           R3, R12, R6
152326:  MOV             R0, R9
152328:  MOV             R1, R8
15232A:  BLX             j__ZNSt6__ndk118condition_variable15__do_timed_waitERNS_11unique_lockINS_5mutexEEENS_6chrono10time_pointINS5_12system_clockENS5_8durationIxNS_5ratioILx1ELx1000000000EEEEEEE; std::condition_variable::__do_timed_wait(std::unique_lock<std::mutex> &,std::chrono::time_point<std::chrono::system_clock,std::chrono::duration<long long,std::ratio<1ll,1000000000ll>>>)
15232E:  ADD             R0, SP, #0x38+var_28; this
152330:  BLX             j__ZNSt6__ndk16chrono12steady_clock3nowEv; std::chrono::steady_clock::now(void)
152334:  ADD             R0, SP, #0x38+var_20; this
152336:  BLX             j__ZNSt6__ndk16chrono12steady_clock3nowEv; std::chrono::steady_clock::now(void)
15233A:  LDRD.W          R1, R2, [R4]
15233E:  MOVS            R0, #0
152340:  LDRD.W          R3, R6, [SP,#0x38+var_20]
152344:  SUBS            R1, R3, R1
152346:  SBCS.W          R1, R6, R2
15234A:  IT GE
15234C:  MOVGE           R0, #1
15234E:  ADD             SP, SP, #0x20 ; ' '
152350:  POP.W           {R8,R9,R11}
152354:  POP             {R4-R7,PC}
