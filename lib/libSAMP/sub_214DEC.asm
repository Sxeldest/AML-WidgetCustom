; =========================================================
; Game Engine Function: sub_214DEC
; Address            : 0x214DEC - 0x214E3C
; =========================================================

214DEC:  PUSH            {R4-R7,LR}
214DEE:  ADD             R7, SP, #0xC
214DF0:  PUSH.W          {R8}
214DF4:  MOV             R5, R0
214DF6:  MOV             R8, R0
214DF8:  LDR.W           R4, [R5,#0xC]!
214DFC:  LDR             R6, [R5,#4]
214DFE:  CMP             R4, R6
214E00:  BEQ             loc_214E12
214E02:  LDR             R0, [R4,#4]; this
214E04:  BLX             j__ZNSt6__ndk15mutex6unlockEv; std::mutex::unlock(void)
214E08:  LDR.W           R0, [R4],#8; this
214E0C:  BLX             j__ZNSt6__ndk118condition_variable10notify_allEv; std::condition_variable::notify_all(void)
214E10:  B               loc_214DFE
214E12:  LDRD.W          R6, R4, [R8]
214E16:  CMP             R6, R4
214E18:  BEQ             loc_214E28
214E1A:  LDR             R0, [R6]; this
214E1C:  BLX             j__ZNSt6__ndk117__assoc_sub_state12__make_readyEv; std::__assoc_sub_state::__make_ready(void)
214E20:  LDM             R6!, {R0}; this
214E22:  BLX             j__ZNSt6__ndk114__shared_count16__release_sharedEv; std::__shared_count::__release_shared(void)
214E26:  B               loc_214E16
214E28:  MOV             R0, R5
214E2A:  BL              sub_214F60
214E2E:  MOV             R0, R8
214E30:  POP.W           {R8}
214E34:  POP.W           {R4-R7,LR}
214E38:  B.W             sub_214F4C
