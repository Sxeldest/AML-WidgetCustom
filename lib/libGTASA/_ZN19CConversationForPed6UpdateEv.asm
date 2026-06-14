; =========================================================
; Game Engine Function: _ZN19CConversationForPed6UpdateEv
; Address            : 0x300740 - 0x300B52
; =========================================================

300740:  PUSH            {R4-R7,LR}
300742:  ADD             R7, SP, #0xC
300744:  PUSH.W          {R8}
300748:  SUB             SP, SP, #0x10
30074A:  MOV             R4, R0
30074C:  LDR             R0, [R4,#8]
30074E:  CMP             R0, #0
300750:  ITT NE
300752:  LDRBNE          R0, [R4,#0x18]
300754:  CMPNE           R0, #0
300756:  BEQ             loc_3007B4
300758:  MOV             R0, R4; this
30075A:  MOVS            R1, #0; bool
30075C:  MOVS            R5, #0
30075E:  BLX             j__ZN19CConversationForPed33IsPlayerInPositionForConversationEb; CConversationForPed::IsPlayerInPositionForConversation(bool)
300762:  CMP             R0, #1
300764:  BNE             loc_3007BA
300766:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x300774)
30076A:  MOVW            R2, #0x2710
30076E:  LDR             R1, [R4,#0x10]
300770:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
300772:  ADD             R1, R2
300774:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
300776:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
300778:  CMP             R0, R1
30077A:  BHI             loc_3007AC
30077C:  MOV             R6, R4
30077E:  LDR.W           R1, [R6,#0x14]!
300782:  CMP             R1, #1
300784:  BNE.W           loc_300898
300788:  LDR             R1, [R4,#0xC]
30078A:  ADD.W           R1, R1, #0xFA0; int
30078E:  CMP             R0, R1
300790:  BHI             loc_3007AC
300792:  MOVS            R0, #0; this
300794:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
300798:  BLX             j__ZN4CPad22ConversationNoJustDownEv; CPad::ConversationNoJustDown(void)
30079C:  CBNZ            R0, loc_3007AC
30079E:  MOVS            R0, #0; this
3007A0:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3007A4:  BLX             j__ZN4CPad23ConversationYesJustDownEv; CPad::ConversationYesJustDown(void)
3007A8:  CMP             R0, #0
3007AA:  BEQ             loc_300890
3007AC:  LDRB            R0, [R4,#0x19]; this
3007AE:  CBZ             R0, loc_3007BE
3007B0:  ADDS            R6, R4, #4
3007B2:  B               loc_3007F8
3007B4:  MOVS            R0, #0
3007B6:  STR             R0, [R4,#0x14]
3007B8:  B               loc_300888
3007BA:  STR             R5, [R4,#0x14]
3007BC:  B               loc_300888
3007BE:  BLX             j__ZN9CMessages22ClearSmallMessagesOnlyEv; CMessages::ClearSmallMessagesOnly(void)
3007C2:  LDR.W           R1, =(_ZN14CConversations8m_aNodesE_ptr - 0x3007D4)
3007C6:  MOV             R6, R4
3007C8:  LDR.W           R2, [R6,#4]!
3007CC:  LDR.W           R0, =(TheText_ptr - 0x3007D6)
3007D0:  ADD             R1, PC; _ZN14CConversations8m_aNodesE_ptr
3007D2:  ADD             R0, PC; TheText_ptr
3007D4:  LDR             R1, [R1]; CConversations::m_aNodes ...
3007D6:  ADD.W           R2, R2, R2,LSL#1
3007DA:  LDR             R0, [R0]; TheText ; this
3007DC:  ADD.W           R5, R1, R2,LSL#3
3007E0:  MOV             R1, R5; CKeyGen *
3007E2:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
3007E6:  MOV             R1, R0; char *
3007E8:  MOVS            R0, #1
3007EA:  STR             R0, [SP,#0x20+var_20]; unsigned __int16
3007EC:  MOV             R0, R5; this
3007EE:  MOV.W           R2, #(elf_hash_bucket+0xEA4); unsigned __int16 *
3007F2:  MOVS            R3, #1; unsigned int
3007F4:  BLX             j__ZN9CMessages15AddMessageJumpQEPKcPtjtb; CMessages::AddMessageJumpQ(char const*,ushort *,uint,ushort,bool)
3007F8:  LDR.W           R0, =(_ZN14CConversations8m_aNodesE_ptr - 0x300802)
3007FC:  LDR             R1, [R6]
3007FE:  ADD             R0, PC; _ZN14CConversations8m_aNodesE_ptr
300800:  LDR             R0, [R0]; CConversations::m_aNodes ...
300802:  ADD.W           R1, R1, R1,LSL#1
300806:  ADD.W           R0, R0, R1,LSL#3
30080A:  LDR             R1, [R0,#0xC]
30080C:  CMP             R1, #1
30080E:  BLT             loc_30083A
300810:  LDR             R0, [R4,#8]; this
300812:  MOVS            R2, #0
300814:  STRD.W          R2, R2, [SP,#0x20+var_20]; unsigned __int8
300818:  UXTH            R1, R1; unsigned __int16
30081A:  STR             R2, [SP,#0x20+var_18]; unsigned __int8
30081C:  MOVS            R2, #0; unsigned int
30081E:  MOV.W           R3, #0x3F800000; float
300822:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
300826:  LDR.W           R0, =(_ZN14CConversations8m_aNodesE_ptr - 0x300830)
30082A:  LDR             R1, [R4,#4]
30082C:  ADD             R0, PC; _ZN14CConversations8m_aNodesE_ptr
30082E:  LDR             R0, [R0]; CConversations::m_aNodes ...
300830:  ADD.W           R1, R1, R1,LSL#1
300834:  ADD.W           R0, R0, R1,LSL#3
300838:  LDR             R1, [R0,#0xC]
30083A:  CMP.W           R1, #0xFFFFFFFF
30083E:  BGT             loc_300866
300840:  LDR             R0, =(AudioEngine_ptr - 0x30084C)
300842:  NEGS            R2, R1; int
300844:  MOVS            R1, #0; unsigned __int8
300846:  LDR             R5, [R4,#8]
300848:  ADD             R0, PC; AudioEngine_ptr
30084A:  LDR             R6, [R0]; AudioEngine
30084C:  MOV             R0, R6; this
30084E:  BLX             j__ZN12CAudioEngine19PreloadMissionAudioEhi; CAudioEngine::PreloadMissionAudio(uchar,int)
300852:  MOV             R0, R6; this
300854:  MOVS            R1, #0; unsigned __int8
300856:  MOV             R2, R5; CPed *
300858:  BLX             j__ZN12CAudioEngine23AttachMissionAudioToPedEhP4CPed; CAudioEngine::AttachMissionAudioToPed(uchar,CPed *)
30085C:  LDR             R0, =(_ZN14CConversations18m_AwkwardSayStatusE_ptr - 0x300864)
30085E:  MOVS            R1, #1
300860:  ADD             R0, PC; _ZN14CConversations18m_AwkwardSayStatusE_ptr
300862:  LDR             R0, [R0]; CConversations::m_AwkwardSayStatus ...
300864:  STR             R1, [R0]; CConversations::m_AwkwardSayStatus
300866:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x300870)
300868:  MOVS            R1, #2
30086A:  MOV             R6, R4
30086C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
30086E:  STR.W           R1, [R6,#0x14]!
300872:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
300874:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
300876:  STRD.W          R0, R0, [R6,#-8]
30087A:  LDR             R1, [R4,#0xC]
30087C:  ADD.W           R1, R1, #0xFA0
300880:  CMP             R0, R1
300882:  ITT HI
300884:  MOVHI           R0, #3
300886:  STRHI           R0, [R6]
300888:  ADD             SP, SP, #0x10
30088A:  POP.W           {R8}
30088E:  POP             {R4-R7,PC}
300890:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x300896)
300892:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
300894:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
300896:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
300898:  LDR             R1, [R4,#0xC]
30089A:  ADD.W           R1, R1, #0x190
30089E:  CMP             R0, R1
3008A0:  BLS.W           loc_300B3E
3008A4:  LDR             R0, [R6]
3008A6:  CMP             R0, #3
3008A8:  BHI.W           loc_300B32
3008AC:  CMP             R0, #1
3008AE:  BEQ.W           loc_300B32
3008B2:  LDR             R1, =(_ZN14CConversations8m_aNodesE_ptr - 0x3008BA)
3008B4:  LDR             R0, [R4,#4]
3008B6:  ADD             R1, PC; _ZN14CConversations8m_aNodesE_ptr
3008B8:  LDR             R1, [R1]; CConversations::m_aNodes ...
3008BA:  ADD.W           R2, R0, R0,LSL#1
3008BE:  ADD.W           R1, R1, R2,LSL#3
3008C2:  LDRSH.W         R1, [R1,#0xA]; int
3008C6:  CMP             R1, #0
3008C8:  BLT.W           loc_3009E0
3008CC:  MOVS            R0, #0; this
3008CE:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3008D2:  BLX             j__ZN4CPad22ConversationNoJustDownEv; CPad::ConversationNoJustDown(void)
3008D6:  CMP             R0, #0
3008D8:  BEQ.W           loc_3009DE
3008DC:  LDRB            R0, [R4,#0x19]; this
3008DE:  CBNZ            R0, loc_30092A
3008E0:  BLX             j__ZN9CMessages22ClearSmallMessagesOnlyEv; CMessages::ClearSmallMessagesOnly(void)
3008E4:  LDR             R0, =(gString_ptr - 0x3008EE)
3008E6:  LDR             R1, =(_ZN14CConversations8m_aNodesE_ptr - 0x3008F0)
3008E8:  LDR             R2, [R4,#4]
3008EA:  ADD             R0, PC; gString_ptr
3008EC:  ADD             R1, PC; _ZN14CConversations8m_aNodesE_ptr
3008EE:  LDR             R5, [R0]; gString
3008F0:  LDR             R0, [R1]; CConversations::m_aNodes ...
3008F2:  ADD.W           R1, R2, R2,LSL#1
3008F6:  ADD.W           R1, R0, R1,LSL#3; char *
3008FA:  MOV             R0, R5; char *
3008FC:  BLX             strcpy
300900:  MOV             R0, R5; char *
300902:  BLX             strlen
300906:  LDR             R1, =(TheText_ptr - 0x300910)
300908:  MOVS            R2, #0x4E ; 'N'
30090A:  STRH            R2, [R5,R0]
30090C:  ADD             R1, PC; TheText_ptr
30090E:  LDR             R1, [R1]; TheText
300910:  MOV             R0, R1; this
300912:  MOV             R1, R5; CKeyGen *
300914:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
300918:  MOV             R1, R0; char *
30091A:  MOVS            R0, #1
30091C:  STR             R0, [SP,#0x20+var_20]; unsigned __int16
30091E:  MOV             R0, R5; this
300920:  MOV.W           R2, #(elf_hash_bucket+0xEA4); unsigned __int16 *
300924:  MOVS            R3, #3; unsigned int
300926:  BLX             j__ZN9CMessages15AddMessageJumpQEPKcPtjtb; CMessages::AddMessageJumpQ(char const*,ushort *,uint,ushort,bool)
30092A:  LDR             R1, =(_ZN14CConversations8m_aNodesE_ptr - 0x300932)
30092C:  LDR             R0, [R4,#4]
30092E:  ADD             R1, PC; _ZN14CConversations8m_aNodesE_ptr
300930:  LDR             R1, [R1]; CConversations::m_aNodes ...
300932:  ADD.W           R2, R0, R0,LSL#1
300936:  ADD.W           R1, R1, R2,LSL#3
30093A:  LDR             R5, [R1,#0x14]
30093C:  CMP             R5, #1
30093E:  BLT             loc_300978
300940:  MOV.W           R0, #0xFFFFFFFF; int
300944:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
300948:  LDR             R1, =(_ZN14CConversations8m_aNodesE_ptr - 0x300954)
30094A:  MOV.W           R3, #0x3F800000; float
30094E:  LDR             R2, [R4,#4]
300950:  ADD             R1, PC; _ZN14CConversations8m_aNodesE_ptr
300952:  LDR             R5, [R1]; CConversations::m_aNodes ...
300954:  ADD.W           R1, R2, R2,LSL#1
300958:  MOVS            R2, #0
30095A:  ADD.W           R1, R5, R1,LSL#3
30095E:  LDRH            R1, [R1,#0x14]; unsigned __int16
300960:  STRD.W          R2, R2, [SP,#0x20+var_20]; unsigned __int8
300964:  STR             R2, [SP,#0x20+var_18]; unsigned __int8
300966:  MOVS            R2, #0; unsigned int
300968:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
30096C:  LDR             R0, [R4,#4]
30096E:  ADD.W           R1, R0, R0,LSL#1
300972:  ADD.W           R1, R5, R1,LSL#3
300976:  LDR             R5, [R1,#0x14]
300978:  CMP.W           R5, #0xFFFFFFFF
30097C:  BGT             loc_3009AE
30097E:  MOV.W           R0, #0xFFFFFFFF; int
300982:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
300986:  MOV             R8, R0
300988:  LDR             R0, =(AudioEngine_ptr - 0x300992)
30098A:  NEGS            R2, R5; int
30098C:  MOVS            R1, #0; unsigned __int8
30098E:  ADD             R0, PC; AudioEngine_ptr
300990:  LDR             R5, [R0]; AudioEngine
300992:  MOV             R0, R5; this
300994:  BLX             j__ZN12CAudioEngine19PreloadMissionAudioEhi; CAudioEngine::PreloadMissionAudio(uchar,int)
300998:  MOV             R0, R5; this
30099A:  MOVS            R1, #0; unsigned __int8
30099C:  MOV             R2, R8; CPed *
30099E:  BLX             j__ZN12CAudioEngine23AttachMissionAudioToPedEhP4CPed; CAudioEngine::AttachMissionAudioToPed(uchar,CPed *)
3009A2:  LDR             R0, =(_ZN14CConversations18m_AwkwardSayStatusE_ptr - 0x3009AA)
3009A4:  MOVS            R1, #1
3009A6:  ADD             R0, PC; _ZN14CConversations18m_AwkwardSayStatusE_ptr
3009A8:  LDR             R0, [R0]; CConversations::m_AwkwardSayStatus ...
3009AA:  STR             R1, [R0]; CConversations::m_AwkwardSayStatus
3009AC:  LDR             R0, [R4,#4]
3009AE:  LDR             R1, =(_ZN14CConversations8m_aNodesE_ptr - 0x3009BA)
3009B0:  ADD.W           R0, R0, R0,LSL#1
3009B4:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3009BC)
3009B6:  ADD             R1, PC; _ZN14CConversations8m_aNodesE_ptr
3009B8:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3009BA:  LDR             R1, [R1]; CConversations::m_aNodes ...
3009BC:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
3009BE:  ADD.W           R0, R1, R0,LSL#3
3009C2:  LDRB            R1, [R4,#0x19]
3009C4:  LDRSH.W         R0, [R0,#0xA]
3009C8:  CMP             R1, #0
3009CA:  STR             R0, [R4,#4]
3009CC:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
3009CE:  STR             R2, [R4,#0xC]
3009D0:  BNE.W           loc_300B2E
3009D4:  LDR             R1, =(_ZN14CConversations8m_aNodesE_ptr - 0x3009DC)
3009D6:  LDR             R2, =(TheText_ptr - 0x3009DE)
3009D8:  ADD             R1, PC; _ZN14CConversations8m_aNodesE_ptr
3009DA:  ADD             R2, PC; TheText_ptr
3009DC:  B               loc_300B0A
3009DE:  LDR             R0, [R4,#4]
3009E0:  LDR             R2, =(_ZN14CConversations8m_aNodesE_ptr - 0x3009EE)
3009E2:  ADD.W           R0, R0, R0,LSL#1
3009E6:  MOV.W           R1, #0xFFFFFFFF; int
3009EA:  ADD             R2, PC; _ZN14CConversations8m_aNodesE_ptr
3009EC:  LDR             R2, [R2]; CConversations::m_aNodes ...
3009EE:  ADD.W           R0, R2, R0,LSL#3
3009F2:  LDRSH.W         R0, [R0,#8]
3009F6:  CMP             R0, R1
3009F8:  BLE.W           loc_300B3E
3009FC:  MOVS            R0, #0; this
3009FE:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
300A02:  BLX             j__ZN4CPad23ConversationYesJustDownEv; CPad::ConversationYesJustDown(void)
300A06:  CMP             R0, #1
300A08:  BNE.W           loc_300B3E
300A0C:  LDRB            R0, [R4,#0x19]; this
300A0E:  CBNZ            R0, loc_300A5A
300A10:  BLX             j__ZN9CMessages22ClearSmallMessagesOnlyEv; CMessages::ClearSmallMessagesOnly(void)
300A14:  LDR             R0, =(gString_ptr - 0x300A1E)
300A16:  LDR             R1, =(_ZN14CConversations8m_aNodesE_ptr - 0x300A20)
300A18:  LDR             R2, [R4,#4]
300A1A:  ADD             R0, PC; gString_ptr
300A1C:  ADD             R1, PC; _ZN14CConversations8m_aNodesE_ptr
300A1E:  LDR             R5, [R0]; gString
300A20:  LDR             R0, [R1]; CConversations::m_aNodes ...
300A22:  ADD.W           R1, R2, R2,LSL#1
300A26:  ADD.W           R1, R0, R1,LSL#3; char *
300A2A:  MOV             R0, R5; char *
300A2C:  BLX             strcpy
300A30:  MOV             R0, R5; char *
300A32:  BLX             strlen
300A36:  LDR             R1, =(TheText_ptr - 0x300A40)
300A38:  MOVS            R2, #0x59 ; 'Y'
300A3A:  STRH            R2, [R5,R0]
300A3C:  ADD             R1, PC; TheText_ptr
300A3E:  LDR             R1, [R1]; TheText
300A40:  MOV             R0, R1; this
300A42:  MOV             R1, R5; CKeyGen *
300A44:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
300A48:  MOV             R1, R0; char *
300A4A:  MOVS            R0, #1
300A4C:  STR             R0, [SP,#0x20+var_20]; unsigned __int16
300A4E:  MOV             R0, R5; this
300A50:  MOV.W           R2, #(elf_hash_bucket+0xEA4); unsigned __int16 *
300A54:  MOVS            R3, #3; unsigned int
300A56:  BLX             j__ZN9CMessages15AddMessageJumpQEPKcPtjtb; CMessages::AddMessageJumpQ(char const*,ushort *,uint,ushort,bool)
300A5A:  LDR             R1, =(_ZN14CConversations8m_aNodesE_ptr - 0x300A62)
300A5C:  LDR             R0, [R4,#4]
300A5E:  ADD             R1, PC; _ZN14CConversations8m_aNodesE_ptr
300A60:  LDR             R1, [R1]; CConversations::m_aNodes ...
300A62:  ADD.W           R2, R0, R0,LSL#1
300A66:  ADD.W           R1, R1, R2,LSL#3
300A6A:  LDR             R5, [R1,#0x10]
300A6C:  CMP             R5, #1
300A6E:  BLT             loc_300AA8
300A70:  MOV.W           R0, #0xFFFFFFFF; int
300A74:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
300A78:  LDR             R1, =(_ZN14CConversations8m_aNodesE_ptr - 0x300A84)
300A7A:  MOV.W           R3, #0x3F800000; float
300A7E:  LDR             R2, [R4,#4]
300A80:  ADD             R1, PC; _ZN14CConversations8m_aNodesE_ptr
300A82:  LDR             R5, [R1]; CConversations::m_aNodes ...
300A84:  ADD.W           R1, R2, R2,LSL#1
300A88:  MOVS            R2, #0
300A8A:  ADD.W           R1, R5, R1,LSL#3
300A8E:  LDRH            R1, [R1,#0x10]; unsigned __int16
300A90:  STRD.W          R2, R2, [SP,#0x20+var_20]; unsigned __int8
300A94:  STR             R2, [SP,#0x20+var_18]; unsigned __int8
300A96:  MOVS            R2, #0; unsigned int
300A98:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
300A9C:  LDR             R0, [R4,#4]
300A9E:  ADD.W           R1, R0, R0,LSL#1
300AA2:  ADD.W           R1, R5, R1,LSL#3
300AA6:  LDR             R5, [R1,#0x10]
300AA8:  CMP.W           R5, #0xFFFFFFFF
300AAC:  BGT             loc_300ADE
300AAE:  MOV.W           R0, #0xFFFFFFFF; int
300AB2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
300AB6:  MOV             R8, R0
300AB8:  LDR             R0, =(AudioEngine_ptr - 0x300AC2)
300ABA:  NEGS            R2, R5; int
300ABC:  MOVS            R1, #0; unsigned __int8
300ABE:  ADD             R0, PC; AudioEngine_ptr
300AC0:  LDR             R5, [R0]; AudioEngine
300AC2:  MOV             R0, R5; this
300AC4:  BLX             j__ZN12CAudioEngine19PreloadMissionAudioEhi; CAudioEngine::PreloadMissionAudio(uchar,int)
300AC8:  MOV             R0, R5; this
300ACA:  MOVS            R1, #0; unsigned __int8
300ACC:  MOV             R2, R8; CPed *
300ACE:  BLX             j__ZN12CAudioEngine23AttachMissionAudioToPedEhP4CPed; CAudioEngine::AttachMissionAudioToPed(uchar,CPed *)
300AD2:  LDR             R0, =(_ZN14CConversations18m_AwkwardSayStatusE_ptr - 0x300ADA)
300AD4:  MOVS            R1, #1
300AD6:  ADD             R0, PC; _ZN14CConversations18m_AwkwardSayStatusE_ptr
300AD8:  LDR             R0, [R0]; CConversations::m_AwkwardSayStatus ...
300ADA:  STR             R1, [R0]; CConversations::m_AwkwardSayStatus
300ADC:  LDR             R0, [R4,#4]
300ADE:  LDR             R1, =(_ZN14CConversations8m_aNodesE_ptr - 0x300AEA)
300AE0:  ADD.W           R0, R0, R0,LSL#1
300AE4:  LDR             R2, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x300AEC)
300AE6:  ADD             R1, PC; _ZN14CConversations8m_aNodesE_ptr
300AE8:  ADD             R2, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
300AEA:  LDR             R1, [R1]; CConversations::m_aNodes ...
300AEC:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds ...
300AEE:  ADD.W           R0, R1, R0,LSL#3
300AF2:  LDRB            R1, [R4,#0x19]
300AF4:  LDRSH.W         R0, [R0,#8]
300AF8:  CMP             R1, #0
300AFA:  STR             R0, [R4,#4]
300AFC:  LDR             R2, [R2]; CTimer::m_snTimeInMilliseconds
300AFE:  STR             R2, [R4,#0xC]
300B00:  BNE             loc_300B2E
300B02:  LDR             R1, =(_ZN14CConversations8m_aNodesE_ptr - 0x300B0A)
300B04:  LDR             R2, =(TheText_ptr - 0x300B0C)
300B06:  ADD             R1, PC; _ZN14CConversations8m_aNodesE_ptr
300B08:  ADD             R2, PC; TheText_ptr
300B0A:  ADD.W           R3, R0, R0,LSL#1
300B0E:  LDR             R1, [R1]; CConversations::m_aNodes ...
300B10:  LDR             R0, [R2]; TheText ; this
300B12:  ADD.W           R5, R1, R3,LSL#3
300B16:  MOV             R1, R5; CKeyGen *
300B18:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
300B1C:  MOV             R1, R0; char *
300B1E:  MOVS            R0, #1
300B20:  STR             R0, [SP,#0x20+var_20]; unsigned __int16
300B22:  MOV             R0, R5; this
300B24:  MOV.W           R2, #(elf_hash_bucket+0xEA4); unsigned __int16 *
300B28:  MOVS            R3, #1; unsigned int
300B2A:  BLX             j__ZN9CMessages10AddMessageEPKcPtjtb; CMessages::AddMessage(char const*,ushort *,uint,ushort,bool)
300B2E:  MOVS            R0, #1
300B30:  STR             R0, [R6]
300B32:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x300B38)
300B34:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
300B36:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
300B38:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
300B3A:  STR             R0, [R4,#0x10]
300B3C:  B               loc_300888
300B3E:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x300B46)
300B40:  LDR             R1, [R4,#0x14]
300B42:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
300B44:  CMP             R1, #2
300B46:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
300B48:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
300B4A:  STR             R0, [R4,#0x10]
300B4C:  BEQ.W           loc_30087A
300B50:  B               loc_300888
