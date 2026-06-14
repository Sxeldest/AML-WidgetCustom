; =========================================================
; Game Engine Function: _ZN7CObject16ObjectFireDamageEfP7CEntity
; Address            : 0x45590C - 0x455AE8
; =========================================================

45590C:  PUSH            {R4,R5,R7,LR}
45590E:  ADD             R7, SP, #8
455910:  SUB             SP, SP, #0x38
455912:  MOV             R4, R0
455914:  LDR             R0, =(MI_GRASSPLANT_ptr - 0x45591C)
455916:  MOV             R5, R2
455918:  ADD             R0, PC; MI_GRASSPLANT_ptr
45591A:  LDR             R2, [R0]; MI_GRASSPLANT
45591C:  LDRSH.W         R0, [R4,#0x26]
455920:  LDRH            R2, [R2]
455922:  CMP             R0, R2
455924:  BEQ             loc_455934
455926:  LDR             R2, =(MI_GRASSHOUSE_ptr - 0x45592C)
455928:  ADD             R2, PC; MI_GRASSHOUSE_ptr
45592A:  LDR             R2, [R2]; MI_GRASSHOUSE
45592C:  LDRH            R2, [R2]
45592E:  CMP             R0, R2
455930:  BNE.W           loc_455AE4
455934:  VMOV            S0, R1
455938:  VLDR            S2, [R4,#0x158]
45593C:  VLDR            S4, =0.0
455940:  VSUB.F32        S0, S2, S0
455944:  LDRB.W          R0, [R4,#0x148]
455948:  CMP             R0, #0
45594A:  VMAX.F32        D0, D0, D2
45594E:  VSTR            S0, [R4,#0x158]
455952:  BEQ.W           loc_455AE4
455956:  LDRB.W          R0, [R4,#0x46]
45595A:  LSLS            R0, R0, #0x19
45595C:  BPL             loc_45597A
45595E:  MOV.W           R0, #0xFFFFFFFF; int
455962:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
455966:  CMP             R0, R5
455968:  BEQ             loc_45597A
45596A:  MOV.W           R0, #0xFFFFFFFF; int
45596E:  MOVS            R1, #0; bool
455970:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
455974:  CMP             R0, R5
455976:  BNE.W           loc_455AE4
45597A:  LDR             R0, =(MI_GRASSPLANT_ptr - 0x455984)
45597C:  LDRSH.W         R1, [R4,#0x26]
455980:  ADD             R0, PC; MI_GRASSPLANT_ptr
455982:  LDR             R0, [R0]; MI_GRASSPLANT
455984:  LDRH            R0, [R0]
455986:  CMP             R1, R0
455988:  BNE             loc_4559B4
45598A:  VLDR            S2, =-2000.0
45598E:  VMOV.F32        S4, #1.0
455992:  VLDR            S0, [R4,#0x158]
455996:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4559A0)
455998:  VDIV.F32        S2, S0, S2
45599C:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
45599E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
4559A0:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
4559A2:  ADDW            R0, R0, #0xBB8
4559A6:  STR.W           R0, [R4,#0x17C]
4559AA:  VADD.F32        S2, S2, S4
4559AE:  VSTR            S2, [R4,#0x180]
4559B2:  B               loc_4559B8
4559B4:  VLDR            S0, [R4,#0x158]
4559B8:  VCMP.F32        S0, #0.0
4559BC:  VMRS            APSR_nzcv, FPSCR
4559C0:  BNE.W           loc_455AE4
4559C4:  LDRB.W          R0, [R4,#0x148]
4559C8:  MOVS            R1, #0
4559CA:  STR.W           R1, [R4,#0x17C]
4559CE:  CMP             R0, #0xCA
4559D0:  IT NE
4559D2:  CMPNE           R0, #0xC8
4559D4:  BEQ             loc_455A58
4559D6:  CMP             R0, #1
4559D8:  BNE.W           loc_455AE4
4559DC:  MOV             R0, R4
4559DE:  LDR.W           R1, [R0,#0x1C]!
4559E2:  TST.W           R1, #0x200
4559E6:  BNE             loc_455AE4
4559E8:  LDR             R2, [R0,#4]
4559EA:  ORR.W           R1, R1, #0x200
4559EE:  STRD.W          R1, R2, [R0]
4559F2:  LDR             R0, [R4]
4559F4:  LDR             R1, [R0,#0x24]
4559F6:  MOV             R0, R4
4559F8:  BLX             R1
4559FA:  LDR             R0, =(gpShadowHeliTex_ptr - 0x455A06)
4559FC:  MOVS            R5, #0
4559FE:  LDR             R1, [R4,#0x14]
455A00:  MOVS            R3, #0xC8
455A02:  ADD             R0, PC; gpShadowHeliTex_ptr
455A04:  MOVT            R5, #0xC040
455A08:  ADD.W           R2, R1, #0x30 ; '0'
455A0C:  CMP             R1, #0
455A0E:  LDR             R0, [R0]; gpShadowHeliTex
455A10:  IT EQ
455A12:  ADDEQ           R2, R4, #4
455A14:  VLDR            D16, [R2]
455A18:  LDR             R2, [R2,#8]
455A1A:  STR             R2, [SP,#0x40+var_10]
455A1C:  MOVW            R2, #0x7530
455A20:  LDR             R1, [R0]; int
455A22:  MOV.W           R0, #0x3F800000
455A26:  VSTR            D16, [SP,#0x40+var_18]
455A2A:  STRD.W          R2, R0, [SP,#0x40+var_20]; int
455A2E:  MOVS            R0, #0
455A30:  MOVS            R2, #0
455A32:  MOVT            R0, #0x4120
455A36:  STRD.W          R2, R2, [SP,#0x40+var_40]; float
455A3A:  STRD.W          R5, R3, [SP,#0x40+var_38]; float
455A3E:  MOVS            R3, #0
455A40:  STRD.W          R2, R2, [SP,#0x40+var_30]; int
455A44:  MOVT            R3, #0x4040; int
455A48:  STRD.W          R2, R0, [SP,#0x40+var_28]; int
455A4C:  ADD             R2, SP, #0x40+var_18; int
455A4E:  MOVS            R0, #1; int
455A50:  BLX             j__ZN8CShadows18AddPermanentShadowEhP9RwTextureP7CVectorffffshhhfjf; CShadows::AddPermanentShadow(uchar,RwTexture *,CVector *,float,float,float,float,short,uchar,uchar,uchar,float,uint,float)
455A54:  ADD             SP, SP, #0x38 ; '8'
455A56:  POP             {R4,R5,R7,PC}
455A58:  LDRB.W          R0, [R4,#0x145]
455A5C:  LSLS            R0, R0, #0x1D
455A5E:  BMI             loc_455A6C
455A60:  LDR             R0, =(AudioEngine_ptr - 0x455A68)
455A62:  MOV             R1, R4; CEntity *
455A64:  ADD             R0, PC; AudioEngine_ptr
455A66:  LDR             R0, [R0]; AudioEngine ; this
455A68:  BLX             j__ZN12CAudioEngine23ReportObjectDestructionEP7CEntity; CAudioEngine::ReportObjectDestruction(CEntity *)
455A6C:  LDR.W           R0, [R4,#0x164]
455A70:  ADD.W           R5, R0, #0x38 ; '8'
455A74:  LDM             R5, {R1,R2,R5}
455A76:  LDR             R3, [R0,#0x44]
455A78:  LDR             R0, =(g_breakMan_ptr - 0x455A82)
455A7A:  STR             R1, [SP,#0x40+var_18]
455A7C:  MOVS            R1, #1
455A7E:  ADD             R0, PC; g_breakMan_ptr
455A80:  STRD.W          R2, R5, [SP,#0x40+var_18+4]
455A84:  ADD             R2, SP, #0x40+var_18
455A86:  STR             R1, [SP,#0x40+var_40]
455A88:  LDR             R0, [R0]; g_breakMan
455A8A:  MOV             R1, R4
455A8C:  BLX             j__ZN14BreakManager_c3AddEP7CObjectP5RwV3dfi; BreakManager_c::Add(CObject *,RwV3d *,float,int)
455A90:  MOV             R5, R4
455A92:  LDR.W           R2, [R5,#0x1C]!
455A96:  LDR             R0, [R5,#4]
455A98:  BIC.W           R1, R2, #0x81
455A9C:  TST.W           R2, #0x40004
455AA0:  STR             R1, [R5]
455AA2:  BNE             loc_455AAE
455AA4:  MOV             R0, R4; this
455AA6:  BLX             j__ZN9CPhysical20RemoveFromMovingListEv; CPhysical::RemoveFromMovingList(void)
455AAA:  LDRD.W          R1, R0, [R5]
455AAE:  ORR.W           R1, R1, #4
455AB2:  STRD.W          R1, R0, [R5]
455AB6:  VMOV.I32        Q8, #0
455ABA:  LDR             R1, [R4,#0x44]
455ABC:  ADD.W           R3, R4, #0x48 ; 'H'
455AC0:  LDR             R0, [R4]
455AC2:  LDR.W           R2, [R4,#0x144]
455AC6:  ORR.W           R1, R1, #0x800000
455ACA:  VST1.32         {D16-D17}, [R3]
455ACE:  MOVS            R3, #0
455AD0:  STRD.W          R3, R3, [R4,#0x58]
455AD4:  STR             R1, [R4,#0x44]
455AD6:  ORR.W           R1, R2, #0x400
455ADA:  STR.W           R1, [R4,#0x144]
455ADE:  LDR             R1, [R0,#0x24]
455AE0:  MOV             R0, R4
455AE2:  BLX             R1
455AE4:  ADD             SP, SP, #0x38 ; '8'
455AE6:  POP             {R4,R5,R7,PC}
