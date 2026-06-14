; =========================================================
; Game Engine Function: _ZN15CAEStreamThread7ServiceEv
; Address            : 0x3AA4CC - 0x3AA696
; =========================================================

3AA4CC:  PUSH            {R4-R7,LR}
3AA4CE:  ADD             R7, SP, #0xC
3AA4D0:  PUSH.W          {R8-R11}
3AA4D4:  SUB             SP, SP, #0xC
3AA4D6:  MOV             R4, R0
3AA4D8:  LDR             R0, [R4,#0x10]; this
3AA4DA:  BLX             j__ZN19CAEStreamingChannel14UpdatePlayTimeEv; CAEStreamingChannel::UpdatePlayTime(void)
3AA4DE:  LDRB            R0, [R4,#0x1E]
3AA4E0:  CBZ             R0, loc_3AA4EE
3AA4E2:  LDR             R0, [R4,#0x10]
3AA4E4:  MOVS            R1, #0
3AA4E6:  STRB            R1, [R4,#0x1E]
3AA4E8:  LDR             R1, [R0]
3AA4EA:  LDR             R1, [R1,#0x20]
3AA4EC:  BLX             R1
3AA4EE:  LDRB            R0, [R4,#0x1A]
3AA4F0:  CMP             R0, #0
3AA4F2:  BEQ             loc_3AA58E
3AA4F4:  ADD.W           R10, R4, #0x20 ; ' '
3AA4F8:  MOVS            R0, #0
3AA4FA:  LDM.W           R10, {R8-R10}
3AA4FE:  ADDS.W          R6, R10, #1
3AA502:  LDRB.W          R1, [R4,#0x2C]
3AA506:  STRB            R0, [R4,#0x1A]
3AA508:  STR             R1, [SP,#0x28+var_20]
3AA50A:  BEQ             loc_3AA5E8
3AA50C:  MOVS            R0, #0x5C ; '\'; unsigned int
3AA50E:  BLX             _Znwj; operator new(uint)
3AA512:  MOV             R11, R4
3AA514:  MOV             R5, R0
3AA516:  LDR.W           R0, [R11,#0x14]!; this
3AA51A:  MOV             R1, R10; unsigned int
3AA51C:  BLX             j__ZN17CAEMP3TrackLoader13GetDataStreamEj; CAEMP3TrackLoader::GetDataStream(uint)
3AA520:  MOV             R1, R0; CAEDataStream *
3AA522:  MOV             R0, R5; this
3AA524:  MOVS            R2, #0; bool
3AA526:  BLX             j__ZN13CAEMP3DecoderC2EP13CAEDataStreamb; CAEMP3Decoder::CAEMP3Decoder(CAEDataStream *,bool)
3AA52A:  LDR             R0, [R5]
3AA52C:  LDR             R1, [R0]
3AA52E:  MOV             R0, R5
3AA530:  BLX             R1
3AA532:  CBNZ            R0, loc_3AA53E
3AA534:  LDR             R0, [R5]
3AA536:  LDR             R1, [R0,#0x1C]
3AA538:  MOV             R0, R5
3AA53A:  BLX             R1
3AA53C:  MOVS            R5, #0
3AA53E:  LDR             R0, [R4,#0x10]; this
3AA540:  BLX             j__ZN19CAEStreamingChannel17GetPlayingTrackIDEv; CAEStreamingChannel::GetPlayingTrackID(void)
3AA544:  CMP             R0, R8
3AA546:  BNE             loc_3AA5FA
3AA548:  CMP             R5, #0
3AA54A:  ITTT NE
3AA54C:  LDRNE           R0, [R4,#0x10]; this
3AA54E:  MOVNE           R1, R5; CAEStreamingDecoder *
3AA550:  BLXNE           j__ZN19CAEStreamingChannel13SetNextStreamEP19CAEStreamingDecoder; CAEStreamingChannel::SetNextStream(CAEStreamingDecoder *)
3AA554:  LDR             R0, [R4,#0x10]; this
3AA556:  BLX             j__ZN19CAEStreamingChannel8SetReadyEv; CAEStreamingChannel::SetReady(void)
3AA55A:  LDRB            R0, [R4,#0x1D]
3AA55C:  CMP             R0, #0
3AA55E:  BNE.W           loc_3AA680
3AA562:  LDR             R0, [R4,#0x10]; this
3AA564:  BLX             j__ZN19CAEStreamingChannel17GetPlayingTrackIDEv; CAEStreamingChannel::GetPlayingTrackID(void)
3AA568:  LDR             R1, [R4,#0x10]
3AA56A:  STR             R0, [R4,#0x3C]
3AA56C:  LDR             R0, [R1]
3AA56E:  LDR             R2, [R0,#0x10]
3AA570:  MOV             R0, R1
3AA572:  BLX             R2
3AA574:  LDR             R1, [R4,#0x10]
3AA576:  STR             R0, [R4,#0x30]
3AA578:  MOV             R0, R1; this
3AA57A:  BLX             j__ZN19CAEStreamingChannel16GetActiveTrackIDEv; CAEStreamingChannel::GetActiveTrackID(void)
3AA57E:  LDR             R1, [R4,#0x10]
3AA580:  STR             R0, [R4,#0x38]
3AA582:  LDR             R0, [R1]
3AA584:  LDR             R2, [R0,#0x14]
3AA586:  MOV             R0, R1
3AA588:  BLX             R2
3AA58A:  STR             R0, [R4,#0x34]
3AA58C:  B               loc_3AA68A
3AA58E:  LDRB            R0, [R4,#0x1D]
3AA590:  CMP             R0, #0
3AA592:  BNE             loc_3AA68A
3AA594:  LDR             R0, [R4,#0x10]; this
3AA596:  BLX             j__ZN19CAEStreamingChannel17GetPlayingTrackIDEv; CAEStreamingChannel::GetPlayingTrackID(void)
3AA59A:  LDR             R1, [R4,#0x10]
3AA59C:  STR             R0, [R4,#0x3C]
3AA59E:  LDR             R0, [R1]
3AA5A0:  LDR             R2, [R0,#0x10]
3AA5A2:  MOV             R0, R1
3AA5A4:  BLX             R2
3AA5A6:  LDR             R1, [R4,#0x10]
3AA5A8:  STR             R0, [R4,#0x30]
3AA5AA:  MOV             R0, R1; this
3AA5AC:  BLX             j__ZN19CAEStreamingChannel16GetActiveTrackIDEv; CAEStreamingChannel::GetActiveTrackID(void)
3AA5B0:  LDR             R1, [R4,#0x10]
3AA5B2:  STR             R0, [R4,#0x38]
3AA5B4:  LDR             R0, [R1]
3AA5B6:  LDR             R2, [R0,#0x14]
3AA5B8:  MOV             R0, R1
3AA5BA:  BLX             R2
3AA5BC:  LDRB            R1, [R4,#0x1B]
3AA5BE:  STR             R0, [R4,#0x34]
3AA5C0:  CMP             R1, #0
3AA5C2:  BNE             loc_3AA68A
3AA5C4:  LDR             R0, [R4,#0x10]
3AA5C6:  LDR             R5, [R4,#0x30]
3AA5C8:  LDR             R1, [R0]
3AA5CA:  LDR             R1, [R1,#0x14]
3AA5CC:  BLX             R1
3AA5CE:  CMP             R5, R0
3AA5D0:  BLE             loc_3AA68A
3AA5D2:  LDR             R0, [R4,#0x10]
3AA5D4:  MOV             R1, #0x24060
3AA5DC:  LDRB            R0, [R0,R1]
3AA5DE:  CMP             R0, #0
3AA5E0:  ITT NE
3AA5E2:  MOVNE           R0, #1
3AA5E4:  STRBNE          R0, [R4,#0x1E]
3AA5E6:  B               loc_3AA68A
3AA5E8:  STR             R6, [SP,#0x28+var_24]
3AA5EA:  MOVS            R1, #0; CAEStreamingDecoder *
3AA5EC:  LDR             R0, [R4,#0x10]; this
3AA5EE:  MOVS            R5, #0
3AA5F0:  BLX             j__ZN19CAEStreamingChannel13SetNextStreamEP19CAEStreamingDecoder; CAEStreamingChannel::SetNextStream(CAEStreamingDecoder *)
3AA5F4:  ADD.W           R11, R4, #0x14
3AA5F8:  B               loc_3AA5FC
3AA5FA:  STR             R6, [SP,#0x28+var_24]
3AA5FC:  MOVS            R0, #0x5C ; '\'; unsigned int
3AA5FE:  BLX             _Znwj; operator new(uint)
3AA602:  MOV             R6, R0
3AA604:  LDR.W           R0, [R11]; this
3AA608:  MOV             R1, R8; unsigned int
3AA60A:  BLX             j__ZN17CAEMP3TrackLoader13GetDataStreamEj; CAEMP3TrackLoader::GetDataStream(uint)
3AA60E:  MOV             R1, R0; CAEDataStream *
3AA610:  MOV             R0, R6; this
3AA612:  MOVS            R2, #0; bool
3AA614:  BLX             j__ZN13CAEMP3DecoderC2EP13CAEDataStreamb; CAEMP3Decoder::CAEMP3Decoder(CAEDataStream *,bool)
3AA618:  LDR             R0, [R6]
3AA61A:  LDR             R1, [R0]
3AA61C:  MOV             R0, R6
3AA61E:  BLX             R1
3AA620:  CMP             R0, #1
3AA622:  BNE             loc_3AA654
3AA624:  LDR             R0, [R6]
3AA626:  LDR             R1, [R0,#8]
3AA628:  LDR.W           R11, [R0,#0x10]
3AA62C:  MOV             R0, R6
3AA62E:  BLX             R1
3AA630:  MOV             R1, R0
3AA632:  MOV             R0, R9
3AA634:  BLX             __aeabi_uidivmod
3AA638:  MOV             R0, R6
3AA63A:  BLX             R11
3AA63C:  LDR             R0, [R4,#0x10]; this
3AA63E:  CMP             R5, #0
3AA640:  ITE EQ
3AA642:  MOVEQ           R1, #0
3AA644:  MOVNE           R1, R5; CAEStreamingDecoder *
3AA646:  BLX             j__ZN19CAEStreamingChannel13SetNextStreamEP19CAEStreamingDecoder; CAEStreamingChannel::SetNextStream(CAEStreamingDecoder *)
3AA64A:  LDR             R1, [SP,#0x28+var_20]
3AA64C:  LDR             R0, [R4,#0x10]
3AA64E:  SXTB            R2, R1
3AA650:  MOV             R1, R6
3AA652:  B               loc_3AA66E
3AA654:  LDR             R0, [R6]
3AA656:  LDR             R1, [R0,#0x1C]
3AA658:  MOV             R0, R6
3AA65A:  BLX             R1
3AA65C:  LDR             R0, [R4,#0x10]; this
3AA65E:  MOVS            R1, #0; CAEStreamingDecoder *
3AA660:  BLX             j__ZN19CAEStreamingChannel13SetNextStreamEP19CAEStreamingDecoder; CAEStreamingChannel::SetNextStream(CAEStreamingDecoder *)
3AA664:  CBZ             R5, loc_3AA692
3AA666:  LDR             R1, [SP,#0x28+var_20]
3AA668:  LDR             R0, [R4,#0x10]; this
3AA66A:  SXTB            R2, R1; signed __int8
3AA66C:  MOV             R1, R5; CAEStreamingDecoder *
3AA66E:  MOVS            R3, #1; bool
3AA670:  BLX             j__ZN19CAEStreamingChannel13PrepareStreamEP19CAEStreamingDecoderab; CAEStreamingChannel::PrepareStream(CAEStreamingDecoder *,signed char,bool)
3AA674:  MOVS            R0, #0
3AA676:  LDR             R6, [SP,#0x28+var_24]
3AA678:  STRB            R0, [R4,#0x1D]
3AA67A:  CMP             R0, #0
3AA67C:  BEQ.W           loc_3AA562
3AA680:  CMP             R6, #0
3AA682:  IT EQ
3AA684:  MOVEQ           R10, R8
3AA686:  STRD.W          R10, R10, [R4,#0x38]
3AA68A:  ADD             SP, SP, #0xC
3AA68C:  POP.W           {R8-R11}
3AA690:  POP             {R4-R7,PC}
3AA692:  MOVS            R0, #1
3AA694:  B               loc_3AA676
