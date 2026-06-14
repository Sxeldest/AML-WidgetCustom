; =========================================================
; Game Engine Function: sub_1520E8
; Address            : 0x1520E8 - 0x15211C
; =========================================================

1520E8:  PUSH            {R4,R6,R7,LR}
1520EA:  ADD             R7, SP, #8
1520EC:  LDR             R1, =(_ZTV16ChannelSoundFile - 0x1520F6); `vtable for'ChannelSoundFile ...
1520EE:  MOV             R4, R0
1520F0:  LDR             R0, [R0,#0x38]; this
1520F2:  ADD             R1, PC; `vtable for'ChannelSoundFile
1520F4:  ADD.W           R1, R1, #8
1520F8:  STR             R1, [R4]
1520FA:  CBZ             R0, loc_152100
1520FC:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
152100:  LDR             R1, =(_ZTV12ChannelSound - 0x15210A); `vtable for'ChannelSound ...
152102:  MOVS            R2, #0
152104:  LDR             R0, [R4,#4]
152106:  ADD             R1, PC; `vtable for'ChannelSound
152108:  ADD.W           R1, R1, #8
15210C:  STRD.W          R1, R2, [R4]
152110:  CBZ             R0, loc_152118
152112:  LDR             R1, [R0]
152114:  LDR             R1, [R1,#4]
152116:  BLX             R1
152118:  MOV             R0, R4
15211A:  POP             {R4,R6,R7,PC}
