; =========================================================
; Game Engine Function: _ZN17CAEPedAudioEntity16StaticInitialiseEv
; Address            : 0x46D528 - 0x46D54A
; =========================================================

46D528:  PUSH            {R4,R6,R7,LR}
46D52A:  ADD             R7, SP, #8
46D52C:  LDR             R0, =(AEAudioHardware_ptr - 0x46D536)
46D52E:  MOVS            R1, #0; unsigned __int16
46D530:  MOVS            R2, #0x29 ; ')'; __int16
46D532:  ADD             R0, PC; AEAudioHardware_ptr
46D534:  LDR             R4, [R0]; AEAudioHardware
46D536:  MOV             R0, R4; this
46D538:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
46D53C:  MOV             R0, R4; this
46D53E:  MOVS            R1, #0x80; unsigned __int16
46D540:  MOVS            R2, #0x20 ; ' '; __int16
46D542:  POP.W           {R4,R6,R7,LR}
46D546:  B.W             sub_18B078
