; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity22ReleasePedConversationEv
; Address            : 0x39C2D0 - 0x39C42A
; =========================================================

39C2D0:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity27s_bPedConversationHappeningE_ptr - 0x39C2D6)
39C2D2:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity27s_bPedConversationHappeningE_ptr
39C2D4:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_bPedConversationHappening ...
39C2D6:  LDRB            R0, [R0]; CAEPedSpeechAudioEntity::s_bPedConversationHappening
39C2D8:  CMP             R0, #0
39C2DA:  IT EQ
39C2DC:  BXEQ            LR
39C2DE:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot1E_ptr - 0x39C2E6)
39C2E0:  LDR             R1, =(_ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot2E_ptr - 0x39C2E8)
39C2E2:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot1E_ptr
39C2E4:  ADD             R1, PC; _ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot2E_ptr
39C2E6:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_pConversationPedSlot1 ...
39C2E8:  LDR             R1, [R1]; CAEPedSpeechAudioEntity::s_pConversationPedSlot2 ...
39C2EA:  LDRSH.W         R2, [R0]; CAEPedSpeechAudioEntity::s_pConversationPedSlot1
39C2EE:  LDRH            R0, [R1]; CAEPedSpeechAudioEntity::s_pConversationPedSlot2
39C2F0:  ORR.W           R1, R0, R2
39C2F4:  SXTH            R1, R1
39C2F6:  CMP.W           R1, #0xFFFFFFFF
39C2FA:  BLE.W           loc_39C41E
39C2FE:  PUSH            {R4-R7,LR}
39C300:  ADD             R7, SP, #0x14+var_8
39C302:  PUSH.W          {R8-R10}
39C306:  LDR             R3, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39C316)
39C308:  UXTH            R1, R2
39C30A:  RSB.W           R2, R2, R2,LSL#3
39C30E:  MOVW            R9, #0xFFFF
39C312:  ADD             R3, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39C314:  LDR             R3, [R3]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39C316:  LDRSH.W         R3, [R3,R2,LSL#2]
39C31A:  CMP             R3, #5
39C31C:  BHI             loc_39C34A
39C31E:  MOVS            R5, #1
39C320:  LSL.W           R3, R5, R3
39C324:  TST.W           R3, #0x2E
39C328:  BEQ             loc_39C34A
39C32A:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39C330)
39C32C:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39C32E:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39C330:  ADD.W           R0, R0, R2,LSL#2
39C334:  LDR             R0, [R0,#4]; this
39C336:  BLX             j__ZN23CAEPedSpeechAudioEntity17StopCurrentSpeechEv; CAEPedSpeechAudioEntity::StopCurrentSpeech(void)
39C33A:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot2E_ptr - 0x39C342)
39C33C:  LDR             R1, =(_ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot1E_ptr - 0x39C344)
39C33E:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot2E_ptr
39C340:  ADD             R1, PC; _ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot1E_ptr
39C342:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_pConversationPedSlot2 ...
39C344:  LDR             R1, [R1]; CAEPedSpeechAudioEntity::s_pConversationPedSlot1 ...
39C346:  LDRH            R0, [R0]; CAEPedSpeechAudioEntity::s_pConversationPedSlot2
39C348:  LDRH            R1, [R1]; CAEPedSpeechAudioEntity::s_pConversationPedSlot1
39C34A:  LDR             R2, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39C358)
39C34C:  SXTH            R1, R1
39C34E:  RSB.W           R1, R1, R1,LSL#3
39C352:  MOVS            R5, #0
39C354:  ADD             R2, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39C356:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39C358:  STRH.W          R5, [R2,R1,LSL#2]
39C35C:  ADD.W           R1, R2, R1,LSL#2
39C360:  STRD.W          R5, R5, [R1,#4]
39C364:  STRH.W          R9, [R1,#0xC]
39C368:  STRH.W          R9, [R1,#0xE]
39C36C:  STR             R5, [R1,#0x10]
39C36E:  STRH.W          R9, [R1,#0x14]
39C372:  STRH.W          R9, [R1,#0x16]
39C376:  STRB            R5, [R1,#0x1A]
39C378:  STRH            R5, [R1,#0x18]
39C37A:  SXTH            R1, R0
39C37C:  RSB.W           R1, R1, R1,LSL#3
39C380:  LDRSH.W         R2, [R2,R1,LSL#2]
39C384:  CMP             R2, #5
39C386:  BHI             loc_39C3AC
39C388:  MOVS            R3, #1
39C38A:  LSL.W           R2, R3, R2
39C38E:  TST.W           R2, #0x2E
39C392:  BEQ             loc_39C3AC
39C394:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39C39A)
39C396:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39C398:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39C39A:  ADD.W           R0, R0, R1,LSL#2
39C39E:  LDR             R0, [R0,#4]; this
39C3A0:  BLX             j__ZN23CAEPedSpeechAudioEntity17StopCurrentSpeechEv; CAEPedSpeechAudioEntity::StopCurrentSpeech(void)
39C3A4:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot2E_ptr - 0x39C3AA)
39C3A6:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot2E_ptr
39C3A8:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_pConversationPedSlot2 ...
39C3AA:  LDRH            R0, [R0]; CAEPedSpeechAudioEntity::s_pConversationPedSlot2
39C3AC:  LDR.W           R12, =(_ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr - 0x39C3BE)
39C3B0:  SXTH            R0, R0
39C3B2:  LDR             R1, =(_ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot1E_ptr - 0x39C3C2)
39C3B4:  RSB.W           R0, R0, R0,LSL#3
39C3B8:  LDR             R2, =(_ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot2E_ptr - 0x39C3C8)
39C3BA:  ADD             R12, PC; _ZN23CAEPedSpeechAudioEntity16s_PedSpeechSlotsE_ptr
39C3BC:  LDR             R3, =(_ZN23CAEPedSpeechAudioEntity19s_pConversationPed2E_ptr - 0x39C3CE)
39C3BE:  ADD             R1, PC; _ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot1E_ptr
39C3C0:  LDR.W           LR, =(_ZN23CAEPedSpeechAudioEntity27s_bPedConversationHappeningE_ptr - 0x39C3D0)
39C3C4:  ADD             R2, PC; _ZN23CAEPedSpeechAudioEntity23s_pConversationPedSlot2E_ptr
39C3C6:  LDR.W           R8, =(_ZN23CAEPedSpeechAudioEntity19s_pConversationPed1E_ptr - 0x39C3D6)
39C3CA:  ADD             R3, PC; _ZN23CAEPedSpeechAudioEntity19s_pConversationPed2E_ptr
39C3CC:  ADD             LR, PC; _ZN23CAEPedSpeechAudioEntity27s_bPedConversationHappeningE_ptr
39C3CE:  LDR.W           R6, [R12]; CAEPedSpeechAudioEntity::s_PedSpeechSlots ...
39C3D2:  ADD             R8, PC; _ZN23CAEPedSpeechAudioEntity19s_pConversationPed1E_ptr
39C3D4:  LDR.W           R10, [R1]; CAEPedSpeechAudioEntity::s_pConversationPedSlot1 ...
39C3D8:  LDR             R2, [R2]; CAEPedSpeechAudioEntity::s_pConversationPedSlot2 ...
39C3DA:  LDR             R3, [R3]; CAEPedSpeechAudioEntity::s_pConversationPed2 ...
39C3DC:  LDR.W           R4, [LR]; CAEPedSpeechAudioEntity::s_bPedConversationHappening ...
39C3E0:  LDR.W           R1, [R8]; CAEPedSpeechAudioEntity::s_pConversationPed1 ...
39C3E4:  STRH.W          R5, [R6,R0,LSL#2]
39C3E8:  ADD.W           R0, R6, R0,LSL#2
39C3EC:  STRD.W          R5, R5, [R0,#4]
39C3F0:  STRH.W          R9, [R0,#0xC]
39C3F4:  STRH.W          R9, [R0,#0xE]
39C3F8:  STR             R5, [R0,#0x10]
39C3FA:  STRH.W          R9, [R0,#0x14]
39C3FE:  STRH.W          R9, [R0,#0x16]
39C402:  STRB            R5, [R0,#0x1A]
39C404:  STRH            R5, [R0,#0x18]
39C406:  STR             R5, [R1]; CAEPedSpeechAudioEntity::s_pConversationPed1
39C408:  STRB            R5, [R4]; CAEPedSpeechAudioEntity::s_bPedConversationHappening
39C40A:  STR             R5, [R3]; CAEPedSpeechAudioEntity::s_pConversationPed2
39C40C:  STRH.W          R9, [R10]; CAEPedSpeechAudioEntity::s_pConversationPedSlot1
39C410:  STRH.W          R9, [R2]; CAEPedSpeechAudioEntity::s_pConversationPedSlot2
39C414:  POP.W           {R8-R10}
39C418:  POP.W           {R4-R7,LR}
39C41C:  BX              LR
39C41E:  LDR             R0, =(_ZN23CAEPedSpeechAudioEntity27s_bPedConversationHappeningE_ptr - 0x39C426)
39C420:  MOVS            R1, #0
39C422:  ADD             R0, PC; _ZN23CAEPedSpeechAudioEntity27s_bPedConversationHappeningE_ptr
39C424:  LDR             R0, [R0]; CAEPedSpeechAudioEntity::s_bPedConversationHappening ...
39C426:  STRB            R1, [R0]; CAEPedSpeechAudioEntity::s_bPedConversationHappening
39C428:  BX              LR
