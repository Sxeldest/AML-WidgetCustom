; =========================================================
; Game Engine Function: _ZN23CAEPedSpeechAudioEntity8GetVoiceEPcs
; Address            : 0x39C510 - 0x39C924
; =========================================================

39C510:  PUSH            {R4-R7,LR}
39C512:  ADD             R7, SP, #0xC
39C514:  PUSH.W          {R11}
39C518:  MOV             R4, R0
39C51A:  MOVW            R6, #0xFFFF
39C51E:  CMP             R1, #4; switch 5 cases
39C520:  BHI.W           def_39C524; jumptable 0039C524 default case
39C524:  TBH.W           [PC,R1,LSL#1]; switch jump
39C528:  DCW 5; jump table for switch statement
39C52A:  DCW 0x17
39C52C:  DCW 0x29
39C52E:  DCW 0x10B
39C530:  DCW 0x11E
39C532:  LDR.W           R0, =(gGenSpeechVoiceLookup_ptr - 0x39C53C); jumptable 0039C524 case 0
39C536:  MOVS            R6, #0
39C538:  ADD             R0, PC; gGenSpeechVoiceLookup_ptr
39C53A:  LDR             R5, [R0]; "VOICE_GEN_BBDYG1" ...
39C53C:  MOV             R0, R4; char *
39C53E:  MOV             R1, R5; char *
39C540:  BLX             strcmp
39C544:  CMP             R0, #0
39C546:  BEQ.W           loc_39C91C
39C54A:  ADDS            R0, R6, #1
39C54C:  ADDS            R5, #0x14
39C54E:  CMP             R6, #0xD0
39C550:  MOV             R6, R0
39C552:  BLT             loc_39C53C
39C554:  B               def_39C524; jumptable 0039C524 default case
39C556:  LDR.W           R0, =(gEmgSpeechVoiceLookup_ptr - 0x39C560); jumptable 0039C524 case 1
39C55A:  MOVS            R6, #0
39C55C:  ADD             R0, PC; gEmgSpeechVoiceLookup_ptr
39C55E:  LDR             R5, [R0]; "VOICE_EMG_ARMY1" ...
39C560:  MOV             R0, R4; char *
39C562:  MOV             R1, R5; char *
39C564:  BLX             strcmp
39C568:  CMP             R0, #0
39C56A:  BEQ.W           loc_39C91C
39C56E:  ADDS            R0, R6, #1
39C570:  ADDS            R5, #0x14
39C572:  CMP             R6, #0x2D ; '-'
39C574:  MOV             R6, R0
39C576:  BLT             loc_39C560
39C578:  B               def_39C524; jumptable 0039C524 default case
39C57A:  LDR.W           R0, =(gPlySpeechVoiceLookup_ptr - 0x39C582); jumptable 0039C524 case 2
39C57E:  ADD             R0, PC; gPlySpeechVoiceLookup_ptr
39C580:  LDR             R1, [R0]; "VOICE_PLY_AG" ...
39C582:  MOV             R0, R4; char *
39C584:  BLX             strcmp
39C588:  CMP             R0, #0
39C58A:  BEQ.W           loc_39C8D2
39C58E:  LDR.W           R0, =(gPlySpeechVoiceLookup_ptr - 0x39C596)
39C592:  ADD             R0, PC; gPlySpeechVoiceLookup_ptr
39C594:  LDR             R0, [R0]; "VOICE_PLY_AG" ...
39C596:  ADD.W           R1, R0, #0x14; char *
39C59A:  MOV             R0, R4; char *
39C59C:  BLX             strcmp
39C5A0:  CMP             R0, #0
39C5A2:  BEQ.W           loc_39C8D6
39C5A6:  LDR.W           R0, =(gPlySpeechVoiceLookup_ptr - 0x39C5AE)
39C5AA:  ADD             R0, PC; gPlySpeechVoiceLookup_ptr
39C5AC:  LDR             R0, [R0]; "VOICE_PLY_AG" ...
39C5AE:  ADD.W           R1, R0, #0x28 ; '('; char *
39C5B2:  MOV             R0, R4; char *
39C5B4:  BLX             strcmp
39C5B8:  CMP             R0, #0
39C5BA:  BEQ.W           loc_39C8DA
39C5BE:  LDR.W           R0, =(gPlySpeechVoiceLookup_ptr - 0x39C5C6)
39C5C2:  ADD             R0, PC; gPlySpeechVoiceLookup_ptr
39C5C4:  LDR             R0, [R0]; "VOICE_PLY_AG" ...
39C5C6:  ADD.W           R1, R0, #0x3C ; '<'; char *
39C5CA:  MOV             R0, R4; char *
39C5CC:  BLX             strcmp
39C5D0:  CMP             R0, #0
39C5D2:  BEQ.W           loc_39C8DE
39C5D6:  LDR.W           R0, =(gPlySpeechVoiceLookup_ptr - 0x39C5DE)
39C5DA:  ADD             R0, PC; gPlySpeechVoiceLookup_ptr
39C5DC:  LDR             R0, [R0]; "VOICE_PLY_AG" ...
39C5DE:  ADD.W           R1, R0, #0x50 ; 'P'; char *
39C5E2:  MOV             R0, R4; char *
39C5E4:  BLX             strcmp
39C5E8:  CMP             R0, #0
39C5EA:  BEQ.W           loc_39C8E2
39C5EE:  LDR.W           R0, =(gPlySpeechVoiceLookup_ptr - 0x39C5F6)
39C5F2:  ADD             R0, PC; gPlySpeechVoiceLookup_ptr
39C5F4:  LDR             R0, [R0]; "VOICE_PLY_AG" ...
39C5F6:  ADD.W           R1, R0, #0x64 ; 'd'; char *
39C5FA:  MOV             R0, R4; char *
39C5FC:  BLX             strcmp
39C600:  CMP             R0, #0
39C602:  BEQ.W           loc_39C8E6
39C606:  LDR.W           R0, =(gPlySpeechVoiceLookup_ptr - 0x39C60E)
39C60A:  ADD             R0, PC; gPlySpeechVoiceLookup_ptr
39C60C:  LDR             R0, [R0]; "VOICE_PLY_AG" ...
39C60E:  ADD.W           R1, R0, #0x78 ; 'x'; char *
39C612:  MOV             R0, R4; char *
39C614:  BLX             strcmp
39C618:  CMP             R0, #0
39C61A:  BEQ.W           loc_39C8EA
39C61E:  LDR             R0, =(gPlySpeechVoiceLookup_ptr - 0x39C624)
39C620:  ADD             R0, PC; gPlySpeechVoiceLookup_ptr
39C622:  LDR             R0, [R0]; "VOICE_PLY_AG" ...
39C624:  ADD.W           R1, R0, #0x8C; char *
39C628:  MOV             R0, R4; char *
39C62A:  BLX             strcmp
39C62E:  CMP             R0, #0
39C630:  BEQ.W           loc_39C8EE
39C634:  LDR             R0, =(gPlySpeechVoiceLookup_ptr - 0x39C63A)
39C636:  ADD             R0, PC; gPlySpeechVoiceLookup_ptr
39C638:  LDR             R0, [R0]; "VOICE_PLY_AG" ...
39C63A:  ADD.W           R1, R0, #0xA0; char *
39C63E:  MOV             R0, R4; char *
39C640:  BLX             strcmp
39C644:  CMP             R0, #0
39C646:  BEQ.W           loc_39C8F2
39C64A:  LDR             R0, =(gPlySpeechVoiceLookup_ptr - 0x39C650)
39C64C:  ADD             R0, PC; gPlySpeechVoiceLookup_ptr
39C64E:  LDR             R0, [R0]; "VOICE_PLY_AG" ...
39C650:  ADD.W           R1, R0, #0xB4; char *
39C654:  MOV             R0, R4; char *
39C656:  BLX             strcmp
39C65A:  CMP             R0, #0
39C65C:  BEQ.W           loc_39C8F6
39C660:  LDR             R0, =(gPlySpeechVoiceLookup_ptr - 0x39C666)
39C662:  ADD             R0, PC; gPlySpeechVoiceLookup_ptr
39C664:  LDR             R0, [R0]; "VOICE_PLY_AG" ...
39C666:  ADD.W           R1, R0, #0xC8; char *
39C66A:  MOV             R0, R4; char *
39C66C:  BLX             strcmp
39C670:  CMP             R0, #0
39C672:  BEQ.W           loc_39C8FA
39C676:  LDR             R0, =(gPlySpeechVoiceLookup_ptr - 0x39C67C)
39C678:  ADD             R0, PC; gPlySpeechVoiceLookup_ptr
39C67A:  LDR             R0, [R0]; "VOICE_PLY_AG" ...
39C67C:  ADD.W           R1, R0, #0xDC; char *
39C680:  MOV             R0, R4; char *
39C682:  BLX             strcmp
39C686:  CMP             R0, #0
39C688:  BEQ.W           loc_39C8FE
39C68C:  LDR             R0, =(gPlySpeechVoiceLookup_ptr - 0x39C692)
39C68E:  ADD             R0, PC; gPlySpeechVoiceLookup_ptr
39C690:  LDR             R0, [R0]; "VOICE_PLY_AG" ...
39C692:  ADD.W           R1, R0, #0xF0; char *
39C696:  MOV             R0, R4; char *
39C698:  BLX             strcmp
39C69C:  CMP             R0, #0
39C69E:  BEQ.W           loc_39C902
39C6A2:  LDR             R0, =(gPlySpeechVoiceLookup_ptr - 0x39C6A8)
39C6A4:  ADD             R0, PC; gPlySpeechVoiceLookup_ptr
39C6A6:  LDR             R0, [R0]; "VOICE_PLY_AG" ...
39C6A8:  ADD.W           R1, R0, #0x104; char *
39C6AC:  MOV             R0, R4; char *
39C6AE:  BLX             strcmp
39C6B2:  CMP             R0, #0
39C6B4:  BEQ.W           loc_39C906
39C6B8:  LDR             R0, =(gPlySpeechVoiceLookup_ptr - 0x39C6BE)
39C6BA:  ADD             R0, PC; gPlySpeechVoiceLookup_ptr
39C6BC:  LDR             R0, [R0]; "VOICE_PLY_AG" ...
39C6BE:  ADD.W           R1, R0, #0x118; char *
39C6C2:  MOV             R0, R4; char *
39C6C4:  BLX             strcmp
39C6C8:  CMP             R0, #0
39C6CA:  BEQ.W           loc_39C90A
39C6CE:  LDR             R0, =(gPlySpeechVoiceLookup_ptr - 0x39C6D4)
39C6D0:  ADD             R0, PC; gPlySpeechVoiceLookup_ptr
39C6D2:  LDR             R0, [R0]; "VOICE_PLY_AG" ...
39C6D4:  ADD.W           R1, R0, #0x12C; char *
39C6D8:  MOV             R0, R4; char *
39C6DA:  BLX             strcmp
39C6DE:  CMP             R0, #0
39C6E0:  BEQ.W           loc_39C90E
39C6E4:  LDR             R0, =(gPlySpeechVoiceLookup_ptr - 0x39C6EA)
39C6E6:  ADD             R0, PC; gPlySpeechVoiceLookup_ptr
39C6E8:  LDR             R0, [R0]; "VOICE_PLY_AG" ...
39C6EA:  ADD.W           R1, R0, #0x140; char *
39C6EE:  MOV             R0, R4; char *
39C6F0:  BLX             strcmp
39C6F4:  CMP             R0, #0
39C6F6:  BEQ.W           loc_39C912
39C6FA:  LDR             R0, =(gPlySpeechVoiceLookup_ptr - 0x39C700)
39C6FC:  ADD             R0, PC; gPlySpeechVoiceLookup_ptr
39C6FE:  LDR             R0, [R0]; "VOICE_PLY_AG" ...
39C700:  ADD.W           R1, R0, #0x154; char *
39C704:  MOV             R0, R4; char *
39C706:  BLX             strcmp
39C70A:  CMP             R0, #0
39C70C:  BEQ.W           loc_39C916
39C710:  LDR             R0, =(gPlySpeechVoiceLookup_ptr - 0x39C716)
39C712:  ADD             R0, PC; gPlySpeechVoiceLookup_ptr
39C714:  LDR             R0, [R0]; "VOICE_PLY_AG" ...
39C716:  ADD.W           R1, R0, #0x168; char *
39C71A:  MOV             R0, R4; char *
39C71C:  BLX             strcmp
39C720:  CMP             R0, #0
39C722:  BEQ.W           loc_39C91A
39C726:  LDR             R0, =(gPlySpeechVoiceLookup_ptr - 0x39C72C)
39C728:  ADD             R0, PC; gPlySpeechVoiceLookup_ptr
39C72A:  LDR             R0, [R0]; "VOICE_PLY_AG" ...
39C72C:  ADD.W           R1, R0, #0x17C; char *
39C730:  MOV             R0, R4; char *
39C732:  BLX             strcmp
39C736:  CMP             R0, #0
39C738:  IT EQ
39C73A:  MOVEQ           R6, #0x13
39C73C:  B               loc_39C91C
39C73E:  LDR             R0, =(gGngSpeechVoiceLookup_ptr - 0x39C746); jumptable 0039C524 case 3
39C740:  MOVS            R6, #0
39C742:  ADD             R0, PC; gGngSpeechVoiceLookup_ptr
39C744:  LDR             R5, [R0]; "VOICE_GNG_BALLAS1" ...
39C746:  MOV             R0, R4; char *
39C748:  MOV             R1, R5; char *
39C74A:  BLX             strcmp
39C74E:  CMP             R0, #0
39C750:  BEQ.W           loc_39C91C
39C754:  ADDS            R0, R6, #1
39C756:  ADDS            R5, #0x14
39C758:  CMP             R6, #0x33 ; '3'
39C75A:  MOV             R6, R0
39C75C:  BLT             loc_39C746
39C75E:  MOVW            R6, #0xFFFF; jumptable 0039C524 default case
39C762:  B               loc_39C91C
39C764:  LDR             R0, =(gGfdSpeechVoiceLookup_ptr - 0x39C76A); jumptable 0039C524 case 4
39C766:  ADD             R0, PC; gGfdSpeechVoiceLookup_ptr
39C768:  LDR             R1, [R0]; "VOICE_GFD_BARBARA" ...
39C76A:  MOV             R0, R4; char *
39C76C:  BLX             strcmp
39C770:  CMP             R0, #0
39C772:  BEQ.W           loc_39C8D2
39C776:  LDR             R0, =(gGfdSpeechVoiceLookup_ptr - 0x39C77C)
39C778:  ADD             R0, PC; gGfdSpeechVoiceLookup_ptr
39C77A:  LDR             R0, [R0]; "VOICE_GFD_BARBARA" ...
39C77C:  ADD.W           R1, R0, #0x14; char *
39C780:  MOV             R0, R4; char *
39C782:  BLX             strcmp
39C786:  CMP             R0, #0
39C788:  BEQ.W           loc_39C8D6
39C78C:  LDR             R0, =(gGfdSpeechVoiceLookup_ptr - 0x39C792)
39C78E:  ADD             R0, PC; gGfdSpeechVoiceLookup_ptr
39C790:  LDR             R0, [R0]; "VOICE_GFD_BARBARA" ...
39C792:  ADD.W           R1, R0, #0x28 ; '('; char *
39C796:  MOV             R0, R4; char *
39C798:  BLX             strcmp
39C79C:  CMP             R0, #0
39C79E:  BEQ.W           loc_39C8DA
39C7A2:  LDR             R0, =(gGfdSpeechVoiceLookup_ptr - 0x39C7A8)
39C7A4:  ADD             R0, PC; gGfdSpeechVoiceLookup_ptr
39C7A6:  LDR             R0, [R0]; "VOICE_GFD_BARBARA" ...
39C7A8:  ADD.W           R1, R0, #0x3C ; '<'; char *
39C7AC:  MOV             R0, R4; char *
39C7AE:  BLX             strcmp
39C7B2:  CMP             R0, #0
39C7B4:  BEQ.W           loc_39C8DE
39C7B8:  LDR             R0, =(gGfdSpeechVoiceLookup_ptr - 0x39C7BE)
39C7BA:  ADD             R0, PC; gGfdSpeechVoiceLookup_ptr
39C7BC:  LDR             R0, [R0]; "VOICE_GFD_BARBARA" ...
39C7BE:  ADD.W           R1, R0, #0x50 ; 'P'; char *
39C7C2:  MOV             R0, R4; char *
39C7C4:  BLX             strcmp
39C7C8:  CMP             R0, #0
39C7CA:  BEQ.W           loc_39C8E2
39C7CE:  LDR             R0, =(gGfdSpeechVoiceLookup_ptr - 0x39C7D4)
39C7D0:  ADD             R0, PC; gGfdSpeechVoiceLookup_ptr
39C7D2:  LDR             R0, [R0]; "VOICE_GFD_BARBARA" ...
39C7D4:  ADD.W           R1, R0, #0x64 ; 'd'; char *
39C7D8:  MOV             R0, R4; char *
39C7DA:  BLX             strcmp
39C7DE:  CMP             R0, #0
39C7E0:  BEQ.W           loc_39C8E6
39C7E4:  LDR             R0, =(gGfdSpeechVoiceLookup_ptr - 0x39C7EA)
39C7E6:  ADD             R0, PC; gGfdSpeechVoiceLookup_ptr
39C7E8:  LDR             R0, [R0]; "VOICE_GFD_BARBARA" ...
39C7EA:  ADD.W           R1, R0, #0x78 ; 'x'; char *
39C7EE:  MOV             R0, R4; char *
39C7F0:  BLX             strcmp
39C7F4:  CMP             R0, #0
39C7F6:  BEQ             loc_39C8EA
39C7F8:  LDR             R0, =(gGfdSpeechVoiceLookup_ptr - 0x39C7FE)
39C7FA:  ADD             R0, PC; gGfdSpeechVoiceLookup_ptr
39C7FC:  LDR             R0, [R0]; "VOICE_GFD_BARBARA" ...
39C7FE:  ADD.W           R1, R0, #0x8C; char *
39C802:  MOV             R0, R4; char *
39C804:  BLX             strcmp
39C808:  CMP             R0, #0
39C80A:  BEQ             loc_39C8EE
39C80C:  LDR             R0, =(gGfdSpeechVoiceLookup_ptr - 0x39C812)
39C80E:  ADD             R0, PC; gGfdSpeechVoiceLookup_ptr
39C810:  LDR             R0, [R0]; "VOICE_GFD_BARBARA" ...
39C812:  ADD.W           R1, R0, #0xA0; char *
39C816:  MOV             R0, R4; char *
39C818:  BLX             strcmp
39C81C:  CMP             R0, #0
39C81E:  BEQ             loc_39C8F2
39C820:  LDR             R0, =(gGfdSpeechVoiceLookup_ptr - 0x39C826)
39C822:  ADD             R0, PC; gGfdSpeechVoiceLookup_ptr
39C824:  LDR             R0, [R0]; "VOICE_GFD_BARBARA" ...
39C826:  ADD.W           R1, R0, #0xB4; char *
39C82A:  MOV             R0, R4; char *
39C82C:  BLX             strcmp
39C830:  CMP             R0, #0
39C832:  BEQ             loc_39C8F6
39C834:  LDR             R0, =(gGfdSpeechVoiceLookup_ptr - 0x39C83A)
39C836:  ADD             R0, PC; gGfdSpeechVoiceLookup_ptr
39C838:  LDR             R0, [R0]; "VOICE_GFD_BARBARA" ...
39C83A:  ADD.W           R1, R0, #0xC8; char *
39C83E:  MOV             R0, R4; char *
39C840:  BLX             strcmp
39C844:  CMP             R0, #0
39C846:  BEQ             loc_39C8FA
39C848:  LDR             R0, =(gGfdSpeechVoiceLookup_ptr - 0x39C84E)
39C84A:  ADD             R0, PC; gGfdSpeechVoiceLookup_ptr
39C84C:  LDR             R0, [R0]; "VOICE_GFD_BARBARA" ...
39C84E:  ADD.W           R1, R0, #0xDC; char *
39C852:  MOV             R0, R4; char *
39C854:  BLX             strcmp
39C858:  CMP             R0, #0
39C85A:  BEQ             loc_39C8FE
39C85C:  LDR             R0, =(gGfdSpeechVoiceLookup_ptr - 0x39C862)
39C85E:  ADD             R0, PC; gGfdSpeechVoiceLookup_ptr
39C860:  LDR             R0, [R0]; "VOICE_GFD_BARBARA" ...
39C862:  ADD.W           R1, R0, #0xF0; char *
39C866:  MOV             R0, R4; char *
39C868:  BLX             strcmp
39C86C:  CMP             R0, #0
39C86E:  BEQ             loc_39C902
39C870:  LDR             R0, =(gGfdSpeechVoiceLookup_ptr - 0x39C876)
39C872:  ADD             R0, PC; gGfdSpeechVoiceLookup_ptr
39C874:  LDR             R0, [R0]; "VOICE_GFD_BARBARA" ...
39C876:  ADD.W           R1, R0, #0x104; char *
39C87A:  MOV             R0, R4; char *
39C87C:  BLX             strcmp
39C880:  CMP             R0, #0
39C882:  BEQ             loc_39C906
39C884:  LDR             R0, =(gGfdSpeechVoiceLookup_ptr - 0x39C88A)
39C886:  ADD             R0, PC; gGfdSpeechVoiceLookup_ptr
39C888:  LDR             R0, [R0]; "VOICE_GFD_BARBARA" ...
39C88A:  ADD.W           R1, R0, #0x118; char *
39C88E:  MOV             R0, R4; char *
39C890:  BLX             strcmp
39C894:  CBZ             R0, loc_39C90A
39C896:  LDR             R0, =(gGfdSpeechVoiceLookup_ptr - 0x39C89C)
39C898:  ADD             R0, PC; gGfdSpeechVoiceLookup_ptr
39C89A:  LDR             R0, [R0]; "VOICE_GFD_BARBARA" ...
39C89C:  ADD.W           R1, R0, #0x12C; char *
39C8A0:  MOV             R0, R4; char *
39C8A2:  BLX             strcmp
39C8A6:  CBZ             R0, loc_39C90E
39C8A8:  LDR             R0, =(gGfdSpeechVoiceLookup_ptr - 0x39C8AE)
39C8AA:  ADD             R0, PC; gGfdSpeechVoiceLookup_ptr
39C8AC:  LDR             R0, [R0]; "VOICE_GFD_BARBARA" ...
39C8AE:  ADD.W           R1, R0, #0x140; char *
39C8B2:  MOV             R0, R4; char *
39C8B4:  BLX             strcmp
39C8B8:  CBZ             R0, loc_39C912
39C8BA:  LDR             R0, =(gGfdSpeechVoiceLookup_ptr - 0x39C8C0)
39C8BC:  ADD             R0, PC; gGfdSpeechVoiceLookup_ptr
39C8BE:  LDR             R0, [R0]; "VOICE_GFD_BARBARA" ...
39C8C0:  ADD.W           R1, R0, #0x154; char *
39C8C4:  MOV             R0, R4; char *
39C8C6:  BLX             strcmp
39C8CA:  CMP             R0, #0
39C8CC:  IT EQ
39C8CE:  MOVEQ           R6, #0x11
39C8D0:  B               loc_39C91C
39C8D2:  MOVS            R6, #0
39C8D4:  B               loc_39C91C
39C8D6:  MOVS            R6, #1
39C8D8:  B               loc_39C91C
39C8DA:  MOVS            R6, #2
39C8DC:  B               loc_39C91C
39C8DE:  MOVS            R6, #3
39C8E0:  B               loc_39C91C
39C8E2:  MOVS            R6, #4
39C8E4:  B               loc_39C91C
39C8E6:  MOVS            R6, #5
39C8E8:  B               loc_39C91C
39C8EA:  MOVS            R6, #6
39C8EC:  B               loc_39C91C
39C8EE:  MOVS            R6, #7
39C8F0:  B               loc_39C91C
39C8F2:  MOVS            R6, #8
39C8F4:  B               loc_39C91C
39C8F6:  MOVS            R6, #9
39C8F8:  B               loc_39C91C
39C8FA:  MOVS            R6, #0xA
39C8FC:  B               loc_39C91C
39C8FE:  MOVS            R6, #0xB
39C900:  B               loc_39C91C
39C902:  MOVS            R6, #0xC
39C904:  B               loc_39C91C
39C906:  MOVS            R6, #0xD
39C908:  B               loc_39C91C
39C90A:  MOVS            R6, #0xE
39C90C:  B               loc_39C91C
39C90E:  MOVS            R6, #0xF
39C910:  B               loc_39C91C
39C912:  MOVS            R6, #0x10
39C914:  B               loc_39C91C
39C916:  MOVS            R6, #0x11
39C918:  B               loc_39C91C
39C91A:  MOVS            R6, #0x12
39C91C:  SXTH            R0, R6
39C91E:  POP.W           {R11}
39C922:  POP             {R4-R7,PC}
