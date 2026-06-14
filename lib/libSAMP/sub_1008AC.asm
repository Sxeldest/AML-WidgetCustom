; =========================================================
; Game Engine Function: sub_1008AC
; Address            : 0x1008AC - 0x10092A
; =========================================================

1008AC:  PUSH            {R4-R7,LR}
1008AE:  ADD             R7, SP, #0xC
1008B0:  PUSH.W          {R8-R11}
1008B4:  SUB             SP, SP, #0x14
1008B6:  MOV             R6, R0
1008B8:  ADDS            R5, R0, #4
1008BA:  LDR             R0, =(aAxl - 0x1008CA); "AXL" ...
1008BC:  ADD.W           R10, SP, #0x30+var_20
1008C0:  LDR             R4, =(aCouldNotSetThr - 0x1008CE); "Could not set thread affinity: mask=0x%"... ...
1008C2:  MOV.W           R11, #0xFF
1008C6:  ADD             R0, PC; "AXL"
1008C8:  STR             R6, [SP,#0x30+var_2C]
1008CA:  ADD             R4, PC; "Could not set thread affinity: mask=0x%"...
1008CC:  MOV             R9, R0
1008CE:  MOV             R0, R6; this
1008D0:  BLX             j__ZNSt6__ndk15mutex4lockEv; std::mutex::lock(void)
1008D4:  LDR.W           R8, [R6,#8]
1008D8:  CMP             R8, R5
1008DA:  BEQ             loc_10090C
1008DC:  LDR.W           R1, [R8,#8]
1008E0:  MOVS            R0, #0xF1; sysno
1008E2:  MOVS            R2, #4
1008E4:  MOV             R3, R10
1008E6:  STR.W           R11, [SP,#0x30+var_20]
1008EA:  BLX             syscall
1008EE:  CBZ             R0, loc_100906
1008F0:  LDR             R6, [SP,#0x30+var_20]
1008F2:  BLX             __errno
1008F6:  LDR             R0, [R0]
1008F8:  MOV             R1, R9; tag
1008FA:  STR             R0, [SP,#0x30+var_30]
1008FC:  MOVS            R0, #4; prio
1008FE:  MOV             R2, R4; fmt
100900:  MOV             R3, R6
100902:  BLX             __android_log_print
100906:  LDR.W           R8, [R8,#4]
10090A:  B               loc_1008D8
10090C:  LDR             R6, [SP,#0x30+var_2C]
10090E:  MOV             R0, R6; this
100910:  BLX             j__ZNSt6__ndk15mutex6unlockEv; std::mutex::unlock(void)
100914:  MOVS            R0, #0
100916:  STR             R0, [SP,#0x30+var_24]
100918:  MOV             R0, #0x3B9ACA00
100920:  STR             R0, [SP,#0x30+var_28]
100922:  ADD             R0, SP, #0x30+var_28
100924:  BLX             j__ZNSt6__ndk111this_thread9sleep_forERKNS_6chrono8durationIxNS_5ratioILx1ELx1000000000EEEEE; std::this_thread::sleep_for(std::chrono::duration<long long,std::ratio<1ll,1000000000ll>> const&)
100928:  B               loc_1008CE
