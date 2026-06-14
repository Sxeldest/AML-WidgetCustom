; =========================================================
; Game Engine Function: _ZN16CAEStaticChannel14SetAudioBufferEP9OALBuffertsst
; Address            : 0x3A9300 - 0x3A93C0
; =========================================================

3A9300:  PUSH            {R4-R7,LR}
3A9302:  ADD             R7, SP, #0xC
3A9304:  PUSH.W          {R8-R11}
3A9308:  SUB             SP, SP, #4
3A930A:  LDR.W           R10, [R7,#arg_4]
3A930E:  MOV             R8, R3
3A9310:  MOV             R9, R2
3A9312:  MOV             R5, R1
3A9314:  MOV             R4, R0
3A9316:  CMP.W           R10, #0
3A931A:  BEQ             loc_3A93B6
3A931C:  LDR             R0, [R4,#4]; this
3A931E:  LDR.W           R11, [R7,#arg_0]
3A9322:  CBZ             R0, loc_3A9334
3A9324:  LDR             R1, =(g_numSoundChannelsUsed_ptr - 0x3A932A)
3A9326:  ADD             R1, PC; g_numSoundChannelsUsed_ptr
3A9328:  LDR             R1, [R1]; g_numSoundChannelsUsed
3A932A:  LDR             R2, [R1]
3A932C:  SUBS            R2, #1
3A932E:  STR             R2, [R1]
3A9330:  BLX             j__ZN7OALBase7ReleaseEv; OALBase::Release(void)
3A9334:  MOVS            R6, #0
3A9336:  ADDS.W          R1, R11, #1
3A933A:  STR             R6, [R4,#4]
3A933C:  STRB.W          R6, [R4,#0x28]
3A9340:  STRB.W          R6, [R4,#0x2B]
3A9344:  STRB            R6, [R4,#0x1C]
3A9346:  STRD.W          R6, R6, [R4,#0x30]
3A934A:  STR             R6, [R4,#0x38]
3A934C:  STR             R5, [R4,#0x50]
3A934E:  LDR             R0, [R5,#0x10]
3A9350:  STRH.W          R9, [R4,#0x54]
3A9354:  STR             R0, [R4,#0x10]
3A9356:  STRH.W          R8, [R4,#0x58]
3A935A:  ITTTT NE
3A935C:  MOVNE           R1, #1
3A935E:  STRBNE.W        R1, [R4,#0x28]
3A9362:  MOVNE.W         R1, R11,LSL#1
3A9366:  STRDNE.W        R1, R0, [R4,#0x30]
3A936A:  STR             R0, [R4,#8]
3A936C:  MOVS            R0, #0x30 ; '0'; unsigned int
3A936E:  STRD.W          R10, R10, [R4,#0x20]
3A9372:  BLX             _Znwj; operator new(uint)
3A9376:  BLX             j__ZN9OALSourceC2Ev; OALSource::OALSource(void)
3A937A:  LDR             R1, =(g_numSoundChannelsUsed_ptr - 0x3A9382)
3A937C:  STR             R0, [R4,#4]
3A937E:  ADD             R1, PC; g_numSoundChannelsUsed_ptr
3A9380:  LDR             R1, [R1]; g_numSoundChannelsUsed
3A9382:  LDR             R2, [R1]
3A9384:  ADDS            R2, #1
3A9386:  STR             R2, [R1]
3A9388:  MOV             R1, R5; OALBuffer *
3A938A:  BLX             j__ZN9OALSource9SetBufferEP9OALBuffer; OALSource::SetBuffer(OALBuffer *)
3A938E:  LDR             R5, [R4,#4]
3A9390:  MOV             R0, R5; this
3A9392:  BLX             j__ZN9OALSource12ObtainSourceEv; OALSource::ObtainSource(void)
3A9396:  LDR             R0, [R5,#8]
3A9398:  MOVW            R1, #0x1026
3A939C:  MOVS            R2, #0
3A939E:  BLX             j_alSourcei
3A93A2:  STR             R6, [R5,#0x20]
3A93A4:  MOVS            R1, #0
3A93A6:  LDR             R0, [R4,#4]; this
3A93A8:  MOVT            R1, #0xC2C8; float
3A93AC:  STR             R1, [R4,#0x18]
3A93AE:  BLX             j__ZN9OALSource9SetVolumeEf; OALSource::SetVolume(float)
3A93B2:  MOVS            R0, #1
3A93B4:  B               loc_3A93B8
3A93B6:  MOVS            R0, #0
3A93B8:  ADD             SP, SP, #4
3A93BA:  POP.W           {R8-R11}
3A93BE:  POP             {R4-R7,PC}
