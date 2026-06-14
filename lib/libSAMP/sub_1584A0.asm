; =========================================================
; Game Engine Function: sub_1584A0
; Address            : 0x1584A0 - 0x1584DC
; =========================================================

1584A0:  PUSH            {R4,R5,R7,LR}
1584A2:  ADD             R7, SP, #8
1584A4:  ADD.W           R4, R0, #0xC
1584A8:  MOV             R5, R0
1584AA:  MOV             R0, R4; this
1584AC:  BLX             j__ZNSt6__ndk15mutex4lockEv; std::mutex::lock(void)
1584B0:  LDR             R0, [R5,#0x14]
1584B2:  LSLS            R1, R0, #0x1E
1584B4:  BMI             loc_1584D6
1584B6:  ADDS            R1, R5, #4
1584B8:  LDREX.W         R2, [R1]
1584BC:  ADDS            R2, #1
1584BE:  STREX.W         R3, R2, [R1]
1584C2:  CMP             R3, #0
1584C4:  BNE             loc_1584B8
1584C6:  ORR.W           R0, R0, #2
1584CA:  STR             R0, [R5,#0x14]
1584CC:  MOV             R0, R4
1584CE:  POP.W           {R4,R5,R7,LR}
1584D2:  B.W             sub_224304
1584D6:  MOVS            R0, #1
1584D8:  BL              sub_158460
