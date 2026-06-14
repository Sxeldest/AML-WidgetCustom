; =========================================================
; Game Engine Function: _ZN16CTaskSimpleFight13LoadMeleeDataEv
; Address            : 0x472890 - 0x472D10
; =========================================================

472890:  PUSH            {R4-R7,LR}
472892:  ADD             R7, SP, #0xC
472894:  PUSH.W          {R8-R11}
472898:  SUB             SP, SP, #4
47289A:  VPUSH           {D8}
47289E:  SUB             SP, SP, #0xD0
4728A0:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x4728B2)
4728A4:  ADR.W           R2, dword_472D10
4728A8:  LDR.W           R1, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x4728B8)
4728AC:  MOVS            R6, #0
4728AE:  ADD             R0, PC; __stack_chk_guard_ptr
4728B0:  VLD1.64         {D16-D17}, [R2@128]
4728B4:  ADD             R1, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
4728B6:  MOV.W           R12, #0x21 ; '!'
4728BA:  LDR             R0, [R0]; __stack_chk_guard
4728BC:  MOV.W           LR, #0x3FC00000
4728C0:  LDR             R1, [R1]; CTaskSimpleFight::m_aComboData ...
4728C2:  MOVT            R6, #0x42C8
4728C6:  MOV.W           R5, #0x3F800000
4728CA:  MOVW            R9, #0x707
4728CE:  LDR             R0, [R0]
4728D0:  MOV.W           R8, #7
4728D4:  STR             R0, [SP,#0xF8+var_2C]
4728D6:  MOVS            R0, #0
4728D8:  MOVS            R3, #0
4728DA:  ADDS            R2, R1, R3; char *
4728DC:  STR.W           R12, [R1,R3]
4728E0:  ADDS            R3, #0x88
4728E2:  ADD.W           R4, R2, #0x40 ; '@'
4728E6:  CMP.W           R3, #0x6E8
4728EA:  STRH.W          R9, [R2,#0x50]
4728EE:  STRH.W          R0, [R2,#0x55]
4728F2:  VST1.32         {D16-D17}, [R4]
4728F6:  STRB.W          R0, [R2,#0x57]
4728FA:  STRH.W          R9, [R2,#0x52]
4728FE:  STRB.W          R0, [R2,#0x58]
472902:  STRD.W          LR, R6, [R2,#4]
472906:  STRD.W          R6, R6, [R2,#0xC]
47290A:  STRD.W          R6, R6, [R2,#0x14]
47290E:  STRD.W          R6, R6, [R2,#0x1C]
472912:  STRD.W          R6, R6, [R2,#0x24]
472916:  STRD.W          R6, R5, [R2,#0x2C]
47291A:  STRD.W          R5, R5, [R2,#0x34]
47291E:  STR             R5, [R2,#0x3C]
472920:  STRB.W          R8, [R2,#0x54]
472924:  STRB.W          R0, [R2,#0x59]
472928:  STRD.W          R0, R0, [R2,#0x5C]
47292C:  STRD.W          R0, R0, [R2,#0x64]
472930:  STRD.W          R0, R0, [R2,#0x6C]
472934:  STRD.W          R0, R0, [R2,#0x74]
472938:  STRD.W          R0, R0, [R2,#0x7C]
47293C:  STRH.W          R0, [R2,#0x84]
472940:  BNE             loc_4728DA
472942:  LDR.W           R0, =(_ZN16CTaskSimpleFight12m_aHitOffsetE_ptr - 0x472956)
472946:  ADR.W           R1, dword_472D20
47294A:  VLD1.64         {D16-D17}, [R1@128]
47294E:  ADR.W           R1, loc_472D30
472952:  ADD             R0, PC; _ZN16CTaskSimpleFight12m_aHitOffsetE_ptr
472954:  VLD1.64         {D18-D19}, [R1@128]
472958:  ADR.W           R1, loc_472D40
47295C:  LDR             R0, [R0]; CTaskSimpleFight::m_aHitOffset ...
47295E:  VLD1.64         {D20-D21}, [R1@128]
472962:  MOV             R1, R0
472964:  VST1.32         {D16-D17}, [R1]!
472968:  VST1.32         {D18-D19}, [R1]
47296C:  ADD.W           R1, R0, #0x40 ; '@'
472970:  VST1.32         {D18-D19}, [R1]
472974:  ADD.W           R1, R0, #0x30 ; '0'
472978:  VST1.32         {D16-D17}, [R1]
47297C:  ADD.W           R1, R0, #0x20 ; ' '
472980:  VST1.32         {D20-D21}, [R1]
472984:  MOVS            R1, #0
472986:  STR             R1, [R0,#(dword_9FDB98 - 0x9FDB48)]
472988:  ADR.W           R0, aDataMeleeDat; "DATA\\melee.dat"
47298C:  ADR.W           R1, aRb_15; "rb"
472990:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
472994:  MOV             R4, R0
472996:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
47299A:  MOV             R10, R0
47299C:  CMP.W           R10, #0
4729A0:  BEQ.W           loc_472CE8
4729A4:  ADD             R5, SP, #0xF8+var_A0
4729A6:  VLDR            S16, =0.033333
4729AA:  ADD.W           R0, R5, #8
4729AE:  STR             R0, [SP,#0xF8+var_A4]
4729B0:  ORR.W           R0, R5, #4
4729B4:  STR             R0, [SP,#0xF8+var_A8]
4729B6:  LDR.W           R0, =(_ZN16CTaskSimpleFight12m_aHitOffsetE_ptr - 0x4729C8)
4729BA:  MOV.W           R9, #0
4729BE:  MOV.W           R8, #0
4729C2:  MOVS            R6, #0
4729C4:  ADD             R0, PC; _ZN16CTaskSimpleFight12m_aHitOffsetE_ptr
4729C6:  MOV.W           R11, #0
4729CA:  LDR             R0, [R0]; CTaskSimpleFight::m_aHitOffset ...
4729CC:  STR             R0, [SP,#0xF8+var_AC]
4729CE:  LDR.W           R0, =(_ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr - 0x4729D6)
4729D2:  ADD             R0, PC; _ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr
4729D4:  LDR             R0, [R0]; CAnimManager::ms_numAnimAssocDefinitions ...
4729D6:  STR             R0, [SP,#0xF8+var_C4]
4729D8:  LDR.W           R0, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x4729E0)
4729DC:  ADD             R0, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
4729DE:  LDR             R0, [R0]; CTaskSimpleFight::m_aComboData ...
4729E0:  STR             R0, [SP,#0xF8+var_D4]
4729E2:  LDR.W           R0, =(_ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr - 0x4729EA)
4729E6:  ADD             R0, PC; _ZN12CAnimManager26ms_numAnimAssocDefinitionsE_ptr
4729E8:  LDR             R0, [R0]; CAnimManager::ms_numAnimAssocDefinitions ...
4729EA:  STR             R0, [SP,#0xF8+var_B4]
4729EC:  LDR.W           R0, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x4729F4)
4729F0:  ADD             R0, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
4729F2:  LDR             R0, [R0]; CTaskSimpleFight::m_aComboData ...
4729F4:  STR             R0, [SP,#0xF8+var_C8]
4729F6:  LDR.W           R0, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x4729FE)
4729FA:  ADD             R0, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
4729FC:  LDR             R0, [R0]; CTaskSimpleFight::m_aComboData ...
4729FE:  STR             R0, [SP,#0xF8+var_B8]
472A00:  LDR.W           R0, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x472A08)
472A04:  ADD             R0, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
472A06:  LDR             R0, [R0]; CTaskSimpleFight::m_aComboData ...
472A08:  STR             R0, [SP,#0xF8+var_BC]
472A0A:  LDR.W           R0, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x472A12)
472A0E:  ADD             R0, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
472A10:  LDR             R0, [R0]; CTaskSimpleFight::m_aComboData ...
472A12:  STR             R0, [SP,#0xF8+var_C0]
472A14:  LDR.W           R0, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x472A1C)
472A18:  ADD             R0, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
472A1A:  LDR             R0, [R0]; CTaskSimpleFight::m_aComboData ...
472A1C:  STR             R0, [SP,#0xF8+var_CC]
472A1E:  LDR.W           R0, =(_ZN16CTaskSimpleFight12m_aComboDataE_ptr - 0x472A26)
472A22:  ADD             R0, PC; _ZN16CTaskSimpleFight12m_aComboDataE_ptr
472A24:  LDR             R0, [R0]; CTaskSimpleFight::m_aComboData ...
472A26:  STR             R0, [SP,#0xF8+var_D0]
472A28:  MOVS            R0, #0
472A2A:  STR             R0, [SP,#0xF8+var_B0]
472A2C:  B               loc_472CCC
472A2E:  ADR             R1, aEndMeleeData; "END_MELEE_DATA"
472A30:  MOV             R0, R10; char *
472A32:  MOVS            R2, #0xE; size_t
472A34:  BLX             strncmp
472A38:  CMP             R0, #0
472A3A:  BEQ.W           loc_472CE8
472A3E:  ORR.W           R0, R8, R9
472A42:  LSLS            R0, R0, #0x1F
472A44:  BEQ             loc_472A8E
472A46:  ADR.W           R1, aEndCombo; "END_COMBO"
472A4A:  MOV             R0, R10; char *
472A4C:  MOVS            R2, #9; size_t
472A4E:  BLX             strncmp
472A52:  CBZ             R0, loc_472ABA
472A54:  MOVS.W          R0, R9,LSL#31
472A58:  BEQ             loc_472AD2
472A5A:  LDR             R0, [SP,#0xF8+var_A8]
472A5C:  ADR.W           R1, aSFFF; "%s %f %f %f"
472A60:  STR             R0, [SP,#0xF8+var_F8]
472A62:  ADD             R2, SP, #0xF8+var_4C
472A64:  LDR             R0, [SP,#0xF8+var_A4]
472A66:  MOV             R3, R5
472A68:  STR             R0, [SP,#0xF8+var_F4]
472A6A:  MOV             R0, R10; s
472A6C:  BLX             sscanf
472A70:  ADD.W           R0, R6, R6,LSL#1
472A74:  LDR             R2, [SP,#0xF8+var_AC]
472A76:  VLDR            D16, [SP,#0xF8+var_A0]
472A7A:  ADDS            R6, #1
472A7C:  ADD.W           R0, R2, R0,LSL#2
472A80:  LDR             R1, [SP,#0xF8+var_98]
472A82:  MOV.W           R9, #1
472A86:  STR             R1, [R0,#8]
472A88:  VSTR            D16, [R0]
472A8C:  B               loc_472CDA
472A8E:  ADR             R1, aStartCombo; "START_COMBO"
472A90:  MOV             R0, R10; char *
472A92:  MOVS            R2, #0xB; size_t
472A94:  BLX             strncmp
472A98:  MOV.W           R9, #0
472A9C:  CBZ             R0, loc_472ACC
472A9E:  ADR             R1, aStartLevels; "START_LEVELS"
472AA0:  MOV             R0, R10; char *
472AA2:  MOVS            R2, #0xC; size_t
472AA4:  BLX             strncmp
472AA8:  CMP             R0, #0
472AAA:  MOV.W           R9, #0
472AAE:  IT EQ
472AB0:  MOVEQ.W         R9, #1
472AB4:  MOV.W           R8, #0
472AB8:  B               loc_472CDA
472ABA:  AND.W           R0, R8, #1
472ABE:  MOVS            R6, #0
472AC0:  ADD             R11, R0
472AC2:  MOV.W           R8, #0
472AC6:  MOV.W           R9, #0
472ACA:  B               loc_472CDA
472ACC:  MOV.W           R8, #1
472AD0:  B               loc_472CDA
472AD2:  ADDS            R0, R6, #1
472AD4:  CMP             R6, #8; switch 9 cases
472AD6:  BHI             def_472ADA; jumptable 00472ADA default case
472AD8:  STR             R0, [SP,#0xF8+var_D8]
472ADA:  TBB.W           [PC,R6]; switch jump
472ADE:  DCB 0x48; jump table for switch statement
472ADF:  DCB 0x67
472AE0:  DCB 5
472AE1:  DCB 5
472AE2:  DCB 5
472AE3:  DCB 5
472AE4:  DCB 5
472AE5:  DCB 0x75
472AE6:  DCB 0x8F
472AE7:  ALIGN 2
472AE8:  ADD             R0, SP, #0xF8+var_78; jumptable 00472ADA cases 2-6
472AEA:  STR             R0, [SP,#0xF8+var_F8]
472AEC:  ADD             R0, SP, #0xF8+var_7C
472AEE:  STR             R0, [SP,#0xF8+var_F4]
472AF0:  ADD             R0, SP, #0xF8+var_6C
472AF2:  STR             R0, [SP,#0xF8+var_F0]
472AF4:  ADD             R0, SP, #0xF8+var_80
472AF6:  STR             R0, [SP,#0xF8+var_EC]
472AF8:  ADD             R0, SP, #0xF8+var_88
472AFA:  STR             R0, [SP,#0xF8+var_E8]
472AFC:  ADD             R0, SP, #0xF8+var_8C
472AFE:  STR             R0, [SP,#0xF8+var_E4]
472B00:  ADD             R0, SP, #0xF8+var_90
472B02:  ADR             R1, aSFFFSDDDF; "%s %f %f %f %s %d %d %d %f"
472B04:  ADD             R2, SP, #0xF8+var_4C
472B06:  ADD             R3, SP, #0xF8+var_74
472B08:  MOVS            R5, #0
472B0A:  STR             R0, [SP,#0xF8+var_E0]
472B0C:  MOV             R0, R10; s
472B0E:  STR             R5, [SP,#0xF8+var_90]
472B10:  BLX             sscanf
472B14:  VLDR            S0, [SP,#0xF8+var_74]
472B18:  SUBS            R0, R6, #2
472B1A:  CMP             R0, #5
472B1C:  LDR             R6, [SP,#0xF8+var_B0]
472B1E:  VMUL.F32        S0, S0, S16
472B22:  IT CC
472B24:  MOVCC           R6, R0
472B26:  ADD.W           R9, R11, R11,LSL#4
472B2A:  LDR             R0, [SP,#0xF8+var_B8]
472B2C:  LDR             R1, [SP,#0xF8+var_7C]
472B2E:  ADD.W           R0, R0, R9,LSL#3
472B32:  ADD.W           R0, R0, R6,LSL#2
472B36:  VSTR            S0, [R0,#8]
472B3A:  VLDR            S0, [SP,#0xF8+var_78]
472B3E:  VMUL.F32        S0, S0, S16
472B42:  VSTR            S0, [R0,#0x1C]
472B46:  STR             R1, [R0,#0x30]
472B48:  LDRB.W          R0, [SP,#0xF8+var_6C]
472B4C:  SUBS            R0, #0x42 ; 'B'; switch 11 cases
472B4E:  CMP             R0, #0xA
472B50:  BHI             def_472B52; jumptable 00472B52 default case, cases 67-70,73-75
472B52:  TBB.W           [PC,R0]; switch jump
472B56:  DCB 6; jump table for switch statement
472B57:  DCB 0x62
472B58:  DCB 0x62
472B59:  DCB 0x62
472B5A:  DCB 0x62
472B5B:  DCB 0x77
472B5C:  DCB 0x87
472B5D:  DCB 0x62
472B5E:  DCB 0x62
472B5F:  DCB 0x62
472B60:  DCB 0x79
472B61:  ALIGN 2
472B62:  MOVS            R5, #3; jumptable 00472B52 case 66
472B64:  B               loc_472C64; jumptable 00472B52 case 72
472B66:  MOV.W           R9, #0; jumptable 00472ADA default case
472B6A:  MOV             R6, R0
472B6C:  B               loc_472CDA
472B6E:  MOV             R0, R10; jumptable 00472ADA case 0
472B70:  ADD.W           R10, SP, #0xF8+var_6C
472B74:  ADR             R1, aSS_3; "%s %s"
472B76:  ADD             R2, SP, #0xF8+var_4C
472B78:  MOV             R3, R10
472B7A:  BLX             sscanf
472B7E:  LDR             R0, [SP,#0xF8+var_C4]
472B80:  LDR             R0, [R0]
472B82:  CMP             R0, #1
472B84:  BLT             loc_472C5A
472B86:  MOVS            R6, #0
472B88:  MOV             R0, R6
472B8A:  BLX             j__ZN12CAnimManager16GetAnimGroupNameE12AssocGroupId; CAnimManager::GetAnimGroupName(AssocGroupId)
472B8E:  MOV             R1, R0; char *
472B90:  MOV             R0, R10; char *
472B92:  BLX             strcmp
472B96:  CMP             R0, #0
472B98:  BEQ             loc_472C50
472B9A:  LDR             R0, [SP,#0xF8+var_B4]
472B9C:  ADDS            R6, #1
472B9E:  MOV.W           R9, #0
472BA2:  LDR             R0, [R0]
472BA4:  CMP             R6, R0
472BA6:  BLT             loc_472B88
472BA8:  LDR             R6, [SP,#0xF8+var_D8]
472BAA:  B               loc_472CDA
472BAC:  ADR             R1, aSF; jumptable 00472ADA case 1
472BAE:  ADD             R2, SP, #0xF8+var_4C
472BB0:  ADD             R3, SP, #0xF8+var_70
472BB2:  MOV             R0, R10; s
472BB4:  BLX             sscanf
472BB8:  ADD.W           R0, R11, R11,LSL#4
472BBC:  LDR             R2, [SP,#0xF8+var_C8]
472BBE:  LDR             R1, [SP,#0xF8+var_70]
472BC0:  ADD.W           R0, R2, R0,LSL#3
472BC4:  STR             R1, [R0,#4]
472BC6:  B               loc_472C5A
472BC8:  ADD             R0, SP, #0xF8+var_78; jumptable 00472ADA case 7
472BCA:  ADR             R1, aSFF; "%s %f %f"
472BCC:  ADD             R2, SP, #0xF8+var_4C
472BCE:  ADD             R3, SP, #0xF8+var_74
472BD0:  STR             R0, [SP,#0xF8+var_F8]
472BD2:  MOV             R0, R10; s
472BD4:  BLX             sscanf
472BD8:  VLDR            S0, [SP,#0xF8+var_74]
472BDC:  ADD.W           R0, R11, R11,LSL#4
472BE0:  VLDR            S2, [SP,#0xF8+var_78]
472BE4:  VMUL.F32        S0, S0, S16
472BE8:  LDR             R1, [SP,#0xF8+var_CC]
472BEA:  VMUL.F32        S2, S2, S16
472BEE:  ADD.W           R0, R1, R0,LSL#3
472BF2:  VSTR            S0, [R0,#0x48]
472BF6:  VSTR            S2, [R0,#0x4C]
472BFA:  B               loc_472C5A
472BFC:  ADR             R1, aSX; jumptable 00472ADA case 8
472BFE:  ADD             R2, SP, #0xF8+var_4C
472C00:  ADD             R3, SP, #0xF8+var_84
472C02:  MOV             R0, R10; s
472C04:  BLX             sscanf
472C08:  ADD.W           R0, R11, R11,LSL#4
472C0C:  LDR             R2, [SP,#0xF8+var_D0]
472C0E:  LDR             R1, [SP,#0xF8+var_84]
472C10:  ADD.W           R0, R2, R0,LSL#3
472C14:  STRH.W          R1, [R0,#0x84]
472C18:  B               loc_472C5A
472C1A:  ADD             R5, SP, #0xF8+var_6C; jumptable 00472B52 default case, cases 67-70,73-75
472C1C:  ADR             R1, dword_472DE4; char *
472C1E:  MOV             R0, R5; char *
472C20:  BLX             strcmp
472C24:  CBZ             R0, loc_472C4C
472C26:  ADR             R1, dword_472DE8; char *
472C28:  MOV             R0, R5; char *
472C2A:  BLX             strcmp
472C2E:  CBZ             R0, loc_472C62
472C30:  ADR             R1, dword_472DEC; char *
472C32:  MOV             R0, R5; char *
472C34:  BLX             strcmp
472C38:  CMP             R0, #0
472C3A:  MOV.W           R5, #7
472C3E:  IT EQ
472C40:  MOVEQ           R5, #6
472C42:  B               loc_472C64; jumptable 00472B52 case 72
472C44:  MOVS            R5, #2; jumptable 00472B52 case 71
472C46:  B               loc_472C64; jumptable 00472B52 case 72
472C48:  MOVS            R5, #1; jumptable 00472B52 case 76
472C4A:  B               loc_472C64; jumptable 00472B52 case 72
472C4C:  MOVS            R5, #4
472C4E:  B               loc_472C64; jumptable 00472B52 case 72
472C50:  LDR             R1, [SP,#0xF8+var_D4]
472C52:  ADD.W           R0, R11, R11,LSL#4
472C56:  STR.W           R6, [R1,R0,LSL#3]
472C5A:  MOV.W           R9, #0
472C5E:  LDR             R6, [SP,#0xF8+var_D8]
472C60:  B               loc_472CDA
472C62:  MOVS            R5, #5
472C64:  LDR             R0, [SP,#0xF8+var_BC]; jumptable 00472B52 case 72
472C66:  LDR             R2, [SP,#0xF8+var_80]
472C68:  ADD.W           R0, R0, R9,LSL#3
472C6C:  ADDS            R1, R0, R6
472C6E:  ADD.W           R0, R0, R6,LSL#2
472C72:  STRB.W          R5, [R1,#0x50]
472C76:  STRB.W          R2, [R1,#0x55]
472C7A:  LDR             R1, [SP,#0xF8+var_88]
472C7C:  SUBS            R2, R1, #1
472C7E:  CMP             R2, #8
472C80:  MOV.W           R2, #0x3E ; '>'
472C84:  IT CC
472C86:  ADDCC.W         R2, R1, #0x3C ; '<'
472C8A:  LDR             R1, [SP,#0xF8+var_8C]
472C8C:  STR             R2, [R0,#0x5C]
472C8E:  SUBS            R2, R1, #1
472C90:  STR             R6, [SP,#0xF8+var_B0]
472C92:  CMP             R2, #8
472C94:  MOV.W           R2, #0x3E ; '>'
472C98:  IT CC
472C9A:  ADDCC.W         R2, R1, #0x3C ; '<'
472C9E:  VLDR            S0, [SP,#0xF8+var_90]
472CA2:  STR             R2, [R0,#0x70]
472CA4:  VCMPE.F32       S0, #0.0
472CA8:  VMRS            APSR_nzcv, FPSCR
472CAC:  BLE             loc_472CBC
472CAE:  VMUL.F32        S0, S0, S16
472CB2:  LDR             R0, [SP,#0xF8+var_C0]
472CB4:  ADD.W           R0, R0, R9,LSL#3
472CB8:  VSTR            S0, [R0,#0x44]
472CBC:  MOV.W           R9, #0
472CC0:  LDR             R6, [SP,#0xF8+var_D8]
472CC2:  ADD             R5, SP, #0xF8+var_A0
472CC4:  B               loc_472CDA
472CC6:  ALIGN 4
472CC8:  DCFS 0.033333
472CCC:  LDRB.W          R0, [R10]
472CD0:  CMP             R0, #0x23 ; '#'
472CD2:  IT NE
472CD4:  CMPNE           R0, #0
472CD6:  BNE.W           loc_472A2E
472CDA:  MOV             R0, R4; this
472CDC:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
472CE0:  MOV             R10, R0
472CE2:  CMP.W           R10, #0
472CE6:  BNE             loc_472CCC
472CE8:  MOV             R0, R4; this
472CEA:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
472CEE:  LDR             R0, =(__stack_chk_guard_ptr - 0x472CF6)
472CF0:  LDR             R1, [SP,#0xF8+var_2C]
472CF2:  ADD             R0, PC; __stack_chk_guard_ptr
472CF4:  LDR             R0, [R0]; __stack_chk_guard
472CF6:  LDR             R0, [R0]
472CF8:  SUBS            R0, R0, R1
472CFA:  ITTTT EQ
472CFC:  ADDEQ           SP, SP, #0xD0
472CFE:  VPOPEQ          {D8}
472D02:  ADDEQ           SP, SP, #4
472D04:  POPEQ.W         {R8-R11}
472D08:  IT EQ
472D0A:  POPEQ           {R4-R7,PC}
472D0C:  BLX             __stack_chk_fail
