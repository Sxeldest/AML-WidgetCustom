; =========================================================
; Game Engine Function: sub_12DFB8
; Address            : 0x12DFB8 - 0x12DFD6
; =========================================================

12DFB8:  PUSH            {R4,R5,R7,LR}
12DFBA:  ADD             R7, SP, #8
12DFBC:  ADDS            R4, R0, #4
12DFBE:  MOV             R5, R0
12DFC0:  MOV             R0, R4; this
12DFC2:  BLX             j__ZNSt6__ndk15mutex4lockEv; std::mutex::lock(void)
12DFC6:  MOV             R0, R5
12DFC8:  BL              sub_12E09A
12DFCC:  MOV             R0, R4
12DFCE:  POP.W           {R4,R5,R7,LR}
12DFD2:  B.W             sub_224304
