; =========================================================
; Game Engine Function: _ZN15CAESoundManager10InitialiseEv
; Address            : 0x46D2F8 - 0x46D3F6
; =========================================================

46D2F8:  PUSH            {R4-R7,LR}
46D2FA:  ADD             R7, SP, #0xC
46D2FC:  PUSH.W          {R8-R10}
46D300:  MOV             R6, R0
46D302:  LDR             R0, =(AEAudioHardware_ptr - 0x46D308)
46D304:  ADD             R0, PC; AEAudioHardware_ptr
46D306:  LDR             R0, [R0]; AEAudioHardware ; this
46D308:  BLX             j__ZN16CAEAudioHardware23GetNumAvailableChannelsEv; CAEAudioHardware::GetNumAvailableChannels(void)
46D30C:  CMP             R0, #0xB
46D30E:  BCC             loc_46D34E
46D310:  LDR             R1, =(AEAudioHardware_ptr - 0x46D324)
46D312:  CMP.W           R0, #0x12C
46D316:  IT CS
46D318:  MOVCS.W         R0, #0x12C
46D31C:  MOVW            R9, #0xFFFF
46D320:  ADD             R1, PC; AEAudioHardware_ptr
46D322:  STRH            R0, [R6]
46D324:  SUBS            R2, R0, #1
46D326:  LDR             R1, [R1]; AEAudioHardware
46D328:  UXTH            R2, R2
46D32A:  LDRH.W          R1, [R1,#(word_942F18 - 0x942ED0)]
46D32E:  CMP             R2, R1
46D330:  BCS             loc_46D34A
46D332:  LDR             R3, =(AEAudioHardware_ptr - 0x46D33A)
46D334:  MOVS            R2, #0
46D336:  ADD             R3, PC; AEAudioHardware_ptr
46D338:  LDR             R3, [R3]; AEAudioHardware
46D33A:  ADD.W           R5, R3, R2,LSL#1
46D33E:  LDRH.W          R4, [R5,#0x4C]!
46D342:  CBZ             R4, loc_46D358
46D344:  ADD             R2, R4
46D346:  CMP             R2, #0x1D
46D348:  BLE             loc_46D33A
46D34A:  STRH.W          R9, [R6,#2]
46D34E:  MOVS            R5, #0
46D350:  MOV             R0, R5
46D352:  POP.W           {R8-R10}
46D356:  POP             {R4-R7,PC}
46D358:  LDR             R3, =(AEAudioHardware_ptr - 0x46D362)
46D35A:  STRH            R0, [R5]
46D35C:  SUBS            R0, R1, R0
46D35E:  ADD             R3, PC; AEAudioHardware_ptr
46D360:  MOVS            R5, #0
46D362:  LDR             R3, [R3]; AEAudioHardware
46D364:  STRH.W          R0, [R3,#(word_942F18 - 0x942ED0)]
46D368:  UXTH            R0, R2
46D36A:  CMP             R0, R9
46D36C:  STRH            R2, [R6,#2]
46D36E:  BEQ             loc_46D350
46D370:  MOV             R4, R6
46D372:  MOVS            R0, #8
46D374:  LDRH.W          R8, [R4],#0x5C
46D378:  ADD.W           R0, R0, R8,LSL#1; unsigned int
46D37C:  BLX             _Znaj; operator new[](uint)
46D380:  MOVS            R1, #2
46D382:  MOVW            R10, #0x87F4
46D386:  STRD.W          R1, R8, [R0],#8
46D38A:  MOV.W           R8, R8,LSL#1
46D38E:  STR.W           R0, [R6,R10]
46D392:  MOV             R0, R8; unsigned int
46D394:  BLX             _Znaj; operator new[](uint)
46D398:  MOVW            R1, #0x87F8
46D39C:  STR             R0, [R6,R1]
46D39E:  MOV             R0, R8; unsigned int
46D3A0:  BLX             _Znaj; operator new[](uint)
46D3A4:  MOVW            R1, #0x87FC
46D3A8:  STR             R0, [R6,R1]
46D3AA:  ADD.W           R0, R6, R10
46D3AE:  MOV.W           R1, #0x12C
46D3B2:  STRH            R5, [R4,#6]
46D3B4:  SUBS            R1, #1
46D3B6:  STRH            R5, [R4]
46D3B8:  ADD.W           R4, R4, #0x74 ; 't'
46D3BC:  BNE             loc_46D3B2
46D3BE:  LDRH            R1, [R6]
46D3C0:  CBZ             R1, loc_46D3D6
46D3C2:  MOVS            R1, #0
46D3C4:  MOVS            R2, #0
46D3C6:  LDR             R3, [R0]
46D3C8:  ADDS            R2, #1
46D3CA:  STRH.W          R9, [R3,R1,LSL#1]
46D3CE:  SXTH            R1, R2
46D3D0:  LDRH            R3, [R6]
46D3D2:  CMP             R1, R3
46D3D4:  BLT             loc_46D3C6
46D3D6:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x46D3E2)
46D3D8:  MOVW            R1, #0x8CB0
46D3DC:  MOVS            R5, #1
46D3DE:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
46D3E0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
46D3E2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
46D3E4:  STR             R0, [R6,R1]
46D3E6:  MOVW            R0, #0x8CB8
46D3EA:  MOVS            R1, #0
46D3EC:  STR             R1, [R6,R0]
46D3EE:  MOVW            R0, #0x8CB4
46D3F2:  STRH            R1, [R6,R0]
46D3F4:  B               loc_46D350
