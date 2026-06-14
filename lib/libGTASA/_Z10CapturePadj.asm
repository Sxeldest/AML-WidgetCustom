; =========================================================
; Game Engine Function: _Z10CapturePadj
; Address            : 0x5E56EC - 0x5E5AC2
; =========================================================

5E56EC:  PUSH            {R4,R5,R7,LR}
5E56EE:  ADD             R7, SP, #8
5E56F0:  SUB             SP, SP, #8
5E56F2:  LDR.W           R1, =(ControlsManager_ptr - 0x5E56FE)
5E56F6:  MOVS            R2, #5
5E56F8:  STR             R0, [SP,#0x10+var_C]
5E56FA:  ADD             R1, PC; ControlsManager_ptr
5E56FC:  STR             R2, [SP,#0x10+var_10]
5E56FE:  LDR             R1, [R1]; ControlsManager
5E5700:  LDRB            R1, [R1]
5E5702:  CBZ             R1, loc_5E5716
5E5704:  LDR.W           R1, =(ControlsManager_ptr - 0x5E570E)
5E5708:  MOVS            R2, #0
5E570A:  ADD             R1, PC; ControlsManager_ptr
5E570C:  LDR             R1, [R1]; ControlsManager
5E570E:  STRD.W          R2, R2, [R1,#(dword_953154 - 0x953150)]
5E5712:  STRB            R2, [R1]
5E5714:  B               loc_5E5720
5E5716:  LDR             R1, =(ControlsManager_ptr - 0x5E571C)
5E5718:  ADD             R1, PC; ControlsManager_ptr
5E571A:  LDR             R1, [R1]; ControlsManager
5E571C:  LDR             R2, [R1,#(dword_953158 - 0x953150)]
5E571E:  STR             R2, [R1,#(dword_953154 - 0x953150)]
5E5720:  MOV             R1, SP
5E5722:  BLX.W           j__Z21OS_GamepadIsConnectedjP13OSGamepadType; OS_GamepadIsConnected(uint,OSGamepadType *)
5E5726:  CMP             R0, #1
5E5728:  BNE             loc_5E5818
5E572A:  LDR             R0, =(MarketingControllerEnabled_ptr - 0x5E5730)
5E572C:  ADD             R0, PC; MarketingControllerEnabled_ptr
5E572E:  LDR             R0, [R0]; MarketingControllerEnabled
5E5730:  LDRB            R0, [R0]
5E5732:  CMP             R0, #0
5E5734:  BNE.W           loc_5E598A
5E5738:  LDR             R0, [SP,#0x10+var_C]; unsigned int
5E573A:  MOVS            R1, #0x40 ; '@'; unsigned int
5E573C:  BLX.W           j__Z14OS_GamepadAxisjj; OS_GamepadAxis(uint,uint)
5E5740:  LDR             R2, =(leftStickPos_ptr - 0x5E5748)
5E5742:  LDR             R1, [SP,#0x10+var_C]
5E5744:  ADD             R2, PC; leftStickPos_ptr
5E5746:  LDR             R4, [R2]; leftStickPos
5E5748:  STR.W           R0, [R4,R1,LSL#3]
5E574C:  MOV             R0, R1; unsigned int
5E574E:  MOVS            R1, #0x41 ; 'A'; unsigned int
5E5750:  BLX.W           j__Z14OS_GamepadAxisjj; OS_GamepadAxis(uint,uint)
5E5754:  LDR             R1, [SP,#0x10+var_C]
5E5756:  ADD.W           R2, R4, R1,LSL#3
5E575A:  STR             R0, [R2,#4]
5E575C:  MOV             R0, R1; unsigned int
5E575E:  MOVS            R1, #0x42 ; 'B'; unsigned int
5E5760:  BLX.W           j__Z14OS_GamepadAxisjj; OS_GamepadAxis(uint,uint)
5E5764:  LDR             R1, =(rightStickPos_ptr - 0x5E576A)
5E5766:  ADD             R1, PC; rightStickPos_ptr
5E5768:  LDR             R4, [R1]; rightStickPos
5E576A:  LDR             R1, [SP,#0x10+var_C]
5E576C:  STR.W           R0, [R4,R1,LSL#3]
5E5770:  MOV             R0, R1; unsigned int
5E5772:  MOVS            R1, #0x43 ; 'C'; unsigned int
5E5774:  BLX.W           j__Z14OS_GamepadAxisjj; OS_GamepadAxis(uint,uint)
5E5778:  LDR             R2, =(GamepadType_ptr - 0x5E5784)
5E577A:  MOV             R1, R0
5E577C:  LDR             R3, =(ControlsManager_ptr - 0x5E5786)
5E577E:  LDR             R0, [SP,#0x10+var_C]; unsigned int
5E5780:  ADD             R2, PC; GamepadType_ptr
5E5782:  ADD             R3, PC; ControlsManager_ptr
5E5784:  LDR             R2, [R2]; GamepadType
5E5786:  CMP             R0, #1
5E5788:  ADD.W           R5, R4, R0,LSL#3
5E578C:  LDR             R3, [R3]; ControlsManager
5E578E:  STR             R1, [R5,#4]
5E5790:  MOV.W           R5, #0
5E5794:  LDR             R1, [SP,#0x10+var_10]
5E5796:  STR             R5, [R3,#(dword_953158 - 0x953150)]
5E5798:  STR             R1, [R2]
5E579A:  BNE             loc_5E5828
5E579C:  MOVS            R0, #1; unsigned int
5E579E:  MOVS            R1, #0; unsigned int
5E57A0:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E57A4:  LDR             R1, =(ControlsManager_ptr - 0x5E57AC)
5E57A6:  CMP             R0, #0
5E57A8:  ADD             R1, PC; ControlsManager_ptr
5E57AA:  LDR             R4, [R1]; ControlsManager
5E57AC:  LDR             R1, [SP,#0x10+var_C]
5E57AE:  LDR             R2, [R4,#(dword_953158 - 0x953150)]
5E57B0:  MOV             R0, R1; unsigned int
5E57B2:  MOV.W           R1, #2; unsigned int
5E57B6:  IT NE
5E57B8:  ORRNE.W         R2, R2, #2
5E57BC:  STR             R2, [R4,#(dword_953158 - 0x953150)]
5E57BE:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E57C2:  LDR             R1, [SP,#0x10+var_C]
5E57C4:  CMP             R0, #0
5E57C6:  LDR             R2, [R4,#(dword_953158 - 0x953150)]
5E57C8:  IT NE
5E57CA:  ORRNE.W         R2, R2, #4
5E57CE:  MOV             R0, R1; unsigned int
5E57D0:  MOVS            R1, #3; unsigned int
5E57D2:  STR             R2, [R4,#(dword_953158 - 0x953150)]
5E57D4:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E57D8:  LDR             R1, [SP,#0x10+var_C]
5E57DA:  CMP             R0, #0
5E57DC:  LDR             R2, [R4,#(dword_953158 - 0x953150)]
5E57DE:  IT NE
5E57E0:  ORRNE.W         R2, R2, #8
5E57E4:  MOV             R0, R1; unsigned int
5E57E6:  MOVS            R1, #1; unsigned int
5E57E8:  STR             R2, [R4,#(dword_953158 - 0x953150)]
5E57EA:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E57EE:  LDR             R2, [R4,#(dword_953158 - 0x953150)]
5E57F0:  LDR             R1, [SP,#0x10+var_C]
5E57F2:  ORRS            R0, R2
5E57F4:  STR             R0, [R4,#(dword_953158 - 0x953150)]
5E57F6:  MOV             R0, R1; unsigned int
5E57F8:  MOVS            R1, #7; unsigned int
5E57FA:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E57FE:  LDR             R1, [SP,#0x10+var_C]
5E5800:  CMP             R0, #0
5E5802:  LDR             R2, [R4,#(dword_953158 - 0x953150)]
5E5804:  IT NE
5E5806:  ORRNE.W         R2, R2, #0x20 ; ' '
5E580A:  MOV             R0, R1; unsigned int
5E580C:  MOVS            R1, #6; unsigned int
5E580E:  STR             R2, [R4,#(dword_953158 - 0x953150)]
5E5810:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E5814:  MOVS            R1, #0x10
5E5816:  B               loc_5E5974
5E5818:  LDR             R0, =(GamepadType_ptr - 0x5E5824)
5E581A:  MOVS            R2, #0
5E581C:  MOV.W           R1, #0xFFFFFFFF
5E5820:  ADD             R0, PC; GamepadType_ptr
5E5822:  LDR             R0, [R0]; GamepadType
5E5824:  STR             R1, [R0]
5E5826:  B               loc_5E5982
5E5828:  MOVS            R1, #1; unsigned int
5E582A:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E582E:  LDR             R1, =(ControlsManager_ptr - 0x5E5834)
5E5830:  ADD             R1, PC; ControlsManager_ptr
5E5832:  LDR             R5, [R1]; ControlsManager
5E5834:  LDR             R1, [SP,#0x10+var_C]
5E5836:  LDR             R2, [R5,#(dword_953158 - 0x953150)]
5E5838:  ORRS            R0, R2
5E583A:  STR             R0, [R5,#(dword_953158 - 0x953150)]
5E583C:  MOV             R0, R1; unsigned int
5E583E:  MOVS            R1, #0; unsigned int
5E5840:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E5844:  LDR             R1, [SP,#0x10+var_C]
5E5846:  CMP             R0, #0
5E5848:  LDR             R2, [R5,#(dword_953158 - 0x953150)]
5E584A:  IT NE
5E584C:  ORRNE.W         R2, R2, #2
5E5850:  MOV             R0, R1; unsigned int
5E5852:  MOVS            R1, #2; unsigned int
5E5854:  STR             R2, [R5,#(dword_953158 - 0x953150)]
5E5856:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E585A:  LDR             R1, [SP,#0x10+var_C]
5E585C:  CMP             R0, #0
5E585E:  LDR             R2, [R5,#(dword_953158 - 0x953150)]
5E5860:  IT NE
5E5862:  ORRNE.W         R2, R2, #4
5E5866:  MOV             R0, R1; unsigned int
5E5868:  MOVS            R1, #3; unsigned int
5E586A:  STR             R2, [R5,#(dword_953158 - 0x953150)]
5E586C:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E5870:  LDR             R1, [SP,#0x10+var_C]
5E5872:  CMP             R0, #0
5E5874:  LDR             R2, [R5,#(dword_953158 - 0x953150)]
5E5876:  IT NE
5E5878:  ORRNE.W         R2, R2, #8
5E587C:  MOV             R0, R1; unsigned int
5E587E:  MOVS            R1, #6; unsigned int
5E5880:  STR             R2, [R5,#(dword_953158 - 0x953150)]
5E5882:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E5886:  MOV             R4, R0
5E5888:  LDR             R0, [SP,#0x10+var_C]; unsigned int
5E588A:  MOVS            R1, #7; unsigned int
5E588C:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E5890:  LDR             R2, [R5,#(dword_953158 - 0x953150)]
5E5892:  CMP             R4, #0
5E5894:  LDR             R1, [SP,#0x10+var_C]
5E5896:  IT NE
5E5898:  ORRNE.W         R2, R2, #0x10
5E589C:  CMP             R0, #0
5E589E:  IT NE
5E58A0:  ORRNE.W         R2, R2, #0x20 ; ' '
5E58A4:  MOV             R0, R1; unsigned int
5E58A6:  MOVS            R1, #0x44 ; 'D'; unsigned int
5E58A8:  STR             R2, [R5,#(dword_953158 - 0x953150)]
5E58AA:  BLX.W           j__Z14OS_GamepadAxisjj; OS_GamepadAxis(uint,uint)
5E58AE:  MOV             R4, R0
5E58B0:  LDR             R0, [SP,#0x10+var_C]; unsigned int
5E58B2:  MOVS            R1, #0x45 ; 'E'; unsigned int
5E58B4:  BLX.W           j__Z14OS_GamepadAxisjj; OS_GamepadAxis(uint,uint)
5E58B8:  VMOV.F32        S0, #0.75
5E58BC:  LDR             R1, [R5,#(dword_953158 - 0x953150)]
5E58BE:  VMOV            S2, R4
5E58C2:  VMOV            S4, R0
5E58C6:  LDR             R0, [SP,#0x10+var_C]; unsigned int
5E58C8:  VCMPE.F32       S2, S0
5E58CC:  VMRS            APSR_nzcv, FPSCR
5E58D0:  VCMPE.F32       S4, S0
5E58D4:  IT GT
5E58D6:  ORRGT.W         R1, R1, #0x40 ; '@'
5E58DA:  VMRS            APSR_nzcv, FPSCR
5E58DE:  IT GT
5E58E0:  ORRGT.W         R1, R1, #0x80
5E58E4:  STR             R1, [R5,#(dword_953158 - 0x953150)]
5E58E6:  MOVS            R1, #5; unsigned int
5E58E8:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E58EC:  LDR             R1, [SP,#0x10+var_C]
5E58EE:  CMP             R0, #0
5E58F0:  LDR             R2, [R5,#(dword_953158 - 0x953150)]
5E58F2:  IT NE
5E58F4:  ORRNE.W         R2, R2, #0x100
5E58F8:  MOV             R0, R1; unsigned int
5E58FA:  MOVS            R1, #0xC; unsigned int
5E58FC:  STR             R2, [R5,#(dword_953158 - 0x953150)]
5E58FE:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E5902:  LDR             R1, [SP,#0x10+var_C]
5E5904:  CMP             R0, #0
5E5906:  LDR             R2, [R5,#(dword_953158 - 0x953150)]
5E5908:  IT NE
5E590A:  ORRNE.W         R2, R2, #0x200
5E590E:  MOV             R0, R1; unsigned int
5E5910:  MOVS            R1, #0xD; unsigned int
5E5912:  STR             R2, [R5,#(dword_953158 - 0x953150)]
5E5914:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E5918:  LDR             R1, [SP,#0x10+var_C]
5E591A:  CMP             R0, #0
5E591C:  LDR             R2, [R5,#(dword_953158 - 0x953150)]
5E591E:  IT NE
5E5920:  ORRNE.W         R2, R2, #0x400
5E5924:  MOV             R0, R1; unsigned int
5E5926:  MOVS            R1, #8; unsigned int
5E5928:  STR             R2, [R5,#(dword_953158 - 0x953150)]
5E592A:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E592E:  LDR             R1, [SP,#0x10+var_C]
5E5930:  CMP             R0, #0
5E5932:  LDR             R2, [R5,#(dword_953158 - 0x953150)]
5E5934:  IT NE
5E5936:  ORRNE.W         R2, R2, #0x1000
5E593A:  MOV             R0, R1; unsigned int
5E593C:  MOVS            R1, #0xB; unsigned int
5E593E:  STR             R2, [R5,#(dword_953158 - 0x953150)]
5E5940:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E5944:  LDR             R1, [SP,#0x10+var_C]
5E5946:  CMP             R0, #0
5E5948:  LDR             R2, [R5,#(dword_953158 - 0x953150)]
5E594A:  IT NE
5E594C:  ORRNE.W         R2, R2, #0x2000
5E5950:  MOV             R0, R1; unsigned int
5E5952:  MOVS            R1, #9; unsigned int
5E5954:  STR             R2, [R5,#(dword_953158 - 0x953150)]
5E5956:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E595A:  LDR             R1, [SP,#0x10+var_C]
5E595C:  CMP             R0, #0
5E595E:  LDR             R2, [R5,#(dword_953158 - 0x953150)]
5E5960:  IT NE
5E5962:  ORRNE.W         R2, R2, #0x4000
5E5966:  MOV             R0, R1; unsigned int
5E5968:  MOVS            R1, #0xA; unsigned int
5E596A:  STR             R2, [R5,#(dword_953158 - 0x953150)]
5E596C:  BLX.W           j__Z16OS_GamepadButtonjj; OS_GamepadButton(uint,uint)
5E5970:  MOV.W           R1, #0x8000
5E5974:  LDR             R2, =(ControlsManager_ptr - 0x5E597C)
5E5976:  CMP             R0, #0
5E5978:  ADD             R2, PC; ControlsManager_ptr
5E597A:  LDR             R2, [R2]; ControlsManager
5E597C:  LDR             R2, [R2,#(dword_953158 - 0x953150)]
5E597E:  IT NE
5E5980:  ORRNE           R2, R1
5E5982:  LDR             R0, =(ControlsManager_ptr - 0x5E5988)
5E5984:  ADD             R0, PC; ControlsManager_ptr
5E5986:  LDR             R0, [R0]; ControlsManager
5E5988:  STR             R2, [R0,#(dword_953158 - 0x953150)]
5E598A:  LDR             R0, =(hackNextTick_ptr - 0x5E5990)
5E598C:  ADD             R0, PC; hackNextTick_ptr
5E598E:  LDR             R0, [R0]; hackNextTick
5E5990:  LDRB            R0, [R0]
5E5992:  CBZ             R0, loc_5E59AC
5E5994:  LDR             R0, =(ControlsManager_ptr - 0x5E599E)
5E5996:  MOVS            R3, #0
5E5998:  LDR             R1, =(hackNextTick_ptr - 0x5E59A0)
5E599A:  ADD             R0, PC; ControlsManager_ptr
5E599C:  ADD             R1, PC; hackNextTick_ptr
5E599E:  LDR             R0, [R0]; ControlsManager
5E59A0:  LDR             R1, [R1]; hackNextTick
5E59A2:  LDR             R2, [R0,#(dword_953158 - 0x953150)]
5E59A4:  STRB            R3, [R1]
5E59A6:  ORR.W           R1, R2, #1
5E59AA:  STR             R1, [R0,#(dword_953158 - 0x953150)]
5E59AC:  ADD             R1, SP, #0x10+var_C
5E59AE:  MOVS            R0, #0x20 ; ' '
5E59B0:  BLX.W           j__Z17RsPadEventHandler7RsEventPv; RsPadEventHandler(RsEvent,void *)
5E59B4:  LDR             R0, =(_ZN4CPad20m_bMapPadOneToPadTwoE_ptr - 0x5E59BC)
5E59B6:  ADD             R4, SP, #0x10+var_C
5E59B8:  ADD             R0, PC; _ZN4CPad20m_bMapPadOneToPadTwoE_ptr
5E59BA:  MOV             R1, R4
5E59BC:  LDR             R0, [R0]; CPad::m_bMapPadOneToPadTwo ...
5E59BE:  LDRB            R0, [R0]; CPad::m_bMapPadOneToPadTwo
5E59C0:  CMP             R0, #0
5E59C2:  ITT NE
5E59C4:  MOVNE           R0, #1
5E59C6:  STRNE           R0, [SP,#0x10+var_C]
5E59C8:  MOVS            R0, #0x20 ; ' '
5E59CA:  BLX.W           j__Z17RsPadEventHandler7RsEventPv; RsPadEventHandler(RsEvent,void *)
5E59CE:  MOVS            R0, #0x1F
5E59D0:  MOV             R1, R4
5E59D2:  BLX.W           j__Z17RsPadEventHandler7RsEventPv; RsPadEventHandler(RsEvent,void *)
5E59D6:  LDR             R0, =(_ZN4CPad20m_bMapPadOneToPadTwoE_ptr - 0x5E59DC)
5E59D8:  ADD             R0, PC; _ZN4CPad20m_bMapPadOneToPadTwoE_ptr
5E59DA:  LDR             R0, [R0]; CPad::m_bMapPadOneToPadTwo ...
5E59DC:  LDRB            R0, [R0]; CPad::m_bMapPadOneToPadTwo
5E59DE:  CMP             R0, #0
5E59E0:  ITTE NE
5E59E2:  MOVNE           R0, #1
5E59E4:  STRNE           R0, [SP,#0x10+var_C]
5E59E6:  LDREQ           R0, [SP,#0x10+var_C]; this
5E59E8:  BLX.W           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
5E59EC:  LDR             R2, =(leftStickPos_ptr - 0x5E59F6)
5E59EE:  ADR             R3, dword_5E5B10
5E59F0:  LDR             R1, [SP,#0x10+var_C]
5E59F2:  ADD             R2, PC; leftStickPos_ptr
5E59F4:  LDR             R2, [R2]; leftStickPos
5E59F6:  ADD.W           R2, R2, R1,LSL#3
5E59FA:  VLDR            S2, [R2]
5E59FE:  LDR             R2, [SP,#0x10+var_10]
5E5A00:  VABS.F32        S4, S2
5E5A04:  CMP             R2, #0
5E5A06:  IT EQ
5E5A08:  ADDEQ           R3, #4
5E5A0A:  VLDR            S0, [R3]
5E5A0E:  VCMPE.F32       S4, S0
5E5A12:  VMRS            APSR_nzcv, FPSCR
5E5A16:  BLE             loc_5E5A2C
5E5A18:  VLDR            S4, =128.0
5E5A1C:  VMUL.F32        S2, S2, S4
5E5A20:  VCVT.S32.F32    S2, S2
5E5A24:  VMOV            R2, S2
5E5A28:  STRH.W          R2, [R0,#0xAC]
5E5A2C:  LDR             R2, =(leftStickPos_ptr - 0x5E5A32)
5E5A2E:  ADD             R2, PC; leftStickPos_ptr
5E5A30:  LDR             R2, [R2]; leftStickPos
5E5A32:  ADD.W           R2, R2, R1,LSL#3
5E5A36:  VLDR            S2, [R2,#4]
5E5A3A:  VABS.F32        S4, S2
5E5A3E:  VCMPE.F32       S4, S0
5E5A42:  VMRS            APSR_nzcv, FPSCR
5E5A46:  BLE             loc_5E5A5C
5E5A48:  VLDR            S4, =128.0
5E5A4C:  VMUL.F32        S2, S2, S4
5E5A50:  VCVT.S32.F32    S2, S2
5E5A54:  VMOV            R2, S2
5E5A58:  STRH.W          R2, [R0,#0xAE]
5E5A5C:  LDR             R2, =(rightStickPos_ptr - 0x5E5A62)
5E5A5E:  ADD             R2, PC; rightStickPos_ptr
5E5A60:  LDR             R2, [R2]; rightStickPos
5E5A62:  ADD.W           R2, R2, R1,LSL#3
5E5A66:  VLDR            S2, [R2]
5E5A6A:  VABS.F32        S4, S2
5E5A6E:  VCMPE.F32       S4, S0
5E5A72:  VMRS            APSR_nzcv, FPSCR
5E5A76:  BLE             loc_5E5A8C
5E5A78:  VLDR            S4, =128.0
5E5A7C:  VMUL.F32        S2, S2, S4
5E5A80:  VCVT.S32.F32    S2, S2
5E5A84:  VMOV            R2, S2
5E5A88:  STRH.W          R2, [R0,#0xB0]
5E5A8C:  LDR             R2, =(rightStickPos_ptr - 0x5E5A92)
5E5A8E:  ADD             R2, PC; rightStickPos_ptr
5E5A90:  LDR             R2, [R2]; rightStickPos
5E5A92:  ADD.W           R1, R2, R1,LSL#3
5E5A96:  VLDR            S2, [R1,#4]
5E5A9A:  VABS.F32        S4, S2
5E5A9E:  VCMPE.F32       S4, S0
5E5AA2:  VMRS            APSR_nzcv, FPSCR
5E5AA6:  BLE             loc_5E5ABC
5E5AA8:  VLDR            S0, =-128.0
5E5AAC:  VMUL.F32        S0, S2, S0
5E5AB0:  VCVT.S32.F32    S0, S0
5E5AB4:  VMOV            R1, S0
5E5AB8:  STRH.W          R1, [R0,#0xB2]
5E5ABC:  MOVS            R0, #1
5E5ABE:  ADD             SP, SP, #8
5E5AC0:  POP             {R4,R5,R7,PC}
