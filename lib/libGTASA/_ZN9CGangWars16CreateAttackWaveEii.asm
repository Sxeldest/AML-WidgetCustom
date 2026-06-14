; =========================================================
; Game Engine Function: _ZN9CGangWars16CreateAttackWaveEii
; Address            : 0x30C880 - 0x30D3EC
; =========================================================

30C880:  PUSH            {R4-R7,LR}
30C882:  ADD             R7, SP, #0xC
30C884:  PUSH.W          {R8-R11}
30C888:  SUB             SP, SP, #4
30C88A:  VPUSH           {D8-D15}
30C88E:  SUB             SP, SP, #0xE8; float
30C890:  MOV             R8, R0
30C892:  ADD             R0, SP, #0x148+var_6C; int
30C894:  MOV             R10, R1
30C896:  MOV.W           R1, #0xFFFFFFFF
30C89A:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30C89E:  MOV.W           R0, #0xFFFFFFFF; int
30C8A2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30C8A6:  MOV             R9, R0
30C8A8:  LDR.W           R0, =(_ZN5CGame8currAreaE_ptr - 0x30C8B0)
30C8AC:  ADD             R0, PC; _ZN5CGame8currAreaE_ptr
30C8AE:  LDR             R0, [R0]; CGame::currArea ...
30C8B0:  LDR             R0, [R0]; CGame::currArea
30C8B2:  CMP             R0, #0
30C8B4:  BNE.W           loc_30D3DA
30C8B8:  VLDR            S0, =950.0
30C8BC:  VLDR            S2, [SP,#0x148+var_64]
30C8C0:  VCMPE.F32       S2, S0
30C8C4:  VMRS            APSR_nzcv, FPSCR
30C8C8:  BGT.W           loc_30D3DA
30C8CC:  VMOV.F32        S0, #-20.0
30C8D0:  VLDR            S4, [SP,#0x148+var_6C]
30C8D4:  VMOV.F32        S2, #20.0
30C8D8:  VLDR            S6, [SP,#0x148+var_68]
30C8DC:  LDR.W           R0, =(ThePaths_ptr - 0x30C8E4)
30C8E0:  ADD             R0, PC; ThePaths_ptr
30C8E2:  LDR             R0, [R0]; ThePaths ; this
30C8E4:  VADD.F32        S8, S4, S0
30C8E8:  VADD.F32        S4, S4, S2
30C8EC:  VADD.F32        S0, S6, S0
30C8F0:  VMOV            R1, S8; float
30C8F4:  VMOV            R2, S4; float
30C8F8:  VMOV            R3, S0; float
30C8FC:  VADD.F32        S0, S6, S2
30C900:  VSTR            S0, [SP,#0x148+var_148]
30C904:  BLX             j__ZN9CPathFind21AreNodesLoadedForAreaEffff; CPathFind::AreNodesLoadedForArea(float,float,float,float)
30C908:  CMP             R0, #1
30C90A:  BNE.W           loc_30D3DA
30C90E:  LDR.W           R0, =(_ZN9CGangWars5Gang1E_ptr - 0x30C91A)
30C912:  LDR.W           R1, =(_ZN11CPopulation17m_nNumPedsInGroupE_ptr - 0x30C920)
30C916:  ADD             R0, PC; _ZN9CGangWars5Gang1E_ptr
30C918:  LDR.W           R2, =(_ZN11CPopulation18m_TranslationArrayE_ptr - 0x30C924)
30C91C:  ADD             R1, PC; _ZN11CPopulation17m_nNumPedsInGroupE_ptr
30C91E:  LDR             R0, [R0]; CGangWars::Gang1 ...
30C920:  ADD             R2, PC; _ZN11CPopulation18m_TranslationArrayE_ptr
30C922:  LDR             R3, [R1]; CPopulation::m_nNumPedsInGroup ...
30C924:  LDR             R1, [R2]; CPopulation::m_TranslationArray ...
30C926:  LDR             R0, [R0]; CGangWars::Gang1
30C928:  ADD.W           R2, R0, R0,LSL#1
30C92C:  ADD.W           R1, R1, R2,LSL#2
30C930:  LDR.W           R1, [R1,#0xD8]
30C934:  LDRSH.W         R2, [R3,R1,LSL#1]
30C938:  CMP             R2, #1
30C93A:  BLT             loc_30C96C
30C93C:  LDR.W           R3, =(_ZN11CPopulation11m_PedGroupsE_ptr - 0x30C94A)
30C940:  MOVS            R6, #0x2A ; '*'
30C942:  LDR.W           R5, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x30C94C)
30C946:  ADD             R3, PC; _ZN11CPopulation11m_PedGroupsE_ptr
30C948:  ADD             R5, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
30C94A:  LDR             R3, [R3]; CPopulation::m_PedGroups ...
30C94C:  MLA.W           R3, R1, R6, R3
30C950:  MOVS            R6, #0
30C952:  LDR             R5, [R5]; CStreaming::ms_aInfoForModel ...
30C954:  LDRH.W          R4, [R3,R6,LSL#1]
30C958:  ADD.W           R4, R4, R4,LSL#2
30C95C:  ADD.W           R4, R5, R4,LSL#2
30C960:  LDRB            R4, [R4,#0x10]
30C962:  CMP             R4, #1
30C964:  BEQ             loc_30C98A
30C966:  ADDS            R6, #1
30C968:  CMP             R6, R2
30C96A:  BLT             loc_30C954
30C96C:  LDR.W           R0, =(_ZN11CPopulation11m_PedGroupsE_ptr - 0x30C978)
30C970:  MOVS            R2, #0x2A ; '*'; int
30C972:  MULS            R1, R2
30C974:  ADD             R0, PC; _ZN11CPopulation11m_PedGroupsE_ptr
30C976:  LDR             R0, [R0]; CPopulation::m_PedGroups ...
30C978:  LDRH            R0, [R0,R1]; this
30C97A:  MOVS            R1, #8; int
30C97C:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
30C980:  LDR.W           R0, =(_ZN9CGangWars5Gang1E_ptr - 0x30C988)
30C984:  ADD             R0, PC; _ZN9CGangWars5Gang1E_ptr
30C986:  LDR             R0, [R0]; CGangWars::Gang1 ...
30C988:  LDR             R0, [R0]; CGangWars::Gang1
30C98A:  LDR.W           R1, =(_ZN9CGangWars5Gang2E_ptr - 0x30C992)
30C98E:  ADD             R1, PC; _ZN9CGangWars5Gang2E_ptr
30C990:  LDR             R1, [R1]; CGangWars::Gang2 ...
30C992:  LDR             R1, [R1]; CGangWars::Gang2
30C994:  CMP             R0, R1
30C996:  BEQ             loc_30CA00
30C998:  LDR.W           R0, =(_ZN11CPopulation18m_TranslationArrayE_ptr - 0x30C9A8)
30C99C:  ADD.W           R1, R1, R1,LSL#1
30C9A0:  LDR.W           R2, =(_ZN11CPopulation17m_nNumPedsInGroupE_ptr - 0x30C9AA)
30C9A4:  ADD             R0, PC; _ZN11CPopulation18m_TranslationArrayE_ptr
30C9A6:  ADD             R2, PC; _ZN11CPopulation17m_nNumPedsInGroupE_ptr
30C9A8:  LDR             R0, [R0]; CPopulation::m_TranslationArray ...
30C9AA:  LDR             R2, [R2]; CPopulation::m_nNumPedsInGroup ...
30C9AC:  ADD.W           R0, R0, R1,LSL#2
30C9B0:  LDR.W           R0, [R0,#0xD8]
30C9B4:  LDRSH.W         R1, [R2,R0,LSL#1]
30C9B8:  CMP             R1, #1
30C9BA:  BLT             loc_30C9EC
30C9BC:  LDR.W           R2, =(_ZN11CPopulation11m_PedGroupsE_ptr - 0x30C9CA)
30C9C0:  MOVS            R3, #0x2A ; '*'
30C9C2:  LDR.W           R6, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x30C9CC)
30C9C6:  ADD             R2, PC; _ZN11CPopulation11m_PedGroupsE_ptr
30C9C8:  ADD             R6, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
30C9CA:  LDR             R2, [R2]; CPopulation::m_PedGroups ...
30C9CC:  MLA.W           R2, R0, R3, R2
30C9D0:  MOVS            R3, #0
30C9D2:  LDR             R6, [R6]; CStreaming::ms_aInfoForModel ...
30C9D4:  LDRH.W          R5, [R2,R3,LSL#1]
30C9D8:  ADD.W           R5, R5, R5,LSL#2
30C9DC:  ADD.W           R5, R6, R5,LSL#2
30C9E0:  LDRB            R5, [R5,#0x10]
30C9E2:  CMP             R5, #1
30C9E4:  BEQ             loc_30CA00
30C9E6:  ADDS            R3, #1
30C9E8:  CMP             R3, R1
30C9EA:  BLT             loc_30C9D4
30C9EC:  LDR.W           R1, =(_ZN11CPopulation11m_PedGroupsE_ptr - 0x30C9F8)
30C9F0:  MOVS            R2, #0x2A ; '*'; int
30C9F2:  MULS            R0, R2
30C9F4:  ADD             R1, PC; _ZN11CPopulation11m_PedGroupsE_ptr
30C9F6:  LDR             R1, [R1]; CPopulation::m_PedGroups ...
30C9F8:  LDRH            R0, [R1,R0]; this
30C9FA:  MOVS            R1, #8; int
30C9FC:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
30CA00:  SUB.W           R1, R8, #1
30CA04:  CMP             R1, #4
30CA06:  BHI             loc_30CA2A
30CA08:  ADR.W           R2, dword_30D43C
30CA0C:  ADR.W           R0, dword_30D428
30CA10:  LDR.W           R6, [R2,R1,LSL#2]
30CA14:  ADR.W           R2, dword_30D450
30CA18:  LDR.W           R0, [R0,R1,LSL#2]
30CA1C:  LDR.W           R5, [R2,R1,LSL#2]
30CA20:  ADR.W           R2, dword_30D464
30CA24:  LDR.W           R3, [R2,R1,LSL#2]
30CA28:  B               loc_30CA36
30CA2A:  MOV.W           R0, #0x150
30CA2E:  MOVS            R6, #5
30CA30:  MOV.W           R5, #0x15A
30CA34:  MOVS            R3, #0x16
30CA36:  LDR.W           R1, =(_ZN9CGangWars16bTrainingMissionE_ptr - 0x30CA3E)
30CA3A:  ADD             R1, PC; _ZN9CGangWars16bTrainingMissionE_ptr
30CA3C:  LDR             R1, [R1]; CGangWars::bTrainingMission ...
30CA3E:  LDRB            R1, [R1]; CGangWars::bTrainingMission
30CA40:  CBZ             R1, loc_30CA76
30CA42:  CMP.W           R8, #0
30CA46:  BEQ             loc_30CA5C
30CA48:  CMP.W           R8, #1
30CA4C:  BNE             loc_30CA6A
30CA4E:  MOV.W           R5, #0x15A
30CA52:  MOVS            R3, #0x16
30CA54:  MOVS            R6, #0x16
30CA56:  MOV.W           R0, #0x15A
30CA5A:  B               loc_30CA76
30CA5C:  MOV.W           R5, #0x150
30CA60:  MOVS            R3, #5
30CA62:  MOVS            R6, #5
30CA64:  MOV.W           R0, #0x150
30CA68:  B               loc_30CA76
30CA6A:  MOV.W           R5, #0x174
30CA6E:  MOVS            R3, #0x20 ; ' '
30CA70:  MOVS            R6, #0x20 ; ' '
30CA72:  MOV.W           R0, #(elf_hash_bucket+0x78); this
30CA76:  LDR.W           R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x30CA82)
30CA7A:  ADD.W           R2, R0, R0,LSL#2; int
30CA7E:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
30CA80:  LDR             R1, [R1]; CStreaming::ms_aInfoForModel ...
30CA82:  ADD.W           R1, R1, R2,LSL#2
30CA86:  LDRB            R1, [R1,#0x10]
30CA88:  CMP             R1, #1
30CA8A:  BNE             loc_30CB0C
30CA8C:  LDR.W           R1, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x30CA98)
30CA90:  ADD.W           R2, R5, R5,LSL#2
30CA94:  ADD             R1, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
30CA96:  LDR             R1, [R1]; CStreaming::ms_aInfoForModel ...
30CA98:  ADD.W           R1, R1, R2,LSL#2
30CA9C:  LDRB            R1, [R1,#0x10]
30CA9E:  CMP             R1, #1
30CAA0:  BNE             loc_30CB0C
30CAA2:  LDR.W           R0, =(_ZN9CGangWars5Gang1E_ptr - 0x30CAAE)
30CAA6:  LDR.W           R1, =(_ZN11CPopulation17m_nNumPedsInGroupE_ptr - 0x30CAB8)
30CAAA:  ADD             R0, PC; _ZN9CGangWars5Gang1E_ptr
30CAAC:  LDR.W           R2, =(_ZN11CPopulation18m_TranslationArrayE_ptr - 0x30CABC)
30CAB0:  STRD.W          R6, R3, [SP,#0x148+var_F0]
30CAB4:  ADD             R1, PC; _ZN11CPopulation17m_nNumPedsInGroupE_ptr
30CAB6:  LDR             R0, [R0]; CGangWars::Gang1 ...
30CAB8:  ADD             R2, PC; _ZN11CPopulation18m_TranslationArrayE_ptr
30CABA:  LDR             R6, [R0]; CGangWars::Gang1
30CABC:  LDR             R0, [R1]; CPopulation::m_nNumPedsInGroup ...
30CABE:  LDR             R1, [R2]; CPopulation::m_TranslationArray ...
30CAC0:  ADD.W           R2, R6, R6,LSL#1
30CAC4:  ADD.W           R1, R1, R2,LSL#2
30CAC8:  LDR.W           R1, [R1,#0xD8]
30CACC:  LDRSH.W         R0, [R0,R1,LSL#1]
30CAD0:  CMP             R0, #1
30CAD2:  BLT.W           loc_30D3DA
30CAD6:  LDR.W           R2, =(_ZN11CPopulation11m_PedGroupsE_ptr - 0x30CAE2)
30CADA:  MOVS            R3, #0x2A ; '*'
30CADC:  MOVS            R4, #0
30CADE:  ADD             R2, PC; _ZN11CPopulation11m_PedGroupsE_ptr
30CAE0:  LDR             R2, [R2]; CPopulation::m_PedGroups ...
30CAE2:  MLA.W           R1, R1, R3, R2
30CAE6:  LDR.W           R3, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x30CAF0)
30CAEA:  MOVS            R2, #0
30CAEC:  ADD             R3, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
30CAEE:  LDR             R3, [R3]; CStreaming::ms_aInfoForModel ...
30CAF0:  LDRH.W          R5, [R1,R2,LSL#1]
30CAF4:  ADD.W           R5, R5, R5,LSL#2
30CAF8:  ADD.W           R5, R3, R5,LSL#2
30CAFC:  LDRB            R5, [R5,#0x10]
30CAFE:  CMP             R5, #1
30CB00:  BEQ             loc_30CB20
30CB02:  ADDS            R2, #1
30CB04:  CMP             R2, R0
30CB06:  BLT             loc_30CAF0
30CB08:  B.W             loc_30D3DC
30CB0C:  MOVS            R1, #0; int
30CB0E:  MOVS            R4, #0
30CB10:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
30CB14:  MOV             R0, R5; this
30CB16:  MOVS            R1, #0; int
30CB18:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
30CB1C:  B.W             loc_30D3DC
30CB20:  LDR.W           R0, =(_ZN9CGangWars5Gang2E_ptr - 0x30CB2C)
30CB24:  LDR.W           R1, =(_ZN11CPopulation17m_nNumPedsInGroupE_ptr - 0x30CB32)
30CB28:  ADD             R0, PC; _ZN9CGangWars5Gang2E_ptr
30CB2A:  LDR.W           R2, =(_ZN11CPopulation18m_TranslationArrayE_ptr - 0x30CB36)
30CB2E:  ADD             R1, PC; _ZN11CPopulation17m_nNumPedsInGroupE_ptr
30CB30:  LDR             R0, [R0]; CGangWars::Gang2 ...
30CB32:  ADD             R2, PC; _ZN11CPopulation18m_TranslationArrayE_ptr
30CB34:  LDR             R3, [R0]; CGangWars::Gang2
30CB36:  LDR             R0, [R1]; CPopulation::m_nNumPedsInGroup ...
30CB38:  LDR             R1, [R2]; CPopulation::m_TranslationArray ...
30CB3A:  ADD.W           R2, R3, R3,LSL#1
30CB3E:  STR             R3, [SP,#0x148+var_C0]
30CB40:  ADD.W           R1, R1, R2,LSL#2
30CB44:  LDR.W           R1, [R1,#0xD8]
30CB48:  LDRSH.W         R0, [R0,R1,LSL#1]
30CB4C:  CMP             R0, #1
30CB4E:  BLT.W           loc_30D3DA
30CB52:  LDR.W           R2, =(_ZN11CPopulation11m_PedGroupsE_ptr - 0x30CB5E)
30CB56:  MOVS            R3, #0x2A ; '*'
30CB58:  MOVS            R4, #0
30CB5A:  ADD             R2, PC; _ZN11CPopulation11m_PedGroupsE_ptr
30CB5C:  LDR             R2, [R2]; CPopulation::m_PedGroups ...
30CB5E:  MLA.W           R1, R1, R3, R2
30CB62:  LDR.W           R3, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x30CB6C)
30CB66:  MOVS            R2, #0
30CB68:  ADD             R3, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
30CB6A:  LDR             R3, [R3]; CStreaming::ms_aInfoForModel ...
30CB6C:  LDRH.W          R5, [R1,R2,LSL#1]
30CB70:  ADD.W           R5, R5, R5,LSL#2
30CB74:  ADD.W           R5, R3, R5,LSL#2
30CB78:  LDRB            R5, [R5,#0x10]
30CB7A:  CMP             R5, #1
30CB7C:  BEQ             loc_30CBB0
30CB7E:  ADDS            R2, #1
30CB80:  CMP             R2, R0
30CB82:  BLT             loc_30CB6C
30CB84:  B.W             loc_30D3DC
30CB88:  DCFS 950.0
30CB8C:  DCFS 1000000.0
30CB90:  DCFS 4.6566e-10
30CB94:  DCFS 1.3
30CB98:  DCFS 1.6
30CB9C:  DCFS -0.3
30CBA0:  DCFS 70.0
30CBA4:  DCFS 0.3
30CBA8:  DCFS 1.2
30CBAC:  DCFS 0.7
30CBB0:  ADD.W           R0, R8, #3
30CBB4:  STR             R6, [SP,#0x148+var_B0]
30CBB6:  STR.W           R9, [SP,#0x148+var_CC]
30CBBA:  VMOV.F32        S18, #15.0
30CBBE:  VMOV            S0, R0
30CBC2:  LDR.W           R0, =(TheCamera_ptr - 0x30CBD2)
30CBC6:  LDR.W           R1, =(gaGangColoursG_ptr - 0x30CBDC)
30CBCA:  VMOV.F32        S28, #3.0
30CBCE:  ADD             R0, PC; TheCamera_ptr
30CBD0:  VCVT.F32.S32    S0, S0
30CBD4:  LDR.W           R2, =(gaGangColoursR_ptr - 0x30CBE6)
30CBD8:  ADD             R1, PC; gaGangColoursG_ptr
30CBDA:  LDR             R0, [R0]; TheCamera
30CBDC:  VMOV.F32        S30, #-1.5
30CBE0:  STR             R0, [SP,#0x148+var_AC]
30CBE2:  ADD             R2, PC; gaGangColoursR_ptr
30CBE4:  LDR.W           R0, =(_ZN9CGangWars10DifficultyE_ptr - 0x30CBF8)
30CBE8:  VMOV.F32        S25, #25.0
30CBEC:  VLDR            S29, =1000000.0
30CBF0:  MOV.W           R11, #0
30CBF4:  ADD             R0, PC; _ZN9CGangWars10DifficultyE_ptr
30CBF6:  VLDR            S26, =4.6566e-10
30CBFA:  VMOV.F32        S31, S29
30CBFE:  VLDR            S19, =1.3
30CC02:  LDR             R0, [R0]; CGangWars::Difficulty ...
30CC04:  VMOV.F32        S24, S29
30CC08:  STR             R0, [SP,#0x148+var_104]
30CC0A:  LDR.W           R0, =(_ZN9CGangWars16bTrainingMissionE_ptr - 0x30CC16)
30CC0E:  VLDR            S21, =1.6
30CC12:  ADD             R0, PC; _ZN9CGangWars16bTrainingMissionE_ptr
30CC14:  VLDR            S23, =-0.3
30CC18:  VLDR            S27, =70.0
30CC1C:  LDR             R0, [R0]; CGangWars::bTrainingMission ...
30CC1E:  STR             R0, [SP,#0x148+var_108]
30CC20:  LDR.W           R0, =(_ZN11CPopulation18m_TranslationArrayE_ptr - 0x30CC2C)
30CC24:  VSTR            S0, [SP,#0x148+var_100]
30CC28:  ADD             R0, PC; _ZN11CPopulation18m_TranslationArrayE_ptr
30CC2A:  STR.W           R10, [SP,#0x148+var_10C]
30CC2E:  STR.W           R8, [SP,#0x148+var_FC]
30CC32:  LDR             R0, [R0]; CPopulation::m_TranslationArray ...
30CC34:  STR             R0, [SP,#0x148+var_110]
30CC36:  LDR.W           R0, =(_ZN11CPopulation17m_nNumPedsInGroupE_ptr - 0x30CC3E)
30CC3A:  ADD             R0, PC; _ZN11CPopulation17m_nNumPedsInGroupE_ptr
30CC3C:  LDR             R0, [R0]; CPopulation::m_nNumPedsInGroup ...
30CC3E:  STR             R0, [SP,#0x148+var_B8]
30CC40:  LDR.W           R0, =(_ZN11CPopulation11m_PedGroupsE_ptr - 0x30CC48)
30CC44:  ADD             R0, PC; _ZN11CPopulation11m_PedGroupsE_ptr
30CC46:  LDR             R0, [R0]; CPopulation::m_PedGroups ...
30CC48:  STR             R0, [SP,#0x148+var_A8]
30CC4A:  LDR.W           R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x30CC52)
30CC4E:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
30CC50:  LDR.W           R9, [R0]; CStreaming::ms_aInfoForModel ...
30CC54:  LDR.W           R0, =(_ZN9CGangWars5Gang1E_ptr - 0x30CC5C)
30CC58:  ADD             R0, PC; _ZN9CGangWars5Gang1E_ptr
30CC5A:  LDR             R0, [R0]; CGangWars::Gang1 ...
30CC5C:  STR             R0, [SP,#0x148+var_D0]
30CC5E:  LDR.W           R0, =(_ZN9CGangWars10DifficultyE_ptr - 0x30CC66)
30CC62:  ADD             R0, PC; _ZN9CGangWars10DifficultyE_ptr
30CC64:  LDR             R0, [R0]; CGangWars::Difficulty ...
30CC66:  STR             R0, [SP,#0x148+var_D4]
30CC68:  LDR.W           R0, =(_ZN9CGangWars10DifficultyE_ptr - 0x30CC70)
30CC6C:  ADD             R0, PC; _ZN9CGangWars10DifficultyE_ptr
30CC6E:  LDR             R0, [R0]; CGangWars::Difficulty ...
30CC70:  STR             R0, [SP,#0x148+var_D8]
30CC72:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x30CC7A)
30CC76:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
30CC78:  LDR             R0, [R0]; CPools::ms_pPedPool ...
30CC7A:  STR             R0, [SP,#0x148+var_DC]
30CC7C:  LDR.W           R0, =(gaGangColoursB_ptr - 0x30CC84)
30CC80:  ADD             R0, PC; gaGangColoursB_ptr
30CC82:  LDR             R0, [R0]; gaGangColoursB
30CC84:  STR             R0, [SP,#0x148+var_E0]
30CC86:  LDR             R0, [R1]; gaGangColoursG
30CC88:  STR             R0, [SP,#0x148+var_E4]
30CC8A:  LDR             R0, [R2]; gaGangColoursR
30CC8C:  STR             R0, [SP,#0x148+var_E8]
30CC8E:  LDR.W           R0, =(MI_PICKUP_HEALTH_ptr - 0x30CC9A)
30CC92:  LDR.W           R1, =(_ZN9CGangWars5Gang1E_ptr - 0x30CC9C)
30CC96:  ADD             R0, PC; MI_PICKUP_HEALTH_ptr
30CC98:  ADD             R1, PC; _ZN9CGangWars5Gang1E_ptr
30CC9A:  LDR             R0, [R0]; MI_PICKUP_HEALTH
30CC9C:  STR             R0, [SP,#0x148+var_118]
30CC9E:  LDR.W           R0, =(MI_PICKUP_BODYARMOUR_ptr - 0x30CCA6)
30CCA2:  ADD             R0, PC; MI_PICKUP_BODYARMOUR_ptr
30CCA4:  LDR             R0, [R0]; MI_PICKUP_BODYARMOUR
30CCA6:  STR             R0, [SP,#0x148+var_11C]
30CCA8:  LDR.W           R0, =(MI_PICKUP_BODYARMOUR_ptr - 0x30CCB0)
30CCAC:  ADD             R0, PC; MI_PICKUP_BODYARMOUR_ptr
30CCAE:  LDR             R0, [R0]; MI_PICKUP_BODYARMOUR
30CCB0:  STR             R0, [SP,#0x148+var_114]
30CCB2:  LDR.W           R0, =(_ZN9CGangWars5Gang2E_ptr - 0x30CCBA)
30CCB6:  ADD             R0, PC; _ZN9CGangWars5Gang2E_ptr
30CCB8:  LDR             R0, [R0]; CGangWars::Gang2 ...
30CCBA:  STR             R0, [SP,#0x148+var_F4]
30CCBC:  LDR             R0, [R1]; CGangWars::Gang1 ...
30CCBE:  STR             R0, [SP,#0x148+var_F8]
30CCC0:  MOVS            R0, #0
30CCC2:  STR             R0, [SP,#0x148+var_C8]
30CCC4:  MOVS            R0, #0
30CCC6:  STR             R0, [SP,#0x148+var_C4]
30CCC8:  B               loc_30CDB6
30CCCA:  LDR.W           R10, [SP,#0x148+var_10C]
30CCCE:  BLX             rand
30CCD2:  VMOV            S0, R0
30CCD6:  VCVT.F32.S32    S24, S0
30CCDA:  BLX             rand
30CCDE:  VMOV            S0, R0
30CCE2:  MOVS            R3, #0; float
30CCE4:  VMUL.F32        S2, S24, S26
30CCE8:  VCVT.F32.S32    S0, S0
30CCEC:  STR.W           R11, [SP,#0x148+var_148]; bool *
30CCF0:  VMOV.F32        S4, #4.0
30CCF4:  VMUL.F32        S0, S0, S26
30CCF8:  VMUL.F32        S2, S2, S4
30CCFC:  VMUL.F32        S0, S0, S4
30CD00:  VMOV.F32        S4, #-2.0
30CD04:  VADD.F32        S2, S2, S4
30CD08:  VADD.F32        S0, S0, S4
30CD0C:  VMOV.F32        S4, #1.0
30CD10:  VADD.F32        S2, S20, S2
30CD14:  VADD.F32        S0, S22, S0
30CD18:  VADD.F32        S4, S16, S4
30CD1C:  VMOV            R6, S2
30CD20:  VMOV            R8, S0
30CD24:  VMOV            R2, S4; float
30CD28:  MOV             R0, R6; this
30CD2A:  MOV             R1, R8; float
30CD2C:  BLX             j__ZN6CWorld21FindGroundZFor3DCoordEfffPbPP7CEntity; CWorld::FindGroundZFor3DCoord(float,float,float,bool *,CEntity **)
30CD30:  VMOV.F32        S2, #0.75
30CD34:  CMP.W           R10, #0
30CD38:  VMOV            S0, R0
30CD3C:  VADD.F32        S0, S0, S2
30CD40:  VMOV            R2, S0
30CD44:  BEQ             loc_30CD64
30CD46:  CMP.W           R10, #1
30CD4A:  BEQ             loc_30CD6C
30CD4C:  CMP.W           R10, #2
30CD50:  BNE             loc_30CD8A
30CD52:  LDR.W           R1, =(MI_PICKUP_HEALTH_ptr - 0x30CD5C)
30CD56:  LDR             R0, [SP,#0x148+var_C4]
30CD58:  ADD             R1, PC; MI_PICKUP_HEALTH_ptr
30CD5A:  CMP             R0, #0
30CD5C:  LDR             R0, [SP,#0x148+var_114]
30CD5E:  IT EQ
30CD60:  LDREQ           R0, [R1]; MI_PICKUP_HEALTH
30CD62:  B               loc_30CD72
30CD64:  LDR             R0, [SP,#0x148+var_C4]
30CD66:  CBNZ            R0, loc_30CD8A
30CD68:  LDR             R0, [SP,#0x148+var_118]
30CD6A:  B               loc_30CD72
30CD6C:  LDR             R0, [SP,#0x148+var_C4]
30CD6E:  CBNZ            R0, loc_30CD8A
30CD70:  LDR             R0, [SP,#0x148+var_11C]
30CD72:  LDRH            R3, [R0]
30CD74:  MOVS            R0, #5
30CD76:  STRD.W          R0, R11, [SP,#0x148+var_148]; bool
30CD7A:  MOV             R0, R6
30CD7C:  MOV             R1, R8
30CD7E:  STRD.W          R11, R11, [SP,#0x148+var_140]; bool
30CD82:  STR.W           R11, [SP,#0x148+var_138]; float
30CD86:  BLX             j__ZN8CPickups14GenerateNewOneE7CVectorjhjjbPc; CPickups::GenerateNewOne(CVector,uint,uchar,uint,uint,bool,char *)
30CD8A:  VMOV.F32        S24, S20
30CD8E:  LDR.W           R8, [SP,#0x148+var_FC]
30CD92:  VMOV.F32        S31, S22
30CD96:  VMOV.F32        S29, S16
30CD9A:  LDR             R0, [SP,#0x148+var_C4]
30CD9C:  MOV             R1, R0
30CD9E:  ADDS            R1, #1; int
30CDA0:  CMP             R1, #2
30CDA2:  MOV             R0, R1
30CDA4:  STR             R0, [SP,#0x148+var_C4]
30CDA6:  BEQ.W           loc_30D18E
30CDAA:  LDR             R0, [SP,#0x148+var_F4]
30CDAC:  LDR             R0, [R0]
30CDAE:  STR             R0, [SP,#0x148+var_C0]
30CDB0:  LDR             R0, [SP,#0x148+var_F8]
30CDB2:  LDR             R0, [R0]
30CDB4:  STR             R0, [SP,#0x148+var_B0]
30CDB6:  MOVS            R4, #0
30CDB8:  MOVS            R5, #0
30CDBA:  MOVW            R0, #0xFFFF
30CDBE:  ADD             R2, SP, #0x148+var_6C
30CDC0:  MOVS            R6, #0
30CDC2:  STRH.W          R0, [SP,#0x148+var_80]
30CDC6:  STRH.W          R0, [SP,#0x148+var_70]
30CDCA:  ADD             R3, SP, #0x148+var_74
30CDCC:  LDM             R2, {R0-R2}; int
30CDCE:  MOVT            R6, #0xBF80
30CDD2:  STRD.W          R3, R11, [SP,#0x148+var_128]; int
30CDD6:  MOVS            R3, #1
30CDD8:  STR             R3, [SP,#0x148+var_120]; int
30CDDA:  STR.W           R11, [SP,#0x148+var_148]; float
30CDDE:  STRD.W          R6, R3, [SP,#0x148+var_144]; float
30CDE2:  MOVS            R3, #0x42480000
30CDE8:  ADD             R6, SP, #0x148+var_98
30CDEA:  STRD.W          R3, R3, [SP,#0x148+var_13C]; float
30CDEE:  ADD             R3, SP, #0x148+var_80
30CDF0:  STR             R6, [SP,#0x148+var_134]; CVector *
30CDF2:  STR             R3, [SP,#0x148+var_130]; int
30CDF4:  ADD             R3, SP, #0x148+var_70
30CDF6:  STR             R3, [SP,#0x148+var_12C]; int
30CDF8:  MOV.W           R3, #0x3F800000; int
30CDFC:  BLX             j__ZN8CCarCtrl25GenerateCarCreationCoors2E7CVectorfffbffPS0_P12CNodeAddressS3_Pfbb; CCarCtrl::GenerateCarCreationCoors2(CVector,float,float,float,bool,float,float,CVector*,CNodeAddress *,CNodeAddress *,float *,bool,bool)
30CE00:  ADDS            R5, #1
30CE02:  CMP             R0, #1
30CE04:  BNE             loc_30CE66
30CE06:  LDR             R0, [SP,#0x148+var_AC]; this
30CE08:  MOVS            R2, #0
30CE0A:  MOV             R1, R6; CVector *
30CE0C:  MOVT            R2, #0x40E0; float
30CE10:  BLX             j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
30CE14:  CBZ             R0, loc_30CE28
30CE16:  LSLS            R0, R4, #0x1F
30CE18:  ITTT EQ
30CE1A:  VLDREQ          S20, [SP,#0x148+var_98]
30CE1E:  VLDREQ          S22, [SP,#0x148+var_94]
30CE22:  VLDREQ          S16, [SP,#0x148+var_90]
30CE26:  B               loc_30CE6C
30CE28:  VLDR            S20, [SP,#0x148+var_98]
30CE2C:  VLDR            S22, [SP,#0x148+var_94]
30CE30:  VSUB.F32        S2, S24, S20
30CE34:  VLDR            S16, [SP,#0x148+var_90]
30CE38:  VSUB.F32        S0, S31, S22
30CE3C:  VSUB.F32        S4, S29, S16
30CE40:  VMUL.F32        S2, S2, S2
30CE44:  VMUL.F32        S0, S0, S0
30CE48:  VMUL.F32        S4, S4, S4
30CE4C:  VADD.F32        S0, S2, S0
30CE50:  VADD.F32        S0, S0, S4
30CE54:  VSQRT.F32       S0, S0
30CE58:  VCMPE.F32       S0, S18
30CE5C:  VMRS            APSR_nzcv, FPSCR
30CE60:  BLE             loc_30CE6C
30CE62:  MOVS            R4, #1
30CE64:  MOVS            R5, #0x14
30CE66:  CMP             R5, #0x14
30CE68:  BLT             loc_30CDBA
30CE6A:  B               loc_30CE72
30CE6C:  MOVS            R4, #1
30CE6E:  CMP             R5, #0x14
30CE70:  BLT             loc_30CDBA
30CE72:  LDR             R0, [SP,#0x148+var_C4]
30CE74:  LDR             R1, [SP,#0x148+var_B0]
30CE76:  CMP             R0, #0
30CE78:  LDR             R0, [SP,#0x148+var_C0]
30CE7A:  IT EQ
30CE7C:  MOVEQ           R0, R1
30CE7E:  STR             R0, [SP,#0x148+var_C0]
30CE80:  LSLS            R0, R4, #0x1F
30CE82:  BEQ             loc_30CD9A
30CE84:  VLDR            S0, [SP,#0x148+var_6C]
30CE88:  ADD             R0, SP, #0x148+var_80; this
30CE8A:  VLDR            S2, [SP,#0x148+var_68]
30CE8E:  VSUB.F32        S0, S20, S0
30CE92:  STR.W           R11, [SP,#0x148+var_78]
30CE96:  VSUB.F32        S2, S2, S22
30CE9A:  VSTR            S2, [SP,#0x148+var_80]
30CE9E:  VSTR            S0, [SP,#0x148+var_7C]
30CEA2:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
30CEA6:  LDR             R0, [SP,#0x148+var_104]
30CEA8:  VLDR            S2, =0.3
30CEAC:  VLDR            S8, =1.2
30CEB0:  VLDR            S0, [R0]
30CEB4:  VLDR            S4, [SP,#0x148+var_7C]
30CEB8:  VMUL.F32        S0, S0, S2
30CEBC:  VLDR            S2, =0.7
30CEC0:  VMUL.F32        S24, S4, S8
30CEC4:  LDR             R0, [SP,#0x148+var_108]
30CEC6:  VLDR            S6, [SP,#0x148+var_78]
30CECA:  LDRB            R0, [R0]
30CECC:  VMUL.F32        S31, S6, S8
30CED0:  CMP             R0, #0
30CED2:  VADD.F32        S0, S0, S2
30CED6:  VLDR            S2, [SP,#0x148+var_80]
30CEDA:  VMUL.F32        S29, S2, S8
30CEDE:  VLDR            S2, [SP,#0x148+var_100]
30CEE2:  VMUL.F32        S0, S0, S2
30CEE6:  VSTR            S29, [SP,#0x148+var_80]
30CEEA:  VSTR            S24, [SP,#0x148+var_7C]
30CEEE:  VCVT.S32.F32    S0, S0
30CEF2:  VSTR            S31, [SP,#0x148+var_78]
30CEF6:  VMOV            R4, S0
30CEFA:  IT NE
30CEFC:  MOVNE           R4, #2
30CEFE:  CMP.W           R8, #5
30CF02:  IT EQ
30CF04:  MOVEQ           R4, #0xA
30CF06:  CMP             R4, #1
30CF08:  BLT.W           loc_30CCCE
30CF0C:  LDR             R0, [SP,#0x148+var_C0]
30CF0E:  MOV.W           R10, #0
30CF12:  LDR             R1, [SP,#0x148+var_110]
30CF14:  STR             R4, [SP,#0x148+var_BC]
30CF16:  ADD.W           R0, R0, R0,LSL#1
30CF1A:  ADD.W           R0, R1, R0,LSL#2
30CF1E:  ADDS            R0, #0xD8
30CF20:  STR             R0, [SP,#0x148+var_B0]
30CF22:  LSRS            R0, R4, #1
30CF24:  STR             R0, [SP,#0x148+var_B4]
30CF26:  B               loc_30D0E8
30CF28:  LDR.W           R0, =(dword_7A2360 - 0x30CF34)
30CF2C:  MOV.W           R11, #0
30CF30:  ADD             R0, PC; dword_7A2360
30CF32:  STR             R1, [R0]
30CF34:  B               loc_30D0D0
30CF36:  VMOV.F32        S0, #2.0
30CF3A:  LDR.W           R6, =(dword_7A2360 - 0x30CF4A)
30CF3E:  VMOV            R3, S24
30CF42:  VMOV            R0, S29; this
30CF46:  ADD             R6, PC; dword_7A2360
30CF48:  STR             R1, [R6]
30CF4A:  MOVS            R1, #0
30CF4C:  STR             R1, [SP,#0x148+var_148]; bool *
30CF4E:  VADD.F32        S0, S31, S0
30CF52:  VMOV            R2, S0; float
30CF56:  MOV             R1, R3; float
30CF58:  MOVS            R3, #0; float
30CF5A:  BLX             j__ZN6CWorld21FindGroundZFor3DCoordEfffPbPP7CEntity; CWorld::FindGroundZFor3DCoord(float,float,float,bool *,CEntity **)
30CF5E:  MOV             R6, R0
30CF60:  MOVW            R0, #(elf_hash_bucket+0x6A8); this
30CF64:  BLX             j__ZN4CPednwEj; CPed::operator new(uint)
30CF68:  MOV             R8, R0
30CF6A:  LDR             R0, [SP,#0x148+var_D0]
30CF6C:  MOV             R2, R11
30CF6E:  LDR             R0, [R0]
30CF70:  ADDS            R1, R0, #7
30CF72:  MOV             R0, R8
30CF74:  BLX             j__ZN12CCivilianPedC2E8ePedTypej; CCivilianPed::CCivilianPed(ePedType,uint)
30CF78:  VMOV            S0, R6
30CF7C:  LDR.W           R0, [R8,#0x14]
30CF80:  ADD             R5, SP, #0x148+var_98
30CF82:  VADD.F32        S0, S0, S19
30CF86:  CBZ             R0, loc_30CF9C
30CF88:  VSTR            S29, [R0,#0x30]
30CF8C:  LDR.W           R0, [R8,#0x14]
30CF90:  VSTR            S24, [R0,#0x34]
30CF94:  LDR.W           R0, [R8,#0x14]
30CF98:  ADDS            R0, #0x38 ; '8'
30CF9A:  B               loc_30CFA8
30CF9C:  ADD.W           R0, R8, #0xC
30CFA0:  VSTR            S29, [R8,#4]
30CFA4:  VSTR            S24, [R8,#8]
30CFA8:  VSTR            S0, [R0]
30CFAC:  MOV             R0, R8; this
30CFAE:  MOVS            R1, #2; unsigned __int8
30CFB0:  BLX             j__ZN4CPed16SetCharCreatedByEh; CPed::SetCharCreatedBy(uchar)
30CFB4:  MOV             R0, R8; this
30CFB6:  BLX             j__ZN6CWorld3AddEP7CEntity; CWorld::Add(CEntity *)
30CFBA:  MOVS            R0, #dword_38; this
30CFBC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
30CFC0:  MOV.W           R11, #0
30CFC4:  MOV             R6, R0
30CFC6:  STRD.W          R11, R11, [SP,#0x148+var_148]; unsigned int
30CFCA:  MOVS            R0, #2
30CFCC:  LDR             R1, [SP,#0x148+var_CC]; CPed *
30CFCE:  MOV.W           R2, #0xFFFFFFFF; int
30CFD2:  STR             R0, [SP,#0x148+var_140]; int
30CFD4:  MOV             R0, R6; this
30CFD6:  MOVS            R3, #0; unsigned int
30CFD8:  BLX             j__ZN25CTaskComplexKillPedOnFootC2EP4CPedijjji; CTaskComplexKillPedOnFoot::CTaskComplexKillPedOnFoot(CPed *,int,uint,uint,uint,int)
30CFDC:  MOV             R0, R5; this
30CFDE:  MOVS            R1, #3; int
30CFE0:  MOV             R2, R6; CTask *
30CFE2:  MOVS            R3, #0; bool
30CFE4:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
30CFE8:  LDR.W           R0, [R8,#0x440]
30CFEC:  MOV             R1, R5; CEvent *
30CFEE:  MOVS            R2, #0; bool
30CFF0:  ADDS            R0, #0x68 ; 'h'; this
30CFF2:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
30CFF6:  BLX             rand
30CFFA:  VMOV            S0, R0
30CFFE:  MOVW            R2, #0x1388
30D002:  MOVS            R3, #0
30D004:  VCVT.F32.S32    S0, S0
30D008:  LDR             R0, [SP,#0x148+var_D4]
30D00A:  VLDR            S2, [R0]
30D00E:  MOV             R0, R8
30D010:  VMUL.F32        S0, S0, S26
30D014:  VMUL.F32        S0, S0, S21
30D018:  VADD.F32        S0, S0, S23
30D01C:  VCMPE.F32       S0, S2
30D020:  VMRS            APSR_nzcv, FPSCR
30D024:  ITE LE
30D026:  LDRLE           R4, [SP,#0x148+var_EC]
30D028:  LDRGT           R4, [SP,#0x148+var_F0]
30D02A:  MOV             R1, R4
30D02C:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
30D030:  MOV             R0, R8
30D032:  MOV             R1, R4
30D034:  BLX             j__ZN4CPed16SetCurrentWeaponE11eWeaponType; CPed::SetCurrentWeapon(eWeaponType)
30D038:  LDR             R0, [SP,#0x148+var_D8]
30D03A:  MOV             R2, #0xBED87F3B
30D042:  VLDR            S0, [R0]
30D046:  LDR.W           R0, [R8,#0x48C]
30D04A:  VMUL.F32        S0, S0, S25
30D04E:  ORR.W           R0, R0, #0x3000
30D052:  STR.W           R0, [R8,#0x48C]
30D056:  MOVS            R0, #0x42F00000
30D05C:  STR.W           R0, [R8,#0x548]
30D060:  VADD.F32        S0, S0, S27
30D064:  VCVT.U32.F32    S0, S0
30D068:  STR.W           R0, [R8,#0x544]
30D06C:  VMOV            R0, S0
30D070:  STRB.W          R0, [R8,#0x71E]
30D074:  LDR             R0, [SP,#0x148+var_DC]
30D076:  LDR             R0, [R0]
30D078:  LDRD.W          R1, R0, [R0]
30D07C:  LDR             R6, [SP,#0x148+var_C0]
30D07E:  SUB.W           R1, R8, R1
30D082:  LDR             R3, [SP,#0x148+var_E4]
30D084:  LDR             R4, [SP,#0x148+var_E8]
30D086:  ASRS            R1, R1, #2
30D088:  MULS            R1, R2
30D08A:  LDR             R2, [SP,#0x148+var_E0]
30D08C:  LDRB            R3, [R3,R6]
30D08E:  LDRB            R2, [R2,R6]
30D090:  LDRB            R6, [R4,R6]
30D092:  ADR.W           R4, aCodegw2; "CODEGW2"
30D096:  LDRB            R0, [R0,R1]
30D098:  STR             R4, [SP,#0x148+var_148]
30D09A:  ORR.W           R1, R0, R1,LSL#8
30D09E:  LSLS            R0, R6, #0x18
30D0A0:  ORR.W           R0, R0, R3,LSL#16
30D0A4:  MOVS            R3, #2
30D0A6:  ORR.W           R0, R0, R2,LSL#8
30D0AA:  ORR.W           R6, R0, #0xFF
30D0AE:  MOVS            R0, #2
30D0B0:  MOV             R2, R6
30D0B2:  BLX             j__ZN6CRadar13SetEntityBlipE9eBlipTypeij12eBlipDisplayPc; CRadar::SetEntityBlip(eBlipType,int,uint,eBlipDisplay,char *)
30D0B6:  MOVS            R1, #2; int
30D0B8:  MOV             R4, R0
30D0BA:  BLX             j__ZN6CRadar15ChangeBlipScaleEii; CRadar::ChangeBlipScale(int,int)
30D0BE:  MOV             R0, R4; this
30D0C0:  MOV             R1, R6; int
30D0C2:  BLX             j__ZN6CRadar16ChangeBlipColourEij; CRadar::ChangeBlipColour(int,uint)
30D0C6:  MOV             R0, R5; this
30D0C8:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
30D0CC:  MOVS            R0, #1
30D0CE:  STR             R0, [SP,#0x148+var_C8]
30D0D0:  LDR             R4, [SP,#0x148+var_BC]
30D0D2:  ADD.W           R10, R10, #1
30D0D6:  CMP             R10, R4
30D0D8:  BEQ.W           loc_30CCCA
30D0DC:  VLDR            S29, [SP,#0x148+var_80]
30D0E0:  VLDR            S24, [SP,#0x148+var_7C]
30D0E4:  VLDR            S31, [SP,#0x148+var_78]
30D0E8:  BLX             rand
30D0EC:  VMOV            S0, R0
30D0F0:  VCVT.F32.S32    S17, S0
30D0F4:  BLX             rand
30D0F8:  VMOV            S0, R0
30D0FC:  VCVT.F32.S32    S2, S0
30D100:  LDR             R0, [SP,#0x148+var_B4]
30D102:  SUB.W           R0, R10, R0
30D106:  LSLS            R0, R0, #1
30D108:  VMOV            S0, R0
30D10C:  VCVT.F32.S32    S0, S0
30D110:  LDR             R0, [SP,#0x148+var_B0]
30D112:  LDR.W           R8, [R0]
30D116:  LDR             R0, [SP,#0x148+var_B8]
30D118:  LDRSH.W         R6, [R0,R8,LSL#1]
30D11C:  CMP             R6, #1
30D11E:  BLT             loc_30D0D2
30D120:  VMUL.F32        S4, S17, S26
30D124:  LDR.W           R0, =(dword_7A2360 - 0x30D136)
30D128:  VMUL.F32        S2, S2, S26
30D12C:  MOVS            R5, #0
30D12E:  VMUL.F32        S6, S29, S0
30D132:  ADD             R0, PC; dword_7A2360
30D134:  VMUL.F32        S8, S24, S0
30D138:  VMUL.F32        S0, S31, S0
30D13C:  LDR             R1, [R0]
30D13E:  VMUL.F32        S4, S4, S28
30D142:  VMUL.F32        S2, S2, S28
30D146:  VADD.F32        S6, S20, S6
30D14A:  VADD.F32        S8, S22, S8
30D14E:  VADD.F32        S31, S16, S0
30D152:  VADD.F32        S4, S4, S30
30D156:  VADD.F32        S2, S2, S30
30D15A:  VADD.F32        S29, S6, S4
30D15E:  VADD.F32        S24, S8, S2
30D162:  MOVS            R0, #0x2A ; '*'
30D164:  LDR             R2, [SP,#0x148+var_A8]
30D166:  MLA.W           R4, R8, R0, R2
30D16A:  ADDS            R0, R1, #1
30D16C:  MOV             R1, R6
30D16E:  BLX             __aeabi_idivmod
30D172:  LDRH.W          R11, [R4,R1,LSL#1]
30D176:  ADD.W           R0, R11, R11,LSL#2
30D17A:  ADD.W           R0, R9, R0,LSL#2
30D17E:  LDRB            R0, [R0,#0x10]
30D180:  CMP             R0, #1
30D182:  BEQ.W           loc_30CF36
30D186:  ADDS            R5, #1
30D188:  CMP             R5, R6
30D18A:  BLT             loc_30D162
30D18C:  B               loc_30CF28
30D18E:  LDR             R0, [SP,#0x148+var_C8]
30D190:  LSLS            R0, R0, #0x1F
30D192:  BEQ.W           loc_30D3DA
30D196:  LDR             R0, =(_ZN9CGangWars16bTrainingMissionE_ptr - 0x30D19E)
30D198:  MOVS            R4, #1
30D19A:  ADD             R0, PC; _ZN9CGangWars16bTrainingMissionE_ptr
30D19C:  LDR             R0, [R0]; CGangWars::bTrainingMission ...
30D19E:  LDRB            R0, [R0]; CGangWars::bTrainingMission
30D1A0:  CMP             R0, #0
30D1A2:  BNE.W           loc_30D3DC
30D1A6:  LDR             R0, =(pDriveByCar_ptr - 0x30D1AC)
30D1A8:  ADD             R0, PC; pDriveByCar_ptr
30D1AA:  LDR             R0, [R0]; pDriveByCar
30D1AC:  LDR             R0, [R0]
30D1AE:  CMP             R0, #0
30D1B0:  BNE.W           loc_30D3DC
30D1B4:  LDR             R0, =(_ZN9CGangWars5Gang1E_ptr - 0x30D1BA)
30D1B6:  ADD             R0, PC; _ZN9CGangWars5Gang1E_ptr
30D1B8:  LDR             R0, [R0]; CGangWars::Gang1 ...
30D1BA:  LDR             R0, [R0]; this
30D1BC:  BLX             j__ZN11CPopulation11PickGangCarEi; CPopulation::PickGangCar(int)
30D1C0:  MOV             R4, R0
30D1C2:  CMP             R4, #0
30D1C4:  BLT.W           loc_30D3D6
30D1C8:  LDR             R0, =(_ZN10CStreaming16ms_aInfoForModelE_ptr - 0x30D1D2)
30D1CA:  ADD.W           R1, R4, R4,LSL#2
30D1CE:  ADD             R0, PC; _ZN10CStreaming16ms_aInfoForModelE_ptr
30D1D0:  LDR             R0, [R0]; CStreaming::ms_aInfoForModel ...
30D1D2:  ADD.W           R0, R0, R1,LSL#2
30D1D6:  LDRB            R0, [R0,#0x10]
30D1D8:  CMP             R0, #1
30D1DA:  BNE.W           loc_30D3D6
30D1DE:  ADD             R0, SP, #0x148+var_A4; int
30D1E0:  MOV.W           R1, #0xFFFFFFFF
30D1E4:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30D1E8:  ADD             R3, SP, #0x148+var_A4
30D1EA:  MOV             R0, R4
30D1EC:  LDM             R3, {R1-R3}
30D1EE:  BLX             j__ZN8CCarCtrl31GenerateOneEmergencyServicesCarEj7CVector; CCarCtrl::GenerateOneEmergencyServicesCar(uint,CVector)
30D1F2:  LDR             R1, =(pDriveByCar_ptr - 0x30D1FC)
30D1F4:  MOVS            R4, #1
30D1F6:  CMP             R0, #0
30D1F8:  ADD             R1, PC; pDriveByCar_ptr
30D1FA:  LDR             R1, [R1]; pDriveByCar
30D1FC:  STR             R0, [R1]
30D1FE:  BEQ.W           loc_30D3DC
30D202:  LDR             R1, =(pDriveByCar_ptr - 0x30D208)
30D204:  ADD             R1, PC; pDriveByCar_ptr
30D206:  LDR             R5, [R1]; pDriveByCar
30D208:  MOV             R1, R5; CEntity **
30D20A:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
30D20E:  ADD.W           R8, SP, #0x148+var_98
30D212:  MOV.W           R1, #0xFFFFFFFF
30D216:  LDR             R6, [R5]
30D218:  MOV             R0, R8; int
30D21A:  BLX             j__Z15FindPlayerCoorsi; FindPlayerCoors(int)
30D21E:  MOV             R0, R6; this
30D220:  MOV             R1, R8; CVehicle *
30D222:  MOVS            R2, #0; CVector *
30D224:  MOVS            R3, #0; bool
30D226:  MOV.W           R9, #0
30D22A:  BLX             j__ZN8CCarCtrl30JoinCarWithRoadSystemGotoCoorsEP8CVehicleRK7CVectorbb; CCarCtrl::JoinCarWithRoadSystemGotoCoors(CVehicle *,CVector const&,bool,bool)
30D22E:  LDR             R0, [R5]
30D230:  MOVS            R1, #0xA
30D232:  MOVS            R2, #0x3D ; '='
30D234:  STRB.W          R1, [R0,#0x3D4]
30D238:  LDR.W           R1, [R0,#0x430]
30D23C:  STRB.W          R2, [R0,#0x3BE]
30D240:  ORR.W           R1, R1, #0x800
30D244:  STR.W           R1, [R0,#0x430]
30D248:  MOV.W           R0, #0xFFFFFFFF; int
30D24C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30D250:  LDR             R2, [R5]
30D252:  MOVS            R3, #0x1E
30D254:  LDR             R1, =(_ZN9CGangWars5Gang1E_ptr - 0x30D264)
30D256:  STR.W           R0, [R2,#0x420]
30D25A:  MOVS            R0, #2
30D25C:  STRB.W          R0, [R2,#0x3BD]
30D260:  ADD             R1, PC; _ZN9CGangWars5Gang1E_ptr
30D262:  LDR.W           R0, [R2,#0x430]
30D266:  STRB.W          R3, [R2,#0x3E1]
30D26A:  LDR             R1, [R1]; CGangWars::Gang1 ...
30D26C:  ORR.W           R0, R0, #0x40 ; '@'
30D270:  LDRB.W          R3, [R2,#0x3A]
30D274:  STR.W           R0, [R2,#0x430]
30D278:  MOVS            R0, #3
30D27A:  BFI.W           R3, R0, #3, #0x1D
30D27E:  STRB.W          R3, [R2,#0x3A]
30D282:  LDR             R0, [R1]; CGangWars::Gang1
30D284:  MOVS            R3, #0; CPopulation *
30D286:  STRD.W          R9, R4, [SP,#0x148+var_148]; bool
30D28A:  ADD.W           R1, R0, #0xE; CVehicle *
30D28E:  MOV             R0, R2; this
30D290:  MOVS            R2, #1; int
30D292:  BLX             j__ZN8CCarCtrl34SetUpDriverAndPassengersForVehicleEP8CVehicleiibbi; CCarCtrl::SetUpDriverAndPassengersForVehicle(CVehicle *,int,int,bool,bool,int)
30D296:  LDR             R0, [R5]
30D298:  LDR.W           R0, [R0,#0x464]
30D29C:  CMP             R0, #0
30D29E:  ITTT NE
30D2A0:  LDRNE.W         R0, [R0,#0x440]; this
30D2A4:  MOVNE.W         R1, #0xFFFFFFFF; int
30D2A8:  BLXNE           j__ZN16CPedIntelligence23SetPedDecisionMakerTypeEi; CPedIntelligence::SetPedDecisionMakerType(int)
30D2AC:  LDR             R0, =(pDriveByCar_ptr - 0x30D2BE)
30D2AE:  MOVW            R8, #0
30D2B2:  ADD.W           R10, SP, #0x148+var_98
30D2B6:  MOV.W           R4, #0x11A
30D2BA:  ADD             R0, PC; pDriveByCar_ptr
30D2BC:  MOVT            R8, #0x42C8
30D2C0:  LDR.W           R9, [R0]; pDriveByCar
30D2C4:  LDR             R0, =(pDriveByCar_ptr - 0x30D2CA)
30D2C6:  ADD             R0, PC; pDriveByCar_ptr
30D2C8:  LDR             R5, [R0]; pDriveByCar
30D2CA:  LDR.W           R0, [R9]
30D2CE:  LDR.W           R0, [R0,R4,LSL#2]
30D2D2:  CBZ             R0, loc_30D348
30D2D4:  MOVS            R1, #0x1C
30D2D6:  MOVW            R2, #0x5DC
30D2DA:  SUB.W           R6, R4, #0x11A
30D2DE:  BLX             j__ZN4CPed17GiveDelayedWeaponE11eWeaponTypej; CPed::GiveDelayedWeapon(eWeaponType,uint)
30D2E2:  LDR             R0, [R5]
30D2E4:  MOVS            R1, #0x1C
30D2E6:  LDR.W           R0, [R0,R4,LSL#2]
30D2EA:  BLX             j__ZN4CPed16SetCurrentWeaponE11eWeaponType; CPed::SetCurrentWeapon(eWeaponType)
30D2EE:  LSLS            R0, R6, #0x1F
30D2F0:  MOV.W           R11, #0
30D2F4:  MOV.W           R0, #dword_44; this
30D2F8:  IT EQ
30D2FA:  MOVEQ.W         R11, #1
30D2FE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
30D302:  MOV             R6, R0
30D304:  MOV.W           R0, #0xFFFFFFFF; int
30D308:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
30D30C:  MOV             R1, R0; CEntity *
30D30E:  MOVS            R0, #0x32 ; '2'
30D310:  STR             R0, [SP,#0x148+var_148]; signed __int8
30D312:  MOVS            R0, #8
30D314:  STRD.W          R0, R11, [SP,#0x148+var_144]; signed __int8
30D318:  MOV             R0, R6; this
30D31A:  MOVS            R2, #0; CVector *
30D31C:  MOV             R3, R8; float
30D31E:  BLX             j__ZN22CTaskSimpleGangDriveByC2EP7CEntityPK7CVectorfaab; CTaskSimpleGangDriveBy::CTaskSimpleGangDriveBy(CEntity *,CVector const*,float,signed char,signed char,bool)
30D322:  MOV             R0, R10; this
30D324:  MOVS            R1, #3; int
30D326:  MOV             R2, R6; CTask *
30D328:  MOVS            R3, #0; bool
30D32A:  BLX             j__ZN19CEventScriptCommandC2EiP5CTaskb; CEventScriptCommand::CEventScriptCommand(int,CTask *,bool)
30D32E:  LDR             R0, [R5]
30D330:  MOV             R1, R10; CEvent *
30D332:  MOVS            R2, #0; bool
30D334:  LDR.W           R0, [R0,R4,LSL#2]
30D338:  LDR.W           R0, [R0,#0x440]
30D33C:  ADDS            R0, #0x68 ; 'h'; this
30D33E:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
30D342:  MOV             R0, R10; this
30D344:  BLX             j__ZN19CEventScriptCommandD2Ev; CEventScriptCommand::~CEventScriptCommand()
30D348:  ADDS            R4, #1
30D34A:  CMP.W           R4, #0x122
30D34E:  BNE             loc_30D2CA
30D350:  LDR             R1, =(pDriveByCar_ptr - 0x30D358)
30D352:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x30D35C)
30D354:  ADD             R1, PC; pDriveByCar_ptr
30D356:  LDR             R5, =(gaGangColoursG_ptr - 0x30D362)
30D358:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
30D35A:  LDR             R4, =(gaGangColoursR_ptr - 0x30D366)
30D35C:  LDR             R6, [R1]; pDriveByCar
30D35E:  ADD             R5, PC; gaGangColoursG_ptr
30D360:  LDR             R0, [R0]; CPools::ms_pPedPool ...
30D362:  ADD             R4, PC; gaGangColoursR_ptr
30D364:  LDR             R2, =(gaGangColoursB_ptr - 0x30D36E)
30D366:  LDR             R1, [R6]
30D368:  LDR             R0, [R0]; CPools::ms_pPedPool
30D36A:  ADD             R2, PC; gaGangColoursB_ptr
30D36C:  LDRD.W          R3, R0, [R0]
30D370:  LDR.W           R1, [R1,#0x464]
30D374:  LDR             R2, [R2]; gaGangColoursB
30D376:  SUBS            R1, R1, R3
30D378:  MOV             R3, #0xBED87F3B
30D380:  ASRS            R1, R1, #2
30D382:  MULS            R1, R3
30D384:  LDR             R3, [R5]; gaGangColoursG
30D386:  LDR             R5, [R4]; gaGangColoursR
30D388:  LDR             R4, [SP,#0x148+var_C0]
30D38A:  LDRB            R5, [R5,R4]
30D38C:  LDRB            R0, [R0,R1]
30D38E:  LDRB            R3, [R3,R4]
30D390:  LDRB            R2, [R2,R4]
30D392:  LDR             R4, =(aCodegw3 - 0x30D3A2); "CODEGW3"
30D394:  ORR.W           R1, R0, R1,LSL#8
30D398:  LSLS            R0, R5, #0x18
30D39A:  ORR.W           R0, R0, R3,LSL#16
30D39E:  ADD             R4, PC; "CODEGW3"
30D3A0:  ORR.W           R0, R0, R2,LSL#8
30D3A4:  STR             R4, [SP,#0x148+var_148]
30D3A6:  ORR.W           R4, R0, #0xFF
30D3AA:  MOVS            R0, #2
30D3AC:  MOVS            R3, #2
30D3AE:  MOV             R2, R4
30D3B0:  BLX             j__ZN6CRadar13SetEntityBlipE9eBlipTypeij12eBlipDisplayPc; CRadar::SetEntityBlip(eBlipType,int,uint,eBlipDisplay,char *)
30D3B4:  MOVS            R1, #3; int
30D3B6:  MOV             R5, R0
30D3B8:  BLX             j__ZN6CRadar15ChangeBlipScaleEii; CRadar::ChangeBlipScale(int,int)
30D3BC:  MOV             R0, R5; this
30D3BE:  MOV             R1, R4; int
30D3C0:  BLX             j__ZN6CRadar16ChangeBlipColourEij; CRadar::ChangeBlipColour(int,uint)
30D3C4:  LDR             R0, [R6]
30D3C6:  LDR.W           R0, [R0,#0x464]
30D3CA:  LDR.W           R1, [R0,#0x48C]
30D3CE:  ORR.W           R1, R1, #0x2000
30D3D2:  STR.W           R1, [R0,#0x48C]
30D3D6:  MOVS            R4, #1
30D3D8:  B               loc_30D3DC
30D3DA:  MOVS            R4, #0
30D3DC:  MOV             R0, R4
30D3DE:  ADD             SP, SP, #0xE8
30D3E0:  VPOP            {D8-D15}
30D3E4:  ADD             SP, SP, #4
30D3E6:  POP.W           {R8-R11}
30D3EA:  POP             {R4-R7,PC}
