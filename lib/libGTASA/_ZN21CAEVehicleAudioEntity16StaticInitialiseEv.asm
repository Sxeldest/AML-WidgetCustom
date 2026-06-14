; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity16StaticInitialiseEv
; Address            : 0x46D744 - 0x46D7B6
; =========================================================

46D744:  PUSH            {R4,R6,R7,LR}
46D746:  ADD             R7, SP, #8
46D748:  LDR             R0, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x46D756)
46D74A:  VMOV.I32        Q8, #0xFFFF
46D74E:  LDR             R1, =(AEAudioHardware_ptr - 0x46D758)
46D750:  MOVS            R2, #0x13; __int16
46D752:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
46D754:  ADD             R1, PC; AEAudioHardware_ptr
46D756:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
46D758:  LDR             R4, [R1]; AEAudioHardware
46D75A:  MOVW            R1, #0xFFFF
46D75E:  STR             R1, [R0,#(dword_94EB10 - 0x94EAF0)]
46D760:  STR             R1, [R0,#(dword_94EB14 - 0x94EAF0)]
46D762:  MOVS            R1, #0x8A; unsigned __int16
46D764:  VST1.16         {D16-D17}, [R0]!
46D768:  VST1.16         {D16-D17}, [R0]
46D76C:  MOV             R0, R4; this
46D76E:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
46D772:  MOV             R0, R4; this
46D774:  MOVS            R1, #0xD; unsigned __int16
46D776:  MOVS            R2, #0x12; __int16
46D778:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
46D77C:  MOV             R0, R4; this
46D77E:  MOVS            R1, #0x4A ; 'J'; unsigned __int16
46D780:  MOVS            R2, #0x11; __int16
46D782:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
46D786:  LDR             R0, =(_ZN21CAEVehicleAudioEntity25s_pPlayerAttachedForRadioE_ptr - 0x46D790)
46D788:  LDR             R1, =(_ZN21CAEVehicleAudioEntity21s_NextDummyEngineSlotE_ptr - 0x46D794)
46D78A:  LDR             R2, =(_ZN21CAEVehicleAudioEntity21s_HelicoptorsDisabledE_ptr - 0x46D798)
46D78C:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity25s_pPlayerAttachedForRadioE_ptr
46D78E:  LDR             R3, =(_ZN21CAEVehicleAudioEntity31s_pVehicleAudioSettingsForRadioE_ptr - 0x46D79A)
46D790:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity21s_NextDummyEngineSlotE_ptr
46D792:  LDR             R4, =(_ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr - 0x46D7A0)
46D794:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity21s_HelicoptorsDisabledE_ptr
46D796:  ADD             R3, PC; _ZN21CAEVehicleAudioEntity31s_pVehicleAudioSettingsForRadioE_ptr
46D798:  LDR.W           R12, [R1]; CAEVehicleAudioEntity::s_NextDummyEngineSlot ...
46D79C:  ADD             R4, PC; _ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr
46D79E:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_pPlayerAttachedForRadio ...
46D7A0:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_HelicoptorsDisabled ...
46D7A2:  MOVS            R1, #0
46D7A4:  LDR             R3, [R3]; CAEVehicleAudioEntity::s_pVehicleAudioSettingsForRadio ...
46D7A6:  LDR             R4, [R4]; CAEVehicleAudioEntity::s_pPlayerDriver ...
46D7A8:  STR             R1, [R0]; CAEVehicleAudioEntity::s_pPlayerAttachedForRadio
46D7AA:  STR             R1, [R3]; CAEVehicleAudioEntity::s_pVehicleAudioSettingsForRadio
46D7AC:  STR             R1, [R4]; CAEVehicleAudioEntity::s_pPlayerDriver
46D7AE:  STRH.W          R1, [R12]; CAEVehicleAudioEntity::s_NextDummyEngineSlot
46D7B2:  STRB            R1, [R2]; CAEVehicleAudioEntity::s_HelicoptorsDisabled
46D7B4:  POP             {R4,R6,R7,PC}
