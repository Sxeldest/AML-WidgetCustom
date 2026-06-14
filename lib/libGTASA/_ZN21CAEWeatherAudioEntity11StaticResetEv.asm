; =========================================================
; Game Engine Function: _ZN21CAEWeatherAudioEntity11StaticResetEv
; Address            : 0x3BB480 - 0x3BB4C6
; =========================================================

3BB480:  LDR             R0, =(_ZN21CAEWeatherAudioEntity13m_sRainSoundLE_ptr - 0x3BB48E)
3BB482:  MOVS            R2, #0
3BB484:  LDR             R1, =(_ZN21CAEWeatherAudioEntity14m_sfRainVolumeE_ptr - 0x3BB490)
3BB486:  MOVT            R2, #0xC2C8
3BB48A:  ADD             R0, PC; _ZN21CAEWeatherAudioEntity13m_sRainSoundLE_ptr
3BB48C:  ADD             R1, PC; _ZN21CAEWeatherAudioEntity14m_sfRainVolumeE_ptr
3BB48E:  LDR             R0, [R0]; CAEWeatherAudioEntity::m_sRainSoundL ...
3BB490:  LDR             R1, [R1]; CAEWeatherAudioEntity::m_sfRainVolume ...
3BB492:  LDRH.W          R0, [R0,#(word_94EBBC - 0x94EB34)]
3BB496:  STR             R2, [R1]; CAEWeatherAudioEntity::m_sfRainVolume
3BB498:  CBZ             R0, loc_3BB4AC
3BB49A:  PUSH            {R7,LR}
3BB49C:  MOV             R7, SP
3BB49E:  LDR             R0, =(_ZN21CAEWeatherAudioEntity13m_sRainSoundLE_ptr - 0x3BB4A4)
3BB4A0:  ADD             R0, PC; _ZN21CAEWeatherAudioEntity13m_sRainSoundLE_ptr
3BB4A2:  LDR             R0, [R0]; this
3BB4A4:  BLX             j__ZN22CAETwinLoopSoundEntity18StopSoundAndForgetEv; CAETwinLoopSoundEntity::StopSoundAndForget(void)
3BB4A8:  POP.W           {R7,LR}
3BB4AC:  LDR             R0, =(_ZN21CAEWeatherAudioEntity13m_sRainSoundRE_ptr - 0x3BB4B2)
3BB4AE:  ADD             R0, PC; _ZN21CAEWeatherAudioEntity13m_sRainSoundRE_ptr
3BB4B0:  LDR             R0, [R0]; CAEWeatherAudioEntity::m_sRainSoundR ...
3BB4B2:  LDRH.W          R0, [R0,#(word_94EC64 - 0x94EBDC)]
3BB4B6:  CMP             R0, #0
3BB4B8:  IT EQ
3BB4BA:  BXEQ            LR
3BB4BC:  LDR             R0, =(_ZN21CAEWeatherAudioEntity13m_sRainSoundRE_ptr - 0x3BB4C2)
3BB4BE:  ADD             R0, PC; _ZN21CAEWeatherAudioEntity13m_sRainSoundRE_ptr
3BB4C0:  LDR             R0, [R0]; this
3BB4C2:  B.W             sub_197778
