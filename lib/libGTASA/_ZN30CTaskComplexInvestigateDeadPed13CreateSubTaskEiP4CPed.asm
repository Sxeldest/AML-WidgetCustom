; =========================================================
; Game Engine Function: _ZN30CTaskComplexInvestigateDeadPed13CreateSubTaskEiP4CPed
; Address            : 0x546980 - 0x546B54
; =========================================================

546980:  PUSH            {R4-R7,LR}
546982:  ADD             R7, SP, #0xC
546984:  PUSH.W          {R8,R9,R11}
546988:  SUB             SP, SP, #0x30; float
54698A:  MOV             R5, R0
54698C:  MOVW            R0, #0x385
546990:  MOV             R6, R2
546992:  MOVS            R4, #0
546994:  CMP             R1, R0
546996:  BGT             loc_5469CE
546998:  CMP             R1, #0xCB
54699A:  BEQ             loc_5469FE
54699C:  CMP.W           R1, #0x190
5469A0:  BEQ             loc_546A54
5469A2:  CMP.W           R1, #0x384
5469A6:  BNE.W           loc_546B4A
5469AA:  MOVS            R0, #word_2C; this
5469AC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5469B0:  MOV             R4, R0
5469B2:  LDR             R0, =(_ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr - 0x5469BE)
5469B4:  MOVS            R1, #0
5469B6:  ADD.W           R2, R5, #0x2C ; ','; CVector *
5469BA:  ADD             R0, PC; _ZN15CTaskSimpleGoTo16ms_fTargetRadiusE_ptr
5469BC:  STRD.W          R1, R1, [SP,#0x48+var_48]; bool
5469C0:  MOVS            R1, #4; int
5469C2:  LDR             R0, [R0]; CTaskSimpleGoTo::ms_fTargetRadius ...
5469C4:  LDR             R3, [R0]; float
5469C6:  MOV             R0, R4; this
5469C8:  BLX             j__ZN20CTaskSimpleGoToPointC2EiRK7CVectorfbb; CTaskSimpleGoToPoint::CTaskSimpleGoToPoint(int,CVector const&,float,bool,bool)
5469CC:  B               loc_546B4A
5469CE:  MOVW            R0, #0x386
5469D2:  CMP             R1, R0
5469D4:  BEQ             loc_546A72
5469D6:  MOVW            R0, #0x387
5469DA:  CMP             R1, R0
5469DC:  BEQ             loc_546A8E
5469DE:  MOVW            R0, #0x4BA
5469E2:  CMP             R1, R0
5469E4:  BNE.W           loc_546B4A
5469E8:  MOVS            R0, #off_18; this
5469EA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5469EE:  LDR             R1, [R5,#0xC]; CPed *
5469F0:  MOV.W           R2, #0xFFFFFFFF; int
5469F4:  MOVS            R3, #0; unsigned __int8
5469F6:  MOV             R4, R0
5469F8:  BLX             j__ZN23CTaskComplexSignalAtPedC2EP4CPedih; CTaskComplexSignalAtPed::CTaskComplexSignalAtPed(CPed *,int,uchar)
5469FC:  B               loc_546B4A
5469FE:  MOVS            R0, #dword_20; this
546A00:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
546A04:  MOV             R4, R0
546A06:  MOV.W           R0, #0x41000000
546A0A:  STR             R0, [SP,#0x48+var_48]; float
546A0C:  MOV             R0, R4; this
546A0E:  MOV.W           R1, #0x3E8; int
546A12:  MOVS            R2, #0; bool
546A14:  MOVS            R3, #0; bool
546A16:  MOV.W           R8, #0x3E8
546A1A:  MOV.W           R9, #0
546A1E:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
546A22:  LDR             R0, =(g_ikChainMan_ptr - 0x546A32)
546A24:  MOV.W           LR, #0x1F4
546A28:  LDR             R1, =(aTaskinvdeadped - 0x546A38); "TaskInvDeadPed"
546A2A:  MOV.W           R2, #0x3E800000
546A2E:  ADD             R0, PC; g_ikChainMan_ptr
546A30:  LDR             R3, [R5,#0xC]; int
546A32:  MOVS            R5, #5
546A34:  ADD             R1, PC; "TaskInvDeadPed"
546A36:  LDR             R0, [R0]; g_ikChainMan ; int
546A38:  MOV.W           R12, #3
546A3C:  STRD.W          R8, R5, [SP,#0x48+var_48]; int
546A40:  STRD.W          R9, R9, [SP,#0x48+var_40]; int
546A44:  STRD.W          R2, LR, [SP,#0x48+var_38]; float
546A48:  MOV             R2, R6; CPed *
546A4A:  STRD.W          R12, R9, [SP,#0x48+var_30]; int
546A4E:  BLX             j__ZN16IKChainManager_c6LookAtEPcP4CPedP7CEntityiiP5RwV3dhfiih; IKChainManager_c::LookAt(char *,CPed *,CEntity *,int,int,RwV3d *,uchar,float,int,int,uchar)
546A52:  B               loc_546B4A
546A54:  MOVS            R0, #dword_20; this
546A56:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
546A5A:  LDR.W           R1, [R6,#0x4E0]
546A5E:  MOV             R4, R0
546A60:  MOVS            R0, #0
546A62:  MOVS            R2, #4
546A64:  STR             R0, [SP,#0x48+var_48]
546A66:  MOV             R0, R4
546A68:  MOV.W           R3, #0x40800000
546A6C:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfb; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,bool)
546A70:  B               loc_546B4A
546A72:  MOVS            R0, #off_18; this
546A74:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
546A78:  LDR             R1, [R5,#0x28]; float
546A7A:  MOV             R3, #0x3E4CCCCD; float
546A82:  MOV.W           R2, #0x3F000000; float
546A86:  MOV             R4, R0
546A88:  BLX             j__ZN25CTaskSimpleAchieveHeadingC2Efff; CTaskSimpleAchieveHeading::CTaskSimpleAchieveHeading(float,float,float)
546A8C:  B               loc_546B4A
546A8E:  LDR             R0, [R5,#0xC]
546A90:  LDR             R1, [R6,#0x14]
546A92:  LDR             R2, [R0,#0x14]
546A94:  ADD.W           R3, R1, #0x30 ; '0'
546A98:  CMP             R1, #0
546A9A:  IT EQ
546A9C:  ADDEQ           R3, R6, #4
546A9E:  ADD.W           R1, R2, #0x30 ; '0'
546AA2:  CMP             R2, #0
546AA4:  VLDR            S0, [R3]
546AA8:  VLDR            S2, [R3,#4]
546AAC:  IT EQ
546AAE:  ADDEQ           R1, R0, #4
546AB0:  VLDR            S4, [R1]
546AB4:  ADD             R0, SP, #0x48+var_24; this
546AB6:  VLDR            S6, [R1,#4]
546ABA:  MOVS            R6, #0
546ABC:  VSUB.F32        S0, S0, S4
546AC0:  STR             R6, [SP,#0x48+var_1C]
546AC2:  VSUB.F32        S2, S2, S6
546AC6:  VSTR            S2, [SP,#0x48+var_20]
546ACA:  VSTR            S0, [SP,#0x48+var_24]
546ACE:  BLX             j__ZN7CVector9NormaliseEv; CVector::Normalise(void)
546AD2:  VLDR            S0, [SP,#0x48+var_24]
546AD6:  VLDR            S2, [SP,#0x48+var_20]
546ADA:  VLDR            S4, [SP,#0x48+var_1C]
546ADE:  VADD.F32        S0, S0, S0
546AE2:  LDR             R0, [R5,#0xC]
546AE4:  VADD.F32        S2, S2, S2
546AE8:  VADD.F32        S4, S4, S4
546AEC:  LDR             R1, [R0,#0x14]; unsigned int
546AEE:  ADD.W           R2, R1, #0x30 ; '0'
546AF2:  CMP             R1, #0
546AF4:  IT EQ
546AF6:  ADDEQ           R2, R0, #4
546AF8:  MOVS            R0, #word_28; this
546AFA:  VLDR            S6, [R2]
546AFE:  VLDR            S8, [R2,#4]
546B02:  VLDR            S10, [R2,#8]
546B06:  VADD.F32        S0, S0, S6
546B0A:  VADD.F32        S2, S2, S8
546B0E:  VADD.F32        S4, S4, S10
546B12:  VSTR            S0, [R5,#0x1C]
546B16:  VSTR            S2, [R5,#0x20]
546B1A:  VSTR            S4, [R5,#0x24]
546B1E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
546B22:  MOV             R4, R0
546B24:  LDR             R0, =(_ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr - 0x546B30)
546B26:  LDR             R1, =(_ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr - 0x546B36)
546B28:  ADD.W           R2, R5, #0x1C; CVector *
546B2C:  ADD             R0, PC; _ZN34CTaskComplexGoToPointAndStandStill16ms_fTargetRadiusE_ptr
546B2E:  STRD.W          R6, R6, [SP,#0x48+var_44]; bool
546B32:  ADD             R1, PC; _ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr
546B34:  LDR             R0, [R0]; CTaskComplexGoToPointAndStandStill::ms_fTargetRadius ...
546B36:  LDR             R1, [R1]; CTaskComplexGoToPointAndStandStill::ms_fSlowDownDistance ...
546B38:  LDR             R3, [R0]; float
546B3A:  MOV             R0, R4; this
546B3C:  VLDR            S0, [R1]
546B40:  MOVS            R1, #6; int
546B42:  VSTR            S0, [SP,#0x48+var_48]
546B46:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
546B4A:  MOV             R0, R4
546B4C:  ADD             SP, SP, #0x30 ; '0'
546B4E:  POP.W           {R8,R9,R11}
546B52:  POP             {R4-R7,PC}
