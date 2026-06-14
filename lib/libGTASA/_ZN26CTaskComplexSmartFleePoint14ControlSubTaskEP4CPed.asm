; =========================================================
; Game Engine Function: _ZN26CTaskComplexSmartFleePoint14ControlSubTaskEP4CPed
; Address            : 0x51390C - 0x513B68
; =========================================================

51390C:  PUSH            {R4-R7,LR}
51390E:  ADD             R7, SP, #0xC
513910:  PUSH.W          {R8}
513914:  SUB             SP, SP, #0x20
513916:  MOV             R5, R0
513918:  MOV             R8, R1
51391A:  LDR             R6, [R5,#8]
51391C:  LDR             R0, [R6]
51391E:  LDR             R1, [R0,#0x14]
513920:  MOV             R0, R6
513922:  BLX             R1
513924:  CMP.W           R0, #0x390
513928:  BNE             loc_5139C6
51392A:  LDRB.W          R0, [R5,#0x24]
51392E:  CBZ             R0, loc_51394C
513930:  MOVW            R3, #0xCCCD
513934:  MOVS            R0, #0
513936:  STRD.W          R0, R0, [SP,#0x30+var_30]; unsigned __int8
51393A:  MOVT            R3, #0x3DCC; float
51393E:  STR             R0, [SP,#0x30+var_28]; unsigned __int8
513940:  MOV             R0, R8; this
513942:  MOVW            R1, #0x15B; unsigned __int16
513946:  MOVS            R2, #0; unsigned int
513948:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
51394C:  LDR             R4, [R5,#8]
51394E:  LDR             R0, [R5,#0x30]
513950:  STR             R0, [R4,#0xC]
513952:  LDRB.W          R0, [R5,#0x41]
513956:  CMP             R0, #0
513958:  BEQ             loc_5139E6
51395A:  LDRB.W          R0, [R5,#0x3C]
51395E:  MOVS            R1, #0
513960:  STRB.W          R1, [R5,#0x41]
513964:  CBZ             R0, loc_51397A
513966:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x51396E)
513968:  LDR             R1, [R5,#0x28]
51396A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
51396C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
51396E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
513970:  STRD.W          R0, R1, [R5,#0x34]
513974:  MOVS            R0, #1
513976:  STRB.W          R0, [R5,#0x3C]
51397A:  LDR.W           R0, [R8,#0x14]
51397E:  VLDR            S0, [R5,#0x18]
513982:  ADD.W           R1, R0, #0x30 ; '0'
513986:  CMP             R0, #0
513988:  VLDR            S2, [R5,#0x1C]
51398C:  IT EQ
51398E:  ADDEQ.W         R1, R8, #4
513992:  VLDR            S4, [R1]
513996:  VLDR            S6, [R1,#4]
51399A:  VSUB.F32        S0, S4, S0
51399E:  VSUB.F32        S2, S6, S2
5139A2:  VMOV            R0, S0; this
5139A6:  VMOV            R1, S2; float
5139AA:  BLX             j__ZN8CGeneral24GetNodeHeadingFromVectorEff; CGeneral::GetNodeHeadingFromVector(float,float)
5139AE:  LDRB.W          R2, [R5,#0x40]
5139B2:  UXTB            R1, R0; int
5139B4:  CMP             R2, R1
5139B6:  BEQ.W           loc_513AE2
5139BA:  STRB.W          R0, [R5,#0x40]
5139BE:  MOV             R0, R4; this
5139C0:  BLX             j__ZN18CTaskComplexWander6SetDirEi; CTaskComplexWander::SetDir(int)
5139C4:  B               loc_513AE2
5139C6:  LDR             R0, =(g_ikChainMan_ptr - 0x5139CE)
5139C8:  MOV             R1, R8; CPed *
5139CA:  ADD             R0, PC; g_ikChainMan_ptr
5139CC:  LDR             R0, [R0]; g_ikChainMan ; this
5139CE:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
5139D2:  CBZ             R0, loc_5139E2
5139D4:  LDR             R0, =(g_ikChainMan_ptr - 0x5139DE)
5139D6:  MOV             R1, R8; CPed *
5139D8:  MOVS            R2, #0xFA; int
5139DA:  ADD             R0, PC; g_ikChainMan_ptr
5139DC:  LDR             R0, [R0]; g_ikChainMan ; this
5139DE:  BLX             j__ZN16IKChainManager_c11AbortLookAtEP4CPedi; IKChainManager_c::AbortLookAt(CPed *,int)
5139E2:  LDR             R6, [R5,#8]
5139E4:  B               loc_513B5E
5139E6:  LDRB.W          R0, [R5,#0x3C]
5139EA:  CBZ             R0, loc_513A18
5139EC:  LDRB.W          R0, [R5,#0x3D]
5139F0:  CBZ             R0, loc_513A06
5139F2:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x5139FA)
5139F4:  MOVS            R1, #0
5139F6:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
5139F8:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
5139FA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
5139FC:  STRB.W          R1, [R5,#0x3D]
513A00:  STR             R0, [R5,#0x34]
513A02:  MOV             R1, R0
513A04:  B               loc_513A10
513A06:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x513A0E)
513A08:  LDR             R1, [R5,#0x34]
513A0A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
513A0C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
513A0E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
513A10:  LDR             R2, [R5,#0x38]
513A12:  ADD             R1, R2
513A14:  CMP             R1, R0
513A16:  BLS             loc_513AA8
513A18:  LDR.W           R0, [R8,#0x14]
513A1C:  VLDR            S6, [R5,#0x18]
513A20:  ADD.W           R1, R0, #0x30 ; '0'
513A24:  CMP             R0, #0
513A26:  VLDR            S8, [R5,#0x1C]
513A2A:  VLDR            S10, [R5,#0x20]
513A2E:  VLDR            S12, [R5,#0x2C]
513A32:  IT EQ
513A34:  ADDEQ.W         R1, R8, #4
513A38:  VLDR            S0, [R1]
513A3C:  VLDR            S4, [R1,#4]
513A40:  VSUB.F32        S6, S6, S0
513A44:  VLDR            S2, [R1,#8]
513A48:  VSUB.F32        S8, S8, S4
513A4C:  VSUB.F32        S10, S10, S2
513A50:  VMUL.F32        S6, S6, S6
513A54:  VMUL.F32        S8, S8, S8
513A58:  VMUL.F32        S10, S10, S10
513A5C:  VADD.F32        S8, S6, S8
513A60:  VMUL.F32        S6, S12, S12
513A64:  VADD.F32        S8, S8, S10
513A68:  VCMPE.F32       S8, S6
513A6C:  VMRS            APSR_nzcv, FPSCR
513A70:  BLE             loc_513AE2
513A72:  VLDR            S8, [R5,#0xC]
513A76:  VLDR            S10, [R5,#0x10]
513A7A:  VSUB.F32        S0, S8, S0
513A7E:  VLDR            S12, [R5,#0x14]
513A82:  VSUB.F32        S4, S10, S4
513A86:  VSUB.F32        S2, S12, S2
513A8A:  VMUL.F32        S0, S0, S0
513A8E:  VMUL.F32        S4, S4, S4
513A92:  VMUL.F32        S2, S2, S2
513A96:  VADD.F32        S0, S0, S4
513A9A:  VADD.F32        S0, S0, S2
513A9E:  VCMPE.F32       S0, S6
513AA2:  VMRS            APSR_nzcv, FPSCR
513AA6:  BLE             loc_513AE4
513AA8:  LDR.W           R0, [R8,#0x440]
513AAC:  LDR             R4, [R0,#0x14]
513AAE:  CBZ             R4, loc_513AC6
513AB0:  LDR             R0, [R4]
513AB2:  LDR             R1, [R0,#0x14]
513AB4:  MOV             R0, R4
513AB6:  BLX             R1
513AB8:  CMP.W           R0, #0x390
513ABC:  BNE             loc_513AC6
513ABE:  LDR             R1, [R5,#8]; CTaskComplexWander *
513AC0:  MOV             R0, R4; this
513AC2:  BLX             j__ZN18CTaskComplexWander12ContinueFromERKS_; CTaskComplexWander::ContinueFrom(CTaskComplexWander const&)
513AC6:  MOVS            R0, #dword_20; this
513AC8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
513ACC:  MOV             R6, R0
513ACE:  MOV.W           R0, #0x41000000
513AD2:  STR             R0, [SP,#0x30+var_30]; float
513AD4:  MOV             R0, R6; this
513AD6:  MOVS            R1, #0; int
513AD8:  MOVS            R2, #0; bool
513ADA:  MOVS            R3, #0; bool
513ADC:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
513AE0:  B               loc_513AE4
513AE2:  LDR             R6, [R5,#8]
513AE4:  LDR             R0, [R5,#0x30]
513AE6:  CMP             R0, #6
513AE8:  BNE             loc_513B5E
513AEA:  LDR             R0, =(g_ikChainMan_ptr - 0x513AF2)
513AEC:  MOV             R1, R8; CPed *
513AEE:  ADD             R0, PC; g_ikChainMan_ptr
513AF0:  LDR             R0, [R0]; g_ikChainMan ; this
513AF2:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
513AF6:  CBNZ            R0, loc_513B5E
513AF8:  BLX             rand
513AFC:  UXTH            R0, R0
513AFE:  VLDR            S2, =0.000015259
513B02:  VMOV            S0, R0
513B06:  VCVT.F32.S32    S0, S0
513B0A:  VMUL.F32        S0, S0, S2
513B0E:  VLDR            S2, =100.0
513B12:  VMUL.F32        S0, S0, S2
513B16:  VCVT.S32.F32    S0, S0
513B1A:  VMOV            R0, S0
513B1E:  CMP             R0, #5
513B20:  BGT             loc_513B5E
513B22:  LDR.W           R12, =(g_ikChainMan_ptr - 0x513B34)
513B26:  MOV.W           R0, #0xFFFFFFFF
513B2A:  MOV.W           R2, #0x7D0
513B2E:  MOVS            R1, #0
513B30:  ADD             R12, PC; g_ikChainMan_ptr
513B32:  STRD.W          R2, R0, [SP,#0x30+var_30]; int
513B36:  MOV.W           LR, #3
513B3A:  MOV.W           R3, #0x1F4
513B3E:  MOV.W           R4, #0x3E800000
513B42:  LDR.W           R0, [R12]; g_ikChainMan ; int
513B46:  ADDS            R5, #0x18
513B48:  STRD.W          R5, R1, [SP,#0x30+var_28]; int
513B4C:  STRD.W          R4, R3, [SP,#0x30+var_20]; float
513B50:  MOV             R2, R8; CPed *
513B52:  STRD.W          LR, R1, [SP,#0x30+var_18]; int
513B56:  ADR             R1, aTasksmartfleep; "TaskSmartFleePoint"
513B58:  MOVS            R3, #0; int
513B5A:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
513B5E:  MOV             R0, R6
513B60:  ADD             SP, SP, #0x20 ; ' '
513B62:  POP.W           {R8}
513B66:  POP             {R4-R7,PC}
