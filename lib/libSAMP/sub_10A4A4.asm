; =========================================================
; Game Engine Function: sub_10A4A4
; Address            : 0x10A4A4 - 0x10A51C
; =========================================================

10A4A4:  PUSH            {R4,R6,R7,LR}
10A4A6:  ADD             R7, SP, #8
10A4A8:  SUB             SP, SP, #8
10A4AA:  CMP             R0, #2
10A4AC:  BEQ             loc_10A4EA
10A4AE:  CMP             R0, #1
10A4B0:  BEQ             loc_10A4C2
10A4B2:  CBNZ            R0, loc_10A518
10A4B4:  MOVS            R0, #0
10A4B6:  STRD.W          R0, R0, [SP,#0x10+var_10]
10A4BA:  MOV             R0, SP
10A4BC:  BL              sub_10A534
10A4C0:  B               loc_10A518
10A4C2:  LDR             R0, =(dword_263070 - 0x10A4C8)
10A4C4:  ADD             R0, PC; dword_263070
10A4C6:  LDRD.W          R1, R4, [R0]
10A4CA:  STRD.W          R1, R4, [SP,#0x10+var_10]
10A4CE:  CBZ             R4, loc_10A4E2
10A4D0:  ADD.W           R0, R4, #8
10A4D4:  LDREX.W         R1, [R0]
10A4D8:  ADDS            R1, #1
10A4DA:  STREX.W         R2, R1, [R0]
10A4DE:  CMP             R2, #0
10A4E0:  BNE             loc_10A4D4
10A4E2:  MOV             R0, SP
10A4E4:  BL              sub_10A534
10A4E8:  B               loc_10A510
10A4EA:  LDR             R0, =(dword_263078 - 0x10A4F0)
10A4EC:  ADD             R0, PC; dword_263078
10A4EE:  LDRD.W          R1, R4, [R0]
10A4F2:  STRD.W          R1, R4, [SP,#0x10+var_10]
10A4F6:  CBZ             R4, loc_10A50A
10A4F8:  ADD.W           R0, R4, #8
10A4FC:  LDREX.W         R1, [R0]
10A500:  ADDS            R1, #1
10A502:  STREX.W         R2, R1, [R0]
10A506:  CMP             R2, #0
10A508:  BNE             loc_10A4FC
10A50A:  MOV             R0, SP
10A50C:  BL              sub_10A534
10A510:  CBZ             R4, loc_10A518
10A512:  MOV             R0, R4; this
10A514:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
10A518:  ADD             SP, SP, #8
10A51A:  POP             {R4,R6,R7,PC}
