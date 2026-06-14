; =========================================================
; Game Engine Function: _ZN22CTaskGangHassleVehicle14ControlSubTaskEP4CPed
; Address            : 0x51897C - 0x519236
; =========================================================

51897C:  PUSH            {R4-R7,LR}
51897E:  ADD             R7, SP, #0xC
518980:  PUSH.W          {R8-R11}
518984:  SUB             SP, SP, #4
518986:  VPUSH           {D8-D9}
51898A:  SUB             SP, SP, #0x90; int
51898C:  MOV             R4, R0
51898E:  MOV             R11, R1
518990:  LDR             R0, [R4,#8]
518992:  CBZ             R0, loc_5189A6
518994:  LDR             R1, [R0]
518996:  LDR             R1, [R1,#0x14]
518998:  BLX             R1
51899A:  CMP.W           R0, #0x3E8
51899E:  BEQ             loc_5189A6
5189A0:  LDR             R0, [R4,#0x10]
5189A2:  CMP             R0, #0
5189A4:  BEQ             loc_518A54
5189A6:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x5189B6)
5189AA:  MOV.W           R2, #0x194
5189AE:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x5189BC)
5189B2:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
5189B4:  LDRB.W          R6, [R4,#0x30]
5189B8:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
5189BA:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
5189BC:  LDR             R1, [R1]; CWorld::Players ...
5189BE:  LDR             R0, [R0]; CWorld::PlayerInFocus
5189C0:  SMULBB.W        R0, R0, R2
5189C4:  LDR             R1, [R1,R0]
5189C6:  LDR.W           R0, [R1,#0x590]; this
5189CA:  CMP             R0, #0
5189CC:  ITT NE
5189CE:  LDRNE.W         R1, [R1,#0x484]
5189D2:  ANDSNE.W        R1, R1, #0x100; char *
5189D6:  BEQ             loc_518A30
5189D8:  VLDR            S0, [R0,#0x48]
5189DC:  VLDR            S2, [R0,#0x4C]
5189E0:  VMUL.F32        S0, S0, S0
5189E4:  VLDR            S4, [R0,#0x50]
5189E8:  VMUL.F32        S2, S2, S2
5189EC:  VMUL.F32        S4, S4, S4
5189F0:  VADD.F32        S0, S0, S2
5189F4:  VLDR            S2, =0.04
5189F8:  VADD.F32        S0, S0, S4
5189FC:  VCMPE.F32       S0, S2
518A00:  VMRS            APSR_nzcv, FPSCR
518A04:  BLE             loc_518A30
518A06:  MOVS            R0, #0
518A08:  CBNZ            R6, loc_518A3C
518A0A:  CBZ             R0, loc_518A78
518A0C:  LDR.W           R0, =(aGangs - 0x518A14); "gangs"
518A10:  ADD             R0, PC; "gangs"
518A12:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
518A16:  LDR.W           R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x518A1E)
518A1A:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
518A1C:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
518A1E:  ADD.W           R1, R1, R0,LSL#5
518A22:  LDRB            R1, [R1,#0x10]; int
518A24:  CMP             R1, #1
518A26:  BNE             loc_518A6C
518A28:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
518A2C:  MOVS            R0, #1
518A2E:  B               loc_518A4E
518A30:  BLX             j__ZN10CStreaming10IsVeryBusyEv; CStreaming::IsVeryBusy(void)
518A34:  EOR.W           R0, R0, #1
518A38:  CMP             R6, #0
518A3A:  BEQ             loc_518A0A
518A3C:  CBNZ            R0, loc_518A78
518A3E:  LDR.W           R0, =(aGangs - 0x518A46); "gangs"
518A42:  ADD             R0, PC; "gangs"
518A44:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
518A48:  BLX             j__ZN12CAnimManager18RemoveAnimBlockRefEi; CAnimManager::RemoveAnimBlockRef(int)
518A4C:  MOVS            R0, #0
518A4E:  STRB.W          R0, [R4,#0x30]
518A52:  B               loc_518A78
518A54:  LDR             R0, [R4,#8]
518A56:  MOVS            R2, #1
518A58:  MOVS            R3, #0
518A5A:  MOVS            R6, #0
518A5C:  LDR             R1, [R0]
518A5E:  LDR             R5, [R1,#0x1C]
518A60:  MOV             R1, R11
518A62:  BLX             R5
518A64:  CMP             R0, #0
518A66:  IT EQ
518A68:  LDREQ           R6, [R4,#8]
518A6A:  B               loc_51921E
518A6C:  MOVW            R1, #0x63E7
518A70:  ADD             R0, R1; this
518A72:  MOVS            R1, #8; int
518A74:  BLX             j__ZN10CStreaming12RequestModelEii; CStreaming::RequestModel(int,int)
518A78:  LDRB.W          R0, [R4,#0x40]
518A7C:  CBZ             R0, loc_518AE4
518A7E:  LDRB.W          R0, [R4,#0x41]
518A82:  CBZ             R0, loc_518A9A
518A84:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x518A8E)
518A88:  MOVS            R1, #0
518A8A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
518A8C:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
518A8E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
518A90:  STRB.W          R1, [R4,#0x41]
518A94:  STR             R0, [R4,#0x38]
518A96:  MOV             R1, R0
518A98:  B               loc_518AA6
518A9A:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x518AA4)
518A9E:  LDR             R1, [R4,#0x38]
518AA0:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
518AA2:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
518AA4:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
518AA6:  LDR             R2, [R4,#0x3C]
518AA8:  ADD             R1, R2
518AAA:  CMP             R1, R0
518AAC:  BHI             loc_518AE4
518AAE:  LDRB            R0, [R4,#0x18]
518AB0:  CBZ             R0, loc_518AE4
518AB2:  LDR             R0, [R4,#8]
518AB4:  LDR             R1, [R0]
518AB6:  LDR             R1, [R1,#0x14]
518AB8:  BLX             R1
518ABA:  CMP.W           R0, #0x3E8
518ABE:  BEQ.W           loc_51921C
518AC2:  MOVS            R0, #dword_38; this
518AC4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
518AC8:  LDR             R1, [R4,#0x34]; CPed *
518ACA:  MOV             R6, R0
518ACC:  MOVS            R2, #0
518ACE:  MOVS            R0, #1
518AD0:  STRD.W          R2, R2, [SP,#0xC0+var_C0]; unsigned int
518AD4:  MOV.W           R2, #0xFFFFFFFF; int
518AD8:  STR             R0, [SP,#0xC0+var_B8]; int
518ADA:  MOV             R0, R6; this
518ADC:  MOVS            R3, #0; unsigned int
518ADE:  BLX             j__ZN25CTaskComplexKillPedOnFootC2EP4CPedijjji; CTaskComplexKillPedOnFoot::CTaskComplexKillPedOnFoot(CPed *,int,uint,uint,uint,int)
518AE2:  B               loc_51921E
518AE4:  LDR             R0, [R4,#0x10]
518AE6:  CBZ             R0, loc_518AF2
518AE8:  LDR.W           R0, [R0,#0x464]
518AEC:  CMP             R0, #0
518AEE:  BEQ.W           loc_518CE0
518AF2:  LDR             R0, [R4,#8]
518AF4:  LDR             R1, [R0]
518AF6:  LDR             R1, [R1,#0x14]
518AF8:  BLX             R1
518AFA:  MOVW            R1, #0x39D
518AFE:  CMP             R0, R1
518B00:  BNE             loc_518BD0
518B02:  LDR             R0, [R4,#8]
518B04:  VLDR            S16, [R0,#0x50]
518B08:  MOV             R0, R11; this
518B0A:  BLX             j__ZN7CEntity9IsVisibleEv; CEntity::IsVisible(void)
518B0E:  CMP             R0, #1
518B10:  BNE             loc_518BDA
518B12:  VMOV.F32        S0, #4.0
518B16:  VCMPE.F32       S16, S0
518B1A:  VMRS            APSR_nzcv, FPSCR
518B1E:  BGE             loc_518BDA
518B20:  LDR.W           R0, =(g_ikChainMan_ptr - 0x518B2A)
518B24:  MOV             R1, R11; CPed *
518B26:  ADD             R0, PC; g_ikChainMan_ptr
518B28:  LDR             R0, [R0]; g_ikChainMan ; this
518B2A:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
518B2E:  CMP             R0, #0
518B30:  BNE             loc_518BDA
518B32:  BLX             rand
518B36:  UXTH            R0, R0
518B38:  VLDR            S18, =0.000015259
518B3C:  VMOV            S0, R0
518B40:  VLDR            S2, =100.0
518B44:  VCVT.F32.S32    S0, S0
518B48:  VMUL.F32        S0, S0, S18
518B4C:  VMUL.F32        S0, S0, S2
518B50:  VCVT.S32.F32    S0, S0
518B54:  VMOV            R0, S0
518B58:  CMP             R0, #0x3D ; '='
518B5A:  BLT             loc_518BDA
518B5C:  BLX             rand
518B60:  LDR             R1, [R4,#0x10]
518B62:  LDR.W           R3, [R1,#0x464]; int
518B66:  CBZ             R3, loc_518BDA
518B68:  UXTH            R0, R0
518B6A:  VLDR            S2, =2000.0
518B6E:  VMOV            S0, R0
518B72:  MOVS            R1, #0
518B74:  MOVS            R2, #3
518B76:  VCVT.F32.S32    S0, S0
518B7A:  VMUL.F32        S0, S0, S18
518B7E:  VMUL.F32        S0, S0, S2
518B82:  VCVT.S32.F32    S0, S0
518B86:  VMOV            R0, S0
518B8A:  ADD.W           R0, R0, #0x3E8
518B8E:  VMOV            S0, R0
518B92:  LDR.W           R0, =(g_ikChainMan_ptr - 0x518BAC)
518B96:  VCVT.F32.S32    S0, S0
518B9A:  STR             R1, [SP,#0xC0+var_A4]; int
518B9C:  STR             R2, [SP,#0xC0+var_A8]; int
518B9E:  MOV.W           R2, #0x1F4
518BA2:  STR             R2, [SP,#0xC0+var_AC]; int
518BA4:  MOVW            R2, #0x999A
518BA8:  ADD             R0, PC; g_ikChainMan_ptr
518BAA:  MOVT            R2, #0x3E19
518BAE:  LDR             R0, [R0]; g_ikChainMan ; int
518BB0:  VCVT.S32.F32    S0, S0
518BB4:  STR             R2, [SP,#0xC0+var_B0]; float
518BB6:  MOVS            R2, #1
518BB8:  STRD.W          R1, R2, [SP,#0xC0+var_B8]; int
518BBC:  MOVS            R1, #5
518BBE:  STR             R1, [SP,#0xC0+var_BC]; int
518BC0:  ADR.W           R1, aTaskhasslevehi; "TaskHassleVehicle"
518BC4:  MOV             R2, R11; CPed *
518BC6:  VSTR            S0, [SP,#0xC0+var_C0]
518BCA:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
518BCE:  B               loc_518BDA
518BD0:  MOV             R0, R11; this
518BD2:  BLX             j__ZN7CEntity9IsVisibleEv; CEntity::IsVisible(void)
518BD6:  VLDR            S16, =100.0
518BDA:  LDR             R0, [R4,#8]
518BDC:  CMP             R0, #0
518BDE:  BEQ.W           loc_51921C
518BE2:  LDR             R1, [R0]
518BE4:  LDR             R1, [R1,#0x14]
518BE6:  BLX             R1
518BE8:  MOVW            R1, #0x39D
518BEC:  CMP             R0, R1
518BEE:  BEQ             loc_518C02
518BF0:  LDR             R0, [R4,#8]
518BF2:  LDR             R1, [R0]
518BF4:  LDR             R1, [R1,#0x14]
518BF6:  BLX             R1
518BF8:  MOVW            R1, #0x38A
518BFC:  CMP             R0, R1
518BFE:  BNE.W           loc_51921C
518C02:  LDR             R0, [R4,#0x10]
518C04:  VLDR            S0, =250.0
518C08:  ADDW            R0, R0, #0x4CC
518C0C:  VLDR            S2, [R0]
518C10:  VCMPE.F32       S2, S0
518C14:  VMRS            APSR_nzcv, FPSCR
518C18:  BGE             loc_518C46
518C1A:  LDR             R0, [R4,#8]
518C1C:  MOVS            R2, #1
518C1E:  MOVS            R3, #0
518C20:  LDR             R1, [R0]
518C22:  LDR             R6, [R1,#0x1C]
518C24:  MOV             R1, R11
518C26:  BLX             R6
518C28:  CMP             R0, #1
518C2A:  BNE             loc_518C46
518C2C:  LDR             R0, [R4]
518C2E:  MOV             R1, R11
518C30:  LDR             R2, [R0,#0x28]
518C32:  MOV             R0, R4
518C34:  ADD             SP, SP, #0x90
518C36:  VPOP            {D8-D9}
518C3A:  ADD             SP, SP, #4
518C3C:  POP.W           {R8-R11}
518C40:  POP.W           {R4-R7,LR}
518C44:  BX              R2; float
518C46:  LDRB.W          R0, [R4,#0x31]
518C4A:  CMP             R0, #2
518C4C:  BEQ.W           loc_518D8C
518C50:  CMP             R0, #1
518C52:  BEQ.W           loc_518DE0
518C56:  CMP             R0, #0
518C58:  BNE.W           loc_51921C
518C5C:  LDR.W           R0, [R11,#0x440]
518C60:  MOVS            R1, #4; int
518C62:  ADDS            R0, #4; this
518C64:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
518C68:  CBNZ            R0, loc_518CAE
518C6A:  BLX             rand
518C6E:  UXTH            R0, R0
518C70:  VLDR            S2, =0.000015259
518C74:  VMOV            S0, R0
518C78:  VCVT.F32.S32    S0, S0
518C7C:  VMUL.F32        S0, S0, S2
518C80:  VLDR            S2, =100.0
518C84:  VMUL.F32        S0, S0, S2
518C88:  VCVT.S32.F32    S0, S0
518C8C:  VMOV            R0, S0
518C90:  CMP             R0, #0x3D ; '='
518C92:  BLT             loc_518CAE
518C94:  MOVS            R0, #word_10; this
518C96:  LDR.W           R5, [R11,#0x440]
518C9A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
518C9E:  MOV             R6, R0
518CA0:  BLX             j__ZN20CTaskSimpleShakeFistC2Ev; CTaskSimpleShakeFist::CTaskSimpleShakeFist(void)
518CA4:  ADDS            R0, R5, #4; this
518CA6:  MOV             R1, R6; CTask *
518CA8:  MOVS            R2, #4; int
518CAA:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
518CAE:  VLDR            S0, [R4,#0x1C]
518CB2:  MOVW            R1, #0x101; unsigned __int16
518CB6:  MOVS            R2, #0; unsigned int
518CB8:  MOV.W           R3, #0x3F800000; float
518CBC:  VMUL.F32        S0, S0, S0
518CC0:  VCMPE.F32       S16, S0
518CC4:  VMRS            APSR_nzcv, FPSCR
518CC8:  ITT LE
518CCA:  MOVLE           R0, #1
518CCC:  STRBLE.W        R0, [R4,#0x31]
518CD0:  MOVS            R0, #0
518CD2:  STRD.W          R0, R0, [SP,#0xC0+var_C0]; unsigned __int8
518CD6:  STR             R0, [SP,#0xC0+var_B8]; unsigned __int8
518CD8:  MOV             R0, R11; this
518CDA:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
518CDE:  B               loc_51921C
518CE0:  LDR             R0, [R4,#0x34]
518CE2:  CMP             R0, #0
518CE4:  BEQ.W           loc_518AF2
518CE8:  LDR             R0, [R4,#8]
518CEA:  LDR             R1, [R0]
518CEC:  LDR             R1, [R1,#0x14]
518CEE:  BLX             R1
518CF0:  MOVW            R1, #0x4BC
518CF4:  CMP             R0, R1
518CF6:  BEQ.W           loc_518AF2
518CFA:  LDR             R0, [R4,#8]
518CFC:  MOVS            R2, #1
518CFE:  MOVS            R3, #0
518D00:  MOV.W           R8, #0
518D04:  LDR             R1, [R0]
518D06:  LDR             R6, [R1,#0x1C]
518D08:  MOV             R1, R11
518D0A:  BLX             R6
518D0C:  CMP             R0, #1
518D0E:  BNE.W           loc_518AF2
518D12:  MOVS            R0, #3
518D14:  LDRB            R5, [R4,#0x18]
518D16:  STRB.W          R0, [R4,#0x31]
518D1A:  MOVS            R0, #word_2C; this
518D1C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
518D20:  MOV             R6, R0
518D22:  LDR             R4, [R4,#0x34]
518D24:  BLX             j__ZN12CTaskComplexC2Ev; CTaskComplex::CTaskComplex(void)
518D28:  LDR.W           R0, =(_ZTV18CTaskGangHasslePed_ptr - 0x518D38)
518D2C:  MOV             R1, R6
518D2E:  CMP             R5, #0
518D30:  STRH.W          R8, [R6,#0x28]
518D34:  ADD             R0, PC; _ZTV18CTaskGangHasslePed_ptr
518D36:  MOVW            R3, #0x4E20
518D3A:  LDR             R0, [R0]; `vtable for'CTaskGangHasslePed ...
518D3C:  ADD.W           R0, R0, #8
518D40:  STR             R0, [R6]
518D42:  STRD.W          R8, R8, [R6,#0x20]
518D46:  MOVW            R0, #0x2EE0
518D4A:  STR.W           R4, [R1,#0xC]!; CEntity **
518D4E:  ITE NE
518D50:  MOVNE           R2, #2
518D52:  MOVEQ           R2, #1
518D54:  CMP             R4, #0
518D56:  STR             R2, [R6,#0x10]
518D58:  STR             R0, [R6,#0x14]
518D5A:  MOV.W           R0, #0
518D5E:  STR             R3, [R6,#0x18]
518D60:  STRB            R0, [R6,#0x1C]
518D62:  BEQ.W           loc_51921E
518D66:  MOV             R0, R4; this
518D68:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
518D6C:  B               loc_51921E
518D6E:  ALIGN 0x10
518D70:  DCFS 0.04
518D74:  DCFS 0.000015259
518D78:  DCFS 100.0
518D7C:  DCFS 2000.0
518D80:  DCFS 250.0
518D84:  DCFS 0.05
518D88:  DCFS 0.1
518D8C:  LDR             R0, [R4,#8]
518D8E:  LDR             R1, [R0]
518D90:  LDR             R1, [R1,#0x14]
518D92:  BLX             R1
518D94:  MOVW            R1, #0x39D
518D98:  CMP             R0, R1
518D9A:  BNE             loc_518DBC
518D9C:  VLDR            S0, [R4,#0x1C]
518DA0:  VLDR            S2, =0.05
518DA4:  VMUL.F32        S0, S0, S0
518DA8:  VADD.F32        S0, S0, S2
518DAC:  VCMPE.F32       S16, S0
518DB0:  VMRS            APSR_nzcv, FPSCR
518DB4:  ITT GT
518DB6:  MOVGT           R0, #0
518DB8:  STRBGT.W        R0, [R4,#0x31]
518DBC:  LDRD.W          R0, R2, [R4,#0x10]
518DC0:  LDR             R1, [R0,#0x14]
518DC2:  SUBS            R0, R2, #1; switch 5 cases
518DC4:  CMP             R0, #4
518DC6:  VLDR            D0, [R1]
518DCA:  BHI             def_518DD0; jumptable 00518DD0 default case, case 2
518DCC:  VLDR            D16, [R1,#0x10]
518DD0:  TBB.W           [PC,R0]; switch jump
518DD4:  DCB 3; jump table for switch statement
518DD5:  DCB 0x1E
518DD6:  DCB 3
518DD7:  DCB 0x19
518DD8:  DCB 0x1C
518DD9:  ALIGN 2
518DDA:  VNEG.F32        D0, D0; jumptable 00518DD0 cases 1,3
518DDE:  B               def_518DD0; jumptable 00518DD0 default case, case 2
518DE0:  LDRD.W          R0, R2, [R4,#0x10]
518DE4:  LDR             R1, [R0,#0x14]
518DE6:  SUBS            R0, R2, #1; switch 5 cases
518DE8:  CMP             R0, #4
518DEA:  VLDR            D0, [R1]
518DEE:  BHI.W           def_518DF6; jumptable 00518DF6 default case, case 2
518DF2:  VLDR            D16, [R1,#0x10]
518DF6:  TBB.W           [PC,R0]; switch jump
518DFA:  DCB 3; jump table for switch statement
518DFB:  DCB 0x9B
518DFC:  DCB 3
518DFD:  DCB 0x96
518DFE:  DCB 0x99
518DFF:  ALIGN 2
518E00:  VNEG.F32        D0, D0; jumptable 00518DF6 cases 1,3
518E04:  B               def_518DF6; jumptable 00518DF6 default case, case 2
518E06:  VMOV            D0, D16; jumptable 00518DD0 case 4
518E0A:  B               def_518DD0; jumptable 00518DD0 default case, case 2
518E0C:  VNEG.F32        D0, D16; jumptable 00518DD0 case 5
518E10:  VMOV            R0, S0; jumptable 00518DD0 default case, case 2
518E14:  MOVS            R2, #0; float
518E16:  VMOV            R1, S1; float
518E1A:  MOVS            R3, #0; float
518E1C:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
518E20:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
518E24:  VMOV            S18, R0
518E28:  LDR.W           R0, [R11,#0x14]
518E2C:  CBZ             R0, loc_518E40
518E2E:  LDRD.W          R2, R1, [R0,#0x10]; x
518E32:  EOR.W           R0, R2, #0x80000000; y
518E36:  BLX             atan2f
518E3A:  VMOV            S0, R0
518E3E:  B               loc_518E44
518E40:  VLDR            S0, [R11,#0x10]
518E44:  VSUB.F32        S0, S0, S18
518E48:  VLDR            S2, =0.1
518E4C:  VABS.F32        S0, S0
518E50:  VCMPE.F32       S0, S2
518E54:  VMRS            APSR_nzcv, FPSCR
518E58:  ITT GE
518E5A:  MOVGE           R0, #1
518E5C:  STRBGE.W        R0, [R4,#0x31]
518E60:  BLX             rand
518E64:  UXTH            R0, R0
518E66:  VLDR            S18, =0.000015259
518E6A:  VMOV            S0, R0
518E6E:  VMOV.F32        S2, #3.0
518E72:  VCVT.F32.S32    S0, S0
518E76:  VMUL.F32        S0, S0, S18
518E7A:  VMUL.F32        S0, S0, S2
518E7E:  VCVT.S32.F32    S0, S0
518E82:  VMOV            R0, S0
518E86:  CMP             R0, #2
518E88:  BEQ             loc_518E96
518E8A:  CMP             R0, #1
518E8C:  BEQ             loc_518E9E
518E8E:  CBNZ            R0, loc_518EB4
518E90:  MOVS            R0, #0
518E92:  MOVS            R1, #0xFE
518E94:  B               loc_518EA2
518E96:  MOVS            R0, #0
518E98:  MOV.W           R1, #0x100
518E9C:  B               loc_518EA2
518E9E:  MOVS            R0, #0
518EA0:  MOVS            R1, #0xFF; unsigned __int16
518EA2:  STRD.W          R0, R0, [SP,#0xC0+var_C0]; unsigned __int8
518EA6:  STR             R0, [SP,#0xC0+var_B8]; unsigned __int8
518EA8:  MOV             R0, R11; this
518EAA:  MOVS            R2, #0; unsigned int
518EAC:  MOV.W           R3, #0x3F800000; float
518EB0:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
518EB4:  LDRB.W          R0, [R4,#0x30]
518EB8:  CMP             R0, #0
518EBA:  BEQ.W           loc_51921C
518EBE:  LDR.W           R0, [R11,#0x450]
518EC2:  CMP             R0, #5
518EC4:  BGT.W           loc_51921C
518EC8:  LDR.W           R0, [R11,#0x440]
518ECC:  MOVS            R1, #4; int
518ECE:  ADDS            R0, #4; this
518ED0:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
518ED4:  CMP             R0, #0
518ED6:  BEQ             loc_518FB4
518ED8:  VLDR            S0, [R4,#0x1C]
518EDC:  VMUL.F32        S0, S0, S0
518EE0:  VCMPE.F32       S16, S0
518EE4:  VMRS            APSR_nzcv, FPSCR
518EE8:  BLE             loc_518EF8
518EEA:  LDR             R0, [R4,#8]
518EEC:  MOVS            R2, #1
518EEE:  MOVS            R3, #0
518EF0:  LDR             R1, [R0]
518EF2:  LDR             R6, [R1,#0x1C]
518EF4:  MOV             R1, R11
518EF6:  BLX             R6
518EF8:  LDR.W           R0, [R11,#0x18]
518EFC:  MOV.W           R1, #0x128
518F00:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
518F04:  VMOV.F32        S16, #0.5
518F08:  CMP             R0, #0
518F0A:  BNE.W           loc_519042
518F0E:  LDR.W           R0, [R11,#0x18]
518F12:  MOVW            R1, #0x129
518F16:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
518F1A:  CMP             R0, #0
518F1C:  BEQ.W           loc_519030
518F20:  VLDR            S16, =0.7
518F24:  B               loc_519042
518F26:  VMOV            D0, D16; jumptable 00518DF6 case 4
518F2A:  B               def_518DF6; jumptable 00518DF6 default case, case 2
518F2C:  VNEG.F32        D0, D16; jumptable 00518DF6 case 5
518F30:  VMOV            R0, S0; jumptable 00518DF6 default case, case 2
518F34:  MOVS            R2, #0; float
518F36:  VMOV            R1, S1; float
518F3A:  MOVS            R3, #0; float
518F3C:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
518F40:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
518F44:  MOV             R6, R0
518F46:  LDR.W           R0, [R11,#0x14]
518F4A:  STR.W           R6, [R11,#0x560]
518F4E:  CBZ             R0, loc_518F62
518F50:  LDRD.W          R2, R1, [R0,#0x10]; x
518F54:  EOR.W           R0, R2, #0x80000000; y
518F58:  BLX             atan2f
518F5C:  VMOV            S18, R0
518F60:  B               loc_518F66
518F62:  VLDR            S18, [R11,#0x10]
518F66:  LDR             R0, [R4,#8]
518F68:  LDR             R1, [R0]
518F6A:  LDR             R1, [R1,#0x14]
518F6C:  BLX             R1
518F6E:  MOVW            R1, #0x39D
518F72:  CMP             R0, R1
518F74:  BNE.W           loc_51921C
518F78:  VLDR            S0, [R4,#0x1C]
518F7C:  VMUL.F32        S0, S0, S0
518F80:  VCMPE.F32       S16, S0
518F84:  VMRS            APSR_nzcv, FPSCR
518F88:  BLE             loc_518F92
518F8A:  MOVS            R0, #0
518F8C:  STRB.W          R0, [R4,#0x31]
518F90:  B               loc_51921C
518F92:  VMOV            S0, R6
518F96:  VLDR            S2, =0.05
518F9A:  VSUB.F32        S0, S18, S0
518F9E:  VABS.F32        S0, S0
518FA2:  VCMPE.F32       S0, S2
518FA6:  VMRS            APSR_nzcv, FPSCR
518FAA:  ITT LT
518FAC:  MOVLT           R0, #2
518FAE:  STRBLT.W        R0, [R4,#0x31]
518FB2:  B               loc_51921C
518FB4:  BLX             rand
518FB8:  UXTH            R0, R0
518FBA:  VLDR            S2, =200.0
518FBE:  VMOV            S0, R0
518FC2:  VCVT.F32.S32    S0, S0
518FC6:  VMUL.F32        S0, S0, S18
518FCA:  VMUL.F32        S0, S0, S2
518FCE:  VCVT.S32.F32    S0, S0
518FD2:  VMOV            R0, S0
518FD6:  CMP             R0, #0xA7
518FD8:  BLT             loc_518FF4
518FDA:  MOVS            R0, #dword_20; this
518FDC:  LDR.W           R6, [R11,#0x440]
518FE0:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
518FE4:  MOV             R5, R0
518FE6:  MOVS            R0, #0
518FE8:  STR             R0, [SP,#0xC0+var_C0]
518FEA:  MOV             R0, R5
518FEC:  MOVS            R1, #0x34 ; '4'
518FEE:  MOV.W           R2, #0x128
518FF2:  B               loc_5190D0
518FF4:  CMP             R0, #0x86
518FF6:  BLT             loc_519012
518FF8:  MOVS            R0, #dword_20; this
518FFA:  LDR.W           R6, [R11,#0x440]
518FFE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
519002:  MOV             R5, R0
519004:  MOVS            R0, #0
519006:  STR             R0, [SP,#0xC0+var_C0]
519008:  MOV             R0, R5
51900A:  MOVS            R1, #0x34 ; '4'
51900C:  MOVW            R2, #0x129
519010:  B               loc_5190D0
519012:  CMP             R0, #0x65 ; 'e'
519014:  BLT             loc_519092
519016:  MOVS            R0, #dword_20; this
519018:  LDR.W           R6, [R11,#0x440]
51901C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
519020:  MOV             R5, R0
519022:  MOVS            R0, #0
519024:  STR             R0, [SP,#0xC0+var_C0]
519026:  MOV             R0, R5
519028:  MOVS            R1, #0x34 ; '4'
51902A:  MOV.W           R2, #0x12A
51902E:  B               loc_5190D0
519030:  LDR.W           R0, [R11,#0x18]
519034:  MOV.W           R1, #0x12A
519038:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
51903C:  CMP             R0, #0
51903E:  BEQ.W           loc_51921C
519042:  VLDR            S0, [R0,#0x20]
519046:  VCMPE.F32       S0, S16
51904A:  VMRS            APSR_nzcv, FPSCR
51904E:  BLE.W           loc_51921C
519052:  VLDR            S2, [R0,#0x28]
519056:  VSUB.F32        S0, S0, S2
51905A:  VCMPE.F32       S0, S16
51905E:  VMRS            APSR_nzcv, FPSCR
519062:  BGT.W           loc_51921C
519066:  LDRD.W          R0, R1, [R4,#0x10]
51906A:  CMP             R1, #5; switch 6 cases
51906C:  VLDR            S0, =0.02
519070:  VLDR            S2, [R0,#0x90]
519074:  VMUL.F32        S0, S2, S0
519078:  VMOV            R3, S0
51907C:  BHI             def_51907E; jumptable 0051907E default case
51907E:  TBB.W           [PC,R1]; switch jump
519082:  DCB 3; jump table for switch statement
519083:  DCB 0x31
519084:  DCB 3
519085:  DCB 0x31
519086:  DCB 0x4A
519087:  DCB 0x55
519088:  LDR             R1, [R0,#0x14]; jumptable 0051907E cases 0,2
51908A:  LDRD.W          R5, R2, [R1]
51908E:  LDR             R1, [R1,#8]
519090:  B               loc_51911E
519092:  CMP             R0, #0x47 ; 'G'
519094:  BLT             loc_5190E8
519096:  MOVS            R0, #dword_20; this
519098:  LDR.W           R6, [R11,#0x440]
51909C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5190A0:  MOV             R5, R0
5190A2:  BLX             rand
5190A6:  UXTH            R0, R0
5190A8:  VMOV.F32        S2, #8.0
5190AC:  VMOV            S0, R0
5190B0:  MOVS            R0, #0
5190B2:  MOVS            R1, #0x34 ; '4'
5190B4:  VCVT.F32.S32    S0, S0
5190B8:  VMUL.F32        S0, S0, S18
5190BC:  VMUL.F32        S0, S0, S2
5190C0:  VCVT.S32.F32    S0, S0
5190C4:  STR             R0, [SP,#0xC0+var_C0]
5190C6:  VMOV            R0, S0
5190CA:  ADDW            R2, R0, #0x117
5190CE:  MOV             R0, R5
5190D0:  MOV.W           R3, #0x40800000
5190D4:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
5190D8:  ADDS            R0, R6, #4; this
5190DA:  MOV             R1, R5; CTask *
5190DC:  MOVS            R2, #4; int
5190DE:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
5190E2:  B               loc_51921C
5190E4:  LDR             R6, [R0,#0x14]; jumptable 0051907E cases 1,3
5190E6:  B               loc_519130
5190E8:  CMP             R0, #0x3D ; '='
5190EA:  BLT.W           loc_51922E
5190EE:  MOV             R0, R11; this
5190F0:  BLX             j__ZN4CPed19IsPlayingHandSignalEv; CPed::IsPlayingHandSignal(void)
5190F4:  CMP             R0, #0
5190F6:  BNE.W           loc_51921C
5190FA:  MOVS            R0, #off_18; this
5190FC:  LDR.W           R6, [R11,#0x440]
519100:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
519104:  MOV.W           R1, #0xFFFFFFFF
519108:  MOV.W           R2, #0x40800000
51910C:  MOV             R5, R0
51910E:  BLX             j__ZN30CTaskComplexPlayHandSignalAnimC2E11AnimationIdf; CTaskComplexPlayHandSignalAnim::CTaskComplexPlayHandSignalAnim(AnimationId,float)
519112:  B               loc_5190D8
519114:  B               loc_519132; jumptable 0051907E default case
519116:  LDR             R1, [R0,#0x14]; jumptable 0051907E case 4
519118:  LDRD.W          R5, R2, [R1,#0x10]
51911C:  LDR             R1, [R1,#0x18]
51911E:  EOR.W           R6, R1, #0x80000000
519122:  EOR.W           R2, R2, #0x80000000
519126:  EOR.W           R1, R5, #0x80000000
51912A:  B               loc_519132
51912C:  LDR             R6, [R0,#0x14]; jumptable 0051907E case 5
51912E:  ADDS            R6, #0x10
519130:  LDM             R6, {R1,R2,R6}
519132:  STMEA.W         SP, {R1,R2,R6}
519136:  MOVS            R1, #0
519138:  MOVS            R2, #0
51913A:  MOV.W           R10, #0
51913E:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
519142:  LDR             R1, [R4,#0x10]; CEntity *
519144:  ADD             R6, SP, #0xC0+var_58
519146:  MOVS            R2, #0xB; int
519148:  MOVW            R3, #0x4E20; unsigned int
51914C:  MOV             R0, R6; this
51914E:  MOVS            R5, #0xB
519150:  LDR.W           R9, [R1,#0x4CC]
519154:  BLX             j__ZN16CTaskSimpleFightC2EP7CEntityij; CTaskSimpleFight::CTaskSimpleFight(CEntity *,int,uint)
519158:  ADD.W           R8, SP, #0xC0+var_A0
51915C:  LDR.W           R1, [R11,#0x14]; CMatrix *
519160:  MOV             R0, R8; this
519162:  BLX             j__ZN7CMatrixC2ERKS_; CMatrix::CMatrix(CMatrix const&)
519166:  LDR.W           R0, [R11,#0x14]
51916A:  MOV.W           R1, #0x3F000000; float
51916E:  VLDR            S0, [SP,#0xC0+var_70]
519172:  VLDR            S2, [SP,#0xC0+var_6C]
519176:  VLDR            S6, [R0,#0x10]
51917A:  VLDR            S4, [SP,#0xC0+var_68]
51917E:  VADD.F32        S0, S6, S0
519182:  VSTR            S0, [SP,#0xC0+var_70]
519186:  VLDR            S0, [R0,#0x14]
51918A:  VADD.F32        S0, S0, S2
51918E:  VSTR            S0, [SP,#0xC0+var_6C]
519192:  VLDR            S0, [R0,#0x18]
519196:  MOV             R0, R6; this
519198:  VADD.F32        S0, S0, S4
51919C:  VSTR            S0, [SP,#0xC0+var_68]
5191A0:  BLX             j__ZN16CTaskSimpleFight13FightSetUpColEf; CTaskSimpleFight::FightSetUpCol(float)
5191A4:  MOV.W           R0, #0x104
5191A8:  STRB.W          R5, [SP,#0xC0+var_31]
5191AC:  STRH.W          R0, [SP,#0xC0+var_34]
5191B0:  LDR             R0, [R4,#0x10]; this
5191B2:  LDR             R6, [R0,#0x14]
5191B4:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
5191B8:  MOV             R3, R0; int
5191BA:  LDR             R0, =(_ZN16CTaskSimpleFight17m_sStrikeColModelE_ptr - 0x5191C2)
5191BC:  LDR             R2, =(_ZN6CWorld13m_aTempColPtsE_ptr - 0x5191C4)
5191BE:  ADD             R0, PC; _ZN16CTaskSimpleFight17m_sStrikeColModelE_ptr
5191C0:  ADD             R2, PC; _ZN6CWorld13m_aTempColPtsE_ptr
5191C2:  LDR             R1, [R0]; int
5191C4:  LDR             R0, [R2]; CWorld::m_aTempColPts ...
5191C6:  MOV             R2, R6; CMatrix *
5191C8:  STRD.W          R0, R10, [SP,#0xC0+var_C0]; int
5191CC:  MOV             R0, R8; int
5191CE:  STRD.W          R10, R10, [SP,#0xC0+var_B8]; int
5191D2:  BLX             j__ZN10CCollision16ProcessColModelsERK7CMatrixR9CColModelS2_S4_P9CColPointS6_Pfb; CCollision::ProcessColModels(CMatrix const&,CColModel &,CMatrix const&,CColModel &,CColPoint *,CColPoint *,float *,bool)
5191D6:  CMP             R0, #1
5191D8:  BLT             loc_5191FC
5191DA:  LDR             R0, =(_ZN6CWorld13m_aTempColPtsE_ptr - 0x5191E2)
5191DC:  LDR             R2, [R4,#0x10]; CVehicle *
5191DE:  ADD             R0, PC; _ZN6CWorld13m_aTempColPtsE_ptr
5191E0:  LDR             R3, [R0]; CVector *
5191E2:  ADD.W           R6, R3, #0x10
5191E6:  LDRB.W          R1, [R3,#(byte_989634 - 0x989610)]
5191EA:  LDRB.W          R0, [R3,#(byte_989633 - 0x989610)]
5191EE:  STRD.W          R6, R1, [SP,#0xC0+var_C0]; CVector *
5191F2:  MOV             R1, R11; CPed *
5191F4:  STR             R0, [SP,#0xC0+var_B8]; unsigned __int8
5191F6:  ADD             R0, SP, #0xC0+var_58; this
5191F8:  BLX             j__ZN16CTaskSimpleFight11FightHitCarEP4CPedP8CVehicleR7CVectorS5_sh; CTaskSimpleFight::FightHitCar(CPed *,CVehicle *,CVector &,CVector &,short,uchar)
5191FC:  LDR             R0, [R4,#0x10]
5191FE:  MOVS            R1, #0x6C ; 'l'; int
519200:  MOVS            R2, #0; float
519202:  STR.W           R9, [R0,#0x4CC]
519206:  LDR             R0, [R4,#0x10]
519208:  ADD.W           R0, R0, #0x13C; this
51920C:  BLX             j__ZN21CAEVehicleAudioEntity13AddAudioEventEif; CAEVehicleAudioEntity::AddAudioEvent(int,float)
519210:  ADD             R0, SP, #0xC0+var_A0; this
519212:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
519216:  ADD             R0, SP, #0xC0+var_58; this
519218:  BLX             j__ZN16CTaskSimpleFightD2Ev; CTaskSimpleFight::~CTaskSimpleFight()
51921C:  LDR             R6, [R4,#8]
51921E:  MOV             R0, R6
519220:  ADD             SP, SP, #0x90
519222:  VPOP            {D8-D9}
519226:  ADD             SP, SP, #4
519228:  POP.W           {R8-R11}
51922C:  POP             {R4-R7,PC}
51922E:  CMP             R0, #0x29 ; ')'
519230:  BGE.W           loc_518F8A
519234:  B               loc_51921C
