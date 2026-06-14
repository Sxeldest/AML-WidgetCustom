; =========================================================
; Game Engine Function: _Z14DoProfileStatsv
; Address            : 0x2AC6CC - 0x2ACABA
; =========================================================

2AC6CC:  PUSH            {R4-R7,LR}
2AC6CE:  ADD             R7, SP, #0xC
2AC6D0:  PUSH.W          {R8-R11}
2AC6D4:  SUB             SP, SP, #4
2AC6D6:  VPUSH           {D8}
2AC6DA:  SUB             SP, SP, #0x70
2AC6DC:  BLX             IsProfileStatsBusy
2AC6E0:  CMP             R0, #0
2AC6E2:  BNE.W           loc_2ACAAC
2AC6E6:  LDR.W           R0, =(statValueLength_ptr - 0x2AC6F4)
2AC6EA:  MOVS            R4, #0
2AC6EC:  LDR.W           R1, =(statValueLength_ptr - 0x2AC6FA)
2AC6F0:  ADD             R0, PC; statValueLength_ptr
2AC6F2:  LDR.W           R2, =(statValue_ptr - 0x2AC702)
2AC6F6:  ADD             R1, PC; statValueLength_ptr
2AC6F8:  VLDR            S16, =100.0
2AC6FC:  LDR             R0, [R0]; statValueLength
2AC6FE:  ADD             R2, PC; statValue_ptr
2AC700:  STR             R4, [R0]
2AC702:  LDR.W           R0, =(ProfileData_ptr - 0x2AC70A)
2AC706:  ADD             R0, PC; ProfileData_ptr
2AC708:  LDR.W           R10, [R0]; ProfileData
2AC70C:  LDR.W           R0, =(ProfileData_ptr - 0x2AC714)
2AC710:  ADD             R0, PC; ProfileData_ptr
2AC712:  LDR             R0, [R0]; ProfileData
2AC714:  STR             R0, [SP,#0x98+var_38]
2AC716:  LDR             R0, [R1]; statValueLength
2AC718:  STR             R0, [SP,#0x98+var_3C]
2AC71A:  LDR             R0, [R2]; statValue
2AC71C:  STR             R0, [SP,#0x98+var_40]
2AC71E:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2AC72A)
2AC722:  LDR.W           R1, =(statValueLength_ptr - 0x2AC730)
2AC726:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2AC728:  LDR.W           R2, =(statValue_ptr - 0x2AC734)
2AC72C:  ADD             R1, PC; statValueLength_ptr
2AC72E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2AC730:  ADD             R2, PC; statValue_ptr
2AC732:  STR             R0, [SP,#0x98+var_2C]
2AC734:  LDR             R0, =(ProfileData_ptr - 0x2AC73A)
2AC736:  ADD             R0, PC; ProfileData_ptr
2AC738:  LDR             R0, [R0]; ProfileData
2AC73A:  STR             R0, [SP,#0x98+var_30]
2AC73C:  LDR             R0, =(ProfileData_ptr - 0x2AC742)
2AC73E:  ADD             R0, PC; ProfileData_ptr
2AC740:  LDR             R0, [R0]; ProfileData
2AC742:  STR             R0, [SP,#0x98+var_44]
2AC744:  LDR             R0, [R1]; statValueLength
2AC746:  STR             R0, [SP,#0x98+var_48]
2AC748:  LDR             R0, [R2]; statValue
2AC74A:  STR             R0, [SP,#0x98+var_4C]
2AC74C:  LDR             R0, =(ProfileData_ptr - 0x2AC754)
2AC74E:  LDR             R1, =(statValueLength_ptr - 0x2AC758)
2AC750:  ADD             R0, PC; ProfileData_ptr
2AC752:  LDR             R2, =(statValue_ptr - 0x2AC75C)
2AC754:  ADD             R1, PC; statValueLength_ptr
2AC756:  LDR             R0, [R0]; ProfileData
2AC758:  ADD             R2, PC; statValue_ptr
2AC75A:  STR             R0, [SP,#0x98+var_34]
2AC75C:  LDR             R0, =(ProfileData_ptr - 0x2AC766)
2AC75E:  LDR.W           R8, [R2]; statValue
2AC762:  ADD             R0, PC; ProfileData_ptr
2AC764:  LDR             R0, [R0]; ProfileData
2AC766:  STR             R0, [SP,#0x98+var_50]
2AC768:  LDR             R0, [R1]; statValueLength
2AC76A:  STR             R0, [SP,#0x98+var_54]
2AC76C:  LDR             R0, =(ProfileData_ptr - 0x2AC774)
2AC76E:  LDR             R1, =(MenuCounts_ptr - 0x2AC776)
2AC770:  ADD             R0, PC; ProfileData_ptr
2AC772:  ADD             R1, PC; MenuCounts_ptr
2AC774:  LDR             R0, [R0]; ProfileData
2AC776:  STR             R0, [SP,#0x98+var_58]
2AC778:  LDR             R0, [R1]; MenuCounts
2AC77A:  STR             R0, [SP,#0x98+var_5C]
2AC77C:  LDR             R0, =(ProfileData_ptr - 0x2AC784)
2AC77E:  LDR             R1, =(statValueLength_ptr - 0x2AC786)
2AC780:  ADD             R0, PC; ProfileData_ptr
2AC782:  ADD             R1, PC; statValueLength_ptr
2AC784:  LDR             R0, [R0]; ProfileData
2AC786:  STR             R0, [SP,#0x98+var_64]
2AC788:  LDR             R0, =(statValue_ptr - 0x2AC790)
2AC78A:  LDR             R1, [R1]; statValueLength
2AC78C:  ADD             R0, PC; statValue_ptr
2AC78E:  STR             R1, [SP,#0x98+var_68]
2AC790:  LDR             R1, =(ProfileData_ptr - 0x2AC79A)
2AC792:  LDR             R0, [R0]; statValue
2AC794:  STR             R0, [SP,#0x98+var_6C]
2AC796:  ADD             R1, PC; ProfileData_ptr
2AC798:  LDR             R0, =(_ZN14MobileSettings8settingsE_ptr - 0x2AC79E)
2AC79A:  ADD             R0, PC; _ZN14MobileSettings8settingsE_ptr
2AC79C:  LDR             R0, [R0]; MobileSettings::settings ...
2AC79E:  STR             R0, [SP,#0x98+var_70]
2AC7A0:  LDR             R0, [R1]; ProfileData
2AC7A2:  STR             R0, [SP,#0x98+var_74]
2AC7A4:  LDR             R0, =(ProfileData_ptr - 0x2AC7AC)
2AC7A6:  LDR             R1, =(statValueLength_ptr - 0x2AC7AE)
2AC7A8:  ADD             R0, PC; ProfileData_ptr
2AC7AA:  ADD             R1, PC; statValueLength_ptr
2AC7AC:  LDR             R0, [R0]; ProfileData
2AC7AE:  STR             R0, [SP,#0x98+var_78]
2AC7B0:  LDR             R0, =(statValue_ptr - 0x2AC7B8)
2AC7B2:  LDR             R1, [R1]; statValueLength
2AC7B4:  ADD             R0, PC; statValue_ptr
2AC7B6:  STR             R1, [SP,#0x98+var_7C]
2AC7B8:  LDR             R1, =(statValueLength_ptr - 0x2AC7C2)
2AC7BA:  LDR             R0, [R0]; statValue
2AC7BC:  STR             R0, [SP,#0x98+var_80]
2AC7BE:  ADD             R1, PC; statValueLength_ptr
2AC7C0:  LDR             R0, =(ProfileData_ptr - 0x2AC7C8)
2AC7C2:  LDR             R1, [R1]; statValueLength
2AC7C4:  ADD             R0, PC; ProfileData_ptr
2AC7C6:  LDR             R0, [R0]; ProfileData
2AC7C8:  STR             R0, [SP,#0x98+var_84]
2AC7CA:  LDR             R0, =(ProfileData_ptr - 0x2AC7D0)
2AC7CC:  ADD             R0, PC; ProfileData_ptr
2AC7CE:  LDR             R0, [R0]; ProfileData
2AC7D0:  STR             R0, [SP,#0x98+var_88]
2AC7D2:  LDR             R0, =(statValue_ptr - 0x2AC7DA)
2AC7D4:  STR             R1, [SP,#0x98+var_8C]
2AC7D6:  ADD             R0, PC; statValue_ptr
2AC7D8:  LDR             R0, [R0]; statValue
2AC7DA:  STR             R0, [SP,#0x98+var_90]
2AC7DC:  LDR             R0, =(statValueLength_ptr - 0x2AC7E2)
2AC7DE:  ADD             R0, PC; statValueLength_ptr
2AC7E0:  LDR             R0, [R0]; statValueLength
2AC7E2:  STR             R0, [SP,#0x98+var_94]
2AC7E4:  LDR             R0, =(statValueLength_ptr - 0x2AC7EA)
2AC7E6:  ADD             R0, PC; statValueLength_ptr
2AC7E8:  LDR             R0, [R0]; statValueLength
2AC7EA:  STR             R0, [SP,#0x98+var_98]
2AC7EC:  STR.W           R10, [SP,#0x98+var_60]
2AC7F0:  B               loc_2AC7F4
2AC7F2:  ADDS            R4, #1
2AC7F4:  CMP             R4, #0
2AC7F6:  BEQ             loc_2AC870
2AC7F8:  CMP             R4, #1
2AC7FA:  BEQ             loc_2AC8B6
2AC7FC:  CMP             R4, #2
2AC7FE:  BNE.W           loc_2AC90A
2AC802:  MOV.W           R9, #0
2AC806:  MOV.W           R11, #0
2AC80A:  UXTB.W          R0, R11; this
2AC80E:  BLX             j__ZN6CStats24GetTimesMissionAttemptedEh; CStats::GetTimesMissionAttempted(uchar)
2AC812:  CMP             R0, #0xFF
2AC814:  ADD.W           R11, R11, #1
2AC818:  IT EQ
2AC81A:  ADDEQ.W         R9, R9, #1
2AC81E:  CMP.W           R11, #0x64 ; 'd'
2AC822:  BNE             loc_2AC80A
2AC824:  LDR             R0, [SP,#0x98+var_34]
2AC826:  LDR             R0, [R0,#0x2C]
2AC828:  CMP             R9, R0
2AC82A:  BEQ.W           loc_2ACA7C
2AC82E:  LDR             R6, [SP,#0x98+var_50]
2AC830:  LDR             R5, [SP,#0x98+var_54]
2AC832:  LDR             R0, [R6,#0x24]
2AC834:  LDR             R1, [R5]
2AC836:  STR.W           R9, [R6,#0x2C]
2AC83A:  LSRS            R2, R0, #0x18
2AC83C:  LSRS            R3, R0, #0x10
2AC83E:  STRB.W          R2, [R8,R1]
2AC842:  ADD.W           R2, R8, R1
2AC846:  STRB            R3, [R2,#1]
2AC848:  LSRS            R3, R0, #8
2AC84A:  STRB            R3, [R2,#2]
2AC84C:  STRB            R0, [R2,#3]
2AC84E:  MOVS            R0, #4
2AC850:  STRB            R0, [R2,#4]
2AC852:  MOV.W           R0, R9,LSR#24
2AC856:  STRB            R0, [R2,#5]
2AC858:  MOV.W           R0, R9,LSR#16
2AC85C:  STRB            R0, [R2,#6]
2AC85E:  MOV.W           R0, R9,LSR#8
2AC862:  STRB            R0, [R2,#7]
2AC864:  ADD.W           R0, R1, #9
2AC868:  STRB.W          R9, [R2,#8]
2AC86C:  STR             R0, [R5]
2AC86E:  B               loc_2ACA7C
2AC870:  BLX             j__ZN6CStats21GetPercentageProgressEv; CStats::GetPercentageProgress(void)
2AC874:  VMOV            S0, R0
2AC878:  LDR.W           R1, [R10,#0xC]; unsigned __int16
2AC87C:  VMUL.F32        S0, S0, S16
2AC880:  VCVT.S32.F32    S0, S0
2AC884:  VMOV            R0, S0; this
2AC888:  CMP             R1, R0
2AC88A:  BEQ             loc_2AC7F2
2AC88C:  LDR             R5, [SP,#0x98+var_38]
2AC88E:  LDR.W           R12, [SP,#0x98+var_3C]
2AC892:  LDR             R6, [SP,#0x98+var_40]
2AC894:  LDR             R1, [R5,#4]
2AC896:  LDR.W           R2, [R12]
2AC89A:  STR             R0, [R5,#0xC]
2AC89C:  LSRS            R3, R1, #0x18
2AC89E:  STRB            R3, [R6,R2]
2AC8A0:  ADDS            R3, R6, R2
2AC8A2:  LSRS            R6, R1, #0x10
2AC8A4:  STRB            R6, [R3,#1]
2AC8A6:  LSRS            R6, R1, #8
2AC8A8:  STRB            R6, [R3,#2]
2AC8AA:  STRB            R1, [R3,#3]
2AC8AC:  MOVS            R1, #4
2AC8AE:  STRB            R1, [R3,#4]
2AC8B0:  LSRS            R1, R0, #0x18
2AC8B2:  STRB            R1, [R3,#5]
2AC8B4:  B               loc_2AC8F6
2AC8B6:  LDR             R0, [SP,#0x98+var_2C]
2AC8B8:  MOV             R1, #0x10624DD3
2AC8C0:  LDR             R0, [R0]
2AC8C2:  UMULL.W         R1, R0, R0, R1
2AC8C6:  LDR             R1, [SP,#0x98+var_30]
2AC8C8:  LDR             R1, [R1,#0x1C]
2AC8CA:  CMP.W           R1, R0,LSR#6
2AC8CE:  BEQ             loc_2AC7F2
2AC8D0:  LDR             R5, [SP,#0x98+var_44]
2AC8D2:  LSRS            R0, R0, #6
2AC8D4:  LDR.W           R12, [SP,#0x98+var_48]
2AC8D8:  LDR             R6, [SP,#0x98+var_4C]
2AC8DA:  LDR             R1, [R5,#0x14]
2AC8DC:  LDR.W           R2, [R12]
2AC8E0:  STR             R0, [R5,#0x1C]
2AC8E2:  LSRS            R3, R1, #0x18
2AC8E4:  STRB            R3, [R6,R2]
2AC8E6:  ADDS            R3, R6, R2
2AC8E8:  LSRS            R6, R1, #0x10
2AC8EA:  STRB            R6, [R3,#1]
2AC8EC:  LSRS            R6, R1, #8
2AC8EE:  STRB            R6, [R3,#2]
2AC8F0:  STRB            R1, [R3,#3]
2AC8F2:  MOVS            R1, #4
2AC8F4:  STRH            R1, [R3,#4]
2AC8F6:  LSRS            R1, R0, #0x10
2AC8F8:  STRB            R1, [R3,#6]
2AC8FA:  LSRS            R1, R0, #8
2AC8FC:  STRB            R1, [R3,#7]
2AC8FE:  STRB            R0, [R3,#8]
2AC900:  ADD.W           R0, R2, #9
2AC904:  STR.W           R0, [R12]
2AC908:  B               loc_2AC7F2
2AC90A:  CMP             R4, #0x1D
2AC90C:  BGT             loc_2AC96C
2AC90E:  LDR             R0, [SP,#0x98+var_58]
2AC910:  LDR             R1, [SP,#0x98+var_5C]
2AC912:  ADD.W           R0, R0, R4,LSL#4
2AC916:  ADD.W           R1, R1, R4,LSL#2
2AC91A:  LDR.W           R2, [R0,#0xC]!
2AC91E:  LDR.W           R1, [R1,#-0xC]
2AC922:  CMP             R1, R2
2AC924:  BEQ.W           loc_2ACA7C
2AC928:  LDR             R2, [SP,#0x98+var_64]
2AC92A:  LDR.W           R12, [SP,#0x98+var_68]
2AC92E:  ADD.W           R2, R2, R4,LSL#4
2AC932:  LDR             R5, [SP,#0x98+var_6C]
2AC934:  LDR             R2, [R2,#4]
2AC936:  LDR.W           R3, [R12]
2AC93A:  LSRS            R6, R2, #0x18
2AC93C:  STRB            R6, [R5,R3]
2AC93E:  ADDS            R6, R5, R3
2AC940:  MOVS            R5, #4
2AC942:  STRB            R2, [R6,#3]
2AC944:  STRB            R5, [R6,#4]
2AC946:  LSRS            R5, R1, #0x18
2AC948:  STRB            R5, [R6,#5]
2AC94A:  LSRS            R5, R1, #0x10
2AC94C:  STRB            R5, [R6,#6]
2AC94E:  LSRS            R5, R1, #8
2AC950:  STRB            R5, [R6,#7]
2AC952:  LSRS            R5, R2, #0x10
2AC954:  STRB            R1, [R6,#8]
2AC956:  LSRS            R2, R2, #8
2AC958:  STRB            R5, [R6,#1]
2AC95A:  LDR.W           R10, [SP,#0x98+var_60]
2AC95E:  STRB            R2, [R6,#2]
2AC960:  ADD.W           R2, R3, #9
2AC964:  STR.W           R2, [R12]
2AC968:  STR             R1, [R0]
2AC96A:  B               loc_2ACA7C
2AC96C:  CMP             R4, #0x3E ; '>'
2AC96E:  BGT             loc_2AC9D2
2AC970:  LDR             R0, [SP,#0x98+var_70]
2AC972:  MOV             R1, #0xFFFFFC48
2AC97A:  ADD.W           R0, R0, R4,LSL#5
2AC97E:  LDR             R0, [R0,R1]
2AC980:  LDR             R1, [SP,#0x98+var_74]
2AC982:  ADD.W           R1, R1, R4,LSL#4
2AC986:  LDR.W           R2, [R1,#0xC]!
2AC98A:  CMP             R0, R2
2AC98C:  BEQ             loc_2ACA7C
2AC98E:  LDR             R2, [SP,#0x98+var_78]
2AC990:  LDR.W           R12, [SP,#0x98+var_7C]
2AC994:  ADD.W           R2, R2, R4,LSL#4
2AC998:  LDR             R5, [SP,#0x98+var_80]
2AC99A:  LDR             R2, [R2,#4]
2AC99C:  LDR.W           R3, [R12]
2AC9A0:  LSRS            R6, R2, #0x18
2AC9A2:  STRB            R6, [R5,R3]
2AC9A4:  ADDS            R6, R5, R3
2AC9A6:  MOVS            R5, #4
2AC9A8:  STRB            R2, [R6,#3]
2AC9AA:  STRB            R5, [R6,#4]
2AC9AC:  LSRS            R5, R0, #0x18
2AC9AE:  STRB            R5, [R6,#5]
2AC9B0:  LSRS            R5, R0, #0x10
2AC9B2:  STRB            R5, [R6,#6]
2AC9B4:  LSRS            R5, R0, #8
2AC9B6:  STRB            R5, [R6,#7]
2AC9B8:  LSRS            R5, R2, #0x10
2AC9BA:  STRB            R0, [R6,#8]
2AC9BC:  LSRS            R2, R2, #8
2AC9BE:  STRB            R5, [R6,#1]
2AC9C0:  LDR.W           R10, [SP,#0x98+var_60]
2AC9C4:  STRB            R2, [R6,#2]
2AC9C6:  ADD.W           R2, R3, #9
2AC9CA:  STR.W           R2, [R12]
2AC9CE:  STR             R0, [R1]
2AC9D0:  B               loc_2ACA7C
2AC9D2:  SUB.W           R0, R4, #0x3F ; '?'
2AC9D6:  CMP             R0, #0x52 ; 'R'
2AC9D8:  ITT CS
2AC9DA:  SUBCS.W         R0, R4, #0xB7
2AC9DE:  CMPCS           R0, #0xB4
2AC9E0:  BHI             loc_2ACA7C
2AC9E2:  MOVW            R0, #0xFFC1
2AC9E6:  ADD             R0, R4
2AC9E8:  UXTH            R0, R0; this
2AC9EA:  BLX             j__ZN6CStats12GetStatValueEt; CStats::GetStatValue(ushort)
2AC9EE:  VMOV            S0, R0
2AC9F2:  LDR             R0, [SP,#0x98+var_84]
2AC9F4:  ADD.W           R0, R0, R4,LSL#4
2AC9F8:  VLDR            S2, [R0,#0xC]
2AC9FC:  VCMP.F32        S0, S2
2ACA00:  VMRS            APSR_nzcv, FPSCR
2ACA04:  BEQ             loc_2ACA7C
2ACA06:  LDR             R1, [SP,#0x98+var_88]
2ACA08:  ADDS            R0, #0xC
2ACA0A:  LDR             R6, [SP,#0x98+var_90]
2ACA0C:  CMP             R4, #0x90
2ACA0E:  ADD.W           R1, R1, R4,LSL#4
2ACA12:  LDR             R3, [R1,#4]
2ACA14:  LDR             R1, [SP,#0x98+var_8C]
2ACA16:  MOV.W           R2, R3,LSR#24
2ACA1A:  LDR             R1, [R1]
2ACA1C:  STRB            R2, [R6,R1]
2ACA1E:  ADD.W           R2, R6, R1
2ACA22:  MOV.W           R6, R3,LSR#16
2ACA26:  STRB            R3, [R2,#3]
2ACA28:  MOV.W           R3, R3,LSR#8
2ACA2C:  STRB            R6, [R2,#1]
2ACA2E:  STRB            R3, [R2,#2]
2ACA30:  BGT             loc_2ACA58
2ACA32:  VCVT.S32.F32    S2, S0
2ACA36:  MOVS            R3, #3
2ACA38:  STRB            R3, [R2,#4]
2ACA3A:  ADDS            R1, #9
2ACA3C:  VMOV            R3, S2
2ACA40:  STRB            R3, [R2,#8]
2ACA42:  LSRS            R6, R3, #0x18
2ACA44:  STRB            R6, [R2,#5]
2ACA46:  LSRS            R6, R3, #0x10
2ACA48:  LSRS            R3, R3, #8
2ACA4A:  STRB            R6, [R2,#6]
2ACA4C:  STRB            R3, [R2,#7]
2ACA4E:  LDR             R2, [SP,#0x98+var_94]
2ACA50:  B               loc_2ACA76
2ACA52:  ALIGN 4
2ACA54:  DCFS 100.0
2ACA58:  VCVT.S32.F32    S2, S0
2ACA5C:  MOVS            R3, #4
2ACA5E:  STRB            R3, [R2,#4]
2ACA60:  ADDS            R1, #9
2ACA62:  VMOV            R3, S2
2ACA66:  STRB            R3, [R2,#8]
2ACA68:  LSRS            R6, R3, #0x18
2ACA6A:  STRB            R6, [R2,#5]
2ACA6C:  LSRS            R6, R3, #0x10
2ACA6E:  LSRS            R3, R3, #8
2ACA70:  STRB            R6, [R2,#6]
2ACA72:  STRB            R3, [R2,#7]
2ACA74:  LDR             R2, [SP,#0x98+var_98]
2ACA76:  STR             R1, [R2]
2ACA78:  VSTR            S0, [R0]
2ACA7C:  ADDS            R4, #1
2ACA7E:  CMP.W           R4, #0x196
2ACA82:  BNE.W           loc_2AC7F4
2ACA86:  LDR             R0, =(statValueLength_ptr - 0x2ACA8C)
2ACA88:  ADD             R0, PC; statValueLength_ptr
2ACA8A:  LDR             R0, [R0]; statValueLength
2ACA8C:  LDR             R1, [R0]; int
2ACA8E:  CMP             R1, #0
2ACA90:  BLE             loc_2ACAAC
2ACA92:  LDR             R0, =(statValue_ptr - 0x2ACA98)
2ACA94:  ADD             R0, PC; statValue_ptr
2ACA96:  LDR             R0, [R0]; statValue ; char *
2ACA98:  ADD             SP, SP, #0x70 ; 'p'
2ACA9A:  VPOP            {D8}
2ACA9E:  ADD             SP, SP, #4
2ACAA0:  POP.W           {R8-R11}
2ACAA4:  POP.W           {R4-R7,LR}
2ACAA8:  B.W             j__Z16ProfileStatsSendPKci; ProfileStatsSend(char const*,int)
2ACAAC:  ADD             SP, SP, #0x70 ; 'p'
2ACAAE:  VPOP            {D8}
2ACAB2:  ADD             SP, SP, #4
2ACAB4:  POP.W           {R8-R11}
2ACAB8:  POP             {R4-R7,PC}
