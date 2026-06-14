; =========================================================
; Game Engine Function: _ZN10CStreaming21RemoveLoadedZoneModelEv
; Address            : 0x2D5710 - 0x2D5988
; =========================================================

2D5710:  PUSH            {R4,R5,R7,LR}
2D5712:  ADD             R7, SP, #8
2D5714:  LDR             R0, =(_ZN10CStreaming18ms_currentZoneTypeE_ptr - 0x2D571A)
2D5716:  ADD             R0, PC; _ZN10CStreaming18ms_currentZoneTypeE_ptr
2D5718:  LDR             R0, [R0]; CStreaming::ms_currentZoneType ...
2D571A:  LDR             R0, [R0]; CStreaming::ms_currentZoneType
2D571C:  ADDS            R0, #1
2D571E:  BEQ             loc_2D575C
2D5720:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2D5726)
2D5722:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2D5724:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
2D5726:  LDRB.W          R12, [R0,#(byte_796823 - 0x7967F4)]
2D572A:  LDRB.W          R2, [R0,#(byte_796824 - 0x7967F4)]
2D572E:  LDRB.W          R3, [R0,#(byte_796825 - 0x7967F4)]
2D5732:  ORR.W           R2, R2, R12
2D5736:  LDRB.W          R1, [R0,#(byte_796826 - 0x7967F4)]
2D573A:  ORRS            R2, R3
2D573C:  LDRB.W          LR, [R0,#(byte_796842 - 0x7967F4)]
2D5740:  LDRB.W          R4, [R0,#(byte_796847 - 0x7967F4)]
2D5744:  ORRS            R1, R2
2D5746:  LDRB.W          R5, [R0,#(byte_796829 - 0x7967F4)]
2D574A:  LDRB.W          R0, [R0,#(byte_796828 - 0x7967F4)]
2D574E:  ORRS            R0, R1
2D5750:  ORRS            R0, R5
2D5752:  ORR.W           R0, R0, LR
2D5756:  ORRS            R0, R4
2D5758:  LSLS            R0, R0, #0x18
2D575A:  BEQ             loc_2D5760
2D575C:  MOVS            R0, #0
2D575E:  POP             {R4,R5,R7,PC}
2D5760:  LDR             R0, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D5766)
2D5762:  ADD             R0, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D5764:  LDR             R0, [R0]; CStreaming::ms_pedsLoaded ...
2D5766:  LDR             R0, [R0]; CStreaming::ms_pedsLoaded
2D5768:  CMP             R0, #0
2D576A:  BLT             loc_2D57A4
2D576C:  LDR             R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D5772)
2D576E:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D5770:  LDR             R2, [R1]; CStreaming::ms_aInfoForModel ...
2D5772:  ADD.W           R1, R0, R0,LSL#2
2D5776:  ADD.W           R2, R2, R1,LSL#2
2D577A:  LDRB            R2, [R2,#0x10]
2D577C:  CMP             R2, #1
2D577E:  BNE             loc_2D57A4
2D5780:  LDR             R2, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D5786)
2D5782:  ADD             R2, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D5784:  LDR             R2, [R2]; CStreaming::ms_aInfoForModel ...
2D5786:  ADD.W           R1, R2, R1,LSL#2
2D578A:  LDRB            R1, [R1,#6]
2D578C:  TST.W           R1, #6
2D5790:  BNE             loc_2D57A4
2D5792:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2D5798)
2D5794:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2D5796:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
2D5798:  LDR.W           R1, [R1,R0,LSL#2]
2D579C:  LDRH            R1, [R1,#0x1E]
2D579E:  CMP             R1, #0
2D57A0:  BEQ.W           loc_2D5980
2D57A4:  LDR             R0, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D57AA)
2D57A6:  ADD             R0, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D57A8:  LDR             R0, [R0]; CStreaming::ms_pedsLoaded ...
2D57AA:  LDR             R0, [R0,#(dword_792BB0 - 0x792BAC)]
2D57AC:  CMP.W           R0, #0xFFFFFFFF
2D57B0:  BLE             loc_2D57EA
2D57B2:  LDR             R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D57B8)
2D57B4:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D57B6:  LDR             R2, [R1]; CStreaming::ms_aInfoForModel ...
2D57B8:  ADD.W           R1, R0, R0,LSL#2
2D57BC:  ADD.W           R2, R2, R1,LSL#2
2D57C0:  LDRB            R2, [R2,#0x10]
2D57C2:  CMP             R2, #1
2D57C4:  BNE             loc_2D57EA
2D57C6:  LDR             R2, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D57CC)
2D57C8:  ADD             R2, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D57CA:  LDR             R2, [R2]; CStreaming::ms_aInfoForModel ...
2D57CC:  ADD.W           R1, R2, R1,LSL#2
2D57D0:  LDRB            R1, [R1,#6]
2D57D2:  TST.W           R1, #6
2D57D6:  BNE             loc_2D57EA
2D57D8:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2D57DE)
2D57DA:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2D57DC:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
2D57DE:  LDR.W           R1, [R1,R0,LSL#2]
2D57E2:  LDRH            R1, [R1,#0x1E]
2D57E4:  CMP             R1, #0
2D57E6:  BEQ.W           loc_2D5980
2D57EA:  LDR             R0, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D57F0)
2D57EC:  ADD             R0, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D57EE:  LDR             R0, [R0]; CStreaming::ms_pedsLoaded ...
2D57F0:  LDR             R0, [R0,#(dword_792BB4 - 0x792BAC)]
2D57F2:  CMP             R0, #0
2D57F4:  BLT             loc_2D582E
2D57F6:  LDR             R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D57FC)
2D57F8:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D57FA:  LDR             R2, [R1]; CStreaming::ms_aInfoForModel ...
2D57FC:  ADD.W           R1, R0, R0,LSL#2
2D5800:  ADD.W           R2, R2, R1,LSL#2
2D5804:  LDRB            R2, [R2,#0x10]
2D5806:  CMP             R2, #1
2D5808:  BNE             loc_2D582E
2D580A:  LDR             R2, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D5810)
2D580C:  ADD             R2, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D580E:  LDR             R2, [R2]; CStreaming::ms_aInfoForModel ...
2D5810:  ADD.W           R1, R2, R1,LSL#2
2D5814:  LDRB            R1, [R1,#6]
2D5816:  TST.W           R1, #6
2D581A:  BNE             loc_2D582E
2D581C:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2D5822)
2D581E:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2D5820:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
2D5822:  LDR.W           R1, [R1,R0,LSL#2]
2D5826:  LDRH            R1, [R1,#0x1E]
2D5828:  CMP             R1, #0
2D582A:  BEQ.W           loc_2D5980
2D582E:  LDR             R0, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D5834)
2D5830:  ADD             R0, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D5832:  LDR             R0, [R0]; CStreaming::ms_pedsLoaded ...
2D5834:  LDR             R0, [R0,#(dword_792BB8 - 0x792BAC)]
2D5836:  CMP             R0, #0
2D5838:  BLT             loc_2D5872
2D583A:  LDR             R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D5840)
2D583C:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D583E:  LDR             R2, [R1]; CStreaming::ms_aInfoForModel ...
2D5840:  ADD.W           R1, R0, R0,LSL#2
2D5844:  ADD.W           R2, R2, R1,LSL#2
2D5848:  LDRB            R2, [R2,#0x10]
2D584A:  CMP             R2, #1
2D584C:  BNE             loc_2D5872
2D584E:  LDR             R2, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D5854)
2D5850:  ADD             R2, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D5852:  LDR             R2, [R2]; CStreaming::ms_aInfoForModel ...
2D5854:  ADD.W           R1, R2, R1,LSL#2
2D5858:  LDRB            R1, [R1,#6]
2D585A:  TST.W           R1, #6
2D585E:  BNE             loc_2D5872
2D5860:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2D5866)
2D5862:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2D5864:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
2D5866:  LDR.W           R1, [R1,R0,LSL#2]
2D586A:  LDRH            R1, [R1,#0x1E]
2D586C:  CMP             R1, #0
2D586E:  BEQ.W           loc_2D5980
2D5872:  LDR             R0, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D5878)
2D5874:  ADD             R0, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D5876:  LDR             R0, [R0]; CStreaming::ms_pedsLoaded ...
2D5878:  LDR             R0, [R0,#(dword_792BBC - 0x792BAC)]
2D587A:  CMP             R0, #0
2D587C:  BLT             loc_2D58B4
2D587E:  LDR             R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D5884)
2D5880:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D5882:  LDR             R2, [R1]; CStreaming::ms_aInfoForModel ...
2D5884:  ADD.W           R1, R0, R0,LSL#2
2D5888:  ADD.W           R2, R2, R1,LSL#2
2D588C:  LDRB            R2, [R2,#0x10]
2D588E:  CMP             R2, #1
2D5890:  BNE             loc_2D58B4
2D5892:  LDR             R2, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D5898)
2D5894:  ADD             R2, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D5896:  LDR             R2, [R2]; CStreaming::ms_aInfoForModel ...
2D5898:  ADD.W           R1, R2, R1,LSL#2
2D589C:  LDRB            R1, [R1,#6]
2D589E:  TST.W           R1, #6
2D58A2:  BNE             loc_2D58B4
2D58A4:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2D58AA)
2D58A6:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2D58A8:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
2D58AA:  LDR.W           R1, [R1,R0,LSL#2]
2D58AE:  LDRH            R1, [R1,#0x1E]
2D58B0:  CMP             R1, #0
2D58B2:  BEQ             loc_2D5980
2D58B4:  LDR             R0, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D58BA)
2D58B6:  ADD             R0, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D58B8:  LDR             R0, [R0]; CStreaming::ms_pedsLoaded ...
2D58BA:  LDR             R0, [R0,#(dword_792BC0 - 0x792BAC)]
2D58BC:  CMP             R0, #0
2D58BE:  BLT             loc_2D58F6
2D58C0:  LDR             R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D58C6)
2D58C2:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D58C4:  LDR             R2, [R1]; CStreaming::ms_aInfoForModel ...
2D58C6:  ADD.W           R1, R0, R0,LSL#2
2D58CA:  ADD.W           R2, R2, R1,LSL#2
2D58CE:  LDRB            R2, [R2,#0x10]
2D58D0:  CMP             R2, #1
2D58D2:  BNE             loc_2D58F6
2D58D4:  LDR             R2, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D58DA)
2D58D6:  ADD             R2, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D58D8:  LDR             R2, [R2]; CStreaming::ms_aInfoForModel ...
2D58DA:  ADD.W           R1, R2, R1,LSL#2
2D58DE:  LDRB            R1, [R1,#6]
2D58E0:  TST.W           R1, #6
2D58E4:  BNE             loc_2D58F6
2D58E6:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2D58EC)
2D58E8:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2D58EA:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
2D58EC:  LDR.W           R1, [R1,R0,LSL#2]
2D58F0:  LDRH            R1, [R1,#0x1E]
2D58F2:  CMP             R1, #0
2D58F4:  BEQ             loc_2D5980
2D58F6:  LDR             R0, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D58FC)
2D58F8:  ADD             R0, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D58FA:  LDR             R0, [R0]; CStreaming::ms_pedsLoaded ...
2D58FC:  LDR             R0, [R0,#(dword_792BC4 - 0x792BAC)]
2D58FE:  CMP             R0, #0
2D5900:  BLT             loc_2D5936
2D5902:  LDR             R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D5908)
2D5904:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D5906:  LDR             R2, [R1]; CStreaming::ms_aInfoForModel ...
2D5908:  ADD.W           R1, R0, R0,LSL#2
2D590C:  ADD.W           R2, R2, R1,LSL#2
2D5910:  LDRB            R2, [R2,#0x10]
2D5912:  CMP             R2, #1
2D5914:  BNE             loc_2D5936
2D5916:  LDR             R2, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D591C)
2D5918:  ADD             R2, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D591A:  LDR             R2, [R2]; CStreaming::ms_aInfoForModel ...
2D591C:  ADD.W           R1, R2, R1,LSL#2
2D5920:  LDRB            R1, [R1,#6]
2D5922:  TST.W           R1, #6
2D5926:  BNE             loc_2D5936
2D5928:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2D592E)
2D592A:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2D592C:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
2D592E:  LDR.W           R1, [R1,R0,LSL#2]
2D5932:  LDRH            R1, [R1,#0x1E]
2D5934:  CBZ             R1, loc_2D5980
2D5936:  LDR             R0, =(_ZN10CStreaming13ms_pedsLoadedE_ptr - 0x2D593C)
2D5938:  ADD             R0, PC; _ZN10CStreaming13ms_pedsLoadedE_ptr
2D593A:  LDR             R0, [R0]; CStreaming::ms_pedsLoaded ...
2D593C:  LDR             R0, [R0,#(dword_792BC8 - 0x792BAC)]; this
2D593E:  CMP             R0, #0
2D5940:  BLT.W           loc_2D575C
2D5944:  LDR             R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D594A)
2D5946:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D5948:  LDR             R2, [R1]; CStreaming::ms_aInfoForModel ...
2D594A:  ADD.W           R1, R0, R0,LSL#2
2D594E:  ADD.W           R2, R2, R1,LSL#2
2D5952:  LDRB            R2, [R2,#0x10]
2D5954:  CMP             R2, #1
2D5956:  BNE.W           loc_2D575C
2D595A:  LDR             R2, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x2D5960)
2D595C:  ADD             R2, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
2D595E:  LDR             R2, [R2]; CStreaming::ms_aInfoForModel ...
2D5960:  ADD.W           R1, R2, R1,LSL#2
2D5964:  LDRB            R1, [R1,#6]
2D5966:  TST.W           R1, #6
2D596A:  BNE.W           loc_2D575C
2D596E:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2D5974)
2D5970:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2D5972:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
2D5974:  LDR.W           R1, [R1,R0,LSL#2]
2D5978:  LDRH            R1, [R1,#0x1E]; int
2D597A:  CMP             R1, #0
2D597C:  BNE.W           loc_2D575C
2D5980:  BLX             j__ZN10CStreaming11RemoveModelEi; CStreaming::RemoveModel(int)
2D5984:  MOVS            R0, #1
2D5986:  POP             {R4,R5,R7,PC}
