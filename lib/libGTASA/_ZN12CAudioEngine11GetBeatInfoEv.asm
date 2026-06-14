; =========================================================
; Game Engine Function: _ZN12CAudioEngine11GetBeatInfoEv
; Address            : 0x3BD7B8 - 0x3BD7D2
; =========================================================

3BD7B8:  PUSH            {R4,R6,R7,LR}
3BD7BA:  ADD             R7, SP, #8
3BD7BC:  LDR             R1, =(AEAudioHardware_ptr - 0x3BD7C6)
3BD7BE:  ADD.W           R4, R0, #8
3BD7C2:  ADD             R1, PC; AEAudioHardware_ptr
3BD7C4:  LDR             R1, [R1]; AEAudioHardware
3BD7C6:  MOV             R0, R1
3BD7C8:  MOV             R1, R4
3BD7CA:  BLX             j__ZN16CAEAudioHardware11GetBeatInfoEP9tBeatInfo; CAEAudioHardware::GetBeatInfo(tBeatInfo *)
3BD7CE:  MOV             R0, R4
3BD7D0:  POP             {R4,R6,R7,PC}
