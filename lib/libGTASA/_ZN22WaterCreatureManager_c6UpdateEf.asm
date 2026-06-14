; =========================================================
; Game Engine Function: _ZN22WaterCreatureManager_c6UpdateEf
; Address            : 0x592D58 - 0x5930C6
; =========================================================

592D58:  PUSH            {R4-R7,LR}
592D5A:  ADD             R7, SP, #0xC
592D5C:  PUSH.W          {R8-R11}
592D60:  SUB             SP, SP, #4
592D62:  VPUSH           {D8-D9}
592D66:  SUB             SP, SP, #0x30; float
592D68:  MOV             R11, R0
592D6A:  MOVS            R0, #0; int
592D6C:  MOV             R4, R1
592D6E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
592D72:  LDR.W           R0, [R0,#0x444]
592D76:  LDRB.W          R0, [R0,#0x8E]
592D7A:  CMP             R0, #0x33 ; '3'
592D7C:  BCC.W           loc_593044
592D80:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x592D8E)
592D82:  MOVW            R6, #0x1A18
592D86:  LDR.W           R1, [R11,R6]
592D8A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
592D8C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
592D8E:  LDR             R5, [R0]; CTimer::m_snTimeInMilliseconds
592D90:  SUBS            R0, R5, R1
592D92:  CMP.W           R0, #0x3E8
592D96:  BLE.W           loc_593044
592D9A:  ADD.W           R9, R11, #0x1A00
592D9E:  MOV             R0, R9; this
592DA0:  BLX.W           j__ZN6List_c11GetNumItemsEv; List_c::GetNumItems(void)
592DA4:  CMP             R0, #1
592DA6:  BLT.W           loc_593044
592DAA:  ADD.W           R0, R11, R6
592DAE:  STR             R5, [R0]
592DB0:  BLX             rand
592DB4:  VMOV            S0, R0
592DB8:  VLDR            S16, =4.6566e-10
592DBC:  VMOV.F32        S18, #-1.0
592DC0:  VCVT.F32.S32    S0, S0
592DC4:  VMUL.F32        S0, S0, S16
592DC8:  VADD.F32        S0, S0, S0
592DCC:  VADD.F32        S0, S0, S18
592DD0:  VSTR            S0, [SP,#0x60+var_40]
592DD4:  BLX             rand
592DD8:  VMOV            S0, R0
592DDC:  ADD             R5, SP, #0x60+var_40
592DDE:  MOVS            R0, #0
592DE0:  VCVT.F32.S32    S0, S0
592DE4:  STR             R0, [SP,#0x60+var_38]
592DE6:  MOV             R0, R5; this
592DE8:  VMUL.F32        S0, S0, S16
592DEC:  VADD.F32        S0, S0, S0
592DF0:  VADD.F32        S0, S0, S18
592DF4:  VSTR            S0, [SP,#0x60+var_40+4]
592DF8:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
592DFC:  BLX             rand
592E00:  VMOV            S0, R0
592E04:  LDR             R0, =(TheCamera_ptr - 0x592E1A)
592E06:  VMOV.F32        S2, #15.0
592E0A:  VCVT.F32.S32    S0, S0
592E0E:  VLDR            S6, [SP,#0x60+var_38]
592E12:  VMOV.F32        S4, #25.0
592E16:  ADD             R0, PC; TheCamera_ptr
592E18:  LDR             R0, [R0]; TheCamera ; this
592E1A:  LDR             R1, [R0,#(dword_951FBC - 0x951FA8)]
592E1C:  VMUL.F32        S0, S0, S16
592E20:  ADD.W           R2, R1, #0x30 ; '0'
592E24:  CMP             R1, #0
592E26:  MOV             R1, R5; CVector *
592E28:  VMUL.F32        S0, S0, S2
592E2C:  VLDR            S2, [SP,#0x60+var_40]
592E30:  VADD.F32        S0, S0, S4
592E34:  VLDR            S4, [SP,#0x60+var_40+4]
592E38:  VMUL.F32        S6, S0, S6
592E3C:  VMUL.F32        S2, S2, S0
592E40:  VMUL.F32        S0, S4, S0
592E44:  VSTR            S6, [SP,#0x60+var_38]
592E48:  IT EQ
592E4A:  ADDEQ           R2, R0, #4
592E4C:  VLDR            S8, [R2]
592E50:  VLDR            S10, [R2,#4]
592E54:  VADD.F32        S2, S8, S2
592E58:  VLDR            S12, [R2,#8]
592E5C:  VADD.F32        S0, S10, S0
592E60:  MOVS            R2, #0x40400000; float
592E66:  VSTR            S2, [SP,#0x60+var_40]
592E6A:  VSTR            S0, [SP,#0x60+var_40+4]
592E6E:  VADD.F32        S0, S12, S6
592E72:  VSTR            S0, [SP,#0x60+var_38]
592E76:  BLX             j__ZN7CCamera15IsSphereVisibleERK7CVectorf; CCamera::IsSphereVisible(CVector const&,float)
592E7A:  CMP             R0, #0
592E7C:  BNE.W           loc_593044
592E80:  ADD             R0, SP, #0x60+var_40; this
592E82:  ADD             R1, SP, #0x60+var_44; CVector *
592E84:  ADD             R2, SP, #0x60+var_48; float *
592E86:  MOVS            R3, #0; float *
592E88:  BLX.W           j__ZN11CWaterLevel13GetWaterDepthERK7CVectorPfS3_S3_; CWaterLevel::GetWaterDepth(CVector const&,float *,float *,float *)
592E8C:  CMP             R0, #1
592E8E:  BNE.W           loc_593044
592E92:  VMOV.F32        S2, #4.5
592E96:  VLDR            S0, [SP,#0x60+var_44]
592E9A:  VCMPE.F32       S0, S2
592E9E:  VMRS            APSR_nzcv, FPSCR
592EA2:  BLE.W           loc_593044
592EA6:  BLX             rand
592EAA:  UXTH            R0, R0
592EAC:  VLDR            S16, =0.000015259
592EB0:  VMOV            S0, R0
592EB4:  VLDR            S2, =100.0
592EB8:  VCVT.F32.S32    S0, S0
592EBC:  VMUL.F32        S0, S0, S16
592EC0:  VMUL.F32        S0, S0, S2
592EC4:  VCVT.S32.F32    S0, S0
592EC8:  VMOV            R0, S0
592ECC:  CMP             R0, #0x4F ; 'O'
592ECE:  BGT             loc_592EF6
592ED0:  BLX             rand
592ED4:  UXTH            R0, R0
592ED6:  VMOV.F32        S2, #3.0
592EDA:  VMOV            S0, R0
592EDE:  VCVT.F32.S32    S0, S0
592EE2:  VMUL.F32        S0, S0, S16
592EE6:  VMUL.F32        S0, S0, S2
592EEA:  VCVT.S32.F32    S0, S0
592EEE:  VMOV            R0, S0
592EF2:  STR             R0, [SP,#0x60+var_4C]
592EF4:  B               loc_592F28
592EF6:  CMP             R0, #0x59 ; 'Y'
592EF8:  BGT             loc_592F1E
592EFA:  BLX             rand
592EFE:  UXTH            R0, R0
592F00:  VMOV            S0, R0
592F04:  VCVT.F32.S32    S0, S0
592F08:  VMUL.F32        S0, S0, S16
592F0C:  VADD.F32        S0, S0, S0
592F10:  VCVT.S32.F32    S0, S0
592F14:  VMOV            R0, S0
592F18:  ADDS            R0, #3
592F1A:  STR             R0, [SP,#0x60+var_4C]
592F1C:  B               loc_592F28
592F1E:  MOVS            R1, #6
592F20:  CMP             R0, #0x61 ; 'a'
592F22:  IT LT
592F24:  MOVLT           R1, #5
592F26:  STR             R1, [SP,#0x60+var_4C]
592F28:  MOVW            R1, #0x1A0C
592F2C:  MOVS            R0, #0x2C ; ','
592F2E:  LDR.W           R1, [R11,R1]
592F32:  CBZ             R1, loc_592F96
592F34:  LDR             R2, =(_ZN22WaterCreatureManager_c21ms_waterCreatureInfosE_ptr - 0x592F3C)
592F36:  LDR             R3, [SP,#0x60+var_4C]
592F38:  ADD             R2, PC; _ZN22WaterCreatureManager_c21ms_waterCreatureInfosE_ptr
592F3A:  VLDR            D16, [SP,#0x60+var_40]
592F3E:  VLDR            S2, =0.0
592F42:  LDR             R2, [R2]; WaterCreatureManager_c::ms_waterCreatureInfos ...
592F44:  MLA.W           R2, R3, R0, R2
592F48:  VLDR            S0, [R2,#0xC]
592F4C:  VMUL.F32        S0, S0, S0
592F50:  MOV             R2, R1
592F52:  LDR             R6, [SP,#0x60+var_4C]
592F54:  LDRB            R3, [R2,#0xC]
592F56:  LDR             R1, [R2,#4]
592F58:  CMP             R6, R3
592F5A:  ITT EQ
592F5C:  LDREQ           R3, [R2,#0x1C]
592F5E:  CMPEQ           R3, #0
592F60:  BEQ             loc_592F68
592F62:  CMP             R1, #0
592F64:  BNE             loc_592F50
592F66:  B               loc_592F96
592F68:  LDR             R2, [R2,#8]
592F6A:  LDR             R3, [R2,#0x14]
592F6C:  ADD.W           R6, R3, #0x30 ; '0'
592F70:  CMP             R3, #0
592F72:  IT EQ
592F74:  ADDEQ           R6, R2, #4
592F76:  VLDR            D17, [R6]
592F7A:  VSUB.F32        D17, D16, D17
592F7E:  VMUL.F32        D2, D17, D17
592F82:  VADD.F32        S4, S4, S5
592F86:  VADD.F32        S4, S4, S2
592F8A:  VCMPE.F32       S4, S0
592F8E:  VMRS            APSR_nzcv, FPSCR
592F92:  BGE             loc_592F62
592F94:  B               loc_593044
592F96:  LDR             R1, =(_ZN22WaterCreatureManager_c21ms_waterCreatureInfosE_ptr - 0x592F9E)
592F98:  LDR             R2, [SP,#0x60+var_4C]
592F9A:  ADD             R1, PC; _ZN22WaterCreatureManager_c21ms_waterCreatureInfosE_ptr
592F9C:  LDR             R1, [R1]; WaterCreatureManager_c::ms_waterCreatureInfos ...
592F9E:  MLA.W           R0, R2, R0, R1
592FA2:  LDRB            R5, [R0,#4]
592FA4:  LDRB            R6, [R0,#5]
592FA6:  BLX             rand
592FAA:  UXTH            R0, R0
592FAC:  VMOV            S0, R0
592FB0:  SUBS            R0, R6, R5
592FB2:  VCVT.F32.S32    S0, S0
592FB6:  VMOV            S2, R0
592FBA:  VCVT.F32.S32    S2, S2
592FBE:  VMUL.F32        S0, S0, S16
592FC2:  VMUL.F32        S0, S0, S2
592FC6:  VCVT.S32.F32    S0, S0
592FCA:  VMOV            R0, S0
592FCE:  ADD.W           R10, R0, R5
592FD2:  MOV             R0, R9; this
592FD4:  BLX.W           j__ZN6List_c11GetNumItemsEv; List_c::GetNumItems(void)
592FD8:  CMP             R0, R10
592FDA:  BGE             loc_592FE4
592FDC:  MOV             R0, R9; this
592FDE:  BLX.W           j__ZN6List_c11GetNumItemsEv; List_c::GetNumItems(void)
592FE2:  MOV             R10, R0
592FE4:  CMP.W           R10, #1
592FE8:  BLT             loc_593044
592FEA:  MOVW            R0, #0x1A0C
592FEE:  MOVS            R5, #0
592FF0:  MOVS            R6, #0
592FF2:  ADD             R0, R11
592FF4:  STR             R0, [SP,#0x60+var_54]
592FF6:  STR.W           R9, [SP,#0x60+var_50]
592FFA:  MOV             R0, R9; this
592FFC:  BLX.W           j__ZN6List_c10RemoveHeadEv; List_c::RemoveHead(void)
593000:  LDR             R1, [SP,#0x60+var_4C]; int
593002:  ADD             R2, SP, #0x60+var_40; CVector *
593004:  VLDR            S0, [SP,#0x60+var_48]
593008:  MOV             R3, R5; WaterCreature_c *
59300A:  VLDR            S2, [SP,#0x60+var_44]
59300E:  MOV             R8, R0
593010:  VSTR            S0, [SP,#0x60+var_60]
593014:  VSTR            S2, [SP,#0x60+var_5C]
593018:  BLX.W           j__ZN15WaterCreature_c4InitEiP7CVectorPS_ff; WaterCreature_c::Init(int,CVector *,WaterCreature_c*,float,float)
59301C:  CBZ             R0, loc_593028
59301E:  LDR             R0, [SP,#0x60+var_54]; this
593020:  MOV             R1, R8; ListItem_c *
593022:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
593026:  B               loc_593032
593028:  MOV             R0, R9; this
59302A:  MOV             R1, R8; ListItem_c *
59302C:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
593030:  MOV             R10, R6
593032:  CMP             R5, #0
593034:  ADD.W           R6, R6, #1
593038:  IT EQ
59303A:  MOVEQ           R5, R8
59303C:  LDR.W           R9, [SP,#0x60+var_50]
593040:  CMP             R6, R10
593042:  BLT             loc_592FFA
593044:  MOVW            R1, #0x1A0C
593048:  LDR.W           R0, [R11,R1]; this
59304C:  CBZ             R0, loc_5930B8
59304E:  ADD.W           R5, R11, R1
593052:  MOV             R1, R4; float
593054:  LDR             R6, [R0,#4]
593056:  BLX             j__ZN15WaterCreature_c6UpdateEf; WaterCreature_c::Update(float)
59305A:  CMP             R6, #0
59305C:  MOV             R0, R6
59305E:  BNE             loc_593052
593060:  LDR             R4, [R5]
593062:  CBZ             R4, loc_5930B8
593064:  LDR             R0, =(g_waterCreatureMan_ptr - 0x59306E)
593066:  MOV.W           R9, #0
59306A:  ADD             R0, PC; g_waterCreatureMan_ptr
59306C:  LDR.W           R10, [R0]; g_waterCreatureMan
593070:  MOVW            R0, #0x1A0C
593074:  ADD.W           R8, R10, R0
593078:  LDR             R0, =(_ZN7CObject14nNoTempObjectsE_ptr - 0x59307E)
59307A:  ADD             R0, PC; _ZN7CObject14nNoTempObjectsE_ptr
59307C:  LDR             R5, [R0]; CObject::nNoTempObjects ...
59307E:  LDRB            R0, [R4,#0xD]
593080:  LDR             R6, [R4,#4]
593082:  CBZ             R0, loc_5930B2
593084:  MOV             R0, R8; this
593086:  MOV             R1, R4; ListItem_c *
593088:  BLX.W           j__ZN6List_c10RemoveItemEP10ListItem_c; List_c::RemoveItem(ListItem_c *)
59308C:  ADD.W           R0, R10, #0x1A00; this
593090:  MOV             R1, R4; ListItem_c *
593092:  BLX             j__ZN6List_c7AddItemEP10ListItem_c; List_c::AddItem(ListItem_c *)
593096:  LDR             R0, [R4,#8]; this
593098:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
59309C:  LDR             R0, [R4,#8]
59309E:  CMP             R0, #0
5930A0:  ITTT NE
5930A2:  LDRNE           R1, [R0]
5930A4:  LDRNE           R1, [R1,#4]
5930A6:  BLXNE           R1
5930A8:  STR.W           R9, [R4,#8]
5930AC:  LDRH            R0, [R5]; CObject::nNoTempObjects
5930AE:  SUBS            R0, #1
5930B0:  STRH            R0, [R5]; CObject::nNoTempObjects
5930B2:  CMP             R6, #0
5930B4:  MOV             R4, R6
5930B6:  BNE             loc_59307E
5930B8:  ADD             SP, SP, #0x30 ; '0'
5930BA:  VPOP            {D8-D9}
5930BE:  ADD             SP, SP, #4
5930C0:  POP.W           {R8-R11}
5930C4:  POP             {R4-R7,PC}
