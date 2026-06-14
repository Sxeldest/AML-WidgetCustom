; =========================================================
; Game Engine Function: _ZN10CStreaming22LoadAllRequestedModelsEb
; Address            : 0x2D4638 - 0x2D47C8
; =========================================================

2D4638:  PUSH            {R4-R7,LR}
2D463A:  ADD             R7, SP, #0xC
2D463C:  PUSH.W          {R8-R11}
2D4640:  SUB             SP, SP, #0x24
2D4642:  STR             R0, [SP,#0x40+var_38]
2D4644:  LDR             R0, =(byte_792FC6 - 0x2D464A)
2D4646:  ADD             R0, PC; byte_792FC6
2D4648:  LDRB            R0, [R0]
2D464A:  CBZ             R0, loc_2D4654
2D464C:  ADD             SP, SP, #0x24 ; '$'
2D464E:  POP.W           {R8-R11}
2D4652:  POP             {R4-R7,PC}
2D4654:  LDR             R0, =(byte_792FC6 - 0x2D465C)
2D4656:  MOVS            R1, #1
2D4658:  ADD             R0, PC; byte_792FC6 ; this
2D465A:  STRB            R1, [R0]
2D465C:  BLX             j__ZN10CStreaming13FlushChannelsEv; CStreaming::FlushChannels(void)
2D4660:  LDR             R0, =(_ZN10CStreaming21ms_numModelsRequestedE_ptr - 0x2D466A)
2D4662:  MOVS            R6, #0xA
2D4664:  MOVS            R5, #0
2D4666:  ADD             R0, PC; _ZN10CStreaming21ms_numModelsRequestedE_ptr
2D4668:  LDR             R0, [R0]; CStreaming::ms_numModelsRequested ...
2D466A:  LDR             R0, [R0]; CStreaming::ms_numModelsRequested
2D466C:  LSLS            R1, R0, #1
2D466E:  CMP             R1, #0xA
2D4670:  IT GT
2D4672:  LSLGT           R6, R0, #1
2D4674:  LDR             R0, =(_ZN10CStreaming20ms_pEndRequestedListE_ptr - 0x2D467C)
2D4676:  LDR             R1, =(_ZN10CStreaming22ms_pStartRequestedListE_ptr - 0x2D467E)
2D4678:  ADD             R0, PC; _ZN10CStreaming20ms_pEndRequestedListE_ptr
2D467A:  ADD             R1, PC; _ZN10CStreaming22ms_pStartRequestedListE_ptr
2D467C:  LDR             R0, [R0]; CStreaming::ms_pEndRequestedList ...
2D467E:  STR             R0, [SP,#0x40+var_20]
2D4680:  LDR             R0, =(_ZN10CStreaming10ms_channelE_ptr - 0x2D468A)
2D4682:  LDR.W           R11, [R1]; CStreaming::ms_pStartRequestedList ...
2D4686:  ADD             R0, PC; _ZN10CStreaming10ms_channelE_ptr
2D4688:  LDR             R4, [R0]; CStreaming::ms_channel ...
2D468A:  LDR             R0, =(_ZN10CStreaming19ms_bLoadingBigModelE_ptr - 0x2D4690)
2D468C:  ADD             R0, PC; _ZN10CStreaming19ms_bLoadingBigModelE_ptr
2D468E:  LDR             R0, [R0]; CStreaming::ms_bLoadingBigModel ...
2D4690:  STR             R0, [SP,#0x40+var_24]
2D4692:  LDR             R0, =(_ZN10CStreaming10ms_channelE_ptr - 0x2D4698)
2D4694:  ADD             R0, PC; _ZN10CStreaming10ms_channelE_ptr
2D4696:  LDR             R0, [R0]; CStreaming::ms_channel ...
2D4698:  STR             R0, [SP,#0x40+var_28]
2D469A:  LDR             R0, =(_ZN10CStreaming22ms_numPriorityRequestsE_ptr - 0x2D46A0)
2D469C:  ADD             R0, PC; _ZN10CStreaming22ms_numPriorityRequestsE_ptr
2D469E:  LDR.W           R10, [R0]; CStreaming::ms_numPriorityRequests ...
2D46A2:  LDR             R0, =(_ZN10CStreaming19ms_bLoadingBigModelE_ptr - 0x2D46A8)
2D46A4:  ADD             R0, PC; _ZN10CStreaming19ms_bLoadingBigModelE_ptr
2D46A6:  LDR             R0, [R0]; CStreaming::ms_bLoadingBigModel ...
2D46A8:  STR             R0, [SP,#0x40+var_2C]
2D46AA:  LDR             R0, =(_ZN10CStreaming10ms_channelE_ptr - 0x2D46B0)
2D46AC:  ADD             R0, PC; _ZN10CStreaming10ms_channelE_ptr
2D46AE:  LDR             R0, [R0]; CStreaming::ms_channel ...
2D46B0:  STR             R0, [SP,#0x40+var_3C]
2D46B2:  LDR             R0, =(_ZN10CStreaming19ms_bLoadingBigModelE_ptr - 0x2D46B8)
2D46B4:  ADD             R0, PC; _ZN10CStreaming19ms_bLoadingBigModelE_ptr
2D46B6:  LDR             R0, [R0]; CStreaming::ms_bLoadingBigModel ...
2D46B8:  STR             R0, [SP,#0x40+var_40]
2D46BA:  LDR             R0, =(_ZN10CStreaming10ms_channelE_ptr - 0x2D46C0)
2D46BC:  ADD             R0, PC; _ZN10CStreaming10ms_channelE_ptr
2D46BE:  LDR.W           R8, [R0]; CStreaming::ms_channel ...
2D46C2:  LDR             R0, =(_ZN10CStreaming10ms_channelE_ptr - 0x2D46C8)
2D46C4:  ADD             R0, PC; _ZN10CStreaming10ms_channelE_ptr
2D46C6:  LDR             R0, [R0]; CStreaming::ms_channel ...
2D46C8:  STR             R0, [SP,#0x40+var_34]
2D46CA:  LDR             R0, =(_ZN14CStreamingInfo13ms_pArrayBaseE_ptr - 0x2D46D0)
2D46CC:  ADD             R0, PC; _ZN14CStreamingInfo13ms_pArrayBaseE_ptr
2D46CE:  LDR             R0, [R0]; CStreamingInfo::ms_pArrayBase ...
2D46D0:  STR             R0, [SP,#0x40+var_30]
2D46D2:  B               loc_2D46DA
2D46D4:  SUBS            R6, #1
2D46D6:  RSB.W           R5, R5, #1
2D46DA:  LDR             R0, [SP,#0x40+var_20]
2D46DC:  LDR             R0, [R0]
2D46DE:  LDRSH.W         R0, [R0,#2]
2D46E2:  ADDS            R1, R0, #1
2D46E4:  BEQ             loc_2D46F4
2D46E6:  LDR             R1, [SP,#0x40+var_30]
2D46E8:  ADD.W           R0, R0, R0,LSL#2
2D46EC:  LDR             R1, [R1]
2D46EE:  ADD.W           R0, R1, R0,LSL#2
2D46F2:  B               loc_2D46F6
2D46F4:  MOVS            R0, #0
2D46F6:  LDR.W           R3, [R11]; CStreaming::ms_pStartRequestedList
2D46FA:  LDR.W           R1, [R4,#(dword_792CB8 - 0x792C38)]
2D46FE:  LDR.W           R2, [R4,#(dword_792D50 - 0x792C38)]
2D4702:  EORS            R0, R3
2D4704:  ORRS            R1, R2
2D4706:  ORRS            R0, R1
2D4708:  IT NE
2D470A:  MOVNE           R0, #1
2D470C:  CMP             R6, #1
2D470E:  BLT             loc_2D47AA
2D4710:  CMP             R0, #1
2D4712:  BNE             loc_2D47AA
2D4714:  LDR             R0, [SP,#0x40+var_24]
2D4716:  LDRB            R0, [R0]
2D4718:  CMP             R0, #0
2D471A:  MOV.W           R0, #0
2D471E:  IT NE
2D4720:  MOVNE           R5, R0
2D4722:  MOVS            R0, #0x98
2D4724:  LDR             R1, [SP,#0x40+var_28]
2D4726:  MLA.W           R9, R5, R0, R1
2D472A:  LDR.W           R0, [R9,#0x80]!
2D472E:  CBZ             R0, loc_2D4760
2D4730:  MOV             R0, R5; int
2D4732:  BLX             j__Z12CdStreamSynci; CdStreamSync(int)
2D4736:  MOVS            R0, #0x98
2D4738:  LDR             R1, [SP,#0x40+var_34]
2D473A:  MLA.W           R0, R5, R0, R1
2D473E:  MOVS            R1, #0x64 ; 'd'; int
2D4740:  STR.W           R1, [R0,#0x84]
2D4744:  LDR.W           R0, [R9]
2D4748:  CMP             R0, #1
2D474A:  BNE             loc_2D4760
2D474C:  MOV             R0, R5; this
2D474E:  BLX             j__ZN10CStreaming21ProcessLoadingChannelEi; CStreaming::ProcessLoadingChannel(int)
2D4752:  LDR.W           R0, [R9]
2D4756:  CMP             R0, #2
2D4758:  ITT EQ
2D475A:  MOVEQ           R0, R5; this
2D475C:  BLXEQ           j__ZN10CStreaming21ProcessLoadingChannelEi; CStreaming::ProcessLoadingChannel(int)
2D4760:  LDR.W           R0, [R10]; CStreaming::ms_numPriorityRequests
2D4764:  CBNZ            R0, loc_2D476A
2D4766:  LDR             R0, [SP,#0x40+var_38]
2D4768:  CBNZ            R0, loc_2D47AA
2D476A:  LDR             R0, [SP,#0x40+var_2C]
2D476C:  LDRB            R0, [R0]
2D476E:  CBNZ            R0, loc_2D479E
2D4770:  RSB.W           R0, R5, #1; this
2D4774:  MOVS            R1, #0x98
2D4776:  LDR             R2, [SP,#0x40+var_3C]
2D4778:  MLA.W           R1, R0, R1, R2
2D477C:  LDR.W           R1, [R1,#0x80]; int
2D4780:  CBZ             R1, loc_2D4786
2D4782:  MOVS            R0, #0
2D4784:  B               loc_2D478E
2D4786:  BLX             j__ZN10CStreaming18RequestModelStreamEi; CStreaming::RequestModelStream(int)
2D478A:  LDR             R0, [SP,#0x40+var_40]
2D478C:  LDRB            R0, [R0]
2D478E:  LDR.W           R1, [R9]; int
2D4792:  CBNZ            R1, loc_2D479E
2D4794:  CMP             R0, #0
2D4796:  ITT EQ
2D4798:  MOVEQ           R0, R5; this
2D479A:  BLXEQ           j__ZN10CStreaming18RequestModelStreamEi; CStreaming::RequestModelStream(int)
2D479E:  LDR.W           R0, [R8,#(dword_792CB8 - 0x792C38)]
2D47A2:  LDR.W           R1, [R8,#(dword_792D50 - 0x792C38)]
2D47A6:  ORRS            R0, R1; this
2D47A8:  BNE             loc_2D46D4
2D47AA:  BLX             j__ZN10CStreaming13FlushChannelsEv; CStreaming::FlushChannels(void)
2D47AE:  LDR             R0, =(byte_792FC6 - 0x2D47B6)
2D47B0:  MOVS            R1, #0
2D47B2:  ADD             R0, PC; byte_792FC6
2D47B4:  STRB            R1, [R0]
2D47B6:  MOVS            R0, #0; this
2D47B8:  MOVS            R1, #1; float
2D47BA:  ADD             SP, SP, #0x24 ; '$'
2D47BC:  POP.W           {R8-R11}
2D47C0:  POP.W           {R4-R7,LR}
2D47C4:  B.W             j_j__ZN22TextureDatabaseRuntime15UpdateStreamingEfb; j_TextureDatabaseRuntime::UpdateStreaming(float,bool)
