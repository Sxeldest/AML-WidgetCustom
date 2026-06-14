; =========================================================
; Game Engine Function: _ZN22CTaskComplexBeInCouple14ControlSubTaskEP4CPed
; Address            : 0x5368A0 - 0x536E0C
; =========================================================

5368A0:  PUSH            {R4-R7,LR}
5368A2:  ADD             R7, SP, #0xC
5368A4:  PUSH.W          {R8-R10}
5368A8:  VPUSH           {D8-D12}
5368AC:  SUB             SP, SP, #0x30
5368AE:  MOV             R5, R0
5368B0:  MOV             R4, R1
5368B2:  LDR             R0, [R5,#0x10]; this
5368B4:  CBZ             R0, loc_5368D6
5368B6:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
5368BA:  CBZ             R0, loc_5368D6
5368BC:  LDR             R0, [R5,#0x10]
5368BE:  MOVW            R1, #0x4BF; int
5368C2:  LDRB            R6, [R5,#0x14]
5368C4:  LDR.W           R0, [R0,#0x440]; this
5368C8:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
5368CC:  CBZ             R6, loc_536914
5368CE:  CBZ             R0, loc_536924
5368D0:  LDRB            R1, [R0,#0x14]
5368D2:  CBNZ            R1, loc_536924
5368D4:  B               loc_53691E
5368D6:  LDR.W           R0, =(g_ikChainMan_ptr - 0x5368E2)
5368DA:  MOVS            R1, #0; int
5368DC:  MOV             R2, R4; CPed *
5368DE:  ADD             R0, PC; g_ikChainMan_ptr
5368E0:  LDR             R0, [R0]; g_ikChainMan ; this
5368E2:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
5368E6:  CBZ             R0, loc_5368FA
5368E8:  LDR.W           R0, =(g_ikChainMan_ptr - 0x5368F6)
5368EC:  MOVS            R1, #0; int
5368EE:  MOV             R2, R4; CPed *
5368F0:  MOVS            R3, #0xFA; int
5368F2:  ADD             R0, PC; g_ikChainMan_ptr
5368F4:  LDR             R0, [R0]; g_ikChainMan ; this
5368F6:  BLX             j__ZN16IKChainManager_c13AbortPointArmEiP4CPedi; IKChainManager_c::AbortPointArm(int,CPed *,int)
5368FA:  LDR.W           R0, =(g_ikChainMan_ptr - 0x536906)
5368FE:  MOVS            R1, #1; int
536900:  MOV             R2, R4; CPed *
536902:  ADD             R0, PC; g_ikChainMan_ptr
536904:  LDR             R0, [R0]; g_ikChainMan ; this
536906:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
53690A:  CBZ             R0, loc_53696C
53690C:  LDR.W           R0, =(g_ikChainMan_ptr - 0x536914)
536910:  ADD             R0, PC; g_ikChainMan_ptr
536912:  B               loc_536960
536914:  CMP             R0, #0
536916:  ITT NE
536918:  LDRBNE          R1, [R0,#0x14]
53691A:  CMPNE           R1, #0
53691C:  BEQ             loc_536924
53691E:  LDR             R0, [R0,#0x10]
536920:  CMP             R0, R4
536922:  BEQ             loc_53697C
536924:  LDR.W           R0, =(g_ikChainMan_ptr - 0x536930)
536928:  MOVS            R1, #0; int
53692A:  MOV             R2, R4; CPed *
53692C:  ADD             R0, PC; g_ikChainMan_ptr
53692E:  LDR             R0, [R0]; g_ikChainMan ; this
536930:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
536934:  CBZ             R0, loc_536948
536936:  LDR.W           R0, =(g_ikChainMan_ptr - 0x536944)
53693A:  MOVS            R1, #0; int
53693C:  MOV             R2, R4; CPed *
53693E:  MOVS            R3, #0xFA; int
536940:  ADD             R0, PC; g_ikChainMan_ptr
536942:  LDR             R0, [R0]; g_ikChainMan ; this
536944:  BLX             j__ZN16IKChainManager_c13AbortPointArmEiP4CPedi; IKChainManager_c::AbortPointArm(int,CPed *,int)
536948:  LDR.W           R0, =(g_ikChainMan_ptr - 0x536954)
53694C:  MOVS            R1, #1; int
53694E:  MOV             R2, R4; CPed *
536950:  ADD             R0, PC; g_ikChainMan_ptr
536952:  LDR             R0, [R0]; g_ikChainMan ; this
536954:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
536958:  CBZ             R0, loc_53696C
53695A:  LDR.W           R0, =(g_ikChainMan_ptr - 0x536962)
53695E:  ADD             R0, PC; g_ikChainMan_ptr
536960:  LDR             R0, [R0]; g_ikChainMan ; this
536962:  MOVS            R1, #1; int
536964:  MOV             R2, R4; CPed *
536966:  MOVS            R3, #0xFA; int
536968:  BLX             j__ZN16IKChainManager_c13AbortPointArmEiP4CPedi; IKChainManager_c::AbortPointArm(int,CPed *,int)
53696C:  MOVS            R4, #0
53696E:  MOV             R0, R4
536970:  ADD             SP, SP, #0x30 ; '0'
536972:  VPOP            {D8-D12}
536976:  POP.W           {R8-R10}
53697A:  POP             {R4-R7,PC}
53697C:  LDR.W           R0, [R4,#0x440]
536980:  MOVW            R1, #0x4BF; int
536984:  ADDS            R0, #4; this
536986:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
53698A:  MOV             R8, R0
53698C:  LDR             R0, [R5,#0x10]
53698E:  MOVW            R1, #0x4BF; int
536992:  LDR.W           R0, [R0,#0x440]
536996:  ADDS            R0, #4; this
536998:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
53699C:  MOV             R9, R0
53699E:  LDR             R0, [R5,#0x10]
5369A0:  LDR             R1, [R4,#0x14]
5369A2:  ADDS            R6, R4, #4
5369A4:  MOV.W           R10, #1
5369A8:  LDR             R2, [R0,#0x14]
5369AA:  CMP             R1, #0
5369AC:  MOV             R3, R6
5369AE:  IT NE
5369B0:  ADDNE.W         R3, R1, #0x30 ; '0'
5369B4:  ADD.W           R1, R2, #0x30 ; '0'
5369B8:  CMP             R2, #0
5369BA:  VLDR            S0, [R3]
5369BE:  VLDR            S6, [R2]
5369C2:  VLDR            S2, [R3,#4]
5369C6:  VLDR            S8, [R2,#4]
5369CA:  VMUL.F32        S0, S6, S0
5369CE:  VLDR            S4, [R3,#8]
5369D2:  VLDR            S10, [R2,#8]
5369D6:  IT EQ
5369D8:  ADDEQ           R1, R0, #4
5369DA:  VLDR            S12, [R1]
5369DE:  VMUL.F32        S2, S8, S2
5369E2:  VLDR            S14, [R1,#4]
5369E6:  VMUL.F32        S4, S10, S4
5369EA:  VMUL.F32        S6, S6, S12
5369EE:  VLDR            S1, [R1,#8]
5369F2:  VMUL.F32        S8, S8, S14
5369F6:  LDRB            R0, [R5,#0x14]
5369F8:  VADD.F32        S0, S0, S2
5369FC:  VMUL.F32        S2, S10, S1
536A00:  VADD.F32        S6, S6, S8
536A04:  VADD.F32        S0, S0, S4
536A08:  VADD.F32        S2, S6, S2
536A0C:  VSUB.F32        S16, S0, S2
536A10:  VCMPE.F32       S16, #0.0
536A14:  VMRS            APSR_nzcv, FPSCR
536A18:  IT LT
536A1A:  MOVLT.W         R10, #2
536A1E:  CBNZ            R0, loc_536A4E
536A20:  LDR.W           R0, [R4,#0x440]; this
536A24:  MOV.W           R1, #0x4B8; int
536A28:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
536A2C:  CBZ             R0, loc_536A4E
536A2E:  VCMPE.F32       S16, #0.0
536A32:  MOVW            R1, #0x6666
536A36:  VMRS            APSR_nzcv, FPSCR
536A3A:  MOVT            R1, #0x3F86
536A3E:  MOV.W           R2, #0
536A42:  IT LT
536A44:  ADDLT.W         R1, R1, #0x80000000
536A48:  STR             R1, [R0,#0x14]
536A4A:  STR             R2, [R0,#0x18]
536A4C:  STR             R2, [R0,#0x1C]
536A4E:  LDR             R2, [R5,#0x10]
536A50:  MOV             R0, R6
536A52:  LDR             R1, [R4,#0x14]
536A54:  LDR             R3, [R2,#0x14]
536A56:  CMP             R1, #0
536A58:  IT NE
536A5A:  ADDNE.W         R0, R1, #0x30 ; '0'
536A5E:  ADD.W           R1, R3, #0x30 ; '0'
536A62:  CMP             R3, #0
536A64:  IT EQ
536A66:  ADDEQ           R1, R2, #4
536A68:  CMP.W           R9, #0
536A6C:  IT NE
536A6E:  CMPNE.W         R8, #0
536A72:  BEQ.W           loc_536BF6
536A76:  VLDR            S0, [R0]
536A7A:  VLDR            S4, [R1]
536A7E:  VLDR            S2, [R0,#4]
536A82:  VLDR            S6, [R1,#4]
536A86:  VSUB.F32        S22, S4, S0
536A8A:  VLDR            S20, =0.0
536A8E:  VSUB.F32        S24, S6, S2
536A92:  VMUL.F32        S2, S22, S22
536A96:  VMUL.F32        S0, S24, S24
536A9A:  VADD.F32        S0, S2, S0
536A9E:  VLDR            S2, [R5,#0x18]
536AA2:  VMUL.F32        S2, S2, S2
536AA6:  VADD.F32        S18, S0, S20
536AAA:  VCMPE.F32       S18, S2
536AAE:  VMRS            APSR_nzcv, FPSCR
536AB2:  BGT.W           loc_536BF6
536AB6:  VMOV.F32        S0, #4.0
536ABA:  VCMPE.F32       S18, S0
536ABE:  VMRS            APSR_nzcv, FPSCR
536AC2:  BLE             loc_536B1A
536AC4:  LDRB            R0, [R5,#0x14]
536AC6:  CBZ             R0, loc_536B1A
536AC8:  LDR             R0, =(g_ikChainMan_ptr - 0x536AD2)
536ACA:  MOVS            R1, #0; int
536ACC:  MOV             R2, R4; CPed *
536ACE:  ADD             R0, PC; g_ikChainMan_ptr
536AD0:  LDR             R0, [R0]; g_ikChainMan ; this
536AD2:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
536AD6:  CBZ             R0, loc_536AE8
536AD8:  LDR             R0, =(g_ikChainMan_ptr - 0x536AE4)
536ADA:  MOVS            R1, #0; int
536ADC:  MOV             R2, R4; CPed *
536ADE:  MOVS            R3, #0xFA; int
536AE0:  ADD             R0, PC; g_ikChainMan_ptr
536AE2:  LDR             R0, [R0]; g_ikChainMan ; this
536AE4:  BLX             j__ZN16IKChainManager_c13AbortPointArmEiP4CPedi; IKChainManager_c::AbortPointArm(int,CPed *,int)
536AE8:  LDR             R0, =(g_ikChainMan_ptr - 0x536AF2)
536AEA:  MOVS            R1, #1; int
536AEC:  MOV             R2, R4; CPed *
536AEE:  ADD             R0, PC; g_ikChainMan_ptr
536AF0:  LDR             R0, [R0]; g_ikChainMan ; this
536AF2:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
536AF6:  CBZ             R0, loc_536B08
536AF8:  LDR             R0, =(g_ikChainMan_ptr - 0x536B04)
536AFA:  MOVS            R1, #1; int
536AFC:  MOV             R2, R4; CPed *
536AFE:  MOVS            R3, #0xFA; int
536B00:  ADD             R0, PC; g_ikChainMan_ptr
536B02:  LDR             R0, [R0]; g_ikChainMan ; this
536B04:  BLX             j__ZN16IKChainManager_c13AbortPointArmEiP4CPedi; IKChainManager_c::AbortPointArm(int,CPed *,int)
536B08:  LDR.W           R0, [R4,#0x440]; this
536B0C:  MOVW            R1, #0x4BD; int
536B10:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
536B14:  CMP             R0, #0
536B16:  BEQ.W           loc_536DD0
536B1A:  LDRB            R0, [R5,#0x15]
536B1C:  CMP             R0, #0
536B1E:  BEQ.W           loc_536CAC
536B22:  VMOV.F32        S0, #0.5
536B26:  LDR             R0, [R4,#0x14]
536B28:  CMP             R0, #0
536B2A:  IT NE
536B2C:  ADDNE.W         R6, R0, #0x30 ; '0'
536B30:  VLDR            S4, [R6]
536B34:  VLDR            S8, [R6,#8]
536B38:  VLDR            S6, [R6,#4]
536B3C:  VMUL.F32        S2, S24, S0
536B40:  VMUL.F32        S0, S22, S0
536B44:  VADD.F32        S8, S8, S20
536B48:  VADD.F32        S2, S2, S6
536B4C:  VADD.F32        S0, S0, S4
536B50:  VMOV.F32        S4, #2.25
536B54:  VSTR            S8, [SP,#0x70+var_44]
536B58:  VSTR            S2, [SP,#0x70+var_48]
536B5C:  VSTR            S0, [SP,#0x70+var_4C]
536B60:  VCMPE.F32       S18, S4
536B64:  VMRS            APSR_nzcv, FPSCR
536B68:  BGE             loc_536C30
536B6A:  LDRB            R0, [R5,#0x1C]
536B6C:  CMP             R10, R0
536B6E:  BEQ             loc_536BB0
536B70:  LDR             R0, =(g_ikChainMan_ptr - 0x536B7A)
536B72:  MOVS            R1, #0; int
536B74:  MOV             R2, R4; CPed *
536B76:  ADD             R0, PC; g_ikChainMan_ptr
536B78:  LDR             R0, [R0]; g_ikChainMan ; this
536B7A:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
536B7E:  CBZ             R0, loc_536B90
536B80:  LDR             R0, =(g_ikChainMan_ptr - 0x536B8C)
536B82:  MOVS            R1, #0; int
536B84:  MOV             R2, R4; CPed *
536B86:  MOVS            R3, #0xFA; int
536B88:  ADD             R0, PC; g_ikChainMan_ptr
536B8A:  LDR             R0, [R0]; g_ikChainMan ; this
536B8C:  BLX             j__ZN16IKChainManager_c13AbortPointArmEiP4CPedi; IKChainManager_c::AbortPointArm(int,CPed *,int)
536B90:  LDR             R0, =(g_ikChainMan_ptr - 0x536B9A)
536B92:  MOVS            R1, #1; int
536B94:  MOV             R2, R4; CPed *
536B96:  ADD             R0, PC; g_ikChainMan_ptr
536B98:  LDR             R0, [R0]; g_ikChainMan ; this
536B9A:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
536B9E:  CBZ             R0, loc_536BB0
536BA0:  LDR             R0, =(g_ikChainMan_ptr - 0x536BAC)
536BA2:  MOVS            R1, #1; int
536BA4:  MOV             R2, R4; CPed *
536BA6:  MOVS            R3, #0xFA; int
536BA8:  ADD             R0, PC; g_ikChainMan_ptr
536BAA:  LDR             R0, [R0]; g_ikChainMan ; this
536BAC:  BLX             j__ZN16IKChainManager_c13AbortPointArmEiP4CPedi; IKChainManager_c::AbortPointArm(int,CPed *,int)
536BB0:  VCMPE.F32       S16, #0.0
536BB4:  VMRS            APSR_nzcv, FPSCR
536BB8:  BGE             loc_536C72
536BBA:  LDR.W           R12, =(g_ikChainMan_ptr - 0x536BCC)
536BBE:  MOV.W           R0, #0xFFFFFFFF
536BC2:  MOVS            R1, #0
536BC4:  MOVW            LR, #0
536BC8:  ADD             R12, PC; g_ikChainMan_ptr
536BCA:  STRD.W          R1, R0, [SP,#0x70+var_70]; int
536BCE:  MOVT            LR, #0x41F0
536BD2:  MOVS            R2, #0xFA
536BD4:  LDR.W           R0, [R12]; g_ikChainMan ; int
536BD8:  MOV.W           R3, #0x3F000000
536BDC:  ADR             R1, aCtaskcomplexbe; "CTaskComplexBeInCouple"
536BDE:  ADD             R6, SP, #0x70+var_4C
536BE0:  STRD.W          R6, R3, [SP,#0x70+var_68]; int
536BE4:  MOV             R3, R4; this
536BE6:  STRD.W          R2, LR, [SP,#0x70+var_60]; int
536BEA:  MOVS            R2, #0; int
536BEC:  BLX             j__ZN16IKChainManager_c8PointArmEPciP4CPedP7CEntityiP5RwV3dfif; IKChainManager_c::PointArm(char *,int,CPed *,CEntity *,int,RwV3d *,float,int,float)
536BF0:  MOVS            R0, #2
536BF2:  STRB            R0, [R5,#0x1C]
536BF4:  B               loc_536CAC
536BF6:  LDR             R0, =(g_ikChainMan_ptr - 0x536C00)
536BF8:  MOVS            R1, #0; int
536BFA:  MOV             R2, R4; CPed *
536BFC:  ADD             R0, PC; g_ikChainMan_ptr
536BFE:  LDR             R0, [R0]; g_ikChainMan ; this
536C00:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
536C04:  CBZ             R0, loc_536C16
536C06:  LDR             R0, =(g_ikChainMan_ptr - 0x536C12)
536C08:  MOVS            R1, #0; int
536C0A:  MOV             R2, R4; CPed *
536C0C:  MOVS            R3, #0xFA; int
536C0E:  ADD             R0, PC; g_ikChainMan_ptr
536C10:  LDR             R0, [R0]; g_ikChainMan ; this
536C12:  BLX             j__ZN16IKChainManager_c13AbortPointArmEiP4CPedi; IKChainManager_c::AbortPointArm(int,CPed *,int)
536C16:  LDR             R0, =(g_ikChainMan_ptr - 0x536C20)
536C18:  MOVS            R1, #1; int
536C1A:  MOV             R2, R4; CPed *
536C1C:  ADD             R0, PC; g_ikChainMan_ptr
536C1E:  LDR             R0, [R0]; g_ikChainMan ; this
536C20:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
536C24:  CMP             R0, #0
536C26:  BEQ.W           loc_53696C
536C2A:  LDR             R0, =(g_ikChainMan_ptr - 0x536C30)
536C2C:  ADD             R0, PC; g_ikChainMan_ptr
536C2E:  B               loc_536960
536C30:  LDR             R0, =(g_ikChainMan_ptr - 0x536C3A)
536C32:  MOVS            R1, #0; int
536C34:  MOV             R2, R4; CPed *
536C36:  ADD             R0, PC; g_ikChainMan_ptr
536C38:  LDR             R0, [R0]; g_ikChainMan ; this
536C3A:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
536C3E:  CBZ             R0, loc_536C50
536C40:  LDR             R0, =(g_ikChainMan_ptr - 0x536C4C)
536C42:  MOVS            R1, #0; int
536C44:  MOV             R2, R4; CPed *
536C46:  MOVS            R3, #0xFA; int
536C48:  ADD             R0, PC; g_ikChainMan_ptr
536C4A:  LDR             R0, [R0]; g_ikChainMan ; this
536C4C:  BLX             j__ZN16IKChainManager_c13AbortPointArmEiP4CPedi; IKChainManager_c::AbortPointArm(int,CPed *,int)
536C50:  LDR             R0, =(g_ikChainMan_ptr - 0x536C5A)
536C52:  MOVS            R1, #1; int
536C54:  MOV             R2, R4; CPed *
536C56:  ADD             R0, PC; g_ikChainMan_ptr
536C58:  LDR             R0, [R0]; g_ikChainMan ; this
536C5A:  BLX             j__ZN16IKChainManager_c13IsArmPointingEiP4CPed; IKChainManager_c::IsArmPointing(int,CPed *)
536C5E:  CBZ             R0, loc_536CAC
536C60:  LDR             R0, =(g_ikChainMan_ptr - 0x536C6C)
536C62:  MOVS            R1, #1; int
536C64:  MOV             R2, R4; CPed *
536C66:  MOVS            R3, #0xFA; int
536C68:  ADD             R0, PC; g_ikChainMan_ptr
536C6A:  LDR             R0, [R0]; g_ikChainMan ; this
536C6C:  BLX             j__ZN16IKChainManager_c13AbortPointArmEiP4CPedi; IKChainManager_c::AbortPointArm(int,CPed *,int)
536C70:  B               loc_536CAC
536C72:  LDR.W           R12, =(g_ikChainMan_ptr - 0x536C84)
536C76:  MOV.W           R0, #0xFFFFFFFF
536C7A:  MOVS            R1, #0
536C7C:  MOVW            LR, #0
536C80:  ADD             R12, PC; g_ikChainMan_ptr
536C82:  STRD.W          R1, R0, [SP,#0x70+var_70]; int
536C86:  MOVT            LR, #0x41F0
536C8A:  MOVS            R2, #0xFA
536C8C:  LDR.W           R0, [R12]; g_ikChainMan ; int
536C90:  MOV.W           R3, #0x3F000000
536C94:  ADR             R1, aCtaskcomplexbe; "CTaskComplexBeInCouple"
536C96:  ADD             R6, SP, #0x70+var_4C
536C98:  STRD.W          R6, R3, [SP,#0x70+var_68]; int
536C9C:  MOV             R3, R4; this
536C9E:  STRD.W          R2, LR, [SP,#0x70+var_60]; int
536CA2:  MOVS            R2, #1; int
536CA4:  MOVS            R6, #1
536CA6:  BLX             j__ZN16IKChainManager_c8PointArmEPciP4CPedP7CEntityiP5RwV3dfif; IKChainManager_c::PointArm(char *,int,CPed *,CEntity *,int,RwV3d *,float,int,float)
536CAA:  STRB            R6, [R5,#0x1C]
536CAC:  LDRB            R0, [R5,#0x16]
536CAE:  CMP             R0, #0
536CB0:  BEQ.W           loc_536DCC
536CB4:  LDR             R0, =(g_ikChainMan_ptr - 0x536CBC)
536CB6:  MOV             R1, R4; CPed *
536CB8:  ADD             R0, PC; g_ikChainMan_ptr
536CBA:  LDR             R0, [R0]; g_ikChainMan ; this
536CBC:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
536CC0:  CBNZ            R0, loc_536D40
536CC2:  BLX             rand
536CC6:  UXTH            R0, R0
536CC8:  VLDR            S16, =0.000015259
536CCC:  VMOV            S0, R0
536CD0:  VLDR            S2, =100.0
536CD4:  VCVT.F32.S32    S0, S0
536CD8:  VMUL.F32        S0, S0, S16
536CDC:  VMUL.F32        S0, S0, S2
536CE0:  VCVT.S32.F32    S0, S0
536CE4:  VMOV            R0, S0
536CE8:  CMP             R0, #0x51 ; 'Q'
536CEA:  BLT             loc_536D40
536CEC:  BLX             rand
536CF0:  UXTH            R0, R0
536CF2:  VLDR            S2, =2000.0
536CF6:  VMOV            S0, R0
536CFA:  MOVS            R1, #0
536CFC:  MOVS            R2, #3
536CFE:  LDR             R0, =(g_ikChainMan_ptr - 0x536D0C)
536D00:  VCVT.F32.S32    S0, S0
536D04:  LDR             R3, [R5,#0x10]; int
536D06:  STR             R1, [SP,#0x70+var_54]; int
536D08:  ADD             R0, PC; g_ikChainMan_ptr
536D0A:  STR             R2, [SP,#0x70+var_58]; int
536D0C:  MOV.W           R2, #0x1F4
536D10:  STR             R2, [SP,#0x70+var_5C]; int
536D12:  MOV.W           R2, #0x3E800000
536D16:  STR             R2, [SP,#0x70+var_60]; float
536D18:  STRD.W          R1, R1, [SP,#0x70+var_68]; int
536D1C:  MOVS            R1, #5
536D1E:  LDR             R0, [R0]; g_ikChainMan ; int
536D20:  VMUL.F32        S0, S0, S16
536D24:  VMUL.F32        S0, S0, S2
536D28:  VCVT.S32.F32    S0, S0
536D2C:  STR             R1, [SP,#0x70+var_6C]; int
536D2E:  VMOV            R1, S0
536D32:  ADD.W           R2, R1, #0x7D0
536D36:  ADR             R1, aTaskbeincouple; "TaskBeInCouple"
536D38:  STR             R2, [SP,#0x70+var_70]; int
536D3A:  MOV             R2, R4; CPed *
536D3C:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
536D40:  LDR             R0, =(g_ikChainMan_ptr - 0x536D48)
536D42:  LDR             R1, [R5,#0x10]; CPed *
536D44:  ADD             R0, PC; g_ikChainMan_ptr
536D46:  LDR             R0, [R0]; g_ikChainMan ; this
536D48:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
536D4C:  CBNZ            R0, loc_536DCC
536D4E:  BLX             rand
536D52:  UXTH            R0, R0
536D54:  VLDR            S16, =0.000015259
536D58:  VMOV            S0, R0
536D5C:  VLDR            S2, =100.0
536D60:  VCVT.F32.S32    S0, S0
536D64:  VMUL.F32        S0, S0, S16
536D68:  VMUL.F32        S0, S0, S2
536D6C:  VCVT.S32.F32    S0, S0
536D70:  VMOV            R0, S0
536D74:  CMP             R0, #0x51 ; 'Q'
536D76:  BLT             loc_536DCC
536D78:  BLX             rand
536D7C:  UXTH            R0, R0
536D7E:  VLDR            S2, =2000.0
536D82:  VMOV            S0, R0
536D86:  MOVS            R1, #0
536D88:  MOVS            R3, #3
536D8A:  LDR             R0, =(g_ikChainMan_ptr - 0x536D98)
536D8C:  VCVT.F32.S32    S0, S0
536D90:  LDR             R2, [R5,#0x10]; CPed *
536D92:  STR             R1, [SP,#0x70+var_54]; int
536D94:  ADD             R0, PC; g_ikChainMan_ptr
536D96:  STR             R3, [SP,#0x70+var_58]; int
536D98:  MOV.W           R3, #0x1F4
536D9C:  STR             R3, [SP,#0x70+var_5C]; int
536D9E:  MOV.W           R3, #0x3E800000
536DA2:  STR             R3, [SP,#0x70+var_60]; float
536DA4:  STRD.W          R1, R1, [SP,#0x70+var_68]; int
536DA8:  MOVS            R1, #5
536DAA:  LDR             R0, [R0]; g_ikChainMan ; int
536DAC:  VMUL.F32        S0, S0, S16
536DB0:  VMUL.F32        S0, S0, S2
536DB4:  VCVT.S32.F32    S0, S0
536DB8:  STR             R1, [SP,#0x70+var_6C]; int
536DBA:  VMOV            R1, S0
536DBE:  ADD.W           R3, R1, #0x7D0
536DC2:  ADR             R1, aTaskbeincouple; "TaskBeInCouple"
536DC4:  STR             R3, [SP,#0x70+var_70]; int
536DC6:  MOV             R3, R4; int
536DC8:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
536DCC:  LDR             R4, [R5,#8]
536DCE:  B               loc_53696E
536DD0:  MOVS            R0, #word_2C; this
536DD2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
536DD6:  MOV             R4, R0
536DD8:  LDR             R5, [R5,#0x10]
536DDA:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
536DDE:  LDR             R0, =(_ZTV22CTaskComplexWaitForPed_ptr - 0x536DEE)
536DE0:  MOVS            R1, #0
536DE2:  MOV.W           R2, #0x3F400000
536DE6:  MOVW            R3, #0x4E20
536DEA:  ADD             R0, PC; _ZTV22CTaskComplexWaitForPed_ptr
536DEC:  STRH            R1, [R4,#0x24]
536DEE:  STRD.W          R2, R3, [R4,#0x10]
536DF2:  LDR             R0, [R0]; `vtable for'CTaskComplexWaitForPed ...
536DF4:  STRB            R1, [R4,#0x18]
536DF6:  STRD.W          R1, R1, [R4,#0x1C]
536DFA:  MOV             R1, R4
536DFC:  ADDS            R0, #8
536DFE:  STR             R0, [R4]
536E00:  STR.W           R5, [R1,#0xC]!; CEntity **
536E04:  MOV             R0, R5; this
536E06:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
536E0A:  B               loc_53696E
