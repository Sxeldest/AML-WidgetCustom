; =========================================================
; Game Engine Function: _ZN23CAECollisionAudioEntity21InitialisePostLoadingEv
; Address            : 0x39364C - 0x39366E
; =========================================================

39364C:  PUSH            {R4,R6,R7,LR}
39364E:  ADD             R7, SP, #8
393650:  LDR             R0, =(AEAudioHardware_ptr - 0x39365A)
393652:  MOVS            R1, #0x27 ; '''; unsigned __int16
393654:  MOVS            R2, #2; __int16
393656:  ADD             R0, PC; AEAudioHardware_ptr
393658:  LDR             R4, [R0]; AEAudioHardware
39365A:  MOV             R0, R4; this
39365C:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
393660:  MOV             R0, R4; this
393662:  MOVS            R1, #0x1B; unsigned __int16
393664:  MOVS            R2, #3; __int16
393666:  POP.W           {R4,R6,R7,LR}
39366A:  B.W             sub_18B078
