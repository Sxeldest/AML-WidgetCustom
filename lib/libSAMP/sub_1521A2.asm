; =========================================================
; Game Engine Function: sub_1521A2
; Address            : 0x1521A2 - 0x15224A
; =========================================================

1521A2:  PUSH            {R4-R7,LR}
1521A4:  ADD             R7, SP, #0xC
1521A6:  PUSH.W          {R8,R9,R11}
1521AA:  SUB             SP, SP, #0x20
1521AC:  MOV             R4, R0
1521AE:  MOV             R0, SP; this
1521B0:  MOV             R5, R1
1521B2:  BLX             j__ZNSt6__ndk16chrono12steady_clock3nowEv; std::chrono::steady_clock::now(void)
1521B6:  LDRD.W          R0, R1, [R5]
1521BA:  MOV             R2, #0x3B9ACA00
1521C2:  ADD.W           R5, R4, #0xC
1521C6:  STR             R5, [SP,#0x38+var_20]
1521C8:  UMULL.W         R0, R3, R0, R2
1521CC:  MLA.W           R1, R1, R2, R3
1521D0:  LDRD.W          R2, R3, [SP,#0x38+var_38]
1521D4:  ADDS            R0, R0, R2
1521D6:  STR             R0, [SP,#0x38+var_30]
1521D8:  ADC.W           R0, R1, R3
1521DC:  STR             R0, [SP,#0x38+var_2C]
1521DE:  MOVS            R0, #1
1521E0:  STRB.W          R0, [SP,#0x38+var_1C]
1521E4:  MOV             R0, R5; this
1521E6:  BLX             j__ZNSt6__ndk15mutex4lockEv; std::mutex::lock(void)
1521EA:  LDR             R0, [R4,#0x14]
1521EC:  LSLS            R1, R0, #0x1C
1521EE:  BMI             loc_152226
1521F0:  LSLS            R1, R0, #0x1D
1521F2:  BMI             loc_15222C
1521F4:  ADD.W           R5, R4, #0x10
1521F8:  ADD.W           R9, SP, #0x38+var_28
1521FC:  ADD.W           R8, SP, #0x38+var_20
152200:  ADD             R6, SP, #0x38+var_30
152202:  MOV             R0, R9; this
152204:  BLX             j__ZNSt6__ndk16chrono12steady_clock3nowEv; std::chrono::steady_clock::now(void)
152208:  ADD             R3, SP, #0x38+var_30
15220A:  LDM             R3, {R0-R3}
15220C:  SUBS            R0, R2, R0
15220E:  SBCS.W          R0, R3, R1
152212:  BGE             loc_15222A
152214:  MOV             R0, R5
152216:  MOV             R1, R8
152218:  MOV             R2, R6
15221A:  BL              sub_15225A
15221E:  LDR             R0, [R4,#0x14]
152220:  LSLS            R1, R0, #0x1D
152222:  BPL             loc_152202
152224:  B               loc_15222C
152226:  MOVS            R4, #2
152228:  B               loc_15223A
15222A:  LDR             R0, [R4,#0x14]
15222C:  LDRB.W          R1, [SP,#0x38+var_1C]
152230:  MOVS            R2, #1
152232:  BIC.W           R4, R2, R0,LSR#2
152236:  CBZ             R1, loc_152240
152238:  LDR             R5, [SP,#0x38+var_20]
15223A:  MOV             R0, R5; this
15223C:  BLX             j__ZNSt6__ndk15mutex6unlockEv; std::mutex::unlock(void)
152240:  MOV             R0, R4
152242:  ADD             SP, SP, #0x20 ; ' '
152244:  POP.W           {R8,R9,R11}
152248:  POP             {R4-R7,PC}
