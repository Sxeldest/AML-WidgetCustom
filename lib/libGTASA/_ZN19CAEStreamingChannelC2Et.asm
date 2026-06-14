; =========================================================
; Game Engine Function: _ZN19CAEStreamingChannelC2Et
; Address            : 0x3A95D8 - 0x3A964C
; =========================================================

3A95D8:  PUSH            {R7,LR}
3A95DA:  MOV             R7, SP
3A95DC:  MOVW            R2, #0xBB80; unsigned int
3A95E0:  MOVS            R3, #0x10; unsigned __int16
3A95E2:  BLX             j__ZN15CAEAudioChannelC2Etjt; CAEAudioChannel::CAEAudioChannel(ushort,uint,ushort)
3A95E6:  MOVW            R2, #:lower16:(elf_hash_chain+0x13ED0)
3A95EA:  MOVS            R3, #0
3A95EC:  MOVT            R2, #:upper16:(elf_hash_chain+0x13ED0)
3A95F0:  LDR.W           R12, =(_ZTV19CAEStreamingChannel_ptr - 0x3A9610)
3A95F4:  STR             R3, [R0,R2]
3A95F6:  MOV             R2, #0x2403C
3A95FE:  STR             R3, [R0,R2]
3A9600:  MOV             R2, #0x24040
3A9608:  MOV             R1, #0xFFFFFFFA
3A960C:  ADD             R12, PC; _ZTV19CAEStreamingChannel_ptr
3A960E:  STR             R1, [R0,R2]
3A9610:  MOV             R1, #0x24044
3A9618:  STR             R3, [R0,R1]
3A961A:  MOVW            R1, #:lower16:(elf_hash_chain+0x13EE8)
3A961E:  MOVW            LR, #:lower16:(elf_hash_chain+0x13EFC)
3A9622:  MOVT            R1, #:upper16:(elf_hash_chain+0x13EE8)
3A9626:  LDR.W           R2, [R12]; `vtable for'CAEStreamingChannel ...
3A962A:  STR             R3, [R0,R1]
3A962C:  MOVT            LR, #:upper16:(elf_hash_chain+0x13EFC)
3A9630:  MOV.W           R1, #0x3F800000
3A9634:  STR.W           R1, [R0,LR]
3A9638:  ADD.W           R1, R2, #8
3A963C:  STR             R3, [R0,#0x34]
3A963E:  STR             R3, [R0,#0x30]
3A9640:  STR.W           R3, [R0,#0x2F]
3A9644:  STR.W           R3, [R0,#0x2B]
3A9648:  STR             R1, [R0]
3A964A:  POP             {R7,PC}
