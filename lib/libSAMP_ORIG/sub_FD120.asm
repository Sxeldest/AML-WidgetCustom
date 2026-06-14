; =========================================================
; Game Engine Function: sub_FD120
; Address            : 0xFD120 - 0xFD170
; =========================================================

FD120:  PUSH            {R4-R7,LR}
FD122:  ADD             R7, SP, #0xC
FD124:  PUSH.W          {R8}
FD128:  MOV             R5, R0
FD12A:  MOV             R8, R0
FD12C:  LDR.W           R4, [R5,#0xC]!
FD130:  LDR             R6, [R5,#4]
FD132:  CMP             R4, R6
FD134:  BEQ             loc_FD146
FD136:  LDR             R0, [R4,#4]; this
FD138:  BLX             j__ZNSt6__ndk15mutex6unlockEv; std::mutex::unlock(void)
FD13C:  LDR.W           R0, [R4],#8; this
FD140:  BLX             j__ZNSt6__ndk118condition_variable10notify_allEv; std::condition_variable::notify_all(void)
FD144:  B               loc_FD132
FD146:  LDRD.W          R6, R4, [R8]
FD14A:  CMP             R6, R4
FD14C:  BEQ             loc_FD15C
FD14E:  LDR             R0, [R6]; this
FD150:  BLX             j__ZNSt6__ndk117__assoc_sub_state12__make_readyEv; std::__assoc_sub_state::__make_ready(void)
FD154:  LDM             R6!, {R0}; this
FD156:  BLX             j__ZNSt6__ndk114__shared_count16__release_sharedEv; std::__shared_count::__release_shared(void)
FD15A:  B               loc_FD14A
FD15C:  MOV             R0, R5
FD15E:  BL              sub_FD294
FD162:  MOV             R0, R8
FD164:  POP.W           {R8}
FD168:  POP.W           {R4-R7,LR}
FD16C:  B.W             sub_FD280
