; =========================================================
; Game Engine Function: sub_115466
; Address            : 0x115466 - 0x115484
; =========================================================

115466:  PUSH            {R4,R5,R7,LR}
115468:  ADD             R7, SP, #8
11546A:  ADDS            R4, R0, #4
11546C:  MOV             R5, R0
11546E:  MOV             R0, R4; this
115470:  BLX             j__ZNSt6__ndk15mutex4lockEv; std::mutex::lock(void)
115474:  MOV             R0, R5
115476:  BL              sub_11548E
11547A:  MOV             R0, R4
11547C:  POP.W           {R4,R5,R7,LR}
115480:  B.W             sub_224304
