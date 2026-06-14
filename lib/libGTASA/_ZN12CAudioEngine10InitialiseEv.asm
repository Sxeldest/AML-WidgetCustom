; =========================================================
; Game Engine Function: _ZN12CAudioEngine10InitialiseEv
; Address            : 0x46CB10 - 0x46CE16
; =========================================================

46CB10:  PUSH            {R4-R7,LR}
46CB12:  ADD             R7, SP, #0xC
46CB14:  PUSH.W          {R8,R9,R11}
46CB18:  VPUSH           {D8}
46CB1C:  MOV             R9, R0
46CB1E:  BLX             j__ZN14CLoadingScreen5PauseEv; CLoadingScreen::Pause(void)
46CB22:  LDR             R0, =(AEAudioHardware_ptr - 0x46CB28)
46CB24:  ADD             R0, PC; AEAudioHardware_ptr
46CB26:  LDR             R0, [R0]; AEAudioHardware ; this
46CB28:  BLX             j__ZN16CAEAudioHardware10InitialiseEv; CAEAudioHardware::Initialise(void)
46CB2C:  CMP             R0, #0
46CB2E:  BEQ.W           loc_46CE08
46CB32:  LDR             R0, =(AEAudioHardware_ptr - 0x46CB3C)
46CB34:  MOV.W           R6, #0xFFFFFFFF
46CB38:  ADD             R0, PC; AEAudioHardware_ptr
46CB3A:  LDR             R0, [R0]; AEAudioHardware
46CB3C:  LDRH.W          R1, [R0,#(word_942F18 - 0x942ED0)]
46CB40:  CBZ             R1, loc_46CB5A
46CB42:  LDR             R2, =(AEAudioHardware_ptr - 0x46CB4A)
46CB44:  MOVS            R0, #0
46CB46:  ADD             R2, PC; AEAudioHardware_ptr
46CB48:  LDR             R2, [R2]; AEAudioHardware
46CB4A:  ADD.W           R3, R2, R0,LSL#1
46CB4E:  LDRH.W          R5, [R3,#0x4C]!
46CB52:  CBZ             R5, loc_46CB60
46CB54:  ADD             R0, R5
46CB56:  CMP             R0, #0x1D
46CB58:  BLE             loc_46CB4A
46CB5A:  MOV.W           R0, #0xFFFFFFFF
46CB5E:  B               loc_46CB74
46CB60:  LDR             R2, =(AEAudioHardware_ptr - 0x46CB6E)
46CB62:  MOVS            R5, #1
46CB64:  STRH            R5, [R3]
46CB66:  MOVW            R3, #0xFFFF
46CB6A:  ADD             R2, PC; AEAudioHardware_ptr
46CB6C:  ADD             R1, R3
46CB6E:  LDR             R2, [R2]; AEAudioHardware
46CB70:  STRH.W          R1, [R2,#(word_942F18 - 0x942ED0)]
46CB74:  LDR             R2, =(AERadioTrackManager_ptr - 0x46CB80)
46CB76:  SXTH            R1, R0; int
46CB78:  STR.W           R1, [R9,#4]
46CB7C:  ADD             R2, PC; AERadioTrackManager_ptr
46CB7E:  LDR             R0, [R2]; AERadioTrackManager ; this
46CB80:  BLX             j__ZN20CAERadioTrackManager10InitialiseEi; CAERadioTrackManager::Initialise(int)
46CB84:  LDR             R0, =(AECutsceneTrackManager_ptr - 0x46CB90)
46CB86:  MOVS            R5, #0
46CB88:  LDR             R2, =(AESoundManager_ptr - 0x46CB94)
46CB8A:  MOVS            R4, #3
46CB8C:  ADD             R0, PC; AECutsceneTrackManager_ptr
46CB8E:  LDR             R1, =(AEAmbienceTrackManager_ptr - 0x46CB9A)
46CB90:  ADD             R2, PC; AESoundManager_ptr
46CB92:  LDR             R3, [R0]; AECutsceneTrackManager
46CB94:  ADR             R0, dword_46CE20
46CB96:  ADD             R1, PC; AEAmbienceTrackManager_ptr
46CB98:  VLD1.64         {D16-D17}, [R0@128]
46CB9C:  LDR             R0, [R2]; AESoundManager ; this
46CB9E:  LDR.W           R2, [R9,#4]
46CBA2:  STR             R2, [R3,#(dword_68D2B8 - 0x68D2B4)]
46CBA4:  ADD.W           R2, R3, #8
46CBA8:  LDR             R1, [R1]; AEAmbienceTrackManager
46CBAA:  STR             R5, [R3,#(dword_68D2CC - 0x68D2B4)]
46CBAC:  STRH            R5, [R3]
46CBAE:  ADD.W           R12, R1, #0x18
46CBB2:  STRB            R5, [R3,#(byte_68D2D0 - 0x68D2B4)]
46CBB4:  MOVS            R3, #8
46CBB6:  VST1.32         {D16-D17}, [R2]
46CBBA:  LDR.W           R2, [R9,#4]
46CBBE:  STRD.W          R2, R3, [R1,#(dword_68C39C - 0x68C398)]
46CBC2:  MOVS            R2, #0xC2C80000
46CBC8:  MOV.W           R3, #0x3F800000
46CBCC:  STRB.W          R4, [R1,#(byte_68C3C0 - 0x68C398)]
46CBD0:  STM.W           R12, {R2,R3,R6}
46CBD4:  STR             R6, [R1,#(dword_68C3BC - 0x68C398)]
46CBD6:  BLX             j__ZN15CAESoundManager10InitialiseEv; CAESoundManager::Initialise(void)
46CBDA:  CMP             R0, #0
46CBDC:  BEQ.W           loc_46CE0A
46CBE0:  MOVW            R0, #0xB159; unsigned int
46CBE4:  MOVW            R8, #0xB159
46CBE8:  BLX             _Znaj; operator new[](uint)
46CBEC:  LDR             R1, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x46CBF2)
46CBEE:  ADD             R1, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
46CBF0:  LDR             R1, [R1]; CAEAudioEntity::m_pAudioEventVolumes ...
46CBF2:  STR             R0, [R1]; CAEAudioEntity::m_pAudioEventVolumes
46CBF4:  ADR             R0, aAudioConfigEve; "AUDIO\\CONFIG\\EVENTVOL.DAT"
46CBF6:  ADR             R1, aR_5; "r"
46CBF8:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
46CBFC:  MOV             R5, R0
46CBFE:  CMP             R5, #0
46CC00:  BEQ.W           loc_46CE08
46CC04:  LDR             R0, =(_ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr - 0x46CC0E)
46CC06:  MOVW            R2, #(elf_hash_bucket+0xB05D); char *
46CC0A:  ADD             R0, PC; _ZN14CAEAudioEntity20m_pAudioEventVolumesE_ptr
46CC0C:  LDR             R0, [R0]; CAEAudioEntity::m_pAudioEventVolumes ...
46CC0E:  LDR             R1, [R0]; unsigned int
46CC10:  MOV             R0, R5; this
46CC12:  BLX             j__ZN8CFileMgr9ReadBytesEjPci; CFileMgr::ReadBytes(uint,char *,int)
46CC16:  MOV             R6, R0
46CC18:  MOV             R0, R5; this
46CC1A:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
46CC1E:  CMP             R6, R8
46CC20:  BNE.W           loc_46CE08
46CC24:  ADD.W           R0, R9, #0xB4; this
46CC28:  BLX             j__ZN22CAEFrontendAudioEntity10InitialiseEv; CAEFrontendAudioEntity::Initialise(void)
46CC2C:  MOV             R0, R9; this
46CC2E:  MOVS            R1, #0; float
46CC30:  BLX             j__ZN12CAudioEngine28SetEffectsFaderScalingFactorEf; CAudioEngine::SetEffectsFaderScalingFactor(float)
46CC34:  LDR             R0, =(_ZN15CAEAudioUtility13m_sfLogLookupE_ptr - 0x46CC44)
46CC36:  VMOV.F32        S16, #10.0
46CC3A:  ADR             R1, dword_46CE30
46CC3C:  MOVW            R5, #0x999A
46CC40:  ADD             R0, PC; _ZN15CAEAudioUtility13m_sfLogLookupE_ptr
46CC42:  VLD1.64         {D16-D17}, [R1@128]
46CC46:  MOVS            R4, #0x2F ; '/'
46CC48:  MOVT            R5, #0x3F99
46CC4C:  LDR             R6, [R0]; CAEAudioUtility::m_sfLogLookup ...
46CC4E:  VST1.32         {D16-D17}, [R6]!
46CC52:  VMOV            S0, R4
46CC56:  MOV             R0, R5; x
46CC58:  VCVT.F32.S32    S0, S0
46CC5C:  VMOV            R1, S0; y
46CC60:  BLX             powf
46CC64:  VMOV            S0, R0
46CC68:  SUBS            R4, #1
46CC6A:  ADDS            R0, R4, #1
46CC6C:  VDIV.F32        S0, S16, S0
46CC70:  VSTR            S0, [R6]
46CC74:  ADD.W           R6, R6, #8
46CC78:  BNE             loc_46CC52
46CC7A:  VMOV            R0, S0; x
46CC7E:  BLX             log10f
46CC82:  LDR             R1, =(_ZN15CAEAudioUtility13m_sfLogLookupE_ptr - 0x46CC8C)
46CC84:  MOVS            R6, #0
46CC86:  LDR             R2, =(AEAudioHardware_ptr - 0x46CC8E)
46CC88:  ADD             R1, PC; _ZN15CAEAudioUtility13m_sfLogLookupE_ptr
46CC8A:  ADD             R2, PC; AEAudioHardware_ptr
46CC8C:  LDR             R1, [R1]; CAEAudioUtility::m_sfLogLookup ...
46CC8E:  LDR             R5, [R2]; AEAudioHardware
46CC90:  MOVS            R2, #0x29 ; ')'; __int16
46CC92:  STR             R0, [R1,#(dword_9443E8 - 0x9443DC)]
46CC94:  MOVS            R1, #0; unsigned __int16
46CC96:  MOV             R0, R5; this
46CC98:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
46CC9C:  MOV             R0, R5; this
46CC9E:  MOVS            R1, #0x80; unsigned __int16
46CCA0:  MOVS            R2, #0x20 ; ' '; __int16
46CCA2:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
46CCA6:  BLX             j__ZN23CAEPedSpeechAudioEntity16StaticInitialiseEv; CAEPedSpeechAudioEntity::StaticInitialise(void)
46CCAA:  LDR             R0, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x46CCBA)
46CCAC:  VMOV.I32        Q8, #0xFFFF
46CCB0:  MOVW            R1, #0xFFFF
46CCB4:  MOVS            R2, #0x13; __int16
46CCB6:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
46CCB8:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
46CCBA:  STR             R1, [R0,#(dword_94EB10 - 0x94EAF0)]
46CCBC:  STR             R1, [R0,#(dword_94EB14 - 0x94EAF0)]
46CCBE:  MOVS            R1, #0x8A; unsigned __int16
46CCC0:  VST1.16         {D16-D17}, [R0]!
46CCC4:  VST1.16         {D16-D17}, [R0]
46CCC8:  MOV             R0, R5; this
46CCCA:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
46CCCE:  MOV             R0, R5; this
46CCD0:  MOVS            R1, #0xD; unsigned __int16
46CCD2:  MOVS            R2, #0x12; __int16
46CCD4:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
46CCD8:  MOV             R0, R5; this
46CCDA:  MOVS            R1, #0x4A ; 'J'; unsigned __int16
46CCDC:  MOVS            R2, #0x11; __int16
46CCDE:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
46CCE2:  LDR             R0, =(_ZN21CAEVehicleAudioEntity25s_pPlayerAttachedForRadioE_ptr - 0x46CCEC)
46CCE4:  LDR             R1, =(_ZN21CAEVehicleAudioEntity31s_pVehicleAudioSettingsForRadioE_ptr - 0x46CCF0)
46CCE6:  LDR             R2, =(_ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr - 0x46CCF4)
46CCE8:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity25s_pPlayerAttachedForRadioE_ptr
46CCEA:  LDR             R3, =(_ZN21CAEVehicleAudioEntity21s_NextDummyEngineSlotE_ptr - 0x46CCF6)
46CCEC:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity31s_pVehicleAudioSettingsForRadioE_ptr
46CCEE:  LDR             R4, =(_ZN21CAEVehicleAudioEntity21s_HelicoptorsDisabledE_ptr - 0x46CCFA)
46CCF0:  ADD             R2, PC; _ZN21CAEVehicleAudioEntity15s_pPlayerDriverE_ptr
46CCF2:  ADD             R3, PC; _ZN21CAEVehicleAudioEntity21s_NextDummyEngineSlotE_ptr
46CCF4:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_pPlayerAttachedForRadio ...
46CCF6:  ADD             R4, PC; _ZN21CAEVehicleAudioEntity21s_HelicoptorsDisabledE_ptr
46CCF8:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_pVehicleAudioSettingsForRadio ...
46CCFA:  LDR             R2, [R2]; CAEVehicleAudioEntity::s_pPlayerDriver ...
46CCFC:  LDR             R3, [R3]; CAEVehicleAudioEntity::s_NextDummyEngineSlot ...
46CCFE:  LDR             R4, [R4]; CAEVehicleAudioEntity::s_HelicoptorsDisabled ...
46CD00:  STR             R6, [R0]; CAEVehicleAudioEntity::s_pPlayerAttachedForRadio
46CD02:  MOV             R0, R5; this
46CD04:  STR             R6, [R1]; CAEVehicleAudioEntity::s_pVehicleAudioSettingsForRadio
46CD06:  MOVS            R1, #0x34 ; '4'; unsigned __int16
46CD08:  STR             R6, [R2]; CAEVehicleAudioEntity::s_pPlayerDriver
46CD0A:  MOVS            R2, #4; __int16
46CD0C:  STRH            R6, [R3]; CAEVehicleAudioEntity::s_NextDummyEngineSlot
46CD0E:  STRB            R6, [R4]; CAEVehicleAudioEntity::s_HelicoptorsDisabled
46CD10:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
46CD14:  MOV             R0, R5; this
46CD16:  MOVS            R1, #0x69 ; 'i'; unsigned __int16
46CD18:  MOVS            R2, #6; __int16
46CD1A:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
46CD1E:  MOV             R0, R5; this
46CD20:  MOVS            R1, #0x33 ; '3'; unsigned __int16
46CD22:  MOVS            R2, #0x1F; __int16
46CD24:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
46CD28:  MOV             R0, R5; this
46CD2A:  MOVS            R1, #0x34 ; '4'; unsigned __int16
46CD2C:  MOVS            R2, #4; __int16
46CD2E:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
46CD32:  LDR             R1, =(_ZN27CAEPoliceScannerAudioEntity28s_NextNewScannerDialogueTimeE_ptr - 0x46CD3A)
46CD34:  LDR             R0, =(_ZN27CAEPoliceScannerAudioEntity18s_bScannerDisabledE_ptr - 0x46CD40)
46CD36:  ADD             R1, PC; _ZN27CAEPoliceScannerAudioEntity28s_NextNewScannerDialogueTimeE_ptr
46CD38:  LDR             R2, =(_ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr - 0x46CD44)
46CD3A:  LDR             R3, =(_ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr - 0x46CD48)
46CD3C:  ADD             R0, PC; _ZN27CAEPoliceScannerAudioEntity18s_bScannerDisabledE_ptr
46CD3E:  LDR             R5, =(_ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr - 0x46CD4A)
46CD40:  ADD             R2, PC; _ZN27CAEPoliceScannerAudioEntity23s_nScannerPlaybackStateE_ptr
46CD42:  LDR             R4, =(_ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr - 0x46CD4E)
46CD44:  ADD             R3, PC; _ZN27CAEPoliceScannerAudioEntity16s_pPSControllingE_ptr
46CD46:  ADD             R5, PC; _ZN27CAEPoliceScannerAudioEntity15s_pCurrentSlotsE_ptr
46CD48:  LDR             R1, [R1]; CAEPoliceScannerAudioEntity::s_NextNewScannerDialogueTime ...
46CD4A:  ADD             R4, PC; _ZN27CAEPoliceScannerAudioEntity15s_fVolumeOffsetE_ptr
46CD4C:  LDR             R0, [R0]; CAEPoliceScannerAudioEntity::s_bScannerDisabled ...
46CD4E:  LDR             R2, [R2]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState ...
46CD50:  LDR             R3, [R3]; CAEPoliceScannerAudioEntity::s_pPSControlling ...
46CD52:  LDR             R5, [R5]; CAEPoliceScannerAudioEntity::s_pCurrentSlots ...
46CD54:  LDR             R4, [R4]; CAEPoliceScannerAudioEntity::s_fVolumeOffset ...
46CD56:  STR             R6, [R1]; CAEPoliceScannerAudioEntity::s_NextNewScannerDialogueTime
46CD58:  MOVS            R1, #0
46CD5A:  STRB            R6, [R0]; CAEPoliceScannerAudioEntity::s_bScannerDisabled
46CD5C:  MOV.W           R0, #0xFFFFFFFF
46CD60:  MOVT            R1, #0xC47A
46CD64:  STRH            R6, [R2]; CAEPoliceScannerAudioEntity::s_nScannerPlaybackState
46CD66:  STR             R6, [R3]; CAEPoliceScannerAudioEntity::s_pPSControlling
46CD68:  STR             R6, [R5]; CAEPoliceScannerAudioEntity::s_pCurrentSlots
46CD6A:  STR             R6, [R4]; CAEPoliceScannerAudioEntity::s_fVolumeOffset
46CD6C:  STRD.W          R1, R1, [R9,#0x330]
46CD70:  STRD.W          R1, R6, [R9,#0x338]
46CD74:  STRD.W          R6, R0, [R9,#0x340]
46CD78:  STRD.W          R0, R0, [R9,#0x348]
46CD7C:  STRD.W          R1, R1, [R9,#0x350]
46CD80:  STRD.W          R1, R6, [R9,#0x358]
46CD84:  STRD.W          R6, R0, [R9,#0x360]
46CD88:  STRD.W          R0, R0, [R9,#0x368]
46CD8C:  STRD.W          R1, R1, [R9,#0x370]
46CD90:  STRD.W          R1, R6, [R9,#0x378]
46CD94:  STRD.W          R6, R0, [R9,#0x380]
46CD98:  STRD.W          R0, R0, [R9,#0x388]
46CD9C:  STRD.W          R1, R1, [R9,#0x390]
46CDA0:  STRD.W          R1, R6, [R9,#0x398]
46CDA4:  STRD.W          R6, R0, [R9,#0x3A0]
46CDA8:  STRD.W          R0, R0, [R9,#0x3A8]
46CDAC:  MOVW            R0, #0x1E38
46CDB0:  ADD             R0, R9; this
46CDB2:  BLX             j__ZN27CAEPedlessSpeechAudioEntity10InitialiseEv; CAEPedlessSpeechAudioEntity::Initialise(void)
46CDB6:  ADDW            R0, R9, #0x6D6
46CDBA:  MOV.W           R1, #0x12C
46CDBE:  MOVW            R2, #0xC3C3
46CDC2:  STR.W           R6, [R9,#0x6C0]
46CDC6:  STRH.W          R2, [R0,#-1]
46CDCA:  SUBS            R1, #1
46CDCC:  STR.W           R6, [R0,#-0x12]
46CDD0:  STR.W           R6, [R0,#-0xE]
46CDD4:  STR.W           R6, [R0,#-0xA]
46CDD8:  STR.W           R6, [R0,#-6]
46CDDC:  STRB.W          R6, [R0,#-2]
46CDE0:  ADD.W           R0, R0, #0x14
46CDE4:  BNE             loc_46CDC6
46CDE6:  ADD.W           R0, R9, #0x538
46CDEA:  MOV.W           R1, #0x188
46CDEE:  MOVS            R2, #0xFF
46CDF0:  MOVS            R4, #0xFF
46CDF2:  BLX             j___aeabi_memset8
46CDF6:  MOVS            R0, #0; this
46CDF8:  STRB.W          R4, [R9,#2]
46CDFC:  STRH.W          R0, [R9]
46CE00:  BLX             j__ZN14CLoadingScreen8ContinueEv; CLoadingScreen::Continue(void)
46CE04:  MOVS            R5, #1
46CE06:  B               loc_46CE0A
46CE08:  MOVS            R5, #0
46CE0A:  MOV             R0, R5
46CE0C:  VPOP            {D8}
46CE10:  POP.W           {R8,R9,R11}
46CE14:  POP             {R4-R7,PC}
