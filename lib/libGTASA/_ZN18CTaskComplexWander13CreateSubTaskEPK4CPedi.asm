; =========================================================
; Game Engine Function: _ZN18CTaskComplexWander13CreateSubTaskEPK4CPedi
; Address            : 0x520D10 - 0x520EEE
; =========================================================

520D10:  PUSH            {R4-R7,LR}
520D12:  ADD             R7, SP, #0xC
520D14:  PUSH.W          {R8,R9,R11}
520D18:  VPUSH           {D8}
520D1C:  SUB             SP, SP, #0x20; float
520D1E:  MOV             R5, R1
520D20:  MOV             R6, R0
520D22:  MOVS            R4, #0
520D24:  CMP.W           R2, #0x2C0
520D28:  BGE             loc_520D64
520D2A:  CMP             R2, #0xE1
520D2C:  BEQ             loc_520D9C
520D2E:  CMP             R2, #0xE3
520D30:  BEQ             loc_520DFA
520D32:  MOVW            R5, #0x1A5
520D36:  CMP             R2, R5
520D38:  BNE.W           loc_520EE0
520D3C:  MOVS            R0, #dword_20; this
520D3E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
520D42:  MOV             R4, R0
520D44:  LDR             R0, =(aScratchhead - 0x520D4E); "ScratchHead"
520D46:  MOVS            R1, #0
520D48:  MOVS            R2, #0x87
520D4A:  ADD             R0, PC; "ScratchHead"
520D4C:  MOV.W           R3, #0x40800000
520D50:  STRD.W          R5, R0, [SP,#0x40+var_40]
520D54:  MOV             R0, R4
520D56:  STR             R1, [SP,#0x40+var_38]
520D58:  MOVS            R1, #0
520D5A:  BLX             j__ZN18CTaskSimpleRunAnimC2E12AssocGroupId11AnimationIdfiPKcb_0; CTaskSimpleRunAnim::CTaskSimpleRunAnim(AssocGroupId,AnimationId,float,int,char const*,bool)
520D5E:  LDR             R0, =(_ZTV22CTaskSimpleScratchHead_ptr - 0x520D64)
520D60:  ADD             R0, PC; _ZTV22CTaskSimpleScratchHead_ptr
520D62:  B               loc_520EDA
520D64:  CMP.W           R2, #0x384
520D68:  BEQ             loc_520E58
520D6A:  MOVW            R0, #0x2CF
520D6E:  CMP             R2, R0
520D70:  BEQ.W           loc_520EB2
520D74:  CMP.W           R2, #0x2C0
520D78:  BNE.W           loc_520EE0
520D7C:  MOVS            R0, #dword_34; this
520D7E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
520D82:  LDR.W           R1, [R5,#0x590]; CVehicle *
520D86:  MOV             R4, R0
520D88:  MOVS            R0, #0
520D8A:  MOVS            R2, #1
520D8C:  STRD.W          R2, R0, [SP,#0x40+var_40]; bool
520D90:  MOV             R0, R4; this
520D92:  MOVS            R2, #0; int
520D94:  MOVS            R3, #0; int
520D96:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
520D9A:  B               loc_520EE0
520D9C:  MOVS            R0, #dword_14; this
520D9E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
520DA2:  MOV             R4, R0
520DA4:  LDR             R0, =(ThePaths_ptr - 0x520DAC)
520DA6:  LDRH            R3, [R5,#0x24]
520DA8:  ADD             R0, PC; ThePaths_ptr
520DAA:  LDR             R2, [R6,#0x1C]
520DAC:  LDR             R1, [R0]; ThePaths
520DAE:  ADD             R0, SP, #0x40+var_30
520DB0:  BLX             j__ZN9CPathFind32TakeWidthIntoAccountForWanderingE12CNodeAddresst; CPathFind::TakeWidthIntoAccountForWandering(CNodeAddress,ushort)
520DB4:  LDR             R0, [R5,#0x14]
520DB6:  MOVS            R2, #0; float
520DB8:  VLDR            S0, [SP,#0x40+var_30]
520DBC:  MOVS            R3, #0; float
520DBE:  ADD.W           R1, R0, #0x30 ; '0'
520DC2:  CMP             R0, #0
520DC4:  VLDR            S2, [SP,#0x40+var_2C]
520DC8:  IT EQ
520DCA:  ADDEQ           R1, R5, #4
520DCC:  VLDR            S4, [R1]
520DD0:  VLDR            S6, [R1,#4]
520DD4:  VSUB.F32        S0, S0, S4
520DD8:  VSUB.F32        S2, S2, S6
520DDC:  VMOV            R0, S0; this
520DE0:  VMOV            R1, S2; float
520DE4:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
520DE8:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
520DEC:  MOV             R2, R0; float
520DEE:  MOV             R0, R4; this
520DF0:  MOV.W           R1, #0x7D0; int
520DF4:  BLX             j__ZN49CTaskComplexObserveTrafficLightsAndAchieveHeadingC2Eif; CTaskComplexObserveTrafficLightsAndAchieveHeading::CTaskComplexObserveTrafficLightsAndAchieveHeading(int,float)
520DF8:  B               loc_520EE0
520DFA:  MOVS            R0, #dword_14; this
520DFC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
520E00:  MOV             R4, R0
520E02:  LDR             R0, =(ThePaths_ptr - 0x520E0A)
520E04:  LDRH            R3, [R5,#0x24]
520E06:  ADD             R0, PC; ThePaths_ptr
520E08:  LDR             R2, [R6,#0x1C]
520E0A:  LDR             R1, [R0]; ThePaths
520E0C:  ADD             R0, SP, #0x40+var_30
520E0E:  BLX             j__ZN9CPathFind32TakeWidthIntoAccountForWanderingE12CNodeAddresst; CPathFind::TakeWidthIntoAccountForWandering(CNodeAddress,ushort)
520E12:  LDR             R0, [R5,#0x14]
520E14:  MOVS            R2, #0; float
520E16:  VLDR            S0, [SP,#0x40+var_30]
520E1A:  MOVS            R3, #0; float
520E1C:  ADD.W           R1, R0, #0x30 ; '0'
520E20:  CMP             R0, #0
520E22:  VLDR            S2, [SP,#0x40+var_2C]
520E26:  IT EQ
520E28:  ADDEQ           R1, R5, #4
520E2A:  VLDR            S4, [R1]
520E2E:  VLDR            S6, [R1,#4]
520E32:  VSUB.F32        S0, S0, S4
520E36:  VSUB.F32        S2, S2, S6
520E3A:  VMOV            R0, S0; this
520E3E:  VMOV            R1, S2; float
520E42:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
520E46:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
520E4A:  MOV             R2, R0; float
520E4C:  MOV             R0, R4; this
520E4E:  MOV.W           R1, #0x7D0; int
520E52:  BLX             j__ZN42CTaskComplexCrossRoadLookAndAchieveHeadingC2Eif; CTaskComplexCrossRoadLookAndAchieveHeading::CTaskComplexCrossRoadLookAndAchieveHeading(int,float)
520E56:  B               loc_520EE0
520E58:  LDR             R0, =(ThePaths_ptr - 0x520E60)
520E5A:  LDRH            R3, [R5,#0x24]
520E5C:  ADD             R0, PC; ThePaths_ptr
520E5E:  LDR             R2, [R6,#0x1C]
520E60:  LDR             R1, [R0]; ThePaths
520E62:  ADD             R0, SP, #0x40+var_30
520E64:  BLX             j__ZN9CPathFind32TakeWidthIntoAccountForWanderingE12CNodeAddresst; CPathFind::TakeWidthIntoAccountForWandering(CNodeAddress,ushort)
520E68:  MOVS            R0, #word_2C; this
520E6A:  LDRD.W          R9, R8, [SP,#0x40+var_30]
520E6E:  VLDR            S16, [SP,#0x40+var_28]
520E72:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
520E76:  LDR             R5, [R6,#0xC]
520E78:  MOV             R4, R0
520E7A:  LDR             R6, [R6,#0x14]
520E7C:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
520E80:  VMOV.F32        S0, #1.0
520E84:  LDR             R0, =(_ZTV20CTaskSimpleGoToPoint_ptr - 0x520E8C)
520E86:  LDRB            R1, [R4,#0x1C]; unsigned int
520E88:  ADD             R0, PC; _ZTV20CTaskSimpleGoToPoint_ptr
520E8A:  LDRB            R2, [R4,#0x1D]
520E8C:  STRD.W          R5, R9, [R4,#8]
520E90:  LDR             R0, [R0]; `vtable for'CTaskSimpleGoToPoint ...
520E92:  STR.W           R8, [R4,#0x10]
520E96:  ADDS            R0, #8
520E98:  STR             R6, [R4,#0x18]
520E9A:  VADD.F32        S0, S16, S0
520E9E:  STR             R0, [R4]
520EA0:  AND.W           R0, R1, #0xC0
520EA4:  VSTR            S0, [R4,#0x14]
520EA8:  STRB            R0, [R4,#0x1C]
520EAA:  AND.W           R0, R2, #0xE0
520EAE:  STRB            R0, [R4,#0x1D]
520EB0:  B               loc_520EE0
520EB2:  MOVS            R0, #dword_70; this
520EB4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
520EB8:  LDR.W           R1, [R5,#0x590]; CVehicle *
520EBC:  MOVS            R2, #0; CTaskUtilityLineUpPedWithCar *
520EBE:  MOVS            R3, #0; bool
520EC0:  MOV             R4, R0
520EC2:  MOVS            R5, #0
520EC4:  BLX             j__ZN19CTaskSimpleCarDriveC2EP8CVehicleP28CTaskUtilityLineUpPedWithCarb_0; CTaskSimpleCarDrive::CTaskSimpleCarDrive(CVehicle *,CTaskUtilityLineUpPedWithCar *,bool)
520EC8:  LDR             R0, =(_ZTV24CTaskSimpleCarDriveTimed_ptr - 0x520ED4)
520ECA:  MOV.W           R1, #0x7D0
520ECE:  STR             R1, [R4,#0x60]
520ED0:  ADD             R0, PC; _ZTV24CTaskSimpleCarDriveTimed_ptr
520ED2:  STRH.W          R5, [R4,#0x6C]
520ED6:  STRD.W          R5, R5, [R4,#0x64]
520EDA:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarDriveTimed
520EDC:  ADDS            R0, #8
520EDE:  STR             R0, [R4]
520EE0:  MOV             R0, R4
520EE2:  ADD             SP, SP, #0x20 ; ' '
520EE4:  VPOP            {D8}
520EE8:  POP.W           {R8,R9,R11}
520EEC:  POP             {R4-R7,PC}
