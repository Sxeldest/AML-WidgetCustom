; =========================================================
; Game Engine Function: _ZN8CCarCtrl25GenerateCarCreationCoors2E7CVectorfffbffPS0_P12CNodeAddressS3_Pfbb
; Address            : 0x2E7760 - 0x2E81C0
; =========================================================

2E7760:  PUSH            {R4-R7,LR}
2E7762:  ADD             R7, SP, #0xC
2E7764:  PUSH.W          {R8-R11}
2E7768:  SUB             SP, SP, #4
2E776A:  VPUSH           {D8-D15}
2E776E:  SUB             SP, SP, #0xE8
2E7770:  MOV             R11, R0
2E7772:  LDR.W           R0, =(byte_7967C4 - 0x2E777E)
2E7776:  MOV             R8, R3
2E7778:  MOV             R9, R2
2E777A:  ADD             R0, PC; byte_7967C4
2E777C:  MOV             R10, R1
2E777E:  MOVW            R5, #0xFFFF
2E7782:  LDRB            R0, [R0]
2E7784:  DMB.W           ISH
2E7788:  TST.W           R0, #1
2E778C:  BNE             loc_2E77AC
2E778E:  LDR.W           R0, =(byte_7967C4 - 0x2E7796)
2E7792:  ADD             R0, PC; byte_7967C4 ; __guard *
2E7794:  BLX             j___cxa_guard_acquire
2E7798:  CBZ             R0, loc_2E77AC
2E779A:  LDR.W           R1, =(dword_7967C0 - 0x2E77A6)
2E779E:  LDR.W           R0, =(byte_7967C4 - 0x2E77A8)
2E77A2:  ADD             R1, PC; dword_7967C0
2E77A4:  ADD             R0, PC; byte_7967C4 ; __guard *
2E77A6:  STRH            R5, [R1]
2E77A8:  BLX             j___cxa_guard_release
2E77AC:  LDR.W           R0, =(byte_7967CC - 0x2E77B4)
2E77B0:  ADD             R0, PC; byte_7967CC
2E77B2:  LDRB            R0, [R0]
2E77B4:  DMB.W           ISH
2E77B8:  TST.W           R0, #1
2E77BC:  BNE             loc_2E77DC
2E77BE:  LDR.W           R0, =(byte_7967CC - 0x2E77C6)
2E77C2:  ADD             R0, PC; byte_7967CC ; __guard *
2E77C4:  BLX             j___cxa_guard_acquire
2E77C8:  CBZ             R0, loc_2E77DC
2E77CA:  LDR.W           R1, =(dword_7967C8 - 0x2E77D6)
2E77CE:  LDR.W           R0, =(byte_7967CC - 0x2E77D8)
2E77D2:  ADD             R1, PC; dword_7967C8
2E77D4:  ADD             R0, PC; byte_7967CC ; __guard *
2E77D6:  STRH            R5, [R1]
2E77D8:  BLX             j___cxa_guard_release
2E77DC:  LDR.W           R0, =(byte_7967D4 - 0x2E77E4)
2E77E0:  ADD             R0, PC; byte_7967D4
2E77E2:  LDRB            R0, [R0]
2E77E4:  DMB.W           ISH
2E77E8:  TST.W           R0, #1
2E77EC:  BNE             loc_2E780C
2E77EE:  LDR.W           R0, =(byte_7967D4 - 0x2E77F6)
2E77F2:  ADD             R0, PC; byte_7967D4 ; __guard *
2E77F4:  BLX             j___cxa_guard_acquire
2E77F8:  CBZ             R0, loc_2E780C
2E77FA:  LDR.W           R1, =(dword_7967D0 - 0x2E7806)
2E77FE:  LDR.W           R0, =(byte_7967D4 - 0x2E7808)
2E7802:  ADD             R1, PC; dword_7967D0
2E7804:  ADD             R0, PC; byte_7967D4 ; __guard *
2E7806:  STRH            R5, [R1]
2E7808:  BLX             j___cxa_guard_release
2E780C:  LDR.W           R0, =(byte_7967DC - 0x2E7814)
2E7810:  ADD             R0, PC; byte_7967DC
2E7812:  LDRB            R0, [R0]
2E7814:  DMB.W           ISH
2E7818:  TST.W           R0, #1
2E781C:  BNE             loc_2E783C
2E781E:  LDR.W           R0, =(byte_7967DC - 0x2E7826)
2E7822:  ADD             R0, PC; byte_7967DC ; __guard *
2E7824:  BLX             j___cxa_guard_acquire
2E7828:  CBZ             R0, loc_2E783C
2E782A:  LDR.W           R1, =(dword_7967D8 - 0x2E7836)
2E782E:  LDR.W           R0, =(byte_7967DC - 0x2E7838)
2E7832:  ADD             R1, PC; dword_7967D8
2E7834:  ADD             R0, PC; byte_7967DC ; __guard *
2E7836:  STRH            R5, [R1]
2E7838:  BLX             j___cxa_guard_release
2E783C:  LDR.W           R0, =(byte_7967EC - 0x2E7844)
2E7840:  ADD             R0, PC; byte_7967EC
2E7842:  LDRB            R0, [R0]
2E7844:  DMB.W           ISH
2E7848:  TST.W           R0, #1
2E784C:  BNE             loc_2E7864
2E784E:  LDR.W           R0, =(byte_7967EC - 0x2E7856)
2E7852:  ADD             R0, PC; byte_7967EC ; __guard *
2E7854:  BLX             j___cxa_guard_acquire
2E7858:  CBZ             R0, loc_2E7864
2E785A:  LDR.W           R0, =(byte_7967EC - 0x2E7862)
2E785E:  ADD             R0, PC; byte_7967EC ; __guard *
2E7860:  BLX             j___cxa_guard_release
2E7864:  LDR.W           R0, =(dword_7967E0 - 0x2E7874)
2E7868:  VMOV            S16, R10
2E786C:  VMOV            S18, R11
2E7870:  ADD             R0, PC; dword_7967E0
2E7872:  VLDR            S0, [R0]
2E7876:  VLDR            S2, [R0,#4]
2E787A:  VSUB.F32        S0, S18, S0
2E787E:  VSUB.F32        S2, S16, S2
2E7882:  VMUL.F32        S0, S0, S0
2E7886:  VMUL.F32        S2, S2, S2
2E788A:  VADD.F32        S0, S0, S2
2E788E:  VMOV.F32        S2, #10.0
2E7892:  VSQRT.F32       S0, S0
2E7896:  VCMPE.F32       S0, S2
2E789A:  VMRS            APSR_nzcv, FPSCR
2E789E:  BGT             loc_2E78B8
2E78A0:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2E78AC)
2E78A4:  LDR.W           R1, =(dword_7967F0 - 0x2E78AE)
2E78A8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2E78AA:  ADD             R1, PC; dword_7967F0
2E78AC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2E78AE:  LDR             R1, [R1]
2E78B0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2E78B2:  CMP             R0, R1
2E78B4:  BLS.W           loc_2E7A1A
2E78B8:  LDR.W           R0, =(ThePaths_ptr - 0x2E78C8)
2E78BC:  MOVS            R2, #1
2E78BE:  LDR.W           R1, =(dword_7967C8 - 0x2E78CE)
2E78C2:  MOV             R3, R9
2E78C4:  ADD             R0, PC; ThePaths_ptr
2E78C6:  LDR.W           R6, =(dword_7967C0 - 0x2E78D2)
2E78CA:  ADD             R1, PC; dword_7967C8
2E78CC:  LDR             R4, [R0]; ThePaths
2E78CE:  ADD             R6, PC; dword_7967C0
2E78D0:  STRD.W          R6, R1, [SP,#0x148+var_148]
2E78D4:  MOV             R1, R11
2E78D6:  STR             R2, [SP,#0x148+var_140]
2E78D8:  MOV             R2, R10
2E78DA:  MOV             R0, R4
2E78DC:  BLX             j__ZN9CPathFind24Find2NodesForCarCreationE7CVectorP12CNodeAddressS2_b; CPathFind::Find2NodesForCarCreation(CVector,CNodeAddress *,CNodeAddress *,bool)
2E78E0:  LDR.W           R0, =(dword_7967D8 - 0x2E78F2)
2E78E4:  MOVS            R1, #0
2E78E6:  STR             R1, [SP,#0x148+var_140]
2E78E8:  MOV             R2, R10
2E78EA:  LDR.W           R1, =(dword_7967D0 - 0x2E78F6)
2E78EE:  ADD             R0, PC; dword_7967D8
2E78F0:  MOV             R3, R9
2E78F2:  ADD             R1, PC; dword_7967D0
2E78F4:  STRD.W          R1, R0, [SP,#0x148+var_148]
2E78F8:  MOV             R0, R4
2E78FA:  MOV             R1, R11
2E78FC:  BLX             j__ZN9CPathFind24Find2NodesForCarCreationE7CVectorP12CNodeAddressS2_b; CPathFind::Find2NodesForCarCreation(CVector,CNodeAddress *,CNodeAddress *,bool)
2E7900:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x2E790C)
2E7904:  LDR.W           R1, =(dword_7967E0 - 0x2E7912)
2E7908:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
2E790A:  LDR.W           R2, =(dword_7967F0 - 0x2E7916)
2E790E:  ADD             R1, PC; dword_7967E0
2E7910:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
2E7912:  ADD             R2, PC; dword_7967F0
2E7914:  STRD.W          R11, R10, [R1]
2E7918:  LDRH            R3, [R6]
2E791A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
2E791C:  CMP             R3, R5
2E791E:  STR.W           R9, [R1,#(dword_7967E8 - 0x7967E0)]
2E7922:  MOVW            R1, #0x1388
2E7926:  ADD             R0, R1
2E7928:  STR             R0, [R2]
2E792A:  BEQ             loc_2E7A1A
2E792C:  LDR.W           R0, =(dword_7967C0 - 0x2E7938)
2E7930:  LDR.W           R1, =(ThePaths_ptr - 0x2E793A)
2E7934:  ADD             R0, PC; dword_7967C0
2E7936:  ADD             R1, PC; ThePaths_ptr
2E7938:  LDR             R2, [R0]
2E793A:  LDR             R0, [R1]; ThePaths
2E793C:  UXTH            R1, R2
2E793E:  ADD.W           R0, R0, R1,LSL#2
2E7942:  LDR.W           R0, [R0,#0x804]
2E7946:  CMP             R0, #0
2E7948:  BEQ             loc_2E7A1A
2E794A:  MOV.W           R12, R2,LSR#16
2E794E:  LDR.W           R3, =(ThePaths_ptr - 0x2E795E)
2E7952:  MOV.W           R6, R12,LSL#3
2E7956:  SUB.W           R2, R6, R2,LSR#16
2E795A:  ADD             R3, PC; ThePaths_ptr
2E795C:  ADD.W           R2, R0, R2,LSL#2
2E7960:  LDR             R4, [R3]; ThePaths
2E7962:  LDRH            R6, [R2,#0x12]
2E7964:  LDRSH.W         R2, [R2,#0x10]
2E7968:  ADD.W           R3, R4, R6,LSL#2
2E796C:  LDR.W           R3, [R3,#0xDA4]
2E7970:  LDRH.W          R2, [R3,R2,LSL#1]
2E7974:  LSRS            R3, R2, #0xA
2E7976:  ADD.W           R6, R4, R3,LSL#2
2E797A:  LDR.W           R6, [R6,#0x804]
2E797E:  CMP             R6, #0
2E7980:  BEQ             loc_2E7A1A
2E7982:  LDR.W           R6, =(ThePaths_ptr - 0x2E798E)
2E7986:  BFC.W           R2, #0xA, #0x16
2E798A:  ADD             R6, PC; ThePaths_ptr
2E798C:  LDR             R6, [R6]; ThePaths
2E798E:  ADD.W           R3, R6, R3,LSL#2
2E7992:  RSB.W           R6, R2, R2,LSL#3
2E7996:  LDR.W           R3, [R3,#0x924]
2E799A:  ADD.W           R2, R3, R6,LSL#1
2E799E:  LDRH.W          R4, [R2,#0xB]
2E79A2:  AND.W           R1, R4, #6
2E79A6:  CMP             R1, #1
2E79A8:  ITTT LS
2E79AA:  ANDLS.W         R1, R4, #0x30 ; '0'
2E79AE:  UXTHLS          R1, R1
2E79B0:  CMPLS           R1, #9
2E79B2:  BCC             loc_2E7A0E
2E79B4:  LDRSH.W         R1, [R3,R6,LSL#1]
2E79B8:  VMOV.F32        S0, #0.125
2E79BC:  VMOV            S2, R1
2E79C0:  VCVT.F32.S32    S2, S2
2E79C4:  LDRSH.W         R1, [R2,#2]
2E79C8:  VMOV            S4, R1
2E79CC:  VCVT.F32.S32    S4, S4
2E79D0:  VMUL.F32        S2, S2, S0
2E79D4:  VMUL.F32        S0, S4, S0
2E79D8:  VSUB.F32        S2, S2, S18
2E79DC:  VSUB.F32        S0, S0, S16
2E79E0:  VMUL.F32        S2, S2, S2
2E79E4:  VMUL.F32        S0, S0, S0
2E79E8:  VADD.F32        S0, S2, S0
2E79EC:  VLDR            S2, =40.0
2E79F0:  VSQRT.F32       S0, S0
2E79F4:  VCMPE.F32       S0, S2
2E79F8:  VMRS            APSR_nzcv, FPSCR
2E79FC:  BGE             loc_2E7A0E
2E79FE:  RSB.W           R1, R12, R12,LSL#3
2E7A02:  ADD.W           R0, R0, R1,LSL#2
2E7A06:  LDRH            R0, [R0,#0x18]
2E7A08:  UBFX.W          R0, R0, #0xD, #1
2E7A0C:  B               loc_2E7A10
2E7A0E:  MOVS            R0, #0
2E7A10:  LDR.W           R1, =(_ZN11CPopulation23m_bMoreCarsAndFewerPedsE_ptr - 0x2E7A18)
2E7A14:  ADD             R1, PC; _ZN11CPopulation23m_bMoreCarsAndFewerPedsE_ptr
2E7A16:  LDR             R1, [R1]; CPopulation::m_bMoreCarsAndFewerPeds ...
2E7A18:  STRB            R0, [R1]; CPopulation::m_bMoreCarsAndFewerPeds
2E7A1A:  LDR             R4, [R7,#arg_24]
2E7A1C:  VLDR            S20, [R7,#arg_C]
2E7A20:  BLX             rand
2E7A24:  AND.W           R0, R0, #0xF
2E7A28:  CMP             R0, #4
2E7A2A:  ITT EQ
2E7A2C:  LDREQ           R0, [R7,#arg_28]
2E7A2E:  CMPEQ           R0, #0
2E7A30:  BNE             loc_2E7A68
2E7A32:  LDR.W           R0, =(ThePaths_ptr - 0x2E7A40)
2E7A36:  MOVS            R3, #0
2E7A38:  MOVS            R1, #1
2E7A3A:  MOVS            R2, #0
2E7A3C:  ADD             R0, PC; ThePaths_ptr
2E7A3E:  MOVT            R3, #0x4248
2E7A42:  STRD.W          R2, R3, [SP,#0x148+var_148]
2E7A46:  MOV             R3, R9
2E7A48:  LDR             R0, [R0]; ThePaths
2E7A4A:  STRD.W          R2, R2, [SP,#0x148+var_140]
2E7A4E:  STRD.W          R2, R1, [SP,#0x148+var_138]
2E7A52:  MOV             R2, R10
2E7A54:  STR             R1, [SP,#0x148+var_130]
2E7A56:  MOV             R1, R11
2E7A58:  BLX             j__ZN9CPathFind22FindNodeClosestToCoorsE7CVectorhfbbbbb; CPathFind::FindNodeClosestToCoors(CVector,uchar,float,bool,bool,bool,bool,bool)
2E7A5C:  VMOV.F32        S0, #1.5
2E7A60:  MOV             R2, R0
2E7A62:  VMUL.F32        S20, S20, S0
2E7A66:  B               loc_2E7A9A
2E7A68:  BLX             rand
2E7A6C:  TST.W           R0, #3
2E7A70:  BEQ             loc_2E7A7E
2E7A72:  CMP             R4, #1
2E7A74:  BNE             loc_2E7A8A
2E7A76:  LDR.W           R0, =(dword_7967C0 - 0x2E7A7E)
2E7A7A:  ADD             R0, PC; dword_7967C0
2E7A7C:  B               loc_2E7A98
2E7A7E:  CMP             R4, #1
2E7A80:  BNE             loc_2E7A92
2E7A82:  LDR.W           R0, =(dword_7967C8 - 0x2E7A8A)
2E7A86:  ADD             R0, PC; dword_7967C8
2E7A88:  B               loc_2E7A98
2E7A8A:  LDR.W           R0, =(dword_7967D0 - 0x2E7A92)
2E7A8E:  ADD             R0, PC; dword_7967D0
2E7A90:  B               loc_2E7A98
2E7A92:  LDR.W           R0, =(dword_7967D8 - 0x2E7A9A)
2E7A96:  ADD             R0, PC; dword_7967D8
2E7A98:  LDR             R2, [R0]
2E7A9A:  UXTH            R0, R2
2E7A9C:  CMP             R0, R5
2E7A9E:  BEQ.W           loc_2E8032
2E7AA2:  LDR.W           R1, =(ThePaths_ptr - 0x2E7AAA)
2E7AA6:  ADD             R1, PC; ThePaths_ptr
2E7AA8:  LDR             R1, [R1]; ThePaths
2E7AAA:  ADD.W           R0, R1, R0,LSL#2
2E7AAE:  LDR.W           R1, [R0,#0x804]
2E7AB2:  MOVS            R0, #0
2E7AB4:  CMP             R1, #0
2E7AB6:  BEQ.W           loc_2E8034
2E7ABA:  EOR.W           R0, R4, #1
2E7ABE:  STR             R0, [SP,#0x148+var_120]
2E7AC0:  LDR.W           R0, =(ThePaths_ptr - 0x2E7AD4)
2E7AC4:  VMOV.F32        S19, #0.125
2E7AC8:  LDR.W           R1, =(bSequenceOtherWay_ptr - 0x2E7ADA)
2E7ACC:  VMOV.F32        S28, #1.0
2E7AD0:  ADD             R0, PC; ThePaths_ptr
2E7AD2:  STRH.W          R5, [SP,#0x148+var_D0]
2E7AD6:  ADD             R1, PC; bSequenceOtherWay_ptr
2E7AD8:  STRH.W          R5, [SP,#0x148+var_D4]
2E7ADC:  LDR             R3, [R0]; ThePaths
2E7ADE:  VMOV.F32        S17, #0.5
2E7AE2:  LDR.W           R0, =(SequenceElements_ptr - 0x2E7AF6)
2E7AE6:  VMOV.I32        D11, #0x3E000000
2E7AEA:  STRH.W          R5, [SP,#0x148+var_CC]
2E7AEE:  VMOV            S24, R8
2E7AF2:  ADD             R0, PC; SequenceElements_ptr
2E7AF4:  STRH.W          R5, [SP,#0x148+var_C8]
2E7AF8:  STRH.W          R5, [SP,#0x148+var_C4]
2E7AFC:  ADD.W           R10, SP, #0x148+var_D8
2E7B00:  LDR             R6, [R0]; SequenceElements
2E7B02:  MOV.W           R8, #1
2E7B06:  LDR.W           R0, =(SequenceRandomOffset_ptr - 0x2E7B12)
2E7B0A:  STRH.W          R5, [SP,#0x148+var_C0]
2E7B0E:  ADD             R0, PC; SequenceRandomOffset_ptr
2E7B10:  STRH.W          R5, [SP,#0x148+var_BC]
2E7B14:  STRH.W          R5, [SP,#0x148+var_B8]
2E7B18:  LDR             R4, [R0]; SequenceRandomOffset
2E7B1A:  LDR             R0, [R1]; bSequenceOtherWay
2E7B1C:  STR             R0, [SP,#0x148+var_F8]
2E7B1E:  LDR.W           R0, =(SequenceRandomOffset_ptr - 0x2E7B2A)
2E7B22:  LDR.W           R1, =(ThePaths_ptr - 0x2E7B34)
2E7B26:  ADD             R0, PC; SequenceRandomOffset_ptr
2E7B28:  STRH.W          R5, [SP,#0x148+var_B4]
2E7B2C:  STRH.W          R5, [SP,#0x148+var_B0]
2E7B30:  ADD             R1, PC; ThePaths_ptr
2E7B32:  STRH.W          R5, [SP,#0x148+var_AC]
2E7B36:  STRH.W          R5, [SP,#0x148+var_A8]
2E7B3A:  STRH.W          R5, [SP,#0x148+var_A4]
2E7B3E:  STRH.W          R5, [SP,#0x148+var_A0]
2E7B42:  STRH.W          R5, [SP,#0x148+var_9C]
2E7B46:  STRH.W          R5, [SP,#0x148+var_98]
2E7B4A:  STRH.W          R5, [SP,#0x148+var_94]
2E7B4E:  STRH.W          R5, [SP,#0x148+var_90]
2E7B52:  STRH.W          R5, [SP,#0x148+var_8C]
2E7B56:  STRH.W          R5, [SP,#0x148+var_84]
2E7B5A:  STRH.W          R5, [SP,#0x148+var_88]
2E7B5E:  STRH.W          R5, [SP,#0x148+var_80]
2E7B62:  STRH.W          R5, [SP,#0x148+var_7C]
2E7B66:  STRH.W          R5, [SP,#0x148+var_78]
2E7B6A:  STRH.W          R5, [SP,#0x148+var_74]
2E7B6E:  STRH.W          R5, [SP,#0x148+var_70]
2E7B72:  STRH.W          R5, [SP,#0x148+var_6C]
2E7B76:  STRH.W          R5, [SP,#0x148+var_68]
2E7B7A:  STRH.W          R5, [SP,#0x148+var_64]
2E7B7E:  LDR.W           R5, =(SequenceElements_ptr - 0x2E7B88)
2E7B82:  LDR             R0, [R0]; SequenceRandomOffset
2E7B84:  ADD             R5, PC; SequenceElements_ptr
2E7B86:  STR             R0, [SP,#0x148+var_FC]
2E7B88:  LDR             R0, [R1]; ThePaths
2E7B8A:  STR             R0, [SP,#0x148+var_100]
2E7B8C:  LDR             R0, [R5]; SequenceElements
2E7B8E:  STR             R0, [SP,#0x148+var_104]
2E7B90:  LDR.W           R0, =(ThePaths_ptr - 0x2E7B9C)
2E7B94:  VLDR            S31, [R7,#arg_10]
2E7B98:  ADD             R0, PC; ThePaths_ptr
2E7B9A:  VLDR            S26, [R7,#arg_4]
2E7B9E:  VLDR            S25, [R7,#arg_0]
2E7BA2:  LDR             R0, [R0]; ThePaths
2E7BA4:  STR             R0, [SP,#0x148+var_F4]
2E7BA6:  LDR.W           R0, =(ThePaths_ptr - 0x2E7BB2)
2E7BAA:  VLDR            S30, =0.0
2E7BAE:  ADD             R0, PC; ThePaths_ptr
2E7BB0:  VLDR            S27, =230.0
2E7BB4:  STR             R2, [SP,#0x148+var_D8]
2E7BB6:  LDR             R0, [R0]; ThePaths
2E7BB8:  STR             R0, [SP,#0x148+var_EC]
2E7BBA:  LDR.W           R0, =(TheCamera_ptr - 0x2E7BC4)
2E7BBE:  STR             R3, [SP,#0x148+var_110]
2E7BC0:  ADD             R0, PC; TheCamera_ptr
2E7BC2:  LDR             R0, [R0]; TheCamera
2E7BC4:  STR             R0, [SP,#0x148+var_124]
2E7BC6:  LDR.W           R0, =(TheCamera_ptr - 0x2E7BCE)
2E7BCA:  ADD             R0, PC; TheCamera_ptr
2E7BCC:  LDR             R0, [R0]; TheCamera
2E7BCE:  STR             R0, [SP,#0x148+var_128]
2E7BD0:  STRD.W          R4, R6, [SP,#0x148+var_118]
2E7BD4:  UXTH            R1, R2
2E7BD6:  ADD.W           R0, R3, R1,LSL#2
2E7BDA:  LDR.W           R0, [R0,#0x804]
2E7BDE:  CMP             R0, #0
2E7BE0:  BEQ.W           loc_2E8032
2E7BE4:  STR             R1, [SP,#0x148+var_E4]
2E7BE6:  LSRS            R1, R2, #0x10
2E7BE8:  RSB.W           R1, R1, R1,LSL#3
2E7BEC:  MOV             R5, R2
2E7BEE:  ADD.W           R9, R0, R1,LSL#2
2E7BF2:  MOV             R1, R9
2E7BF4:  LDRH.W          R0, [R1,#0x18]!
2E7BF8:  STR             R1, [SP,#0x148+var_10C]
2E7BFA:  AND.W           R11, R0, #0xF
2E7BFE:  STR.W           R11, [R6]
2E7C02:  BLX             rand
2E7C06:  LDR             R1, [R6]
2E7C08:  BLX             __aeabi_idivmod
2E7C0C:  STR             R1, [R4]
2E7C0E:  BLX             rand
2E7C12:  UBFX.W          R1, R0, #4, #1
2E7C16:  LDR             R0, [SP,#0x148+var_F8]
2E7C18:  CMP.W           R11, #0
2E7C1C:  STR             R1, [SP,#0x148+var_DC]
2E7C1E:  STR.W           R11, [SP,#0x148+var_F0]
2E7C22:  STRB            R1, [R0]
2E7C24:  BEQ.W           loc_2E8032
2E7C28:  STR             R5, [SP,#0x148+var_11C]
2E7C2A:  MOVS            R6, #0
2E7C2C:  STR.W           R9, [SP,#0x148+var_108]
2E7C30:  LDRSH.W         R0, [R9,#0x10]
2E7C34:  LDR             R1, [SP,#0x148+var_E4]
2E7C36:  STR             R0, [SP,#0x148+var_E0]
2E7C38:  LDR             R0, [SP,#0x148+var_100]
2E7C3A:  ADD.W           R0, R0, R1,LSL#2
2E7C3E:  LDR             R1, [SP,#0x148+var_104]
2E7C40:  LDR.W           R11, [R1]
2E7C44:  ADDW            R1, R0, #0xDA4
2E7C48:  STR             R1, [SP,#0x148+var_E8]
2E7C4A:  LDR             R1, [SP,#0x148+var_FC]
2E7C4C:  LDR.W           R0, [R0,#0xA44]
2E7C50:  STR             R0, [SP,#0x148+var_E4]
2E7C52:  LDR.W           R9, [R1]
2E7C56:  LDRD.W          R4, R5, [SP,#0x148+var_F4]
2E7C5A:  LDR             R2, [SP,#0x148+var_DC]
2E7C5C:  ADD.W           R0, R9, R6
2E7C60:  SUB.W           R1, R9, R6
2E7C64:  CMP             R2, #0
2E7C66:  IT EQ
2E7C68:  ADDEQ.W         R0, R1, R11
2E7C6C:  MOV             R1, R11
2E7C6E:  BLX             __aeabi_idivmod
2E7C72:  LDR             R0, [SP,#0x148+var_E0]
2E7C74:  ADDS            R2, R1, R0
2E7C76:  LDR             R0, [SP,#0x148+var_E4]
2E7C78:  LDR.W           R12, [R0,R2,LSL#2]
2E7C7C:  UXTH.W          R1, R12
2E7C80:  ADD.W           R0, R4, R1,LSL#2
2E7C84:  LDR.W           R0, [R0,#0x804]
2E7C88:  CBZ             R0, loc_2E7CD2
2E7C8A:  LDR             R3, [SP,#0x148+var_E8]
2E7C8C:  LDR             R3, [R3]
2E7C8E:  LDRH.W          R2, [R3,R2,LSL#1]
2E7C92:  UBFX.W          R2, R2, #0xA, #6
2E7C96:  LDR             R3, [SP,#0x148+var_EC]
2E7C98:  ADD.W           R2, R3, R2,LSL#2
2E7C9C:  LDR.W           R2, [R2,#0x804]
2E7CA0:  CBZ             R2, loc_2E7CD2
2E7CA2:  MOV.W           R2, R12,LSR#16
2E7CA6:  MOVS            R3, #0
2E7CA8:  MOVS            R5, #0
2E7CAA:  LDRH.W          R4, [R10,R3,LSL#2]
2E7CAE:  CMP             R4, R1
2E7CB0:  BNE             loc_2E7CC4
2E7CB2:  ADD.W           R4, R10, R3,LSL#2
2E7CB6:  LDRH            R4, [R4,#2]
2E7CB8:  CMP             R4, R2
2E7CBA:  MOV.W           R4, #0
2E7CBE:  IT EQ
2E7CC0:  MOVEQ           R4, #1
2E7CC2:  ORRS            R5, R4
2E7CC4:  ADDS            R3, #1
2E7CC6:  CMP             R8, R3
2E7CC8:  BNE             loc_2E7CAA
2E7CCA:  LSLS            R1, R5, #0x1F
2E7CCC:  LDRD.W          R4, R5, [SP,#0x148+var_F4]
2E7CD0:  BEQ             loc_2E7CDA
2E7CD2:  ADDS            R6, #1
2E7CD4:  CMP             R6, R5
2E7CD6:  BLT             loc_2E7C5A
2E7CD8:  B               loc_2E8032
2E7CDA:  RSB.W           R1, R2, R2,LSL#3
2E7CDE:  ADD.W           R4, R0, R1,LSL#2
2E7CE2:  LDRSH.W         R0, [R4,#8]!
2E7CE6:  MOV             R3, R4
2E7CE8:  LDRSH.W         R1, [R3,#2]!
2E7CEC:  VMOV            S0, R0
2E7CF0:  VCVT.F32.S32    S0, S0
2E7CF4:  VMOV            S2, R1
2E7CF8:  VCVT.F32.S32    S2, S2
2E7CFC:  LDR             R5, [SP,#0x148+var_108]
2E7CFE:  LDRSH.W         R0, [R5,#8]!
2E7D02:  MOV             R11, R5
2E7D04:  VMOV            S4, R0
2E7D08:  VCVT.F32.S32    S6, S4
2E7D0C:  LDRSH.W         R0, [R11,#2]!
2E7D10:  VMOV            S4, R0
2E7D14:  VCVT.F32.S32    S8, S4
2E7D18:  LDRH            R0, [R4,#0x10]
2E7D1A:  LSLS            R0, R0, #0x1A
2E7D1C:  BMI             loc_2E7D40
2E7D1E:  LDR             R0, [SP,#0x148+var_10C]
2E7D20:  LDRH            R0, [R0]
2E7D22:  LSLS            R0, R0, #0x1A
2E7D24:  MOV.W           R0, #0
2E7D28:  IT PL
2E7D2A:  MOVPL           R0, #1
2E7D2C:  LDR             R1, [SP,#0x148+var_120]
2E7D2E:  ORRS            R0, R1
2E7D30:  BNE             loc_2E7D48
2E7D32:  B               loc_2E7FDC
2E7D34:  DCFS 40.0
2E7D38:  DCFS 0.0
2E7D3C:  DCFS 230.0
2E7D40:  LDR             R0, [R7,#arg_24]
2E7D42:  CMP             R0, #0
2E7D44:  BNE.W           loc_2E7FDC
2E7D48:  VMOV.F32        S10, S19
2E7D4C:  ADDS            R2, R4, #4
2E7D4E:  VMOV.F32        S22, S24
2E7D52:  ADD.W           LR, R5, #4
2E7D56:  VMOV.F32        S24, S17
2E7D5A:  VMOV.F32        S17, S31
2E7D5E:  VMOV.F32        S27, S25
2E7D62:  VMOV.F32        S25, S26
2E7D66:  VMUL.F32        S4, S2, S10
2E7D6A:  VMUL.F32        S2, S6, S10
2E7D6E:  VMUL.F32        S6, S8, S10
2E7D72:  VMUL.F32        S0, S0, S10
2E7D76:  VSUB.F32        S10, S16, S4
2E7D7A:  VSUB.F32        S12, S18, S2
2E7D7E:  VSUB.F32        S14, S16, S6
2E7D82:  VSUB.F32        S8, S18, S0
2E7D86:  VMUL.F32        S10, S10, S10
2E7D8A:  VMUL.F32        S12, S12, S12
2E7D8E:  VMUL.F32        S14, S14, S14
2E7D92:  VMUL.F32        S8, S8, S8
2E7D96:  VADD.F32        S8, S8, S10
2E7D9A:  VADD.F32        S10, S12, S14
2E7D9E:  VSQRT.F32       S31, S8
2E7DA2:  VSQRT.F32       S29, S10
2E7DA6:  VSUB.F32        S10, S31, S20
2E7DAA:  VSUB.F32        S8, S29, S20
2E7DAE:  VMUL.F32        S12, S8, S10
2E7DB2:  VCMPE.F32       S12, #0.0
2E7DB6:  VMRS            APSR_nzcv, FPSCR
2E7DBA:  BGE             loc_2E7E70
2E7DBC:  LDRSH.W         R0, [LR]
2E7DC0:  VABS.F32        S21, S8
2E7DC4:  VABS.F32        S10, S10
2E7DC8:  LDR             R1, [R7,#arg_14]; CVector *
2E7DCA:  VMOV.F32        S1, S19
2E7DCE:  MOV             R6, R12
2E7DD0:  VMOV            S8, R0
2E7DD4:  MOV             R9, LR
2E7DD6:  VCVT.F32.S32    S8, S8
2E7DDA:  LDRSH.W         R0, [R2]
2E7DDE:  VMUL.F32        S4, S21, S4
2E7DE2:  VMOV            S12, R0
2E7DE6:  VADD.F32        S26, S21, S10
2E7DEA:  VCVT.F32.S32    S12, S12
2E7DEE:  VMUL.F32        S6, S10, S6
2E7DF2:  VMUL.F32        S8, S8, S1
2E7DF6:  VMUL.F32        S2, S10, S2
2E7DFA:  VMUL.F32        S0, S21, S0
2E7DFE:  VDIV.F32        S14, S28, S26
2E7E02:  VMUL.F32        S12, S12, S1
2E7E06:  VMUL.F32        S8, S10, S8
2E7E0A:  VADD.F32        S4, S4, S6
2E7E0E:  VADD.F32        S0, S0, S2
2E7E12:  VMUL.F32        S10, S21, S12
2E7E16:  VMUL.F32        S4, S14, S4
2E7E1A:  VMUL.F32        S0, S14, S0
2E7E1E:  VADD.F32        S2, S10, S8
2E7E22:  VSTR            S0, [R1]
2E7E26:  VSTR            S4, [R1,#4]
2E7E2A:  VMUL.F32        S2, S14, S2
2E7E2E:  VSTR            S2, [R1,#8]
2E7E32:  LDR             R0, [SP,#0x148+var_124]; this
2E7E34:  STR             R2, [SP,#0x148+var_DC]
2E7E36:  MOVS            R2, #0x40A00000; float
2E7E3C:  STR             R3, [SP,#0x148+var_E0]
2E7E3E:  BLX             j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
2E7E42:  LDR             R3, [SP,#0x148+var_E0]
2E7E44:  MOV             LR, R9
2E7E46:  LDR             R2, [SP,#0x148+var_DC]
2E7E48:  MOV             R12, R6
2E7E4A:  CMP             R0, #1
2E7E4C:  BNE             loc_2E7E70
2E7E4E:  VDIV.F32        S0, S21, S26
2E7E52:  VMOV.F32        S26, S25
2E7E56:  VMOV.F32        S25, S27
2E7E5A:  VLDR            S27, =230.0
2E7E5E:  VMOV.F32        S31, S17
2E7E62:  VMOV.F32        S17, S24
2E7E66:  VMOV.F32        S24, S22
2E7E6A:  VMOV.I32        D11, #0x3E000000
2E7E6E:  B               loc_2E7F70
2E7E70:  VSUB.F32        S2, S31, S17
2E7E74:  VMOV.F32        S31, S17
2E7E78:  VMOV.F32        S26, S25
2E7E7C:  VMOV.F32        S25, S27
2E7E80:  VLDR            S27, =230.0
2E7E84:  VMOV.F32        S17, S24
2E7E88:  VMOV.F32        S24, S22
2E7E8C:  VMOV.I32        D11, #0x3E000000
2E7E90:  VSUB.F32        S0, S29, S31
2E7E94:  VMUL.F32        S4, S0, S2
2E7E98:  VCMPE.F32       S4, #0.0
2E7E9C:  VMRS            APSR_nzcv, FPSCR
2E7EA0:  BGE.W           loc_2E7FDC
2E7EA4:  LDRSH.W         R1, [R11]
2E7EA8:  VABS.F32        S29, S0
2E7EAC:  LDRSH.W         R0, [R3]
2E7EB0:  VABS.F32        S2, S2
2E7EB4:  MOV             R9, R2
2E7EB6:  MOV             R11, R12
2E7EB8:  VMOV            S4, R1
2E7EBC:  MOV             R6, LR
2E7EBE:  VMOV            S0, R0
2E7EC2:  VCVT.F32.S32    S0, S0
2E7EC6:  LDRSH.W         R0, [R4]
2E7ECA:  VCVT.F32.S32    S4, S4
2E7ECE:  LDRSH.W         R1, [R5]
2E7ED2:  VADD.F32        S21, S29, S2
2E7ED6:  VMOV            S6, R0
2E7EDA:  VMOV            S8, R1
2E7EDE:  LDR             R1, [R7,#arg_14]; CVector *
2E7EE0:  VCVT.F32.S32    S6, S6
2E7EE4:  VCVT.F32.S32    S8, S8
2E7EE8:  LDRSH.W         R0, [LR]
2E7EEC:  VMUL.F32        S0, S0, S19
2E7EF0:  VMUL.F32        S4, S4, S19
2E7EF4:  VMOV            S10, R0
2E7EF8:  VDIV.F32        S14, S28, S21
2E7EFC:  VCVT.F32.S32    S10, S10
2E7F00:  LDRSH.W         R0, [R2]
2E7F04:  VMUL.F32        S8, S8, S19
2E7F08:  MOVS            R2, #0
2E7F0A:  VMUL.F32        S6, S6, S19
2E7F0E:  MOVT            R2, #0x40A0; float
2E7F12:  VMOV            S12, R0
2E7F16:  VMUL.F32        S4, S2, S4
2E7F1A:  VCVT.F32.S32    S12, S12
2E7F1E:  VMUL.F32        S0, S29, S0
2E7F22:  VMUL.F32        S10, S10, S19
2E7F26:  VMUL.F32        S8, S2, S8
2E7F2A:  VMUL.F32        S6, S29, S6
2E7F2E:  VMUL.F32        S12, S12, S19
2E7F32:  VADD.F32        S0, S0, S4
2E7F36:  VMUL.F32        S2, S2, S10
2E7F3A:  VADD.F32        S4, S6, S8
2E7F3E:  VMUL.F32        S10, S29, S12
2E7F42:  VMUL.F32        S0, S14, S0
2E7F46:  VMUL.F32        S4, S14, S4
2E7F4A:  VADD.F32        S2, S10, S2
2E7F4E:  VSTR            S4, [R1]
2E7F52:  VSTR            S0, [R1,#4]
2E7F56:  VMUL.F32        S2, S14, S2
2E7F5A:  VSTR            S2, [R1,#8]
2E7F5E:  LDR             R0, [SP,#0x148+var_128]; this
2E7F60:  BLX             j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
2E7F64:  MOV             LR, R6
2E7F66:  MOV             R2, R9
2E7F68:  MOV             R12, R11
2E7F6A:  CBNZ            R0, loc_2E7FDC
2E7F6C:  VDIV.F32        S0, S29, S21
2E7F70:  LDR             R0, [R7,#arg_20]
2E7F72:  VSTR            S0, [R0]
2E7F76:  VLD1.32         {D16[0]}, [R4@32]
2E7F7A:  LDRSH.W         R0, [R2]
2E7F7E:  VLD1.32         {D17[0]}, [R5@32]
2E7F82:  VMOVL.S16       Q9, D16
2E7F86:  VMOV            S2, R0
2E7F8A:  VMOVL.S16       Q8, D17
2E7F8E:  VCVT.F32.S32    D18, D18
2E7F92:  LDRSH.W         R1, [LR]
2E7F96:  VCVT.F32.S32    S2, S2
2E7F9A:  VCVT.F32.S32    D16, D16
2E7F9E:  VMOV            S4, R1
2E7FA2:  VMUL.F32        D17, D18, D11
2E7FA6:  VCVT.F32.S32    S4, S4
2E7FAA:  VMUL.F32        D16, D16, D11
2E7FAE:  VMUL.F32        S2, S2, S19
2E7FB2:  VSUB.F32        D16, D16, D17
2E7FB6:  VMUL.F32        S4, S4, S19
2E7FBA:  VMUL.F32        D0, D16, D16
2E7FBE:  VSUB.F32        S2, S4, S2
2E7FC2:  VADD.F32        S0, S0, S1
2E7FC6:  VABS.F32        S2, S2
2E7FCA:  VSQRT.F32       S0, S0
2E7FCE:  VMUL.F32        S0, S0, S17
2E7FD2:  VCMPE.F32       S2, S0
2E7FD6:  VMRS            APSR_nzcv, FPSCR
2E7FDA:  BLE             loc_2E8042
2E7FDC:  VLD1.32         {D16[0]}, [R5@32]
2E7FE0:  LDR             R3, [SP,#0x148+var_110]
2E7FE2:  CMP.W           R8, #0x1C
2E7FE6:  VLD1.32         {D17[0]}, [R4@32]
2E7FEA:  STR.W           R12, [R10,R8,LSL#2]
2E7FEE:  LDRD.W          R4, R6, [SP,#0x148+var_118]
2E7FF2:  BGT             loc_2E8032
2E7FF4:  VMOVL.S16       Q9, D16
2E7FF8:  ADD.W           R8, R8, #1
2E7FFC:  VMOVL.S16       Q8, D17
2E8000:  MOV             R2, R12
2E8002:  VCVT.F32.S32    D18, D18
2E8006:  VCVT.F32.S32    D16, D16
2E800A:  VMUL.F32        D17, D18, D11
2E800E:  VMUL.F32        D16, D16, D11
2E8012:  VSUB.F32        D16, D16, D17
2E8016:  VMUL.F32        D0, D16, D16
2E801A:  VADD.F32        S0, S0, S1
2E801E:  VSQRT.F32       S0, S0
2E8022:  VADD.F32        S30, S30, S0
2E8026:  VCMPE.F32       S30, S27
2E802A:  VMRS            APSR_nzcv, FPSCR
2E802E:  BLT.W           loc_2E7BD4
2E8032:  MOVS            R0, #0
2E8034:  ADD             SP, SP, #0xE8
2E8036:  VPOP            {D8-D15}
2E803A:  ADD             SP, SP, #4
2E803C:  POP.W           {R8-R11}
2E8040:  POP             {R4-R7,PC}
2E8042:  MOV             R4, R12
2E8044:  BLX             rand
2E8048:  LDR.W           R9, [R7,#arg_18]
2E804C:  TST.W           R0, #8
2E8050:  BNE             loc_2E8074
2E8052:  LDR.W           R8, [R7,#arg_1C]
2E8056:  STR.W           R4, [R9]
2E805A:  LDR             R0, [SP,#0x148+var_11C]
2E805C:  STR.W           R0, [R8]
2E8060:  LDR             R0, [R7,#arg_20]
2E8062:  VLDR            S0, [R0]
2E8066:  VSUB.F32        S0, S28, S0
2E806A:  VSTR            S0, [R0]
2E806E:  LDR.W           R6, [R8]
2E8072:  B               loc_2E8084
2E8074:  LDR.W           R8, [R7,#arg_1C]
2E8078:  MOV             R6, R4
2E807A:  LDR             R0, [SP,#0x148+var_11C]
2E807C:  STR.W           R0, [R9]
2E8080:  STR.W           R6, [R8]
2E8084:  LDR             R0, =(ThePaths_ptr - 0x2E808E)
2E8086:  UXTH            R1, R6
2E8088:  LDR             R4, [R7,#arg_24]
2E808A:  ADD             R0, PC; ThePaths_ptr
2E808C:  LDR             R0, [R0]; ThePaths
2E808E:  ADD.W           R0, R0, R1,LSL#2
2E8092:  LSRS            R1, R6, #0x10
2E8094:  LSLS            R2, R1, #3
2E8096:  LDR.W           R3, [R0,#0x804]
2E809A:  SUB.W           R0, R2, R6,LSR#16
2E809E:  ADD.W           R0, R3, R0,LSL#2
2E80A2:  LDRH            R0, [R0,#0x18]
2E80A4:  LSLS            R0, R0, #0x1B
2E80A6:  BPL             loc_2E80DC
2E80A8:  LDR             R0, =(ThePaths_ptr - 0x2E80B6)
2E80AA:  RSB.W           R1, R1, R1,LSL#3
2E80AE:  LDR.W           R2, [R9]
2E80B2:  ADD             R0, PC; ThePaths_ptr
2E80B4:  ADD.W           R1, R3, R1,LSL#2
2E80B8:  LDR             R0, [R0]; ThePaths
2E80BA:  UXTH            R6, R2
2E80BC:  LSRS            R5, R2, #0x10
2E80BE:  ADD.W           R6, R0, R6,LSL#2
2E80C2:  LSLS            R5, R5, #3
2E80C4:  SUB.W           R2, R5, R2,LSR#16
2E80C8:  LDR.W           R6, [R6,#0x804]
2E80CC:  ADD.W           R2, R6, R2,LSL#2
2E80D0:  BLX             j__ZN9CPathFind28ThisNodeWillLeadIntoADeadEndEP9CPathNodeS1_; CPathFind::ThisNodeWillLeadIntoADeadEnd(CPathNode *,CPathNode *)
2E80D4:  CMP             R0, #1
2E80D6:  BNE             loc_2E80DC
2E80D8:  CMP             R4, #0
2E80DA:  BNE             loc_2E8032
2E80DC:  LDR             R0, [R7,#arg_14]
2E80DE:  MOVS            R1, #0
2E80E0:  LDR             R2, [R7,#arg_8]
2E80E2:  VLDR            S0, [R0]
2E80E6:  VLDR            S2, [R0,#4]
2E80EA:  MOV             R3, R2
2E80EC:  VSUB.F32        S0, S0, S18
2E80F0:  MOVS            R0, #0
2E80F2:  VSUB.F32        S2, S2, S16
2E80F6:  VMUL.F32        S6, S0, S0
2E80FA:  VMUL.F32        S4, S2, S2
2E80FE:  VADD.F32        S4, S6, S4
2E8102:  VSQRT.F32       S4, S4
2E8106:  VDIV.F32        S2, S2, S4
2E810A:  VDIV.F32        S0, S0, S4
2E810E:  VMUL.F32        S2, S2, S25
2E8112:  VMUL.F32        S0, S0, S24
2E8116:  VADD.F32        S0, S0, S2
2E811A:  VCMPE.F32       S0, S26
2E811E:  VMRS            APSR_nzcv, FPSCR
2E8122:  IT GT
2E8124:  MOVGT           R1, #1
2E8126:  ORR.W           R2, R1, R3
2E812A:  ANDS            R1, R3
2E812C:  CMP             R1, R2
2E812E:  BNE.W           loc_2E8034
2E8132:  LDR             R0, =(ThePaths_ptr - 0x2E813C)
2E8134:  LDR.W           R6, [R9]
2E8138:  ADD             R0, PC; ThePaths_ptr
2E813A:  LDR             R0, [R0]; ThePaths
2E813C:  UXTH            R2, R6
2E813E:  LSRS            R1, R6, #0x10
2E8140:  ADD.W           R0, R0, R2,LSL#2
2E8144:  LSLS            R5, R1, #3
2E8146:  LDR.W           R3, [R0,#0x804]
2E814A:  SUB.W           R0, R5, R6,LSR#16
2E814E:  ADD.W           R0, R3, R0,LSL#2
2E8152:  LDRH            R0, [R0,#0x18]
2E8154:  ANDS.W          R0, R0, #0xF
2E8158:  BEQ             loc_2E81A0
2E815A:  LDR             R6, =(ThePaths_ptr - 0x2E8164)
2E815C:  RSB.W           R1, R1, R1,LSL#3
2E8160:  ADD             R6, PC; ThePaths_ptr
2E8162:  ADD.W           R1, R3, R1,LSL#2
2E8166:  LDR             R3, [R6]; ThePaths
2E8168:  MOVS            R6, #0
2E816A:  LDRSH.W         R1, [R1,#0x10]
2E816E:  ADD.W           R3, R3, R2,LSL#2
2E8172:  LDR.W           R3, [R3,#0xA44]
2E8176:  ADD.W           R1, R3, R1,LSL#2
2E817A:  BIC.W           R3, R0, #0xFF000000
2E817E:  LDRH.W          R0, [R8],#2
2E8182:  LDRH.W          R5, [R1,R6,LSL#2]
2E8186:  CMP             R5, R0
2E8188:  BNE             loc_2E8198
2E818A:  ADD.W           R4, R1, R6,LSL#2
2E818E:  LDRH.W          R5, [R8]
2E8192:  LDRH            R4, [R4,#2]
2E8194:  CMP             R4, R5
2E8196:  BEQ             loc_2E81A4
2E8198:  ADDS            R6, #1
2E819A:  CMP             R6, R3
2E819C:  BLT             loc_2E8182
2E819E:  B               loc_2E81A4
2E81A0:  LDRH.W          R0, [R8],#2
2E81A4:  LDR             R6, =(gString_ptr - 0x2E81AE)
2E81A6:  LDRH.W          R1, [R8]
2E81AA:  ADD             R6, PC; gString_ptr
2E81AC:  LDRH.W          R3, [R9,#2]
2E81B0:  STRD.W          R0, R1, [SP,#0x148+var_148]
2E81B4:  ADR             R1, aTellObbeItHapp; "tell Obbe it happened again %d/%d %d/%d"
2E81B6:  LDR             R0, [R6]; gString
2E81B8:  BL              sub_5E6BC0
2E81BC:  MOVS            R0, #1
2E81BE:  B               loc_2E8034
