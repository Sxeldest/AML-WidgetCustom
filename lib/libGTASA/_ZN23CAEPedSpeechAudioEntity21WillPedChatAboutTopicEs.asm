; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity21WillPedChatAboutTopicEs
; Address            : 0x39D328 - 0x39D36A
; =========================================================

39D328:  MOV             R3, R1
39D32A:  CMP             R3, #9; switch 10 cases
39D32C:  BHI             def_39D334; jumptable 0039D334 default case
39D32E:  MOV.W           R12, #1
39D332:  MOVS            R1, #0x30 ; '0'
39D334:  TBB.W           [PC,R3]; switch jump
39D338:  DCB 0xC; jump table for switch statement
39D339:  DCB 0xB
39D33A:  DCB 0xD
39D33B:  DCB 0xF
39D33C:  DCB 0x11
39D33D:  DCB 0x13
39D33E:  DCB 0x17
39D33F:  DCB 0x15
39D340:  DCB 5
39D341:  DCB 5
39D342:  MOV             R0, R12; jumptable 0039D334 cases 8,9
39D344:  BX              LR
39D346:  MOV.W           R12, #0; jumptable 0039D334 default case
39D34A:  MOV             R0, R12; this
39D34C:  BX              LR
39D34E:  MOVS            R1, #0x31 ; '1'; jumptable 0039D334 case 1
39D350:  B               _ZN23CAEPedSpeechAudioEntity22CanPedSayGlobalContextEs; jumptable 0039D334 case 0
39D352:  MOVS            R1, #0x32 ; '2'; jumptable 0039D334 case 2
39D354:  B               _ZN23CAEPedSpeechAudioEntity22CanPedSayGlobalContextEs; CAEPedSpeechAudioEntity::CanPedSayGlobalContext(short)
39D356:  MOVS            R1, #0x33 ; '3'; jumptable 0039D334 case 3
39D358:  B               _ZN23CAEPedSpeechAudioEntity22CanPedSayGlobalContextEs; CAEPedSpeechAudioEntity::CanPedSayGlobalContext(short)
39D35A:  MOVS            R1, #0x34 ; '4'; jumptable 0039D334 case 4
39D35C:  B               _ZN23CAEPedSpeechAudioEntity22CanPedSayGlobalContextEs; CAEPedSpeechAudioEntity::CanPedSayGlobalContext(short)
39D35E:  MOVS            R1, #0x35 ; '5'; jumptable 0039D334 case 5
39D360:  B               _ZN23CAEPedSpeechAudioEntity22CanPedSayGlobalContextEs; CAEPedSpeechAudioEntity::CanPedSayGlobalContext(short)
39D362:  MOVS            R1, #0x37 ; '7'; jumptable 0039D334 case 7
39D364:  B               _ZN23CAEPedSpeechAudioEntity22CanPedSayGlobalContextEs; CAEPedSpeechAudioEntity::CanPedSayGlobalContext(short)
39D366:  MOVS            R1, #0x36 ; '6'; jumptable 0039D334 case 6
39D368:  B               _ZN23CAEPedSpeechAudioEntity22CanPedSayGlobalContextEs; CAEPedSpeechAudioEntity::CanPedSayGlobalContext(short)
