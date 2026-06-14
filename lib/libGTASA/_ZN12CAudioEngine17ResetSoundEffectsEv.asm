; =========================================================
; Game Engine Function: _ZN12CAudioEngine17ResetSoundEffectsEv
; Address            : 0x3BCFFC - 0x3BD06C
; =========================================================

3BCFFC:  PUSH            {R4-R7,LR}
3BCFFE:  ADD             R7, SP, #0xC
3BD000:  PUSH.W          {R11}
3BD004:  MOV             R5, R0
3BD006:  LDR             R0, =(AESoundManager_ptr - 0x3BD00C)
3BD008:  ADD             R0, PC; AESoundManager_ptr
3BD00A:  LDR             R4, [R0]; AESoundManager
3BD00C:  MOV             R0, R4; this
3BD00E:  BLX             j__ZN15CAESoundManager7ServiceEv; CAESoundManager::Service(void)
3BD012:  ADDW            R0, R5, #0x4BC; this
3BD016:  BLX             j__ZN23CAECollisionAudioEntity5ResetEv; CAECollisionAudioEntity::Reset(void)
3BD01A:  ADD.W           R6, R5, #0xB4
3BD01E:  MOVS            R1, #0x24 ; '$'; int
3BD020:  MOVS            R2, #0; float
3BD022:  MOV.W           R3, #0x3F800000; float
3BD026:  MOV             R0, R6; this
3BD028:  BLX             j__ZN22CAEFrontendAudioEntity13AddAudioEventEiff; CAEFrontendAudioEntity::AddAudioEvent(int,float,float)
3BD02C:  MOV             R0, R6; this
3BD02E:  MOVS            R1, #0x23 ; '#'; int
3BD030:  MOVS            R2, #0; float
3BD032:  MOV.W           R3, #0x3F800000; float
3BD036:  BLX             j__ZN22CAEFrontendAudioEntity13AddAudioEventEiff; CAEFrontendAudioEntity::AddAudioEvent(int,float,float)
3BD03A:  MOV             R0, R6; this
3BD03C:  BLX             j__ZN22CAEFrontendAudioEntity5ResetEv; CAEFrontendAudioEntity::Reset(void)
3BD040:  ADD.W           R0, R5, #0x2A0; this
3BD044:  BLX             j__ZN20CAEScriptAudioEntity5ResetEv; CAEScriptAudioEntity::Reset(void)
3BD048:  BLX             j__ZN21CAEWeatherAudioEntity11StaticResetEv; CAEWeatherAudioEntity::StaticReset(void)
3BD04C:  BLX             j__ZN23CAEPedSpeechAudioEntity5ResetEv; CAEPedSpeechAudioEntity::Reset(void)
3BD050:  MOV             R0, R4; this
3BD052:  BLX             j__ZN15CAESoundManager5ResetEv; CAESoundManager::Reset(void)
3BD056:  MOV             R0, R4; this
3BD058:  BLX             j__ZN15CAESoundManager7ServiceEv; CAESoundManager::Service(void)
3BD05C:  MOV             R0, R4; this
3BD05E:  MOVS            R1, #1; unsigned __int8
3BD060:  POP.W           {R11}
3BD064:  POP.W           {R4-R7,LR}
3BD068:  B.W             j_j__ZN15CAESoundManager13PauseManuallyEh; j_CAESoundManager::PauseManually(uchar)
