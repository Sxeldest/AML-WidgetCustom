; =========================================================
; Game Engine Function: sub_17C080
; Address            : 0x17C080 - 0x17C0F4
; =========================================================

17C080:  PUSH            {R4,R6,R7,LR}
17C082:  ADD             R7, SP, #8
17C084:  SUB             SP, SP, #8
17C086:  LDR             R0, =(off_234A48 - 0x17C092)
17C088:  MOVS            R1, #0
17C08A:  STR             R1, [SP,#0x10+var_C]
17C08C:  MOVS            R2, #:lower16:(elf_gnu_hash_indexes+0x1948)
17C08E:  ADD             R0, PC; off_234A48
17C090:  MOVT            R2, #:upper16:(elf_gnu_hash_indexes+0x1948)
17C094:  LDR             R4, [R0]; dword_23DF30
17C096:  LDR             R0, [R4]
17C098:  LDR             R1, [R0]
17C09A:  LDR             R3, [R1,#0x18]
17C09C:  ADD             R1, SP, #0x10+var_C
17C09E:  BLX             R3
17C0A0:  ADDS            R1, R0, #3
17C0A2:  BEQ             loc_17C0D6
17C0A4:  ADDS            R1, R0, #1
17C0A6:  BEQ             loc_17C0E0
17C0A8:  ADDS            R0, #2
17C0AA:  BNE             loc_17C0D2
17C0AC:  LDR             R1, =(aAxl - 0x17C0B6); "AXL" ...
17C0AE:  MOVS            R0, #4; prio
17C0B0:  LDR             R2, =(aEnvNotAttached - 0x17C0B8); "Env not attached" ...
17C0B2:  ADD             R1, PC; "AXL"
17C0B4:  ADD             R2, PC; "Env not attached"
17C0B6:  BLX             __android_log_print
17C0BA:  LDR             R0, [R4]
17C0BC:  MOVS            R2, #0
17C0BE:  LDR             R1, [R0]
17C0C0:  LDR             R3, [R1,#0x10]
17C0C2:  ADD             R1, SP, #0x10+var_C
17C0C4:  BLX             R3
17C0C6:  CBZ             R0, loc_17C0D2
17C0C8:  LDR             R1, =(aAxl - 0x17C0D0); "AXL" ...
17C0CA:  LDR             R2, =(aEnvFailedToAtt - 0x17C0D2); "Env failed to attach" ...
17C0CC:  ADD             R1, PC; "AXL"
17C0CE:  ADD             R2, PC; "Env failed to attach"
17C0D0:  B               loc_17C0E8
17C0D2:  LDR             R0, [SP,#0x10+var_C]
17C0D4:  B               loc_17C0F0
17C0D6:  LDR             R1, =(aAxl - 0x17C0DE); "AXL" ...
17C0D8:  LDR             R2, =(aEnvVersionNotS - 0x17C0E0); "Env version not supported" ...
17C0DA:  ADD             R1, PC; "AXL"
17C0DC:  ADD             R2, PC; "Env version not supported"
17C0DE:  B               loc_17C0E8
17C0E0:  LDR             R1, =(aAxl - 0x17C0E8); "AXL" ...
17C0E2:  LDR             R2, =(aEnvJniError - 0x17C0EA); "Env JNI error" ...
17C0E4:  ADD             R1, PC; "AXL"
17C0E6:  ADD             R2, PC; "Env JNI error"
17C0E8:  MOVS            R0, #4; prio
17C0EA:  BLX             __android_log_print
17C0EE:  MOVS            R0, #0
17C0F0:  ADD             SP, SP, #8
17C0F2:  POP             {R4,R6,R7,PC}
