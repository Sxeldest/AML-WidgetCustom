; =========================================================
; Game Engine Function: _ZN9CPopCycle10InitialiseEv
; Address            : 0x471770 - 0x471CAE
; =========================================================

471770:  PUSH            {R4-R7,LR}
471772:  ADD             R7, SP, #0xC
471774:  PUSH.W          {R8-R11}
471778:  SUB             SP, SP, #4
47177A:  VPUSH           {D8}
47177E:  SUB             SP, SP, #0x110
471780:  LDR.W           R0, =(aData_3 - 0x471788); "DATA"
471784:  ADD             R0, PC; "DATA"
471786:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
47178A:  ADR.W           R0, aPopcycleDat; "POPCYCLE.DAT"
47178E:  ADR.W           R1, aRb_24; "rb"
471792:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
471796:  MOV             R4, R0
471798:  LDR.W           R0, =(byte_61CD7E - 0x4717A0)
47179C:  ADD             R0, PC; byte_61CD7E ; this
47179E:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
4717A2:  MOVS            R0, #0
4717A4:  LDR.W           R1, =(_ZN9CPopCycle13m_nMaxNumPedsE_ptr - 0x4717B2)
4717A8:  STR             R0, [SP,#0x138+var_BC]
4717AA:  LDR.W           R0, =(_ZN9CPopCycle16m_nPercTypeGroupE_ptr - 0x4717B8)
4717AE:  ADD             R1, PC; _ZN9CPopCycle13m_nMaxNumPedsE_ptr ; unsigned int
4717B0:  LDR.W           R2, =(_ZN9CPopCycle12m_nPercOtherE_ptr - 0x4717BE)
4717B4:  ADD             R0, PC; _ZN9CPopCycle16m_nPercTypeGroupE_ptr
4717B6:  LDR.W           R3, =(_ZN9CPopCycle13m_nMaxNumCarsE_ptr - 0x4717C6)
4717BA:  ADD             R2, PC; _ZN9CPopCycle12m_nPercOtherE_ptr
4717BC:  VLDR            S16, =100.0
4717C0:  LDR             R0, [R0]; CPopCycle::m_nPercTypeGroup ...
4717C2:  ADD             R3, PC; _ZN9CPopCycle13m_nMaxNumCarsE_ptr
4717C4:  STR             R0, [SP,#0x138+var_C4]
4717C6:  LDR             R0, [R1]; CPopCycle::m_nMaxNumPeds ...
4717C8:  STR             R0, [SP,#0x138+var_C8]
4717CA:  LDR             R0, [R2]; CPopCycle::m_nPercOther ...
4717CC:  STR             R0, [SP,#0x138+var_CC]
4717CE:  LDR             R0, [R3]; CPopCycle::m_nMaxNumCars ...
4717D0:  STR             R0, [SP,#0x138+var_D0]
4717D2:  LDR.W           R0, =(_ZN9CPopCycle14m_nPercDealersE_ptr - 0x4717DC)
4717D6:  STR             R4, [SP,#0x138+var_C0]
4717D8:  ADD             R0, PC; _ZN9CPopCycle14m_nPercDealersE_ptr
4717DA:  LDR             R0, [R0]; CPopCycle::m_nPercDealers ...
4717DC:  STR             R0, [SP,#0x138+var_D4]
4717DE:  LDR.W           R0, =(_ZN9CPopCycle11m_nPercGangE_ptr - 0x4717E6)
4717E2:  ADD             R0, PC; _ZN9CPopCycle11m_nPercGangE_ptr
4717E4:  LDR             R0, [R0]; CPopCycle::m_nPercGang ...
4717E6:  STR             R0, [SP,#0x138+var_D8]
4717E8:  LDR.W           R0, =(_ZN9CPopCycle11m_nPercCopsE_ptr - 0x4717F0)
4717EC:  ADD             R0, PC; _ZN9CPopCycle11m_nPercCopsE_ptr
4717EE:  LDR             R0, [R0]; CPopCycle::m_nPercCops ...
4717F0:  STR             R0, [SP,#0x138+var_DC]
4717F2:  MOVS            R0, #0
4717F4:  STR             R0, [SP,#0x138+var_B8]
4717F6:  MOVS            R5, #0
4717F8:  MOV             R0, R4; this
4717FA:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
4717FE:  CBZ             R0, loc_471810
471800:  LDRB            R1, [R0]
471802:  CMP             R1, #0x2F ; '/'
471804:  BEQ             loc_4717F8
471806:  CMP             R1, #0
471808:  BEQ             loc_4717F8
47180A:  B               loc_471812
47180C:  DCFS 100.0
471810:  MOVS            R0, #0; s
471812:  ADD             R1, SP, #0x138+var_74
471814:  STR             R1, [SP,#0x138+var_F8]
471816:  ADD             R1, SP, #0x138+var_78
471818:  STR             R1, [SP,#0x138+var_F4]
47181A:  ADD             R1, SP, #0x138+var_7C
47181C:  STR             R1, [SP,#0x138+var_F0]
47181E:  ADD             R1, SP, #0x138+var_80
471820:  STR             R1, [SP,#0x138+var_EC]
471822:  ADD             R1, SP, #0x138+var_84
471824:  STR             R1, [SP,#0x138+var_E8]
471826:  ADD             R1, SP, #0x138+var_88
471828:  STR             R1, [SP,#0x138+var_E4]
47182A:  ADD             R1, SP, #0x138+var_54
47182C:  STR             R1, [SP,#0x138+var_118]
47182E:  ADD             R1, SP, #0x138+var_58
471830:  STR             R1, [SP,#0x138+var_114]
471832:  ADD             R1, SP, #0x138+var_5C
471834:  STR             R1, [SP,#0x138+var_110]
471836:  ADD             R1, SP, #0x138+var_60
471838:  STR             R1, [SP,#0x138+var_10C]
47183A:  ADD             R1, SP, #0x138+var_64
47183C:  STR             R1, [SP,#0x138+var_108]
47183E:  ADD             R1, SP, #0x138+var_68
471840:  STR             R1, [SP,#0x138+var_104]
471842:  ADD             R1, SP, #0x138+var_6C
471844:  STR             R1, [SP,#0x138+var_100]
471846:  ADD             R1, SP, #0x138+var_70
471848:  STR             R1, [SP,#0x138+var_FC]
47184A:  ADD             R1, SP, #0x138+var_34
47184C:  STR             R1, [SP,#0x138+var_138]
47184E:  ADD             R1, SP, #0x138+var_38
471850:  STR             R1, [SP,#0x138+var_134]
471852:  ADD             R1, SP, #0x138+var_3C
471854:  STR             R1, [SP,#0x138+var_130]
471856:  ADD             R1, SP, #0x138+var_40
471858:  STR             R1, [SP,#0x138+var_12C]
47185A:  ADD             R1, SP, #0x138+var_44
47185C:  STR             R1, [SP,#0x138+var_128]
47185E:  ADD             R1, SP, #0x138+var_48
471860:  STR             R1, [SP,#0x138+var_124]
471862:  ADD             R1, SP, #0x138+var_4C
471864:  STR             R1, [SP,#0x138+var_120]
471866:  ADD             R1, SP, #0x138+var_50
471868:  STR             R1, [SP,#0x138+var_11C]
47186A:  LDR.W           R1, =(aSDDDDDDDDDDDDD_0+0x1B - 0x471876); "%d %d %d %d %d %d %d %d %d %d %d %d %d "...
47186E:  ADD             R2, SP, #0x138+var_2C
471870:  ADD             R3, SP, #0x138+var_30
471872:  ADD             R1, PC; "%d %d %d %d %d %d %d %d %d %d %d %d %d "... ; format
471874:  BLX             sscanf
471878:  MOV.W           R0, #0x2D0
47187C:  LDR             R1, [SP,#0x138+var_C4]
47187E:  MLA.W           R0, R5, R0, R1
471882:  ADD.W           R2, R5, R5,LSL#2
471886:  STR             R5, [SP,#0x138+var_8C]
471888:  LDR             R5, [SP,#0x138+var_B8]
47188A:  LDR             R1, [SP,#0x138+var_C8]
47188C:  LDR             R4, [SP,#0x138+var_50]
47188E:  ADD.W           R3, R1, R2,LSL#3
471892:  MOV.W           R1, #0x168
471896:  ADD.W           R6, R5, R5,LSL#2
47189A:  MLA.W           R1, R5, R1, R0
47189E:  LDR             R5, [SP,#0x138+var_BC]
4718A0:  ADD.W           R0, R3, R6,LSL#2
4718A4:  LDR             R3, [SP,#0x138+var_2C]
4718A6:  STRB            R3, [R0,R5]
4718A8:  LDR             R0, [SP,#0x138+var_D0]
4718AA:  LDR             R3, [SP,#0x138+var_30]
4718AC:  ADD.W           R0, R0, R2,LSL#3
4718B0:  ADD.W           R0, R0, R6,LSL#2
4718B4:  STRB            R3, [R0,R5]
4718B6:  LDR             R0, [SP,#0x138+var_D4]
4718B8:  LDR             R3, [SP,#0x138+var_34]
4718BA:  ADD.W           R0, R0, R2,LSL#3
4718BE:  ADD.W           R0, R0, R6,LSL#2
4718C2:  STRB            R3, [R0,R5]
4718C4:  LDR             R0, [SP,#0x138+var_D8]
4718C6:  LDR             R3, [SP,#0x138+var_38]
4718C8:  ADD.W           R0, R0, R2,LSL#3
4718CC:  ADD.W           R0, R0, R6,LSL#2
4718D0:  STRB            R3, [R0,R5]
4718D2:  LDR             R0, [SP,#0x138+var_DC]
4718D4:  LDR             R3, [SP,#0x138+var_3C]
4718D6:  ADD.W           R0, R0, R2,LSL#3
4718DA:  ADD.W           R0, R0, R6,LSL#2
4718DE:  STRB            R3, [R0,R5]
4718E0:  LDR             R0, [SP,#0x138+var_CC]
4718E2:  LDR             R3, [SP,#0x138+var_44]
4718E4:  ADD.W           R0, R0, R2,LSL#3
4718E8:  LDR             R2, [SP,#0x138+var_40]
4718EA:  ADD.W           R0, R0, R6,LSL#2
4718EE:  LDR             R6, [SP,#0x138+var_48]
4718F0:  STRB            R2, [R0,R5]
4718F2:  ADD.W           R2, R5, R5,LSL#3
4718F6:  ADD.W           R0, R1, R2,LSL#1
4718FA:  LDR             R5, [SP,#0x138+var_4C]
4718FC:  STRB.W          R3, [R1,R2,LSL#1]
471900:  UXTB            R3, R3
471902:  UXTAB.W         R3, R3, R6
471906:  STRB            R6, [R0,#1]
471908:  UXTAB.W         R3, R3, R5
47190C:  LDR             R6, [SP,#0x138+var_54]
47190E:  UXTAB.W         R3, R3, R4
471912:  STRB            R5, [R0,#2]
471914:  LDR             R5, [SP,#0x138+var_58]
471916:  STRB            R4, [R0,#3]
471918:  UXTAB.W         R3, R3, R6
47191C:  LDR             R4, [SP,#0x138+var_5C]
47191E:  STRB            R6, [R0,#4]
471920:  UXTAB.W         R3, R3, R5
471924:  LDR             R6, [SP,#0x138+var_60]
471926:  STRB            R5, [R0,#5]
471928:  UXTAB.W         R3, R3, R4
47192C:  LDR             R5, [SP,#0x138+var_64]
47192E:  STRB            R4, [R0,#6]
471930:  UXTAB.W         R3, R3, R6
471934:  LDR             R4, [SP,#0x138+var_68]
471936:  STRB            R6, [R0,#7]
471938:  UXTAB.W         R3, R3, R5
47193C:  LDR             R6, [SP,#0x138+var_6C]
47193E:  STRB            R5, [R0,#8]
471940:  UXTAB.W         R3, R3, R4
471944:  LDR             R5, [SP,#0x138+var_70]
471946:  STRB            R4, [R0,#9]
471948:  UXTAB.W         R3, R3, R6
47194C:  LDR             R4, [SP,#0x138+var_74]
47194E:  STRB            R6, [R0,#0xA]
471950:  UXTAB.W         R3, R3, R5
471954:  LDR             R6, [SP,#0x138+var_78]
471956:  STRB            R5, [R0,#0xB]
471958:  UXTAB.W         R3, R3, R4
47195C:  LDR             R5, [SP,#0x138+var_7C]
47195E:  STRB            R4, [R0,#0xC]
471960:  UXTAB.W         R3, R3, R6
471964:  LDR             R4, [SP,#0x138+var_80]
471966:  STRB            R6, [R0,#0xD]
471968:  UXTAB.W         R3, R3, R5
47196C:  LDR             R6, [SP,#0x138+var_84]
47196E:  STRB            R5, [R0,#0xE]
471970:  UXTAB.W         R3, R3, R4
471974:  LDR             R5, [SP,#0x138+var_88]
471976:  UXTAB.W         R3, R3, R6
47197A:  STRB            R4, [R0,#0xF]
47197C:  STRB            R6, [R0,#0x10]
47197E:  UXTAB.W         R3, R3, R5
471982:  VMOV            S0, R3
471986:  VCVT.F32.S32    S0, S0
47198A:  STRB            R5, [R0,#0x11]
47198C:  LDRB.W          R3, [R1,R2,LSL#1]
471990:  VMOV            S2, R3
471994:  VDIV.F32        S0, S16, S0
471998:  VCVT.F32.U32    S2, S2
47199C:  VMUL.F32        S2, S0, S2
4719A0:  VCVT.U32.F32    S2, S2
4719A4:  VMOV            R3, S2
4719A8:  STRB.W          R3, [R1,R2,LSL#1]
4719AC:  MOVS            R2, #0
4719AE:  LDRB            R1, [R0,#1]
4719B0:  VMOV            S2, R1
4719B4:  VCVT.F32.U32    S2, S2
4719B8:  VMUL.F32        S2, S0, S2
4719BC:  VCVT.U32.F32    S2, S2
4719C0:  VMOV            R6, S2
4719C4:  STRB            R6, [R0,#1]
4719C6:  LDRB            R1, [R0,#2]
4719C8:  STR             R6, [SP,#0x138+var_90]
4719CA:  VMOV            S2, R1
4719CE:  VCVT.F32.U32    S2, S2
4719D2:  VMUL.F32        S2, S0, S2
4719D6:  VCVT.U32.F32    S2, S2
4719DA:  VMOV            R5, S2
4719DE:  STRB            R5, [R0,#2]
4719E0:  LDRB            R1, [R0,#3]
4719E2:  VMOV            S2, R1
4719E6:  MOV             R1, R3
4719E8:  CMP             R1, R6
4719EA:  MOV             R3, R6
4719EC:  VCVT.F32.U32    S2, S2
4719F0:  STR             R1, [SP,#0x138+var_94]
4719F2:  ITE LS
4719F4:  MOVLS           R2, #1
4719F6:  MOVHI           R3, R1
4719F8:  STR             R5, [SP,#0x138+var_98]
4719FA:  CMP             R3, R5
4719FC:  IT LS
4719FE:  MOVLS           R2, #2
471A00:  VMUL.F32        S2, S0, S2
471A04:  VCVT.U32.F32    S2, S2
471A08:  IT LS
471A0A:  MOVLS           R3, R5
471A0C:  VMOV            R1, S2
471A10:  STR             R1, [SP,#0x138+var_9C]
471A12:  CMP             R3, R1
471A14:  ITT LS
471A16:  MOVLS           R2, #3
471A18:  MOVLS           R3, R1
471A1A:  STRB            R1, [R0,#3]
471A1C:  LDRB            R1, [R0,#4]
471A1E:  VMOV            S2, R1
471A22:  VCVT.F32.U32    S2, S2
471A26:  VMUL.F32        S2, S0, S2
471A2A:  VCVT.U32.F32    S2, S2
471A2E:  VMOV            R1, S2
471A32:  STR             R1, [SP,#0x138+var_A0]
471A34:  CMP             R3, R1
471A36:  ITT LS
471A38:  MOVLS           R2, #4
471A3A:  MOVLS           R3, R1
471A3C:  STRB            R1, [R0,#4]
471A3E:  LDRB            R1, [R0,#5]
471A40:  VMOV            S2, R1
471A44:  VCVT.F32.U32    S2, S2
471A48:  VMUL.F32        S2, S0, S2
471A4C:  VCVT.U32.F32    S2, S2
471A50:  VMOV            R1, S2
471A54:  STR             R1, [SP,#0x138+var_A4]
471A56:  CMP             R3, R1
471A58:  ITT LS
471A5A:  MOVLS           R2, #5
471A5C:  MOVLS           R3, R1
471A5E:  STRB            R1, [R0,#5]
471A60:  LDRB            R1, [R0,#6]
471A62:  VMOV            S2, R1
471A66:  VCVT.F32.U32    S2, S2
471A6A:  VMUL.F32        S2, S0, S2
471A6E:  VCVT.U32.F32    S2, S2
471A72:  VMOV            R1, S2
471A76:  STR             R1, [SP,#0x138+var_A8]
471A78:  CMP             R3, R1
471A7A:  ITT LS
471A7C:  MOVLS           R2, #6
471A7E:  MOVLS           R3, R1
471A80:  STRB            R1, [R0,#6]
471A82:  LDRB            R1, [R0,#7]
471A84:  VMOV            S2, R1
471A88:  UXTB            R1, R3
471A8A:  VCVT.F32.U32    S2, S2
471A8E:  VMUL.F32        S2, S0, S2
471A92:  VCVT.U32.F32    S2, S2
471A96:  VMOV            R6, S2
471A9A:  STR             R6, [SP,#0x138+var_AC]
471A9C:  CMP             R1, R6
471A9E:  ITT LS
471AA0:  MOVLS           R2, #7
471AA2:  MOVLS           R3, R6
471AA4:  STRB            R6, [R0,#7]
471AA6:  LDRB            R1, [R0,#8]
471AA8:  VMOV            S2, R1
471AAC:  UXTB            R1, R3
471AAE:  VCVT.F32.U32    S2, S2
471AB2:  VMUL.F32        S2, S0, S2
471AB6:  VCVT.U32.F32    S2, S2
471ABA:  VMOV            R6, S2
471ABE:  STR             R6, [SP,#0x138+var_B0]
471AC0:  CMP             R1, R6
471AC2:  ITT LS
471AC4:  MOVLS           R2, #8
471AC6:  MOVLS           R3, R6
471AC8:  STRB            R6, [R0,#8]
471ACA:  LDRB            R1, [R0,#9]
471ACC:  VMOV            S2, R1
471AD0:  UXTB            R1, R3
471AD2:  VCVT.F32.U32    S2, S2
471AD6:  VMUL.F32        S2, S0, S2
471ADA:  VCVT.U32.F32    S2, S2
471ADE:  VMOV            R6, S2
471AE2:  STR             R6, [SP,#0x138+var_B4]
471AE4:  CMP             R1, R6
471AE6:  ITT LS
471AE8:  MOVLS           R2, #9
471AEA:  MOVLS           R3, R6
471AEC:  STRB            R6, [R0,#9]
471AEE:  LDRB            R1, [R0,#0xA]
471AF0:  VMOV            S2, R1
471AF4:  UXTB            R1, R3
471AF6:  VCVT.F32.U32    S2, S2
471AFA:  VMUL.F32        S2, S0, S2
471AFE:  VCVT.U32.F32    S2, S2
471B02:  VMOV            R11, S2
471B06:  CMP             R1, R11
471B08:  ITT LS
471B0A:  MOVLS           R2, #0xA
471B0C:  MOVLS           R3, R11
471B0E:  STRB.W          R11, [R0,#0xA]
471B12:  LDRB            R1, [R0,#0xB]
471B14:  VMOV            S2, R1
471B18:  UXTB            R1, R3
471B1A:  VCVT.F32.U32    S2, S2
471B1E:  VMUL.F32        S2, S0, S2
471B22:  VCVT.U32.F32    S2, S2
471B26:  VMOV            R10, S2
471B2A:  CMP             R1, R10
471B2C:  ITT LS
471B2E:  MOVLS           R2, #0xB
471B30:  MOVLS           R3, R10
471B32:  STRB.W          R10, [R0,#0xB]
471B36:  LDRB            R1, [R0,#0xC]
471B38:  VMOV            S2, R1
471B3C:  UXTB            R1, R3
471B3E:  VCVT.F32.U32    S2, S2
471B42:  VMUL.F32        S2, S0, S2
471B46:  VCVT.U32.F32    S2, S2
471B4A:  VMOV            R9, S2
471B4E:  CMP             R1, R9
471B50:  ITT LS
471B52:  MOVLS           R2, #0xC
471B54:  MOVLS           R3, R9
471B56:  STRB.W          R9, [R0,#0xC]
471B5A:  LDRB            R1, [R0,#0xD]
471B5C:  VMOV            S2, R1
471B60:  UXTB            R1, R3
471B62:  VCVT.F32.U32    S2, S2
471B66:  VMUL.F32        S2, S0, S2
471B6A:  VCVT.U32.F32    S2, S2
471B6E:  VMOV            R8, S2
471B72:  CMP             R1, R8
471B74:  ITT LS
471B76:  MOVLS           R2, #0xD
471B78:  MOVLS           R3, R8
471B7A:  STRB.W          R8, [R0,#0xD]
471B7E:  LDRB            R1, [R0,#0xE]
471B80:  VMOV            S2, R1
471B84:  UXTB            R1, R3
471B86:  VCVT.F32.U32    S2, S2
471B8A:  VMUL.F32        S2, S0, S2
471B8E:  VCVT.U32.F32    S2, S2
471B92:  VMOV            R4, S2
471B96:  CMP             R1, R4
471B98:  ITT LS
471B9A:  MOVLS           R2, #0xE
471B9C:  MOVLS           R3, R4
471B9E:  STRB            R4, [R0,#0xE]
471BA0:  LDRB            R1, [R0,#0xF]
471BA2:  VMOV            S2, R1
471BA6:  UXTB            R1, R3
471BA8:  VCVT.F32.U32    S2, S2
471BAC:  VMUL.F32        S2, S0, S2
471BB0:  VCVT.U32.F32    S2, S2
471BB4:  VMOV            LR, S2
471BB8:  CMP             R1, LR
471BBA:  ITT LS
471BBC:  MOVLS           R2, #0xF
471BBE:  MOVLS           R3, LR
471BC0:  STRB.W          LR, [R0,#0xF]
471BC4:  LDRB            R1, [R0,#0x10]
471BC6:  UXTB.W          R12, R3
471BCA:  VMOV            S2, R1
471BCE:  VCVT.F32.U32    S2, S2
471BD2:  VMUL.F32        S2, S0, S2
471BD6:  VCVT.U32.F32    S2, S2
471BDA:  VMOV            R1, S2
471BDE:  CMP             R12, R1
471BE0:  ITT LS
471BE2:  MOVLS           R2, #0x10
471BE4:  MOVLS           R3, R1
471BE6:  STRB            R1, [R0,#0x10]
471BE8:  LDRB            R6, [R0,#0x11]
471BEA:  UXTB            R3, R3
471BEC:  VMOV            S2, R6
471BF0:  VCVT.F32.U32    S2, S2
471BF4:  VMUL.F32        S0, S0, S2
471BF8:  VCVT.U32.F32    S0, S0
471BFC:  VMOV            R6, S0
471C00:  CMP             R3, R6
471C02:  IT LS
471C04:  MOVLS           R2, #0x11
471C06:  LDRD.W          R5, R3, [SP,#0x138+var_94]
471C0A:  STRB            R6, [R0,#0x11]
471C0C:  ADD             R3, R5
471C0E:  LDR             R5, [SP,#0x138+var_98]
471C10:  ADD             R3, R5
471C12:  LDR             R5, [SP,#0x138+var_9C]
471C14:  ADD             R3, R5
471C16:  LDR             R5, [SP,#0x138+var_A0]
471C18:  ADD             R3, R5
471C1A:  LDR             R5, [SP,#0x138+var_A4]
471C1C:  ADD             R3, R5
471C1E:  LDR             R5, [SP,#0x138+var_A8]
471C20:  ADD             R3, R5
471C22:  LDR             R5, [SP,#0x138+var_AC]
471C24:  ADD             R3, R5
471C26:  LDR             R5, [SP,#0x138+var_B0]
471C28:  ADD             R3, R5
471C2A:  LDR             R5, [SP,#0x138+var_B4]
471C2C:  ADD             R3, R5
471C2E:  LDR             R5, [SP,#0x138+var_8C]
471C30:  ADD             R3, R11
471C32:  ADD             R3, R10
471C34:  ADDS            R5, #1
471C36:  ADD             R3, R9
471C38:  CMP             R5, #0xC
471C3A:  ADD             R3, R8
471C3C:  ADD             R3, R4
471C3E:  LDR             R4, [SP,#0x138+var_C0]
471C40:  ADD             R3, LR
471C42:  ADD             R1, R3
471C44:  LDRB            R3, [R0,R2]
471C46:  ADD             R1, R6
471C48:  RSB.W           R1, R1, #0x64 ; 'd'
471C4C:  ADD             R1, R3
471C4E:  STRB            R1, [R0,R2]
471C50:  BNE.W           loc_4717F8
471C54:  LDR             R0, [SP,#0x138+var_B8]
471C56:  MOV             R1, R0
471C58:  ADDS            R1, #1
471C5A:  CMP             R1, #2
471C5C:  MOV             R0, R1
471C5E:  STR             R0, [SP,#0x138+var_B8]
471C60:  BNE.W           loc_4717F6
471C64:  LDR             R0, [SP,#0x138+var_BC]
471C66:  MOV             R1, R0
471C68:  ADDS            R1, #1
471C6A:  CMP             R1, #0x14
471C6C:  MOV             R0, R1
471C6E:  STR             R0, [SP,#0x138+var_BC]
471C70:  BNE.W           loc_4717F2
471C74:  LDR             R0, =(_ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr - 0x471C7E)
471C76:  MOVS            R6, #0
471C78:  LDR             R1, =(_ZN9CPopCycle18m_nCurrentZoneTypeE_ptr - 0x471C84)
471C7A:  ADD             R0, PC; _ZN9CPopCycle20m_nCurrentTimeOfWeekE_ptr
471C7C:  LDR             R2, =(_ZN9CPopCycle19m_nCurrentTimeIndexE_ptr - 0x471C86)
471C7E:  LDR             R3, =(_ZN9CPopCycle15m_pCurrZoneInfoE_ptr - 0x471C8A)
471C80:  ADD             R1, PC; _ZN9CPopCycle18m_nCurrentZoneTypeE_ptr
471C82:  ADD             R2, PC; _ZN9CPopCycle19m_nCurrentTimeIndexE_ptr
471C84:  LDR             R0, [R0]; CPopCycle::m_nCurrentTimeOfWeek ...
471C86:  ADD             R3, PC; _ZN9CPopCycle15m_pCurrZoneInfoE_ptr
471C88:  LDR             R1, [R1]; unsigned int
471C8A:  LDR             R2, [R2]; CPopCycle::m_nCurrentTimeIndex ...
471C8C:  LDR             R3, [R3]; CPopCycle::m_pCurrZoneInfo ...
471C8E:  STR             R6, [R0]; CPopCycle::m_nCurrentTimeOfWeek
471C90:  MOV.W           R0, #0xFFFFFFFF
471C94:  STR             R0, [R1]; CPopCycle::m_nCurrentZoneType
471C96:  MOV             R0, R4; this
471C98:  STR             R6, [R2]; CPopCycle::m_nCurrentTimeIndex
471C9A:  STR             R6, [R3]; CPopCycle::m_pCurrZoneInfo
471C9C:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
471CA0:  ADD             SP, SP, #0x110
471CA2:  VPOP            {D8}
471CA6:  ADD             SP, SP, #4
471CA8:  POP.W           {R8-R11}
471CAC:  POP             {R4-R7,PC}
