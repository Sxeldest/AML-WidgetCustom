; =========================================================
; Game Engine Function: sub_1A4364
; Address            : 0x1A4364 - 0x1A43C0
; =========================================================

1A4364:  PUSH            {R4-R7,LR}
1A4366:  ADD             R7, SP, #0xC
1A4368:  PUSH.W          {R8}
1A436C:  LDR             R3, =(_ZN22CAETwinLoopSoundEntityD2Ev_ptr_0 - 0x1A4378)
1A436E:  MOVS            R4, #0
1A4370:  LDR             R0, =(_ZN21CAEWeatherAudioEntity13m_sRainSoundLE_ptr - 0x1A437E)
1A4372:  LDR             R2, =(_ZTV22CAETwinLoopSoundEntity_ptr - 0x1A4380)
1A4374:  ADD             R3, PC; _ZN22CAETwinLoopSoundEntityD2Ev_ptr_0
1A4376:  LDR.W           R8, =(unk_67A000 - 0x1A4386)
1A437A:  ADD             R0, PC; _ZN21CAEWeatherAudioEntity13m_sRainSoundLE_ptr
1A437C:  ADD             R2, PC; _ZTV22CAETwinLoopSoundEntity_ptr
1A437E:  LDR             R5, [R3]; CAETwinLoopSoundEntity::~CAETwinLoopSoundEntity()
1A4380:  LDR             R1, [R0]; obj
1A4382:  ADD             R8, PC; unk_67A000
1A4384:  LDR             R0, [R2]; `vtable for'CAETwinLoopSoundEntity ...
1A4386:  MOV             R2, R8; lpdso_handle
1A4388:  ADD.W           R6, R0, #8
1A438C:  MOV             R0, R5; lpfunc
1A438E:  STR             R6, [R1]; CAEWeatherAudioEntity::m_sRainSoundL
1A4390:  STRD.W          R4, R4, [R1,#(dword_94EBD4 - 0x94EB34)]
1A4394:  STR             R4, [R1,#(dword_94EB44 - 0x94EB34)]
1A4396:  STRH.W          R4, [R1,#(word_94EBBC - 0x94EB34)]
1A439A:  BLX             __cxa_atexit
1A439E:  LDR             R0, =(_ZN21CAEWeatherAudioEntity13m_sRainSoundRE_ptr - 0x1A43A6)
1A43A0:  MOV             R2, R8; lpdso_handle
1A43A2:  ADD             R0, PC; _ZN21CAEWeatherAudioEntity13m_sRainSoundRE_ptr
1A43A4:  LDR             R1, [R0]; obj
1A43A6:  MOV             R0, R5; lpfunc
1A43A8:  STR             R4, [R1,#(dword_94EBEC - 0x94EBDC)]
1A43AA:  STR             R6, [R1]; CAEWeatherAudioEntity::m_sRainSoundR
1A43AC:  STRD.W          R4, R4, [R1,#(dword_94EC7C - 0x94EBDC)]
1A43B0:  STRH.W          R4, [R1,#(word_94EC64 - 0x94EBDC)]
1A43B4:  POP.W           {R8}
1A43B8:  POP.W           {R4-R7,LR}
1A43BC:  B.W             j___cxa_atexit
