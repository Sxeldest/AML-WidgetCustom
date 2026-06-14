; =========================================================
; Game Engine Function: _ZN9CSetPiece6UpdateEv
; Address            : 0x35E4D8 - 0x35F2BA
; =========================================================

35E4D8:  PUSH            {R4-R7,LR}
35E4DA:  ADD             R7, SP, #0xC
35E4DC:  PUSH.W          {R8-R11}
35E4E0:  SUB             SP, SP, #4
35E4E2:  VPUSH           {D8-D13}
35E4E6:  SUB             SP, SP, #0x30
35E4E8:  MOV             R4, R0
35E4EA:  LDR             R0, [R4]
35E4EC:  CBZ             R0, loc_35E502
35E4EE:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x35E4FC)
35E4F2:  MOVW            R2, #0x9C40
35E4F6:  ADD             R0, R2
35E4F8:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
35E4FA:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
35E4FC:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
35E4FE:  CMP             R1, R0
35E500:  BLS             def_35E596; jumptable 0035E596 default case
35E502:  ADD             R0, SP, #0x80+var_5C; int
35E504:  MOV.W           R1, #0xFFFFFFFF
35E508:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
35E50C:  LDRSH.W         R0, [R4,#4]
35E510:  VMOV.F32        S16, #0.25
35E514:  VMOV            S0, R0
35E518:  VCVT.F32.S32    S0, S0
35E51C:  VMUL.F32        S2, S0, S16
35E520:  VLDR            S0, [SP,#0x80+var_5C]
35E524:  VCMPE.F32       S0, S2
35E528:  VMRS            APSR_nzcv, FPSCR
35E52C:  BLT             def_35E596; jumptable 0035E596 default case
35E52E:  LDRSH.W         R0, [R4,#8]
35E532:  VMOV            S2, R0
35E536:  VCVT.F32.S32    S2, S2
35E53A:  VMUL.F32        S2, S2, S16
35E53E:  VCMPE.F32       S0, S2
35E542:  VMRS            APSR_nzcv, FPSCR
35E546:  BGT             def_35E596; jumptable 0035E596 default case
35E548:  LDRSH.W         R0, [R4,#6]
35E54C:  VMOV            S0, R0
35E550:  VCVT.F32.S32    S0, S0
35E554:  VMUL.F32        S2, S0, S16
35E558:  VLDR            S0, [SP,#0x80+var_58]
35E55C:  VCMPE.F32       S0, S2
35E560:  VMRS            APSR_nzcv, FPSCR
35E564:  BLT             def_35E596; jumptable 0035E596 default case
35E566:  LDRSH.W         R0, [R4,#0xA]
35E56A:  VMOV            S2, R0
35E56E:  VCVT.F32.S32    S2, S2
35E572:  VMUL.F32        S2, S2, S16
35E576:  VCMPE.F32       S0, S2
35E57A:  VMRS            APSR_nzcv, FPSCR
35E57E:  BLE             loc_35E58E
35E580:  ADD             SP, SP, #0x30 ; '0'; jumptable 0035E596 default case
35E582:  VPOP            {D8-D13}
35E586:  ADD             SP, SP, #4
35E588:  POP.W           {R8-R11}
35E58C:  POP             {R4-R7,PC}; float
35E58E:  LDRB            R0, [R4,#0x1C]
35E590:  SUBS            R0, #1; switch 8 cases
35E592:  CMP             R0, #7
35E594:  BHI             def_35E596; jumptable 0035E596 default case
35E596:  TBH.W           [PC,R0,LSL#1]; switch jump
35E59A:  DCW 8; jump table for switch statement
35E59C:  DCW 0xF6
35E59E:  DCW 0x174
35E5A0:  DCW 0x1F3
35E5A2:  DCW 0x2B7
35E5A4:  DCW 0x419
35E5A6:  DCW 0x539
35E5A8:  DCW 8
35E5AA:  MOV.W           R0, #0xFFFFFFFF; jumptable 0035E596 cases 1,8
35E5AE:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
35E5B2:  LDR.W           R0, [R0,#0x444]
35E5B6:  LDR             R0, [R0]
35E5B8:  LDR             R0, [R0,#0x2C]
35E5BA:  CMP             R0, #1
35E5BC:  BLT             def_35E596; jumptable 0035E596 default case
35E5BE:  MOV.W           R0, #0xFFFFFFFF; int
35E5C2:  MOVS            R1, #0; bool
35E5C4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
35E5C8:  CMP             R0, #0
35E5CA:  BNE             def_35E596; jumptable 0035E596 default case
35E5CC:  LDRSH.W         R0, [R4,#0xC]
35E5D0:  LDRSH.W         R1, [R4,#0xE]
35E5D4:  LDRSH.W         R2, [R4,#0x14]
35E5D8:  VMOV            S0, R0
35E5DC:  LDRSH.W         R6, [R4,#0x16]
35E5E0:  VMOV            S2, R1
35E5E4:  VMOV            S4, R2
35E5E8:  VCVT.F32.S32    S0, S0
35E5EC:  VCVT.F32.S32    S2, S2
35E5F0:  VCVT.F32.S32    S4, S4
35E5F4:  VMUL.F32        S0, S0, S16
35E5F8:  VMUL.F32        S2, S2, S16
35E5FC:  VMUL.F32        S4, S4, S16
35E600:  VMOV            R1, S0
35E604:  VMOV            R2, S2
35E608:  VMOV            R3, S4
35E60C:  VMOV            S0, R6
35E610:  VCVT.F32.S32    S0, S0
35E614:  VMUL.F32        S0, S0, S16
35E618:  VSTR            S0, [SP,#0x80+var_80]
35E61C:  BLX             j__ZN9CSetPiece19TryToGenerateCopCarE9CVector2DS0_; CSetPiece::TryToGenerateCopCar(CVector2D,CVector2D)
35E620:  MOV             R5, R0
35E622:  CMP             R5, #0
35E624:  BEQ             def_35E596; jumptable 0035E596 default case
35E626:  LDRSH.W         R0, [R4,#0x10]
35E62A:  LDRSH.W         R1, [R4,#0x12]
35E62E:  LDRSH.W         R2, [R4,#0x18]
35E632:  VMOV            S0, R0
35E636:  LDRSH.W         R6, [R4,#0x1A]
35E63A:  VMOV            S2, R1
35E63E:  VMOV            S4, R2
35E642:  VCVT.F32.S32    S0, S0
35E646:  VCVT.F32.S32    S2, S2
35E64A:  VCVT.F32.S32    S4, S4
35E64E:  VMUL.F32        S0, S0, S16
35E652:  VMUL.F32        S2, S2, S16
35E656:  VMUL.F32        S4, S4, S16
35E65A:  VMOV            R1, S0
35E65E:  VMOV            R2, S2
35E662:  VMOV            R3, S4
35E666:  VMOV            S0, R6
35E66A:  VCVT.F32.S32    S0, S0
35E66E:  VMUL.F32        S0, S0, S16
35E672:  VSTR            S0, [SP,#0x80+var_80]
35E676:  BLX             j__ZN9CSetPiece19TryToGenerateCopCarE9CVector2DS0_; CSetPiece::TryToGenerateCopCar(CVector2D,CVector2D)
35E67A:  MOV             R6, R0
35E67C:  CMP             R6, #0
35E67E:  BEQ.W           loc_35F2A8
35E682:  LDRB.W          R0, [R5,#0x3A]
35E686:  MOV.W           R8, #4
35E68A:  MOVS            R1, #3
35E68C:  STRB.W          R8, [R5,#0x3D4]
35E690:  BFI.W           R0, R1, #3, #0x1D
35E694:  STRB.W          R0, [R5,#0x3A]
35E698:  LDRB            R0, [R4,#0x1C]
35E69A:  MOVW            R1, #0x1801
35E69E:  MOV.W           R10, #0
35E6A2:  MOVW            R11, #0x61A8
35E6A6:  CMP             R0, #8
35E6A8:  MOV.W           R0, #4
35E6AC:  IT EQ
35E6AE:  MOVEQ           R0, #0x18
35E6B0:  VMOV            S0, R0
35E6B4:  VCVT.F32.U32    S0, S0
35E6B8:  STRH.W          R1, [R5,#0x3BD]
35E6BC:  STRB.W          R0, [R5,#0x3D4]
35E6C0:  VSTR            S0, [R5,#0x3CC]
35E6C4:  LDRSH.W         R0, [R4,#0x14]
35E6C8:  LDRSH.W         R1, [R4,#0x16]
35E6CC:  VMOV            S2, R0
35E6D0:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x35E6DE)
35E6D4:  VMOV            S0, R1
35E6D8:  MOVS            R1, #0; CVehicle *
35E6DA:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
35E6DC:  VCVT.F32.S32    S0, S0
35E6E0:  VCVT.F32.S32    S2, S2
35E6E4:  LDR.W           R9, [R0]; CTimer::m_snTimeInMilliseconds ...
35E6E8:  STR.W           R10, [R5,#0x3F8]
35E6EC:  VMUL.F32        S0, S0, S16
35E6F0:  VMUL.F32        S2, S2, S16
35E6F4:  VSTR            S2, [R5,#0x3F0]
35E6F8:  VSTR            S0, [R5,#0x3F4]
35E6FC:  LDR.W           R0, [R9]; CTimer::m_snTimeInMilliseconds
35E700:  ADD             R0, R11
35E702:  STR.W           R0, [R5,#0x4E0]
35E706:  MOV             R0, R5; this
35E708:  BLX             j__ZN6CCarAI21AddPoliceCarOccupantsEP8CVehicleb; CCarAI::AddPoliceCarOccupants(CVehicle *,bool)
35E70C:  LDRB.W          R0, [R6,#0x3A]
35E710:  MOVS            R1, #3
35E712:  STRB.W          R8, [R6,#0x3D4]
35E716:  BFI.W           R0, R1, #3, #0x1D
35E71A:  STRB.W          R0, [R6,#0x3A]
35E71E:  LDRB            R0, [R4,#0x1C]
35E720:  CMP             R0, #8
35E722:  MOVW            R0, #0x1801
35E726:  IT EQ
35E728:  MOVEQ.W         R8, #0x18
35E72C:  VMOV            S0, R8
35E730:  VCVT.F32.U32    S0, S0
35E734:  STRH.W          R0, [R6,#0x3BD]
35E738:  STRB.W          R8, [R6,#0x3D4]
35E73C:  VSTR            S0, [R6,#0x3CC]
35E740:  LDRSH.W         R0, [R4,#0x18]
35E744:  LDRSH.W         R1, [R4,#0x1A]
35E748:  VMOV            S2, R0
35E74C:  VMOV            S0, R1
35E750:  MOVS            R1, #0; CVehicle *
35E752:  VCVT.F32.S32    S0, S0
35E756:  VCVT.F32.S32    S2, S2
35E75A:  STR.W           R10, [R6,#0x3F8]
35E75E:  VMUL.F32        S0, S0, S16
35E762:  VMUL.F32        S2, S2, S16
35E766:  VSTR            S2, [R6,#0x3F0]
35E76A:  VSTR            S0, [R6,#0x3F4]
35E76E:  LDR.W           R0, [R9]; CTimer::m_snTimeInMilliseconds
35E772:  ADD             R0, R11
35E774:  STR.W           R0, [R6,#0x4E0]
35E778:  MOV             R0, R6; this
35E77A:  BLX             j__ZN6CCarAI21AddPoliceCarOccupantsEP8CVehicleb; CCarAI::AddPoliceCarOccupants(CVehicle *,bool)
35E77E:  LDR.W           R0, [R9]; CTimer::m_snTimeInMilliseconds
35E782:  B.W             loc_35F2A2
35E786:  MOV.W           R0, #0xFFFFFFFF; jumptable 0035E596 case 2
35E78A:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
35E78E:  LDR.W           R0, [R0,#0x444]
35E792:  LDR             R0, [R0]
35E794:  LDR             R0, [R0,#0x2C]
35E796:  CMP             R0, #2
35E798:  BLT.W           def_35E596; jumptable 0035E596 default case
35E79C:  MOV.W           R0, #0xFFFFFFFF; int
35E7A0:  MOVS            R1, #0; bool
35E7A2:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
35E7A6:  CMP             R0, #0
35E7A8:  BEQ.W           def_35E596; jumptable 0035E596 default case
35E7AC:  ADD             R0, SP, #0x80+var_68; int
35E7AE:  MOV.W           R1, #0xFFFFFFFF
35E7B2:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
35E7B6:  MOV.W           R0, #0xFFFFFFFF; int
35E7BA:  LDRSH.W         R5, [R4,#0xC]
35E7BE:  VLDR            S18, [SP,#0x80+var_68]
35E7C2:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
35E7C6:  VLDR            S20, [R0]
35E7CA:  ADD             R0, SP, #0x80+var_74; int
35E7CC:  MOV.W           R1, #0xFFFFFFFF
35E7D0:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
35E7D4:  VMOV            S0, R5
35E7D8:  VCVT.F32.S32    S0, S0
35E7DC:  LDRSH.W         R0, [R4,#0xE]
35E7E0:  VMOV            S2, R0
35E7E4:  MOV.W           R0, #0xFFFFFFFF; int
35E7E8:  VCVT.F32.S32    S2, S2
35E7EC:  VLDR            S4, [SP,#0x80+var_70]
35E7F0:  VMUL.F32        S0, S0, S16
35E7F4:  VMUL.F32        S2, S2, S16
35E7F8:  VSUB.F32        S18, S18, S0
35E7FC:  VSUB.F32        S22, S4, S2
35E800:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
35E804:  VLDR            S0, [R0,#4]
35E808:  VMUL.F32        S2, S20, S18
35E80C:  VMUL.F32        S0, S0, S22
35E810:  VADD.F32        S0, S2, S0
35E814:  VCMPE.F32       S0, #0.0
35E818:  VMRS            APSR_nzcv, FPSCR
35E81C:  BGE.W           def_35E596; jumptable 0035E596 default case
35E820:  LDRSH.W         R0, [R4,#0xC]
35E824:  LDRSH.W         R1, [R4,#0xE]
35E828:  LDRSH.W         R2, [R4,#0x14]
35E82C:  VMOV            S0, R0
35E830:  LDRSH.W         R6, [R4,#0x16]
35E834:  VMOV            S2, R1
35E838:  VMOV            S4, R2
35E83C:  VCVT.F32.S32    S0, S0
35E840:  VCVT.F32.S32    S2, S2
35E844:  VCVT.F32.S32    S4, S4
35E848:  VMUL.F32        S0, S0, S16
35E84C:  VMUL.F32        S2, S2, S16
35E850:  VMUL.F32        S4, S4, S16
35E854:  VMOV            R1, S0
35E858:  VMOV            R2, S2
35E85C:  VMOV            R3, S4
35E860:  VMOV            S0, R6
35E864:  VCVT.F32.S32    S0, S0
35E868:  VMUL.F32        S0, S0, S16
35E86C:  VSTR            S0, [SP,#0x80+var_80]
35E870:  BLX             j__ZN9CSetPiece19TryToGenerateCopCarE9CVector2DS0_; CSetPiece::TryToGenerateCopCar(CVector2D,CVector2D)
35E874:  CMP             R0, #0
35E876:  BEQ.W           def_35E596; jumptable 0035E596 default case
35E87A:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x35E882)
35E87E:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
35E880:  B               loc_35EFFC
35E882:  MOV.W           R0, #0xFFFFFFFF; jumptable 0035E596 case 3
35E886:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
35E88A:  LDR.W           R0, [R0,#0x444]
35E88E:  LDR             R0, [R0]
35E890:  LDR             R0, [R0,#0x2C]
35E892:  CMP             R0, #2
35E894:  BLT.W           def_35E596; jumptable 0035E596 default case
35E898:  MOV.W           R0, #0xFFFFFFFF; int
35E89C:  MOVS            R1, #0; bool
35E89E:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
35E8A2:  CMP             R0, #0
35E8A4:  BEQ.W           def_35E596; jumptable 0035E596 default case
35E8A8:  ADD             R0, SP, #0x80+var_68; int
35E8AA:  MOV.W           R1, #0xFFFFFFFF
35E8AE:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
35E8B2:  MOV.W           R0, #0xFFFFFFFF; int
35E8B6:  LDRSH.W         R5, [R4,#0xC]
35E8BA:  VLDR            S18, [SP,#0x80+var_68]
35E8BE:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
35E8C2:  VLDR            S20, [R0]
35E8C6:  ADD             R0, SP, #0x80+var_74; int
35E8C8:  MOV.W           R1, #0xFFFFFFFF
35E8CC:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
35E8D0:  VMOV            S0, R5
35E8D4:  VCVT.F32.S32    S0, S0
35E8D8:  LDRSH.W         R0, [R4,#0xE]
35E8DC:  VMOV            S2, R0
35E8E0:  MOV.W           R0, #0xFFFFFFFF; int
35E8E4:  VCVT.F32.S32    S2, S2
35E8E8:  VLDR            S4, [SP,#0x80+var_70]
35E8EC:  VMUL.F32        S0, S0, S16
35E8F0:  VMUL.F32        S2, S2, S16
35E8F4:  VSUB.F32        S18, S18, S0
35E8F8:  VSUB.F32        S22, S4, S2
35E8FC:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
35E900:  VLDR            S0, [R0,#4]
35E904:  VMUL.F32        S2, S20, S18
35E908:  VMUL.F32        S0, S0, S22
35E90C:  VADD.F32        S0, S2, S0
35E910:  VCMPE.F32       S0, #0.0
35E914:  VMRS            APSR_nzcv, FPSCR
35E918:  BGE.W           def_35E596; jumptable 0035E596 default case
35E91C:  LDRSH.W         R0, [R4,#0xC]
35E920:  LDRSH.W         R1, [R4,#0xE]
35E924:  LDRSH.W         R2, [R4,#0x14]
35E928:  VMOV            S0, R0
35E92C:  LDRSH.W         R6, [R4,#0x16]
35E930:  VMOV            S2, R1
35E934:  VMOV            S4, R2
35E938:  VCVT.F32.S32    S0, S0
35E93C:  VCVT.F32.S32    S2, S2
35E940:  VCVT.F32.S32    S4, S4
35E944:  VMUL.F32        S0, S0, S16
35E948:  VMUL.F32        S2, S2, S16
35E94C:  VMUL.F32        S4, S4, S16
35E950:  VMOV            R1, S0
35E954:  VMOV            R2, S2
35E958:  VMOV            R3, S4
35E95C:  VMOV            S0, R6
35E960:  VCVT.F32.S32    S0, S0
35E964:  VMUL.F32        S0, S0, S16
35E968:  VSTR            S0, [SP,#0x80+var_80]
35E96C:  BLX             j__ZN9CSetPiece19TryToGenerateCopCarE9CVector2DS0_; CSetPiece::TryToGenerateCopCar(CVector2D,CVector2D)
35E970:  CMP             R0, #0
35E972:  BEQ.W           def_35E596; jumptable 0035E596 default case
35E976:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x35E97E)
35E97A:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
35E97C:  B.W             loc_35F23A
35E980:  MOV.W           R0, #0xFFFFFFFF; jumptable 0035E596 case 4
35E984:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
35E988:  LDR.W           R0, [R0,#0x444]
35E98C:  LDR             R0, [R0]
35E98E:  LDR             R0, [R0,#0x2C]
35E990:  CMP             R0, #1
35E992:  BLT.W           def_35E596; jumptable 0035E596 default case
35E996:  MOV.W           R0, #0xFFFFFFFF; int
35E99A:  MOVS            R1, #0; bool
35E99C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
35E9A0:  CMP             R0, #0
35E9A2:  BNE.W           def_35E596; jumptable 0035E596 default case
35E9A6:  LDRSH.W         R0, [R4,#0xC]
35E9AA:  LDRSH.W         R1, [R4,#0xE]
35E9AE:  VMOV            S0, R0
35E9B2:  VMOV            S2, R1
35E9B6:  VCVT.F32.S32    S0, S0
35E9BA:  VCVT.F32.S32    S2, S2
35E9BE:  VMUL.F32        S0, S0, S16
35E9C2:  VMUL.F32        S2, S2, S16
35E9C6:  VMOV            R1, S0
35E9CA:  VMOV            R2, S2
35E9CE:  BLX             j__ZN9CSetPiece19TryToGenerateCopPedE9CVector2D; CSetPiece::TryToGenerateCopPed(CVector2D)
35E9D2:  MOV             R5, R0
35E9D4:  CMP             R5, #0
35E9D6:  BEQ.W           def_35E596; jumptable 0035E596 default case
35E9DA:  LDRSH.W         R0, [R4,#0x14]
35E9DE:  LDRSH.W         R1, [R4,#0x16]
35E9E2:  VMOV            S0, R0
35E9E6:  VMOV            S2, R1
35E9EA:  VCVT.F32.S32    S0, S0
35E9EE:  VCVT.F32.S32    S2, S2
35E9F2:  VMUL.F32        S0, S0, S16
35E9F6:  VMUL.F32        S2, S2, S16
35E9FA:  VMOV            R0, S0; this
35E9FE:  VMOV            R1, S2; float
35EA02:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
35EA06:  MOV             R8, R0
35EA08:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x35EA14)
35EA0C:  LDR.W           R1, [R5,#0x488]
35EA10:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
35EA12:  LDR.W           R2, [R5,#0x48C]
35EA16:  LDR.W           R3, [R5,#0x490]
35EA1A:  ORR.W           R1, R1, #0x40 ; '@'; unsigned int
35EA1E:  LDR.W           R9, [R0]; CTimer::m_snTimeInMilliseconds ...
35EA22:  LDR.W           R0, [R5,#0x484]
35EA26:  LDR.W           R6, [R9]; CTimer::m_snTimeInMilliseconds
35EA2A:  STR.W           R0, [R5,#0x484]
35EA2E:  MOVW            R0, #0x2710
35EA32:  ADD             R0, R6
35EA34:  STR.W           R1, [R5,#0x488]
35EA38:  STR.W           R2, [R5,#0x48C]
35EA3C:  STR.W           R3, [R5,#0x490]
35EA40:  STR.W           R0, [R5,#0x550]
35EA44:  MOVS            R0, #word_28; this
35EA46:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35EA4A:  MOV             R10, R0
35EA4C:  LDRSH.W         R0, [R4,#0x14]
35EA50:  LDRSH.W         R1, [R4,#0x16]
35EA54:  ADD             R2, SP, #0x80+var_68; CVector *
35EA56:  MOVS            R6, #0
35EA58:  VMOV            S2, R0
35EA5C:  LDR.W           R0, =(_ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr - 0x35EA6C)
35EA60:  VMOV            S0, R1
35EA64:  LDR.W           R1, =(_ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr - 0x35EA72)
35EA68:  ADD             R0, PC; _ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr
35EA6A:  VCVT.F32.S32    S0, S0
35EA6E:  ADD             R1, PC; _ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr
35EA70:  VCVT.F32.S32    S2, S2
35EA74:  LDR             R0, [R0]; CTaskComplexGoToPointAndStandStill::ms_fSlowDownDistance ...
35EA76:  LDR             R1, [R1]; CTaskComplexGoToPointAndStandStill::ms_fTargetRadius ...
35EA78:  STR.W           R8, [SP,#0x80+var_60]
35EA7C:  VLDR            S4, [R0]
35EA80:  MOV             R0, R10; this
35EA82:  LDR             R3, [R1]; float
35EA84:  MOVS            R1, #6; int
35EA86:  VMUL.F32        S0, S0, S16
35EA8A:  VMUL.F32        S2, S2, S16
35EA8E:  VSTR            S0, [SP,#0x80+var_64]
35EA92:  VSTR            S2, [SP,#0x80+var_68]
35EA96:  STRD.W          R6, R6, [SP,#0x80+var_7C]; bool
35EA9A:  VSTR            S4, [SP,#0x80+var_80]
35EA9E:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
35EAA2:  MOVS            R0, #dword_50; this
35EAA4:  LDR.W           R8, [R5,#0x440]
35EAA8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35EAAC:  MOV             R5, R0
35EAAE:  LDR.W           R0, =(_ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr - 0x35EABA)
35EAB2:  MOVS            R1, #4; int
35EAB4:  MOVS            R2, #0; unsigned __int8
35EAB6:  ADD             R0, PC; _ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr
35EAB8:  MOVS            R3, #1; bool
35EABA:  LDR             R0, [R0]; CTaskComplexWander::ms_fTargetRadius ...
35EABC:  VLDR            S0, [R0]
35EAC0:  MOV             R0, R5; this
35EAC2:  VSTR            S0, [SP,#0x80+var_80]
35EAC6:  BLX             j__ZN18CTaskComplexWanderC2Eihbf; CTaskComplexWander::CTaskComplexWander(int,uchar,bool,float)
35EACA:  LDR.W           R0, =(_ZTV17CTaskComplexBeCop_ptr - 0x35EADC)
35EACE:  VMOV.I32        Q8, #0
35EAD2:  ADD.W           R1, R5, #0x38 ; '8'
35EAD6:  MOVS            R2, #3; int
35EAD8:  ADD             R0, PC; _ZTV17CTaskComplexBeCop_ptr
35EADA:  MOVS            R3, #0; bool
35EADC:  VST1.32         {D16-D17}, [R1]
35EAE0:  MOV             R1, R5; CTask *
35EAE2:  LDR             R0, [R0]; `vtable for'CTaskComplexBeCop ...
35EAE4:  STR.W           R6, [R5,#0x46]
35EAE8:  ADDS            R0, #8
35EAEA:  STRD.W          R6, R6, [R5,#0x2C]
35EAEE:  STRH            R6, [R5,#0x34]
35EAF0:  STR.W           R6, [R5,#0x4A]
35EAF4:  STR             R0, [R5]
35EAF6:  ADD.W           R0, R8, #4; this
35EAFA:  STR.W           R10, [R5,#0x28]
35EAFE:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
35EB02:  LDR.W           R0, [R9]; CTimer::m_snTimeInMilliseconds
35EB06:  B               loc_35F2A2
35EB08:  MOV.W           R0, #0xFFFFFFFF; jumptable 0035E596 case 5
35EB0C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
35EB10:  LDR.W           R0, [R0,#0x444]
35EB14:  LDR             R0, [R0]
35EB16:  LDR             R0, [R0,#0x2C]
35EB18:  CMP             R0, #1
35EB1A:  BLT.W           def_35E596; jumptable 0035E596 default case
35EB1E:  MOV.W           R0, #0xFFFFFFFF; int
35EB22:  MOVS            R1, #0; bool
35EB24:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
35EB28:  CMP             R0, #0
35EB2A:  BNE.W           def_35E596; jumptable 0035E596 default case
35EB2E:  LDRSH.W         R0, [R4,#0xC]
35EB32:  LDRSH.W         R1, [R4,#0xE]
35EB36:  VMOV            S0, R0
35EB3A:  VMOV            S2, R1
35EB3E:  VCVT.F32.S32    S0, S0
35EB42:  VCVT.F32.S32    S2, S2
35EB46:  VMUL.F32        S0, S0, S16
35EB4A:  VMUL.F32        S2, S2, S16
35EB4E:  VMOV            R1, S0
35EB52:  VMOV            R2, S2
35EB56:  BLX             j__ZN9CSetPiece19TryToGenerateCopPedE9CVector2D; CSetPiece::TryToGenerateCopPed(CVector2D)
35EB5A:  MOV             R5, R0
35EB5C:  CMP             R5, #0
35EB5E:  BEQ.W           def_35E596; jumptable 0035E596 default case
35EB62:  LDRSH.W         R0, [R4,#0x14]
35EB66:  LDRSH.W         R1, [R4,#0x16]
35EB6A:  VMOV            S0, R0
35EB6E:  VMOV            S2, R1
35EB72:  VCVT.F32.S32    S0, S0
35EB76:  VCVT.F32.S32    S2, S2
35EB7A:  VMUL.F32        S0, S0, S16
35EB7E:  VMUL.F32        S2, S2, S16
35EB82:  VMOV            R0, S0; this
35EB86:  VMOV            R1, S2; float
35EB8A:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
35EB8E:  MOV             R9, R0
35EB90:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x35EB9C)
35EB94:  LDR.W           R2, [R5,#0x488]
35EB98:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
35EB9A:  LDR.W           R1, [R5,#0x484]
35EB9E:  LDR.W           R3, [R5,#0x48C]
35EBA2:  ORR.W           R2, R2, #0x40 ; '@'
35EBA6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
35EBA8:  LDR.W           R6, [R5,#0x490]
35EBAC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
35EBAE:  STR.W           R1, [R5,#0x484]
35EBB2:  MOVW            R1, #0x2710; unsigned int
35EBB6:  ADD             R0, R1
35EBB8:  STR.W           R2, [R5,#0x488]
35EBBC:  STR.W           R3, [R5,#0x48C]
35EBC0:  STR.W           R6, [R5,#0x490]
35EBC4:  STR.W           R0, [R5,#0x550]
35EBC8:  MOVS            R0, #word_28; this
35EBCA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35EBCE:  MOV             R10, R0
35EBD0:  LDR.W           R0, =(_ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr - 0x35EBE0)
35EBD4:  LDRSH.W         R1, [R4,#0x14]
35EBD8:  MOV.W           R11, #0
35EBDC:  ADD             R0, PC; _ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr
35EBDE:  LDRSH.W         R2, [R4,#0x16]
35EBE2:  LDR             R0, [R0]; CTaskComplexGoToPointAndStandStill::ms_fTargetRadius ...
35EBE4:  VMOV            S2, R1
35EBE8:  VMOV            S0, R2
35EBEC:  ADD             R2, SP, #0x80+var_68; CVector *
35EBEE:  MOVS            R1, #6; int
35EBF0:  VLDR            S4, [R0]
35EBF4:  VCVT.F32.S32    S0, S0
35EBF8:  VCVT.F32.S32    S2, S2
35EBFC:  LDR.W           R0, =(_ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr - 0x35EC0C)
35EC00:  VMOV            R8, S4
35EC04:  STR.W           R9, [SP,#0x80+var_60]
35EC08:  ADD             R0, PC; _ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr
35EC0A:  LDR             R0, [R0]; CTaskComplexGoToPointAndStandStill::ms_fSlowDownDistance ...
35EC0C:  VMUL.F32        S0, S0, S16
35EC10:  VMUL.F32        S2, S2, S16
35EC14:  VLDR            S18, [R0]
35EC18:  MOV             R0, R10; this
35EC1A:  VSTR            S0, [SP,#0x80+var_64]
35EC1E:  VSTR            S2, [SP,#0x80+var_68]
35EC22:  STRD.W          R11, R11, [SP,#0x80+var_7C]; bool
35EC26:  VSTR            S18, [SP,#0x80+var_80]
35EC2A:  MOV             R3, R8; float
35EC2C:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
35EC30:  MOVS            R0, #dword_50; this
35EC32:  LDR.W           R9, [R5,#0x440]
35EC36:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35EC3A:  MOV             R6, R0
35EC3C:  LDR.W           R0, =(_ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr - 0x35EC48)
35EC40:  MOVS            R1, #4; int
35EC42:  MOVS            R2, #0; unsigned __int8
35EC44:  ADD             R0, PC; _ZN18CTaskComplexWander16ms_fTargetRadiusE_ptr
35EC46:  MOVS            R3, #1; bool
35EC48:  LDR             R0, [R0]; CTaskComplexWander::ms_fTargetRadius ...
35EC4A:  VLDR            S20, [R0]
35EC4E:  MOV             R0, R6; this
35EC50:  VSTR            S20, [SP,#0x80+var_80]
35EC54:  BLX             j__ZN18CTaskComplexWanderC2Eihbf; CTaskComplexWander::CTaskComplexWander(int,uchar,bool,float)
35EC58:  LDR.W           R0, =(_ZTV17CTaskComplexBeCop_ptr - 0x35EC6A)
35EC5C:  VMOV.I32        Q6, #0
35EC60:  ADD.W           R1, R6, #0x38 ; '8'
35EC64:  MOVS            R2, #3; int
35EC66:  ADD             R0, PC; _ZTV17CTaskComplexBeCop_ptr
35EC68:  MOVS            R3, #0; bool
35EC6A:  VST1.32         {D12-D13}, [R1]
35EC6E:  MOV             R1, R6; CTask *
35EC70:  LDR             R0, [R0]; `vtable for'CTaskComplexBeCop ...
35EC72:  STR.W           R11, [R6,#0x46]
35EC76:  ADDS            R0, #8
35EC78:  STRD.W          R11, R11, [R6,#0x2C]
35EC7C:  STRH.W          R11, [R6,#0x34]
35EC80:  STR.W           R11, [R6,#0x4A]
35EC84:  STR             R0, [R6]
35EC86:  ADD.W           R0, R9, #4; this
35EC8A:  STR.W           R10, [R6,#0x28]
35EC8E:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
35EC92:  LDRSH.W         R0, [R4,#0x10]
35EC96:  LDRSH.W         R1, [R4,#0x12]
35EC9A:  VMOV            S0, R0
35EC9E:  VMOV            S2, R1
35ECA2:  VCVT.F32.S32    S0, S0
35ECA6:  VCVT.F32.S32    S2, S2
35ECAA:  VMUL.F32        S0, S0, S16
35ECAE:  VMUL.F32        S2, S2, S16
35ECB2:  VMOV            R1, S0
35ECB6:  VMOV            R2, S2
35ECBA:  BLX             j__ZN9CSetPiece19TryToGenerateCopPedE9CVector2D; CSetPiece::TryToGenerateCopPed(CVector2D)
35ECBE:  MOV             R6, R0
35ECC0:  CMP             R6, #0
35ECC2:  BEQ.W           loc_35F2A8
35ECC6:  LDRSH.W         R0, [R4,#0x18]
35ECCA:  LDRSH.W         R1, [R4,#0x1A]
35ECCE:  VMOV            S0, R0
35ECD2:  VMOV            S2, R1
35ECD6:  VCVT.F32.S32    S0, S0
35ECDA:  VCVT.F32.S32    S2, S2
35ECDE:  VMUL.F32        S0, S0, S16
35ECE2:  VMUL.F32        S2, S2, S16
35ECE6:  VMOV            R0, S0; this
35ECEA:  VMOV            R1, S2; float
35ECEE:  BLX             j__ZN6CWorld19FindGroundZForCoordEff; CWorld::FindGroundZForCoord(float,float)
35ECF2:  MOV             R9, R0
35ECF4:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x35ED00)
35ECF8:  LDR.W           R1, [R6,#0x488]
35ECFC:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
35ECFE:  LDR.W           R2, [R6,#0x48C]
35ED02:  LDR.W           R3, [R6,#0x490]
35ED06:  ORR.W           R1, R1, #0x40 ; '@'; unsigned int
35ED0A:  LDR.W           R10, [R0]; CTimer::m_snTimeInMilliseconds ...
35ED0E:  LDR.W           R0, [R6,#0x484]
35ED12:  LDR.W           R5, [R10]; CTimer::m_snTimeInMilliseconds
35ED16:  STR.W           R0, [R6,#0x484]
35ED1A:  MOVW            R0, #0x2710
35ED1E:  ADD             R0, R5
35ED20:  STR.W           R1, [R6,#0x488]
35ED24:  STR.W           R2, [R6,#0x48C]
35ED28:  STR.W           R3, [R6,#0x490]
35ED2C:  STR.W           R0, [R6,#0x550]
35ED30:  MOVS            R0, #word_28; this
35ED32:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35ED36:  MOV             R5, R0
35ED38:  LDRSH.W         R0, [R4,#0x14]
35ED3C:  LDRSH.W         R1, [R4,#0x16]
35ED40:  ADD             R2, SP, #0x80+var_68; CVector *
35ED42:  MOV             R3, R8; float
35ED44:  VMOV            S2, R0
35ED48:  MOV             R0, R5; this
35ED4A:  VMOV            S0, R1
35ED4E:  MOVS            R1, #6; int
35ED50:  VCVT.F32.S32    S0, S0
35ED54:  VCVT.F32.S32    S2, S2
35ED58:  STR.W           R9, [SP,#0x80+var_60]
35ED5C:  VMUL.F32        S0, S0, S16
35ED60:  VMUL.F32        S2, S2, S16
35ED64:  VSTR            S0, [SP,#0x80+var_64]
35ED68:  VSTR            S2, [SP,#0x80+var_68]
35ED6C:  STRD.W          R11, R11, [SP,#0x80+var_7C]; bool
35ED70:  VSTR            S18, [SP,#0x80+var_80]
35ED74:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
35ED78:  MOVS            R0, #dword_50; this
35ED7A:  LDR.W           R8, [R6,#0x440]
35ED7E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
35ED82:  MOVS            R1, #4; int
35ED84:  MOVS            R2, #0; unsigned __int8
35ED86:  MOVS            R3, #1; bool
35ED88:  MOV             R6, R0
35ED8A:  VSTR            S20, [SP,#0x80+var_80]
35ED8E:  BLX             j__ZN18CTaskComplexWanderC2Eihbf; CTaskComplexWander::CTaskComplexWander(int,uchar,bool,float)
35ED92:  LDR.W           R0, =(_ZTV17CTaskComplexBeCop_ptr - 0x35EDA2)
35ED96:  ADD.W           R1, R6, #0x38 ; '8'
35ED9A:  MOVS            R2, #3; int
35ED9C:  MOVS            R3, #0; bool
35ED9E:  ADD             R0, PC; _ZTV17CTaskComplexBeCop_ptr
35EDA0:  VST1.32         {D12-D13}, [R1]
35EDA4:  MOV             R1, R6; CTask *
35EDA6:  LDR             R0, [R0]; `vtable for'CTaskComplexBeCop ...
35EDA8:  STR.W           R11, [R6,#0x46]
35EDAC:  ADDS            R0, #8
35EDAE:  STRD.W          R11, R11, [R6,#0x2C]
35EDB2:  STRH.W          R11, [R6,#0x34]
35EDB6:  STR.W           R11, [R6,#0x4A]
35EDBA:  STR             R0, [R6]
35EDBC:  ADD.W           R0, R8, #4; this
35EDC0:  STR             R5, [R6,#0x28]
35EDC2:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
35EDC6:  LDR.W           R0, [R10]; CTimer::m_snTimeInMilliseconds
35EDCA:  B               loc_35F2A2
35EDCC:  MOV.W           R0, #0xFFFFFFFF; jumptable 0035E596 case 6
35EDD0:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
35EDD4:  LDR.W           R0, [R0,#0x444]
35EDD8:  LDR             R0, [R0]
35EDDA:  LDR             R0, [R0,#0x2C]
35EDDC:  CMP             R0, #2
35EDDE:  BLT.W           def_35E596; jumptable 0035E596 default case
35EDE2:  MOV.W           R0, #0xFFFFFFFF; int
35EDE6:  MOVS            R1, #0; bool
35EDE8:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
35EDEC:  CMP             R0, #0
35EDEE:  BEQ.W           def_35E596; jumptable 0035E596 default case
35EDF2:  ADD             R0, SP, #0x80+var_68; int
35EDF4:  MOV.W           R1, #0xFFFFFFFF
35EDF8:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
35EDFC:  MOV.W           R0, #0xFFFFFFFF; int
35EE00:  LDRSH.W         R5, [R4,#0xC]
35EE04:  VLDR            S18, [SP,#0x80+var_68]
35EE08:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
35EE0C:  VLDR            S20, [R0]
35EE10:  ADD             R0, SP, #0x80+var_74; int
35EE12:  MOV.W           R1, #0xFFFFFFFF
35EE16:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
35EE1A:  VMOV            S0, R5
35EE1E:  VCVT.F32.S32    S0, S0
35EE22:  LDRSH.W         R0, [R4,#0xE]
35EE26:  VMOV            S2, R0
35EE2A:  MOV.W           R0, #0xFFFFFFFF; int
35EE2E:  VCVT.F32.S32    S2, S2
35EE32:  VLDR            S4, [SP,#0x80+var_70]
35EE36:  VMUL.F32        S0, S0, S16
35EE3A:  VMUL.F32        S2, S2, S16
35EE3E:  VSUB.F32        S18, S18, S0
35EE42:  VSUB.F32        S22, S4, S2
35EE46:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
35EE4A:  VLDR            S0, [R0,#4]
35EE4E:  VMUL.F32        S2, S20, S18
35EE52:  VMUL.F32        S0, S0, S22
35EE56:  VADD.F32        S0, S2, S0
35EE5A:  VCMPE.F32       S0, #0.0
35EE5E:  VMRS            APSR_nzcv, FPSCR
35EE62:  BGE             loc_35EF2A
35EE64:  LDRSH.W         R0, [R4,#0xC]
35EE68:  LDRSH.W         R1, [R4,#0xE]
35EE6C:  LDRSH.W         R2, [R4,#0x14]
35EE70:  VMOV            S0, R0
35EE74:  LDRSH.W         R6, [R4,#0x16]
35EE78:  VMOV            S2, R1
35EE7C:  VMOV            S4, R2
35EE80:  VCVT.F32.S32    S0, S0
35EE84:  VCVT.F32.S32    S2, S2
35EE88:  VCVT.F32.S32    S4, S4
35EE8C:  VMUL.F32        S0, S0, S16
35EE90:  VMUL.F32        S2, S2, S16
35EE94:  VMUL.F32        S4, S4, S16
35EE98:  VMOV            R1, S0
35EE9C:  VMOV            R2, S2
35EEA0:  VMOV            R3, S4
35EEA4:  VMOV            S0, R6
35EEA8:  VCVT.F32.S32    S0, S0
35EEAC:  VMUL.F32        S0, S0, S16
35EEB0:  VSTR            S0, [SP,#0x80+var_80]
35EEB4:  BLX             j__ZN9CSetPiece19TryToGenerateCopCarE9CVector2DS0_; CSetPiece::TryToGenerateCopCar(CVector2D,CVector2D)
35EEB8:  CBZ             R0, loc_35EF2A
35EEBA:  LDR.W           R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x35EECC)
35EEBE:  MOVS            R2, #0x10
35EEC0:  STRB.W          R2, [R0,#0x3D4]
35EEC4:  MOVW            R2, #0x1A03
35EEC8:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
35EECA:  STRH.W          R2, [R0,#0x3BD]
35EECE:  LDRB.W          R2, [R0,#0x3A]
35EED2:  MOVS            R3, #9
35EED4:  LDR             R5, [R1]; CTimer::m_snTimeInMilliseconds ...
35EED6:  MOVS            R1, #3
35EED8:  STRB.W          R3, [R0,#0x3BF]
35EEDC:  BFI.W           R2, R1, #3, #0x1D
35EEE0:  STRB.W          R2, [R0,#0x3A]
35EEE4:  MOVW            R2, #0x2710
35EEE8:  LDR             R1, [R5]; CTimer::m_snTimeInMilliseconds
35EEEA:  LDR             R3, [R0,#0x14]
35EEEC:  ADD             R2, R1; bool
35EEEE:  STR.W           R2, [R0,#0x4E0]
35EEF2:  ADDS            R1, #0x64 ; 'd'
35EEF4:  STR.W           R1, [R0,#0x3C0]
35EEF8:  VLDR            S0, =0.66667
35EEFC:  MOVS            R1, #0; CVehicle *
35EEFE:  VLDR            S2, [R3,#0x10]
35EF02:  VLDR            S6, [R3,#0x18]
35EF06:  VLDR            S4, [R3,#0x14]
35EF0A:  VMUL.F32        S2, S2, S0
35EF0E:  VMUL.F32        S6, S6, S0
35EF12:  VMUL.F32        S0, S4, S0
35EF16:  VSTR            S2, [R0,#0x48]
35EF1A:  VSTR            S0, [R0,#0x4C]
35EF1E:  VSTR            S6, [R0,#0x50]
35EF22:  BLX             j__ZN6CCarAI21AddPoliceCarOccupantsEP8CVehicleb; CCarAI::AddPoliceCarOccupants(CVehicle *,bool)
35EF26:  LDR             R0, [R5]; CTimer::m_snTimeInMilliseconds
35EF28:  STR             R0, [R4]
35EF2A:  ADD             R0, SP, #0x80+var_68; int
35EF2C:  MOV.W           R1, #0xFFFFFFFF
35EF30:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
35EF34:  MOV.W           R0, #0xFFFFFFFF; int
35EF38:  LDRSH.W         R5, [R4,#0x10]
35EF3C:  VLDR            S18, [SP,#0x80+var_68]
35EF40:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
35EF44:  VLDR            S20, [R0]
35EF48:  ADD             R0, SP, #0x80+var_74; int
35EF4A:  MOV.W           R1, #0xFFFFFFFF
35EF4E:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
35EF52:  VMOV            S0, R5
35EF56:  VCVT.F32.S32    S0, S0
35EF5A:  LDRSH.W         R0, [R4,#0x12]
35EF5E:  VMOV            S2, R0
35EF62:  MOV.W           R0, #0xFFFFFFFF; int
35EF66:  VCVT.F32.S32    S2, S2
35EF6A:  VLDR            S4, [SP,#0x80+var_70]
35EF6E:  VMUL.F32        S0, S0, S16
35EF72:  VMUL.F32        S2, S2, S16
35EF76:  VSUB.F32        S18, S18, S0
35EF7A:  VSUB.F32        S22, S4, S2
35EF7E:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
35EF82:  VLDR            S0, [R0,#4]
35EF86:  VMUL.F32        S2, S20, S18
35EF8A:  VMUL.F32        S0, S0, S22
35EF8E:  VADD.F32        S0, S2, S0
35EF92:  VCMPE.F32       S0, #0.0
35EF96:  VMRS            APSR_nzcv, FPSCR
35EF9A:  BGE.W           def_35E596; jumptable 0035E596 default case
35EF9E:  LDRSH.W         R0, [R4,#0x10]
35EFA2:  LDRSH.W         R1, [R4,#0x12]
35EFA6:  LDRSH.W         R2, [R4,#0x18]
35EFAA:  VMOV            S0, R0
35EFAE:  LDRSH.W         R6, [R4,#0x1A]
35EFB2:  VMOV            S2, R1
35EFB6:  VMOV            S4, R2
35EFBA:  VCVT.F32.S32    S0, S0
35EFBE:  VCVT.F32.S32    S2, S2
35EFC2:  VCVT.F32.S32    S4, S4
35EFC6:  VMUL.F32        S0, S0, S16
35EFCA:  VMUL.F32        S2, S2, S16
35EFCE:  VMUL.F32        S4, S4, S16
35EFD2:  VMOV            R1, S0
35EFD6:  VMOV            R2, S2
35EFDA:  VMOV            R3, S4
35EFDE:  VMOV            S0, R6
35EFE2:  VCVT.F32.S32    S0, S0
35EFE6:  VMUL.F32        S0, S0, S16
35EFEA:  VSTR            S0, [SP,#0x80+var_80]
35EFEE:  BLX             j__ZN9CSetPiece19TryToGenerateCopCarE9CVector2DS0_; CSetPiece::TryToGenerateCopCar(CVector2D,CVector2D)
35EFF2:  CMP             R0, #0
35EFF4:  BEQ.W           def_35E596; jumptable 0035E596 default case
35EFF8:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x35EFFE)
35EFFA:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
35EFFC:  MOVS            R2, #0x10
35EFFE:  VLDR            S0, =0.66667
35F002:  STRB.W          R2, [R0,#0x3D4]
35F006:  MOVW            R2, #0x1A03
35F00A:  B               loc_35F248
35F00C:  MOV.W           R0, #0xFFFFFFFF; jumptable 0035E596 case 7
35F010:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
35F014:  LDR.W           R0, [R0,#0x444]
35F018:  LDR             R0, [R0]
35F01A:  LDR             R0, [R0,#0x2C]
35F01C:  CMP             R0, #2
35F01E:  BLT.W           def_35E596; jumptable 0035E596 default case
35F022:  MOV.W           R0, #0xFFFFFFFF; int
35F026:  MOVS            R1, #0; bool
35F028:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
35F02C:  CMP             R0, #0
35F02E:  BEQ.W           def_35E596; jumptable 0035E596 default case
35F032:  ADD             R0, SP, #0x80+var_68; int
35F034:  MOV.W           R1, #0xFFFFFFFF
35F038:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
35F03C:  MOV.W           R0, #0xFFFFFFFF; int
35F040:  LDRSH.W         R5, [R4,#0xC]
35F044:  VLDR            S18, [SP,#0x80+var_68]
35F048:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
35F04C:  VLDR            S20, [R0]
35F050:  ADD             R0, SP, #0x80+var_74; int
35F052:  MOV.W           R1, #0xFFFFFFFF
35F056:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
35F05A:  VMOV            S0, R5
35F05E:  VCVT.F32.S32    S0, S0
35F062:  LDRSH.W         R0, [R4,#0xE]
35F066:  VMOV            S2, R0
35F06A:  MOV.W           R0, #0xFFFFFFFF; int
35F06E:  VCVT.F32.S32    S2, S2
35F072:  VLDR            S4, [SP,#0x80+var_70]
35F076:  VMUL.F32        S0, S0, S16
35F07A:  VMUL.F32        S2, S2, S16
35F07E:  VSUB.F32        S18, S18, S0
35F082:  VSUB.F32        S22, S4, S2
35F086:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
35F08A:  VLDR            S0, [R0,#4]
35F08E:  VMUL.F32        S2, S20, S18
35F092:  VMUL.F32        S0, S0, S22
35F096:  VADD.F32        S0, S2, S0
35F09A:  VCMPE.F32       S0, #0.0
35F09E:  VMRS            APSR_nzcv, FPSCR
35F0A2:  BGE             loc_35F168
35F0A4:  LDRSH.W         R0, [R4,#0xC]
35F0A8:  LDRSH.W         R1, [R4,#0xE]
35F0AC:  LDRSH.W         R2, [R4,#0x14]
35F0B0:  VMOV            S0, R0
35F0B4:  LDRSH.W         R6, [R4,#0x16]
35F0B8:  VMOV            S2, R1
35F0BC:  VMOV            S4, R2
35F0C0:  VCVT.F32.S32    S0, S0
35F0C4:  VCVT.F32.S32    S2, S2
35F0C8:  VCVT.F32.S32    S4, S4
35F0CC:  VMUL.F32        S0, S0, S16
35F0D0:  VMUL.F32        S2, S2, S16
35F0D4:  VMUL.F32        S4, S4, S16
35F0D8:  VMOV            R1, S0
35F0DC:  VMOV            R2, S2
35F0E0:  VMOV            R3, S4
35F0E4:  VMOV            S0, R6
35F0E8:  VCVT.F32.S32    S0, S0
35F0EC:  VMUL.F32        S0, S0, S16
35F0F0:  VSTR            S0, [SP,#0x80+var_80]
35F0F4:  BLX             j__ZN9CSetPiece19TryToGenerateCopCarE9CVector2DS0_; CSetPiece::TryToGenerateCopCar(CVector2D,CVector2D)
35F0F8:  CBZ             R0, loc_35F168
35F0FA:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x35F10A)
35F0FC:  MOVS            R2, #0x10
35F0FE:  STRB.W          R2, [R0,#0x3D4]
35F102:  MOVW            R2, #0x302
35F106:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
35F108:  STRH.W          R2, [R0,#0x3BD]
35F10C:  LDRB.W          R2, [R0,#0x3A]
35F110:  MOVS            R3, #9
35F112:  LDR             R5, [R1]; CTimer::m_snTimeInMilliseconds ...
35F114:  MOVS            R1, #3
35F116:  STRB.W          R3, [R0,#0x3BF]
35F11A:  BFI.W           R2, R1, #3, #0x1D
35F11E:  STRB.W          R2, [R0,#0x3A]
35F122:  MOVW            R2, #0x2710
35F126:  LDR             R1, [R5]; CTimer::m_snTimeInMilliseconds
35F128:  LDR             R3, [R0,#0x14]
35F12A:  ADD             R2, R1; bool
35F12C:  STR.W           R2, [R0,#0x4E0]
35F130:  ADDS            R1, #0x64 ; 'd'
35F132:  STR.W           R1, [R0,#0x3C0]
35F136:  VLDR            S0, =0.66667
35F13A:  MOVS            R1, #0; CVehicle *
35F13C:  VLDR            S2, [R3,#0x10]
35F140:  VLDR            S6, [R3,#0x18]
35F144:  VLDR            S4, [R3,#0x14]
35F148:  VMUL.F32        S2, S2, S0
35F14C:  VMUL.F32        S6, S6, S0
35F150:  VMUL.F32        S0, S4, S0
35F154:  VSTR            S2, [R0,#0x48]
35F158:  VSTR            S0, [R0,#0x4C]
35F15C:  VSTR            S6, [R0,#0x50]
35F160:  BLX             j__ZN6CCarAI21AddPoliceCarOccupantsEP8CVehicleb; CCarAI::AddPoliceCarOccupants(CVehicle *,bool)
35F164:  LDR             R0, [R5]; CTimer::m_snTimeInMilliseconds
35F166:  STR             R0, [R4]
35F168:  ADD             R0, SP, #0x80+var_68; int
35F16A:  MOV.W           R1, #0xFFFFFFFF
35F16E:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
35F172:  MOV.W           R0, #0xFFFFFFFF; int
35F176:  LDRSH.W         R5, [R4,#0x10]
35F17A:  VLDR            S18, [SP,#0x80+var_68]
35F17E:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
35F182:  VLDR            S20, [R0]
35F186:  ADD             R0, SP, #0x80+var_74; int
35F188:  MOV.W           R1, #0xFFFFFFFF
35F18C:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
35F190:  VMOV            S0, R5
35F194:  VCVT.F32.S32    S0, S0
35F198:  LDRSH.W         R0, [R4,#0x12]
35F19C:  VMOV            S2, R0
35F1A0:  MOV.W           R0, #0xFFFFFFFF; int
35F1A4:  VCVT.F32.S32    S2, S2
35F1A8:  VLDR            S4, [SP,#0x80+var_70]
35F1AC:  VMUL.F32        S0, S0, S16
35F1B0:  VMUL.F32        S2, S2, S16
35F1B4:  VSUB.F32        S18, S18, S0
35F1B8:  VSUB.F32        S22, S4, S2
35F1BC:  BLX             j__Z15FindPlayerSpeedi; FindPlayerSpeed(int)
35F1C0:  VLDR            S0, [R0,#4]
35F1C4:  VMUL.F32        S2, S20, S18
35F1C8:  VMUL.F32        S0, S0, S22
35F1CC:  VADD.F32        S0, S2, S0
35F1D0:  VCMPE.F32       S0, #0.0
35F1D4:  VMRS            APSR_nzcv, FPSCR
35F1D8:  BGE.W           def_35E596; jumptable 0035E596 default case
35F1DC:  LDRSH.W         R0, [R4,#0x10]
35F1E0:  LDRSH.W         R1, [R4,#0x12]
35F1E4:  LDRSH.W         R2, [R4,#0x18]
35F1E8:  VMOV            S0, R0
35F1EC:  LDRSH.W         R6, [R4,#0x1A]
35F1F0:  VMOV            S2, R1
35F1F4:  VMOV            S4, R2
35F1F8:  VCVT.F32.S32    S0, S0
35F1FC:  VCVT.F32.S32    S2, S2
35F200:  VCVT.F32.S32    S4, S4
35F204:  VMUL.F32        S0, S0, S16
35F208:  VMUL.F32        S2, S2, S16
35F20C:  VMUL.F32        S4, S4, S16
35F210:  VMOV            R1, S0
35F214:  VMOV            R2, S2
35F218:  VMOV            R3, S4
35F21C:  VMOV            S0, R6
35F220:  VCVT.F32.S32    S0, S0
35F224:  VMUL.F32        S0, S0, S16
35F228:  VSTR            S0, [SP,#0x80+var_80]
35F22C:  BLX             j__ZN9CSetPiece19TryToGenerateCopCarE9CVector2DS0_; CSetPiece::TryToGenerateCopCar(CVector2D,CVector2D)
35F230:  CMP             R0, #0
35F232:  BEQ.W           def_35E596; jumptable 0035E596 default case
35F236:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x35F23C)
35F238:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
35F23A:  MOVS            R2, #0x10
35F23C:  VLDR            S0, =0.66667
35F240:  STRB.W          R2, [R0,#0x3D4]
35F244:  MOVW            R2, #0x302
35F248:  STRH.W          R2, [R0,#0x3BD]
35F24C:  MOVS            R3, #9
35F24E:  LDRB.W          R2, [R0,#0x3A]
35F252:  LDR             R5, [R1]; CTimer::m_snTimeInMilliseconds ...
35F254:  MOVS            R1, #3
35F256:  STRB.W          R3, [R0,#0x3BF]
35F25A:  BFI.W           R2, R1, #3, #0x1D
35F25E:  STRB.W          R2, [R0,#0x3A]
35F262:  MOVW            R2, #0x2710
35F266:  LDR             R1, [R5]; CTimer::m_snTimeInMilliseconds
35F268:  LDR             R3, [R0,#0x14]
35F26A:  ADD             R2, R1; bool
35F26C:  STR.W           R2, [R0,#0x4E0]
35F270:  ADDS            R1, #0x64 ; 'd'
35F272:  STR.W           R1, [R0,#0x3C0]
35F276:  VLDR            S2, [R3,#0x10]
35F27A:  MOVS            R1, #0; CVehicle *
35F27C:  VLDR            S6, [R3,#0x18]
35F280:  VLDR            S4, [R3,#0x14]
35F284:  VMUL.F32        S2, S2, S0
35F288:  VMUL.F32        S6, S6, S0
35F28C:  VMUL.F32        S0, S4, S0
35F290:  VSTR            S2, [R0,#0x48]
35F294:  VSTR            S0, [R0,#0x4C]
35F298:  VSTR            S6, [R0,#0x50]
35F29C:  BLX             j__ZN6CCarAI21AddPoliceCarOccupantsEP8CVehicleb; CCarAI::AddPoliceCarOccupants(CVehicle *,bool)
35F2A0:  LDR             R0, [R5]; CTimer::m_snTimeInMilliseconds
35F2A2:  STR             R0, [R4]
35F2A4:  B.W             def_35E596; jumptable 0035E596 default case
35F2A8:  MOV             R0, R5; this
35F2AA:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
35F2AE:  LDR             R0, [R5]
35F2B0:  LDR             R1, [R0,#4]
35F2B2:  MOV             R0, R5
35F2B4:  BLX             R1
35F2B6:  B.W             def_35E596; jumptable 0035E596 default case
