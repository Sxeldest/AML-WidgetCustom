; =========================================================
; Game Engine Function: sub_FE2B4
; Address            : 0xFE2B4 - 0xFE2EE
; =========================================================

FE2B4:  PUSH            {R4,R5,R7,LR}
FE2B6:  ADD             R7, SP, #8
FE2B8:  SUB             SP, SP, #0x10
FE2BA:  MOV             R4, R0
FE2BC:  LDR             R0, =(sub_1008AC+1 - 0xFE2C6)
FE2BE:  ADDS            R5, R4, #4
FE2C0:  MOVS            R1, #0
FE2C2:  ADD             R0, PC; sub_1008AC
FE2C4:  STRD.W          R5, R1, [R4,#8]
FE2C8:  STRD.W          R1, R5, [R4]
FE2CC:  STR             R1, [SP,#0x18+var_10]
FE2CE:  STRD.W          R4, R0, [SP,#0x18+var_18]
FE2D2:  ADD             R0, SP, #0x18+var_C
FE2D4:  ADD             R1, SP, #0x18+var_14
FE2D6:  MOV             R2, SP
FE2D8:  BL              sub_100934
FE2DC:  ADD             R0, SP, #0x18+var_C; this
FE2DE:  BLX             j__ZNSt6__ndk16thread6detachEv; std::thread::detach(void)
FE2E2:  ADD             R0, SP, #0x18+var_C; this
FE2E4:  BLX             j__ZNSt6__ndk16threadD2Ev; std::thread::~thread()
FE2E8:  MOV             R0, R4
FE2EA:  ADD             SP, SP, #0x10
FE2EC:  POP             {R4,R5,R7,PC}
