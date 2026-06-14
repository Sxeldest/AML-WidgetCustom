; =========================================================
; Game Engine Function: _ZN8CCarCtrl15ReconsiderRouteEP8CVehicle
; Address            : 0x2FB780 - 0x2FBAB4
; =========================================================

2FB780:  PUSH            {R4-R7,LR}
2FB782:  ADD             R7, SP, #0xC
2FB784:  PUSH.W          {R8-R11}
2FB788:  SUB             SP, SP, #0x64
2FB78A:  MOV             R4, R0
2FB78C:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2FB79C)
2FB790:  LDR.W           R1, =(_ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr - 0x2FB7A0)
2FB794:  MOVW            R3, #0x4DD3
2FB798:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2FB79A:  LDRH            R2, [R4,#0x24]
2FB79C:  ADD             R1, PC; _ZN6CTimer30m_snPreviousTimeInMillisecondsE_ptr
2FB79E:  MOVT            R3, #0x1062
2FB7A2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2FB7A4:  LDR             R1, [R1]; CTimer::m_snPreviousTimeInMilliseconds ...
2FB7A6:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2FB7A8:  LDR             R1, [R1]; CTimer::m_snPreviousTimeInMilliseconds
2FB7AA:  ADD             R0, R2
2FB7AC:  UMULL.W         R0, R6, R0, R3
2FB7B0:  ADDS            R0, R1, R2
2FB7B2:  UMULL.W         R0, R1, R0, R3
2FB7B6:  LSRS            R0, R6, #7
2FB7B8:  CMP.W           R0, R1,LSR#7
2FB7BC:  BEQ.W           loc_2FB8EC
2FB7C0:  LDRSB.W         R0, [R4,#0x3BE]
2FB7C4:  SUBS            R0, #2; switch 60 cases
2FB7C6:  CMP             R0, #0x3B ; ';'
2FB7C8:  BHI.W           def_2FB7CC; jumptable 002FB7CC default case, cases 3,5-7,9-14,16,18-42,44-51,53,55-60
2FB7CC:  TBB.W           [PC,R0]; switch jump
2FB7D0:  DCB 0x1E; jump table for switch statement
2FB7D1:  DCB 0x8B
2FB7D2:  DCB 0x1E
2FB7D3:  DCB 0x8B
2FB7D4:  DCB 0x8B
2FB7D5:  DCB 0x8B
2FB7D6:  DCB 0x1E
2FB7D7:  DCB 0x8B
2FB7D8:  DCB 0x8B
2FB7D9:  DCB 0x8B
2FB7DA:  DCB 0x8B
2FB7DB:  DCB 0x8B
2FB7DC:  DCB 0x8B
2FB7DD:  DCB 0x1E
2FB7DE:  DCB 0x8B
2FB7DF:  DCB 0x1E
2FB7E0:  DCB 0x8B
2FB7E1:  DCB 0x8B
2FB7E2:  DCB 0x8B
2FB7E3:  DCB 0x8B
2FB7E4:  DCB 0x8B
2FB7E5:  DCB 0x8B
2FB7E6:  DCB 0x8B
2FB7E7:  DCB 0x8B
2FB7E8:  DCB 0x8B
2FB7E9:  DCB 0x8B
2FB7EA:  DCB 0x8B
2FB7EB:  DCB 0x8B
2FB7EC:  DCB 0x8B
2FB7ED:  DCB 0x8B
2FB7EE:  DCB 0x8B
2FB7EF:  DCB 0x8B
2FB7F0:  DCB 0x8B
2FB7F1:  DCB 0x8B
2FB7F2:  DCB 0x8B
2FB7F3:  DCB 0x8B
2FB7F4:  DCB 0x8B
2FB7F5:  DCB 0x8B
2FB7F6:  DCB 0x8B
2FB7F7:  DCB 0x8B
2FB7F8:  DCB 0x8B
2FB7F9:  DCB 0x1E
2FB7FA:  DCB 0x8B
2FB7FB:  DCB 0x8B
2FB7FC:  DCB 0x8B
2FB7FD:  DCB 0x8B
2FB7FE:  DCB 0x8B
2FB7FF:  DCB 0x8B
2FB800:  DCB 0x8B
2FB801:  DCB 0x8B
2FB802:  DCB 0x1E
2FB803:  DCB 0x8B
2FB804:  DCB 0x1E
2FB805:  DCB 0x8B
2FB806:  DCB 0x8B
2FB807:  DCB 0x8B
2FB808:  DCB 0x8B
2FB809:  DCB 0x8B
2FB80A:  DCB 0x8B
2FB80B:  DCB 0x1E
2FB80C:  ADD             R1, SP, #0x80+var_20; jumptable 002FB7CC cases 2,4,8,15,17,43,52,54,61
2FB80E:  ADD             R2, SP, #0x80+var_24
2FB810:  MOVW            R5, #0xFFFF
2FB814:  MOV             R0, R4
2FB816:  STRH.W          R5, [SP,#0x80+var_20]
2FB81A:  STRH.W          R5, [SP,#0x80+var_24]
2FB81E:  BLX             j__ZN8CCarCtrl27FindNodesThisCarIsNearestToEP8CVehicleR12CNodeAddressS3_; CCarCtrl::FindNodesThisCarIsNearestTo(CVehicle *,CNodeAddress &,CNodeAddress &)
2FB822:  LDRH.W          R1, [SP,#0x80+var_20]
2FB826:  CMP             R1, R5
2FB828:  BEQ             loc_2FB8EC
2FB82A:  ADD.W           R12, R4, #0x394
2FB82E:  LDRH.W          R0, [R12]
2FB832:  CMP             R0, R1
2FB834:  BNE             loc_2FB85A
2FB836:  LDRH.W          R2, [SP,#0x80+var_20+2]
2FB83A:  LDRH.W          R3, [R4,#0x396]
2FB83E:  CMP             R3, R2
2FB840:  BNE             loc_2FB85A
2FB842:  LDRH.W          R2, [SP,#0x80+var_24]
2FB846:  LDRH.W          R3, [R4,#0x398]
2FB84A:  CMP             R3, R2
2FB84C:  BNE             loc_2FB85A
2FB84E:  LDRH.W          R2, [SP,#0x80+var_24+2]
2FB852:  LDRH.W          R3, [R4,#0x39A]
2FB856:  CMP             R3, R2
2FB858:  BEQ             def_2FB7CC; jumptable 002FB7CC default case, cases 3,5-7,9-14,16,18-42,44-51,53,55-60
2FB85A:  LDRH.W          R2, [SP,#0x80+var_24]
2FB85E:  CMP             R0, R2
2FB860:  BNE             loc_2FB882
2FB862:  LDRH.W          R3, [SP,#0x80+var_24+2]
2FB866:  LDRH.W          R6, [R4,#0x396]
2FB86A:  CMP             R6, R3
2FB86C:  ITT EQ
2FB86E:  LDRHEQ.W        R3, [R4,#0x398]
2FB872:  CMPEQ           R3, R1
2FB874:  BNE             loc_2FB882
2FB876:  LDRH.W          R3, [SP,#0x80+var_20+2]
2FB87A:  LDRH.W          R6, [R4,#0x39A]
2FB87E:  CMP             R6, R3
2FB880:  BEQ             def_2FB7CC; jumptable 002FB7CC default case, cases 3,5-7,9-14,16,18-42,44-51,53,55-60
2FB882:  LDRH.W          R3, [R4,#0x39C]
2FB886:  CMP             R3, R1
2FB888:  BNE             loc_2FB8A6
2FB88A:  LDRH.W          R6, [SP,#0x80+var_20+2]
2FB88E:  LDRH.W          R5, [R4,#0x39E]
2FB892:  CMP             R5, R6
2FB894:  IT EQ
2FB896:  CMPEQ           R0, R2
2FB898:  BNE             loc_2FB8A6
2FB89A:  LDRH.W          R6, [SP,#0x80+var_24+2]
2FB89E:  LDRH.W          R5, [R4,#0x396]
2FB8A2:  CMP             R5, R6
2FB8A4:  BEQ             def_2FB7CC; jumptable 002FB7CC default case, cases 3,5-7,9-14,16,18-42,44-51,53,55-60
2FB8A6:  CMP             R3, R2
2FB8A8:  BNE             loc_2FB8C6
2FB8AA:  LDRH.W          R6, [SP,#0x80+var_24+2]
2FB8AE:  LDRH.W          R5, [R4,#0x39E]
2FB8B2:  CMP             R5, R6
2FB8B4:  IT EQ
2FB8B6:  CMPEQ           R0, R1
2FB8B8:  BNE             loc_2FB8C6
2FB8BA:  LDRH.W          R1, [SP,#0x80+var_20+2]
2FB8BE:  LDRH.W          R6, [R4,#0x396]
2FB8C2:  CMP             R6, R1
2FB8C4:  BEQ             def_2FB7CC; jumptable 002FB7CC default case, cases 3,5-7,9-14,16,18-42,44-51,53,55-60
2FB8C6:  CMP             R0, R2
2FB8C8:  BNE             loc_2FB8D6
2FB8CA:  LDRH.W          R0, [SP,#0x80+var_24+2]
2FB8CE:  LDRH.W          R1, [R4,#0x396]
2FB8D2:  CMP             R1, R0
2FB8D4:  BEQ             def_2FB7CC; jumptable 002FB7CC default case, cases 3,5-7,9-14,16,18-42,44-51,53,55-60
2FB8D6:  CMP             R3, R2
2FB8D8:  BNE             loc_2FB8F4
2FB8DA:  LDRH.W          R0, [SP,#0x80+var_24+2]
2FB8DE:  LDRH.W          R1, [R4,#0x39E]
2FB8E2:  CMP             R1, R0
2FB8E4:  BNE             loc_2FB8F4
2FB8E6:  MOVS            R0, #0; jumptable 002FB7CC default case, cases 3,5-7,9-14,16,18-42,44-51,53,55-60
2FB8E8:  STRB.W          R0, [R4,#0x3C9]
2FB8EC:  ADD             SP, SP, #0x64 ; 'd'
2FB8EE:  POP.W           {R8-R11}
2FB8F2:  POP             {R4-R7,PC}; int
2FB8F4:  LDRB.W          R0, [R4,#0x3C9]
2FB8F8:  ADDS            R0, #1
2FB8FA:  STRB.W          R0, [R4,#0x3C9]
2FB8FE:  UXTB            R0, R0
2FB900:  CMP             R0, #5
2FB902:  BCC             loc_2FB8EC
2FB904:  STR.W           R12, [SP,#0x80+var_40]
2FB908:  LDRSB.W         R0, [R4,#0x3BE]
2FB90C:  SUBS            R0, #2; switch 60 cases
2FB90E:  CMP             R0, #0x3B ; ';'
2FB910:  BHI.W           def_2FB914; jumptable 002FB914 default case, cases 3,5-7,9-14,16,18-42,44-51,53,55-60
2FB914:  TBB.W           [PC,R0]; switch jump
2FB918:  DCB 0x2A; jump table for switch statement
2FB919:  DCB 0x37
2FB91A:  DCB 0x2A
2FB91B:  DCB 0x37
2FB91C:  DCB 0x37
2FB91D:  DCB 0x37
2FB91E:  DCB 0x33
2FB91F:  DCB 0x37
2FB920:  DCB 0x37
2FB921:  DCB 0x37
2FB922:  DCB 0x37
2FB923:  DCB 0x37
2FB924:  DCB 0x37
2FB925:  DCB 0x1E
2FB926:  DCB 0x37
2FB927:  DCB 0x1E
2FB928:  DCB 0x37
2FB929:  DCB 0x37
2FB92A:  DCB 0x37
2FB92B:  DCB 0x37
2FB92C:  DCB 0x37
2FB92D:  DCB 0x37
2FB92E:  DCB 0x37
2FB92F:  DCB 0x37
2FB930:  DCB 0x37
2FB931:  DCB 0x37
2FB932:  DCB 0x37
2FB933:  DCB 0x37
2FB934:  DCB 0x37
2FB935:  DCB 0x37
2FB936:  DCB 0x37
2FB937:  DCB 0x37
2FB938:  DCB 0x37
2FB939:  DCB 0x37
2FB93A:  DCB 0x37
2FB93B:  DCB 0x37
2FB93C:  DCB 0x37
2FB93D:  DCB 0x37
2FB93E:  DCB 0x37
2FB93F:  DCB 0x37
2FB940:  DCB 0x37
2FB941:  DCB 0x2A
2FB942:  DCB 0x37
2FB943:  DCB 0x37
2FB944:  DCB 0x37
2FB945:  DCB 0x37
2FB946:  DCB 0x37
2FB947:  DCB 0x37
2FB948:  DCB 0x37
2FB949:  DCB 0x37
2FB94A:  DCB 0x1E
2FB94B:  DCB 0x37
2FB94C:  DCB 0x1E
2FB94D:  DCB 0x37
2FB94E:  DCB 0x37
2FB94F:  DCB 0x37
2FB950:  DCB 0x37
2FB951:  DCB 0x37
2FB952:  DCB 0x37
2FB953:  DCB 0x1E
2FB954:  LDR.W           R0, [R4,#0x420]; jumptable 002FB914 cases 15,17,52,54,61
2FB958:  LDR             R1, [R0,#0x14]
2FB95A:  ADD.W           R2, R1, #0x30 ; '0'
2FB95E:  CMP             R1, #0
2FB960:  IT EQ
2FB962:  ADDEQ           R2, R0, #4
2FB964:  LDRD.W          R10, R3, [R2]
2FB968:  LDR             R2, [R2,#8]
2FB96A:  B               def_2FB914; jumptable 002FB914 default case, cases 3,5-7,9-14,16,18-42,44-51,53,55-60
2FB96C:  ADD             R0, SP, #0x80+var_30; jumptable 002FB914 cases 2,4,43
2FB96E:  MOV.W           R1, #0xFFFFFFFF
2FB972:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
2FB976:  LDRD.W          R10, R3, [SP,#0x80+var_30]
2FB97A:  LDR             R2, [SP,#0x80+var_28]
2FB97C:  B               def_2FB914; jumptable 002FB914 default case, cases 3,5-7,9-14,16,18-42,44-51,53,55-60
2FB97E:  LDRD.W          R10, R3, [R4,#0x3F0]; jumptable 002FB914 case 8
2FB982:  LDR.W           R2, [R4,#0x3F8]
2FB986:  LDR             R1, [R4,#0x14]; jumptable 002FB914 default case, cases 3,5-7,9-14,16,18-42,44-51,53,55-60
2FB988:  ADD.W           R8, R4, #4
2FB98C:  LDRH            R6, [R4,#0x26]
2FB98E:  MOV             R9, R2
2FB990:  CMP             R1, #0
2FB992:  MOV             R0, R8
2FB994:  LDRH.W          LR, [R4,#0x3DF]
2FB998:  MOV.W           R11, #0
2FB99C:  LDR.W           R5, [R4,#0x394]
2FB9A0:  IT NE
2FB9A2:  ADDNE.W         R0, R1, #0x30 ; '0'
2FB9A6:  MOVW            R1, #0x21B
2FB9AA:  CMP             R6, R1
2FB9AC:  MOV.W           R1, #0
2FB9B0:  LDRD.W          R2, R12, [R0]; int
2FB9B4:  LDR             R0, [R0,#8]
2FB9B6:  IT EQ
2FB9B8:  MOVEQ           R1, #1
2FB9BA:  LDR             R6, [SP,#0x80+var_24]
2FB9BC:  STR.W           R11, [SP,#0x80+var_44]; int
2FB9C0:  STRD.W          R5, R1, [SP,#0x80+var_4C]; int
2FB9C4:  MOV             R5, R9
2FB9C6:  MOVW            R9, #0x23FE
2FB9CA:  UBFX.W          R1, LR, #6, #1
2FB9CE:  MOVT            R9, #0x4974
2FB9D2:  STR             R1, [SP,#0x80+var_50]; int
2FB9D4:  STR.W           R9, [SP,#0x80+var_54]; float
2FB9D8:  ADD             R1, SP, #0x80+var_30
2FB9DA:  STRD.W          R9, R11, [SP,#0x80+var_5C]; float
2FB9DE:  STR             R1, [SP,#0x80+var_60]; int
2FB9E0:  SUB.W           R1, R7, #-var_32
2FB9E4:  STR.W           R10, [SP,#0x80+var_3C]
2FB9E8:  STMEA.W         SP, {R0,R6,R10}
2FB9EC:  MOV.W           R10, #0
2FB9F0:  ADD             R0, SP, #0x80+var_74
2FB9F2:  STR             R3, [SP,#0x80+var_38]
2FB9F4:  STM.W           R0, {R3,R5,R10}
2FB9F8:  MOV             R3, R12; int
2FB9FA:  LDR             R0, =(ThePaths_ptr - 0x2FBA06)
2FB9FC:  STRD.W          R1, R10, [SP,#0x80+var_68]; int
2FBA00:  MOVS            R1, #0; int
2FBA02:  ADD             R0, PC; ThePaths_ptr
2FBA04:  LDR             R0, [R0]; ThePaths ; int
2FBA06:  BLX             j__ZN9CPathFind12DoPathSearchEh7CVector12CNodeAddressS0_PS1_PsiPffS2_fbS1_bb; CPathFind::DoPathSearch(uchar,CVector,CNodeAddress,CVector,CNodeAddress*,short *,int,float *,float,CNodeAddress*,float,bool,CNodeAddress,bool,bool)
2FBA0A:  VLDR            S0, =90000.0
2FBA0E:  VLDR            S2, [SP,#0x80+var_30]
2FBA12:  VCMPE.F32       S2, S0
2FBA16:  VMRS            APSR_nzcv, FPSCR
2FBA1A:  BGE             loc_2FBAAE
2FBA1C:  LDRSH.W         R0, [R7,#var_32]
2FBA20:  CMP             R0, #2
2FBA22:  BLT             loc_2FBAAE
2FBA24:  LDR             R0, [SP,#0x80+var_20]
2FBA26:  STR.W           R6, [R4,#0x398]
2FBA2A:  STR.W           R0, [R4,#0x394]
2FBA2E:  MOV             R0, R4; this
2FBA30:  BLX             j__ZN8CCarCtrl27FindLinksToGoWithTheseNodesEP8CVehicle; CCarCtrl::FindLinksToGoWithTheseNodes(CVehicle *)
2FBA34:  LDR             R0, [R4,#0x14]
2FBA36:  MOV             R2, R5
2FBA38:  LDRH            R5, [R4,#0x26]
2FBA3A:  CMP             R0, #0
2FBA3C:  LDRH.W          LR, [R4,#0x3DF]
2FBA40:  IT NE
2FBA42:  ADDNE.W         R8, R0, #0x30 ; '0'
2FBA46:  MOVW            R0, #0x21B
2FBA4A:  CMP             R5, R0
2FBA4C:  MOV.W           R0, #0
2FBA50:  LDRD.W          R11, R3, [R8]; int
2FBA54:  ADDW            R5, R4, #0x41C
2FBA58:  LDR.W           R12, [R8,#8]
2FBA5C:  MOV.W           R8, #0
2FBA60:  LDR.W           R1, [R4,#0x394]
2FBA64:  IT EQ
2FBA66:  MOVEQ           R0, #1
2FBA68:  STR             R0, [SP,#0x80+var_48]; int
2FBA6A:  LDR             R0, =(ThePaths_ptr - 0x2FBA74)
2FBA6C:  STR.W           R8, [SP,#0x80+var_44]; int
2FBA70:  ADD             R0, PC; ThePaths_ptr
2FBA72:  STR             R1, [SP,#0x80+var_4C]; int
2FBA74:  UBFX.W          R1, LR, #6, #1
2FBA78:  STR             R1, [SP,#0x80+var_50]; int
2FBA7A:  STRD.W          R8, R9, [SP,#0x80+var_58]; int
2FBA7E:  MOV.W           LR, #8
2FBA82:  STRD.W          R8, R9, [SP,#0x80+var_60]; int
2FBA86:  ADD.W           R1, R4, #0x3FC
2FBA8A:  STRD.W          R12, R6, [SP,#0x80+var_80]; int
2FBA8E:  LDR             R6, [SP,#0x80+var_3C]
2FBA90:  STR             R6, [SP,#0x80+var_78]; int
2FBA92:  LDR             R6, [SP,#0x80+var_38]
2FBA94:  LDR             R0, [R0]; ThePaths ; int
2FBA96:  STRD.W          R6, R2, [SP,#0x80+var_74]; int
2FBA9A:  ADD             R2, SP, #0x80+var_6C
2FBA9C:  STM.W           R2, {R1,R5,LR}
2FBAA0:  MOVS            R1, #0; int
2FBAA2:  MOV             R2, R11; int
2FBAA4:  BLX             j__ZN9CPathFind12DoPathSearchEh7CVector12CNodeAddressS0_PS1_PsiPffS2_fbS1_bb; CPathFind::DoPathSearch(uchar,CVector,CNodeAddress,CVector,CNodeAddress*,short *,int,float *,float,CNodeAddress*,float,bool,CNodeAddress,bool,bool)
2FBAA8:  LDR             R0, [SP,#0x80+var_40]; this
2FBAAA:  BLX             j__ZN10CAutoPilot17RemoveOnePathNodeEv; CAutoPilot::RemoveOnePathNode(void)
2FBAAE:  STRB.W          R10, [R4,#0x3C9]
2FBAB2:  B               loc_2FB8EC
