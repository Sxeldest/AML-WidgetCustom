; =========================================================
; Game Engine Function: sub_152124
; Address            : 0x152124 - 0x15215E
; =========================================================

152124:  PUSH            {R4,R6,R7,LR}
152126:  ADD             R7, SP, #8
152128:  LDR             R1, =(_ZTV16ChannelSoundFile - 0x152132); `vtable for'ChannelSoundFile ...
15212A:  MOV             R4, R0
15212C:  LDR             R0, [R0,#0x38]; this
15212E:  ADD             R1, PC; `vtable for'ChannelSoundFile
152130:  ADD.W           R1, R1, #8
152134:  STR             R1, [R4]
152136:  CBZ             R0, loc_15213C
152138:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
15213C:  LDR             R1, =(_ZTV12ChannelSound - 0x152146); `vtable for'ChannelSound ...
15213E:  MOVS            R2, #0
152140:  LDR             R0, [R4,#4]
152142:  ADD             R1, PC; `vtable for'ChannelSound
152144:  ADD.W           R1, R1, #8
152148:  STRD.W          R1, R2, [R4]
15214C:  CBZ             R0, loc_152154
15214E:  LDR             R1, [R0]
152150:  LDR             R1, [R1,#4]
152152:  BLX             R1
152154:  MOV             R0, R4; void *
152156:  POP.W           {R4,R6,R7,LR}
15215A:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
