; =========================================================
; Game Engine Function: _ZN28CTaskComplexFollowPointRoute10CreateTaskEv
; Address            : 0x4947F4 - 0x494976
; =========================================================

4947F4:  PUSH            {R4-R7,LR}
4947F6:  ADD             R7, SP, #0xC
4947F8:  PUSH.W          {R11}
4947FC:  SUB             SP, SP, #0x90; float
4947FE:  LDR             R0, =(UseDataFence_ptr - 0x494804)
494800:  ADD             R0, PC; UseDataFence_ptr
494802:  LDR             R0, [R0]; UseDataFence
494804:  LDRB            R4, [R0]
494806:  CBZ             R4, loc_49481C
494808:  LDR             R0, =(UseDataFence_ptr - 0x494810)
49480A:  MOVS            R1, #(stderr+2); void *
49480C:  ADD             R0, PC; UseDataFence_ptr
49480E:  LDR             R5, [R0]; UseDataFence
494810:  MOVS            R0, #0
494812:  STRB            R0, [R5]
494814:  ADD             R0, SP, #0xA0+var_7C; this
494816:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49481A:  STRB            R4, [R5]
49481C:  ADD             R0, SP, #0xA0+var_18; this
49481E:  MOVS            R1, #byte_4; void *
494820:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494824:  LDR             R0, =(UseDataFence_ptr - 0x49482A)
494826:  ADD             R0, PC; UseDataFence_ptr
494828:  LDR             R0, [R0]; UseDataFence
49482A:  LDRB            R4, [R0]
49482C:  CBZ             R4, loc_494842
49482E:  LDR             R0, =(UseDataFence_ptr - 0x494836)
494830:  MOVS            R1, #(stderr+2); void *
494832:  ADD             R0, PC; UseDataFence_ptr
494834:  LDR             R5, [R0]; UseDataFence
494836:  MOVS            R0, #0
494838:  STRB            R0, [R5]
49483A:  ADD             R0, SP, #0xA0+var_7C; this
49483C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494840:  STRB            R4, [R5]
494842:  ADD             R0, SP, #0xA0+var_7C; this
494844:  MOVS            R4, #0
494846:  MOVS            R1, #dword_64; void *
494848:  STR             R4, [SP,#0xA0+var_7C]
49484A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49484E:  LDR             R0, =(UseDataFence_ptr - 0x494854)
494850:  ADD             R0, PC; UseDataFence_ptr
494852:  LDR             R0, [R0]; UseDataFence
494854:  LDRB            R5, [R0]
494856:  CBZ             R5, loc_49486A
494858:  LDR             R0, =(UseDataFence_ptr - 0x494860)
49485A:  MOVS            R1, #(stderr+2); void *
49485C:  ADD             R0, PC; UseDataFence_ptr
49485E:  LDR             R6, [R0]; UseDataFence
494860:  ADD             R0, SP, #0xA0+var_80; this
494862:  STRB            R4, [R6]
494864:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494868:  STRB            R5, [R6]
49486A:  ADD             R0, SP, #0xA0+var_80; this
49486C:  MOVS            R1, #byte_4; void *
49486E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494872:  LDR             R0, =(UseDataFence_ptr - 0x494878)
494874:  ADD             R0, PC; UseDataFence_ptr
494876:  LDR             R0, [R0]; UseDataFence
494878:  LDRB            R4, [R0]
49487A:  CBZ             R4, loc_494890
49487C:  LDR             R0, =(UseDataFence_ptr - 0x494884)
49487E:  MOVS            R1, #(stderr+2); void *
494880:  ADD             R0, PC; UseDataFence_ptr
494882:  LDR             R5, [R0]; UseDataFence
494884:  MOVS            R0, #0
494886:  STRB            R0, [R5]
494888:  ADD             R0, SP, #0xA0+var_84; this
49488A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49488E:  STRB            R4, [R5]
494890:  ADD             R0, SP, #0xA0+var_84; this
494892:  MOVS            R1, #byte_4; void *
494894:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494898:  LDR             R0, =(UseDataFence_ptr - 0x49489E)
49489A:  ADD             R0, PC; UseDataFence_ptr
49489C:  LDR             R0, [R0]; UseDataFence
49489E:  LDRB            R4, [R0]
4948A0:  CBZ             R4, loc_4948B6
4948A2:  LDR             R0, =(UseDataFence_ptr - 0x4948AA)
4948A4:  MOVS            R1, #(stderr+2); void *
4948A6:  ADD             R0, PC; UseDataFence_ptr
4948A8:  LDR             R5, [R0]; UseDataFence
4948AA:  MOVS            R0, #0
4948AC:  STRB            R0, [R5]
4948AE:  ADD             R0, SP, #0xA0+var_88; this
4948B0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4948B4:  STRB            R4, [R5]
4948B6:  ADD             R0, SP, #0xA0+var_88; this
4948B8:  MOVS            R1, #byte_4; void *
4948BA:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4948BE:  LDR             R0, =(UseDataFence_ptr - 0x4948C4)
4948C0:  ADD             R0, PC; UseDataFence_ptr
4948C2:  LDR             R0, [R0]; UseDataFence
4948C4:  LDRB            R4, [R0]
4948C6:  CBZ             R4, loc_4948DE
4948C8:  LDR             R0, =(UseDataFence_ptr - 0x4948D0)
4948CA:  MOVS            R1, #(stderr+2); void *
4948CC:  ADD             R0, PC; UseDataFence_ptr
4948CE:  LDR             R5, [R0]; UseDataFence
4948D0:  MOVS            R0, #0
4948D2:  STRB            R0, [R5]
4948D4:  SUB.W           R0, R7, #-var_12; this
4948D8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4948DC:  STRB            R4, [R5]
4948DE:  SUB.W           R0, R7, #-var_89; this
4948E2:  MOVS            R1, #(stderr+1); void *
4948E4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
4948E8:  LDR             R0, =(UseDataFence_ptr - 0x4948EE)
4948EA:  ADD             R0, PC; UseDataFence_ptr
4948EC:  LDR             R0, [R0]; UseDataFence
4948EE:  LDRB            R4, [R0]
4948F0:  CBZ             R4, loc_494908
4948F2:  LDR             R0, =(UseDataFence_ptr - 0x4948FA)
4948F4:  MOVS            R1, #(stderr+2); void *
4948F6:  ADD             R0, PC; UseDataFence_ptr
4948F8:  LDR             R5, [R0]; UseDataFence
4948FA:  MOVS            R0, #0
4948FC:  STRB            R0, [R5]
4948FE:  SUB.W           R0, R7, #-var_12; this
494902:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494906:  STRB            R4, [R5]
494908:  SUB.W           R0, R7, #-var_8A; this
49490C:  MOVS            R1, #(stderr+1); void *
49490E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494912:  LDR             R0, =(UseDataFence_ptr - 0x494918)
494914:  ADD             R0, PC; UseDataFence_ptr
494916:  LDR             R0, [R0]; UseDataFence
494918:  LDRB            R4, [R0]
49491A:  CBZ             R4, loc_494932
49491C:  LDR             R0, =(UseDataFence_ptr - 0x494924)
49491E:  MOVS            R1, #(stderr+2); void *
494920:  ADD             R0, PC; UseDataFence_ptr
494922:  LDR             R5, [R0]; UseDataFence
494924:  MOVS            R0, #0
494926:  STRB            R0, [R5]
494928:  SUB.W           R0, R7, #-var_12; this
49492C:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
494930:  STRB            R4, [R5]
494932:  SUB.W           R0, R7, #-var_12; this
494936:  MOVS            R1, #(stderr+1); void *
494938:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
49493C:  MOVS            R0, #off_3C; this
49493E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
494942:  LDRB.W          R6, [R7,#var_8A]
494946:  LDR             R3, [SP,#0xA0+var_80]; int
494948:  LDR             R1, [SP,#0xA0+var_18]; int
49494A:  LDRB.W          R2, [R7,#var_89]
49494E:  VLDR            S0, [SP,#0xA0+var_84]
494952:  VLDR            S2, [SP,#0xA0+var_88]
494956:  LDRB.W          R5, [R7,#var_12]
49495A:  STRD.W          R2, R6, [SP,#0xA0+var_98]; bool
49495E:  ADD             R2, SP, #0xA0+var_7C; CPointRoute *
494960:  STR             R5, [SP,#0xA0+var_90]; bool
494962:  VSTR            S0, [SP,#0xA0+var_A0]
494966:  VSTR            S2, [SP,#0xA0+var_9C]
49496A:  BLX             j__ZN28CTaskComplexFollowPointRouteC2EiRK11CPointRouteiffbbb; CTaskComplexFollowPointRoute::CTaskComplexFollowPointRoute(int,CPointRoute const&,int,float,float,bool,bool,bool)
49496E:  ADD             SP, SP, #0x90
494970:  POP.W           {R11}
494974:  POP             {R4-R7,PC}
