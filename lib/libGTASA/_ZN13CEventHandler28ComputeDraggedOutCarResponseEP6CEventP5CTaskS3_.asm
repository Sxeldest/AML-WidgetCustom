; =========================================================
; Game Engine Function: _ZN13CEventHandler28ComputeDraggedOutCarResponseEP6CEventP5CTaskS3_
; Address            : 0x37E970 - 0x37EF6E
; =========================================================

37E970:  PUSH            {R4-R7,LR}
37E972:  ADD             R7, SP, #0xC
37E974:  PUSH.W          {R8-R11}
37E978:  SUB             SP, SP, #0x14
37E97A:  MOV             R5, R1
37E97C:  MOV             R4, R0
37E97E:  LDRD.W          R10, R6, [R5,#0x10]
37E982:  LDR             R0, [R4]; this
37E984:  LDRB.W          R9, [R5,#0x18]
37E988:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
37E98C:  CMP             R6, #0
37E98E:  BEQ.W           loc_37EDEE
37E992:  CMP             R0, #0
37E994:  BNE.W           loc_37EDEE
37E998:  LDR.W           R0, [R6,#0x388]
37E99C:  LDRB.W          R0, [R0,#0xDE]
37E9A0:  CMP             R0, #0xF
37E9A2:  BNE             loc_37E9E8
37E9A4:  MOVS            R0, #dword_40; this
37E9A6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37E9AA:  LDR.W           R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x37E9BA)
37E9AE:  LDR.W           R6, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x37E9C0)
37E9B2:  LDR.W           R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x37E9C2)
37E9B6:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
37E9B8:  LDR.W           R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x37E9C6)
37E9BC:  ADD             R6, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
37E9BE:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
37E9C0:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
37E9C2:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
37E9C4:  LDR             R6, [R6]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
37E9C6:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
37E9C8:  LDR             R5, [R3]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
37E9CA:  VLDR            S0, [R2]
37E9CE:  LDR             R2, [R6]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
37E9D0:  LDR             R3, [R1]; float
37E9D2:  LDR             R1, [R5]; CTaskComplexSmartFleeEntity::ms_iFleeTime
37E9D4:  STRD.W          R1, R2, [SP,#0x30+var_30]; int
37E9D8:  MOV             R1, R10; CEntity *
37E9DA:  MOVS            R2, #0; bool
37E9DC:  VSTR            S0, [SP,#0x30+var_28]
37E9E0:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
37E9E4:  STR             R0, [R4,#0x24]
37E9E6:  B               loc_37EDEE
37E9E8:  LDR             R0, [R4]
37E9EA:  LDR.W           R1, [R6,#0x464]
37E9EE:  LDRSH.W         R5, [R5,#0xA]
37E9F2:  CMP             R1, R0
37E9F4:  ITT NE
37E9F6:  LDRNE.W         R1, [R6,#0x468]; unsigned int
37E9FA:  CMPNE           R1, R0
37E9FC:  BEQ             loc_37EA04
37E9FE:  MOV.W           R8, #0
37EA02:  B               loc_37EA20
37EA04:  MOVS            R0, #dword_34; this
37EA06:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37EA0A:  MOV             R8, R0
37EA0C:  MOVS            R0, #1
37EA0E:  MOVS            R1, #0
37EA10:  MOVS            R2, #0; int
37EA12:  STRD.W          R1, R0, [SP,#0x30+var_30]; float
37EA16:  MOV             R0, R8; this
37EA18:  MOV             R1, R6; CVehicle *
37EA1A:  MOVS            R3, #0; int
37EA1C:  BLX             j__ZN20CTaskComplexLeaveCarC2EP8CVehicleiibb_0; CTaskComplexLeaveCar::CTaskComplexLeaveCar(CVehicle *,int,int,bool,bool)
37EA20:  MOVS            R0, #0
37EA22:  STR             R0, [R4,#0x24]
37EA24:  MOVW            R0, #0x38E
37EA28:  CMP             R5, R0
37EA2A:  BLE             loc_37EB1A
37EA2C:  MOVW            R0, #0x3EA
37EA30:  CMP             R5, R0
37EA32:  BGT.W           loc_37EBBE
37EA36:  MOVW            R0, #0x38F
37EA3A:  CMP             R5, R0
37EA3C:  BEQ.W           loc_37EBE8
37EA40:  CMP.W           R5, #0x3E8
37EA44:  BNE.W           loc_37EDCC
37EA48:  CMP.W           R10, #0
37EA4C:  BEQ.W           loc_37ECDC
37EA50:  LDR             R0, [R4]
37EA52:  LDRB.W          R1, [R0,#0x448]
37EA56:  CMP             R1, #2
37EA58:  BEQ             loc_37EA8C
37EA5A:  LDRSB.W         R1, [R0,#0x71C]
37EA5E:  LDRSB.W         R5, [R10,#0x71C]
37EA62:  RSB.W           R1, R1, R1,LSL#3
37EA66:  ADD.W           R0, R0, R1,LSL#2
37EA6A:  ADDW            R0, R0, #0x5A4; this
37EA6E:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
37EA72:  CMP             R0, #1
37EA74:  BNE             loc_37EA8C
37EA76:  RSB.W           R0, R5, R5,LSL#3
37EA7A:  ADD.W           R0, R10, R0,LSL#2
37EA7E:  ADDW            R0, R0, #0x5A4; this
37EA82:  BLX             j__ZNK7CWeapon11IsTypeMeleeEv; CWeapon::IsTypeMelee(void)
37EA86:  CMP             R0, #0
37EA88:  BEQ.W           loc_37EF56
37EA8C:  MOVS            R0, #dword_40; this
37EA8E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37EA92:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
37EA96:  STR             R0, [SP,#0x30+var_20]
37EA98:  STR             R0, [R4,#0x24]
37EA9A:  BLX             rand
37EA9E:  BFC.W           R0, #0xA, #0x16
37EAA2:  CMP.W           R0, #0x200
37EAA6:  BLS.W           loc_37EDF6
37EAAA:  LDR             R2, [R4]
37EAAC:  LDR.W           R0, [R10,#0x14]
37EAB0:  LDR             R3, [R2,#0x14]
37EAB2:  ADD.W           R1, R0, #0x30 ; '0'
37EAB6:  CMP             R0, #0
37EAB8:  IT EQ
37EABA:  ADDEQ.W         R1, R10, #4
37EABE:  ADD.W           R5, R3, #0x30 ; '0'
37EAC2:  CMP             R3, #0
37EAC4:  LDRD.W          R0, R1, [R1]; float
37EAC8:  IT EQ
37EACA:  ADDEQ           R5, R2, #4
37EACC:  LDRD.W          R2, R3, [R5]; float
37EAD0:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
37EAD4:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
37EAD8:  MOV             R11, R0
37EADA:  MOVS            R0, #off_18; this
37EADC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37EAE0:  LDR.W           R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x37EAEE)
37EAE4:  MOV             R5, R0
37EAE6:  LDR.W           R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x37EAF0)
37EAEA:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
37EAEC:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
37EAEE:  LDR             R1, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
37EAF0:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
37EAF2:  LDR             R3, [R1]; float
37EAF4:  MOV             R1, R11; float
37EAF6:  LDR             R2, [R0]; float
37EAF8:  MOV             R0, R5; this
37EAFA:  BLX             j__ZN25CTaskSimpleAchieveHeadingC2Efff; CTaskSimpleAchieveHeading::CTaskSimpleAchieveHeading(float,float,float)
37EAFE:  LDR.W           R11, [SP,#0x30+var_20]
37EB02:  MOV             R1, R5; CTask *
37EB04:  MOV             R0, R11; this
37EB06:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
37EB0A:  MOVS            R0, #word_10; this
37EB0C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37EB10:  MOV             R5, R0
37EB12:  BLX             j__ZN20CTaskSimpleShakeFistC2Ev; CTaskSimpleShakeFist::CTaskSimpleShakeFist(void)
37EB16:  MOV             R0, R11
37EB18:  B               loc_37EE48
37EB1A:  CMP             R5, #0xC8
37EB1C:  BEQ             loc_37EBE4
37EB1E:  CMP.W           R5, #0x2BC
37EB22:  BEQ.W           loc_37EC2A
37EB26:  MOVW            R0, #0x2BE
37EB2A:  CMP             R5, R0
37EB2C:  BNE.W           loc_37EDCC
37EB30:  MOVS            R0, #dword_40; this
37EB32:  STR.W           R8, [SP,#0x30+var_20]
37EB36:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37EB3A:  MOV             R8, R0
37EB3C:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
37EB40:  STR.W           R8, [R4,#0x24]
37EB44:  BLX             rand
37EB48:  BFC.W           R0, #0xA, #0x16
37EB4C:  CMP.W           R0, #0x200
37EB50:  BLS.W           loc_37EC56
37EB54:  LDR             R2, [R4]
37EB56:  LDR.W           R0, [R10,#0x14]
37EB5A:  LDR             R3, [R2,#0x14]
37EB5C:  ADD.W           R1, R0, #0x30 ; '0'
37EB60:  CMP             R0, #0
37EB62:  IT EQ
37EB64:  ADDEQ.W         R1, R10, #4
37EB68:  ADD.W           R5, R3, #0x30 ; '0'
37EB6C:  CMP             R3, #0
37EB6E:  LDRD.W          R0, R1, [R1]; float
37EB72:  IT EQ
37EB74:  ADDEQ           R5, R2, #4
37EB76:  LDRD.W          R2, R3, [R5]; float
37EB7A:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
37EB7E:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
37EB82:  MOV             R11, R0
37EB84:  MOVS            R0, #off_18; this
37EB86:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37EB8A:  LDR.W           R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x37EB98)
37EB8E:  MOV             R5, R0
37EB90:  LDR.W           R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x37EB9A)
37EB94:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
37EB96:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
37EB98:  LDR             R1, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
37EB9A:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
37EB9C:  LDR             R3, [R1]; float
37EB9E:  MOV             R1, R11; float
37EBA0:  LDR             R2, [R0]; float
37EBA2:  MOV             R0, R5; this
37EBA4:  BLX             j__ZN25CTaskSimpleAchieveHeadingC2Efff; CTaskSimpleAchieveHeading::CTaskSimpleAchieveHeading(float,float,float)
37EBA8:  MOV             R0, R8; this
37EBAA:  MOV             R1, R5; CTask *
37EBAC:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
37EBB0:  MOVS            R0, #word_10; this
37EBB2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37EBB6:  MOV             R5, R0
37EBB8:  BLX             j__ZN20CTaskSimpleShakeFistC2Ev; CTaskSimpleShakeFist::CTaskSimpleShakeFist(void)
37EBBC:  B               loc_37ECA6
37EBBE:  MOVW            R0, #0x3EB
37EBC2:  CMP             R5, R0
37EBC4:  BEQ             loc_37EC40
37EBC6:  MOVW            R0, #0x451
37EBCA:  CMP             R5, R0
37EBCC:  BNE.W           loc_37EDCC
37EBD0:  CMP.W           R10, #0
37EBD4:  BEQ.W           loc_37EDCC
37EBD8:  MOV             R0, R10; this
37EBDA:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
37EBDE:  CMP             R0, #0
37EBE0:  BEQ.W           loc_37EDBC
37EBE4:  MOVS            R0, #0
37EBE6:  B               loc_37EDCA
37EBE8:  CMP.W           R10, #0
37EBEC:  BEQ.W           loc_37ED60
37EBF0:  MOVS            R0, #dword_40; this
37EBF2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37EBF6:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x37EC00)
37EBF8:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x37EC04)
37EBFA:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x37EC06)
37EBFC:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
37EBFE:  LDR             R6, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x37EC08)
37EC00:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
37EC02:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
37EC04:  ADD             R6, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
37EC06:  LDR             R2, [R2]; CTaskComplexSmartFleeEntity::ms_fEntityPosChangeThreshold ...
37EC08:  LDR             R6, [R6]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod ...
37EC0A:  LDR             R1, [R1]; CTaskComplexSmartFleeEntity::ms_fSafeDistance ...
37EC0C:  LDR             R5, [R3]; CTaskComplexSmartFleeEntity::ms_iFleeTime ...
37EC0E:  VLDR            S0, [R2]
37EC12:  LDR             R2, [R6]; CTaskComplexSmartFleeEntity::ms_iEntityPosCheckPeriod
37EC14:  LDR             R3, [R1]; float
37EC16:  LDR             R1, [R5]; CTaskComplexSmartFleeEntity::ms_iFleeTime
37EC18:  STRD.W          R1, R2, [SP,#0x30+var_30]; int
37EC1C:  MOV             R1, R10; CEntity *
37EC1E:  MOVS            R2, #0; bool
37EC20:  VSTR            S0, [SP,#0x30+var_28]
37EC24:  BLX             j__ZN27CTaskComplexSmartFleeEntityC2EP7CEntitybfiif; CTaskComplexSmartFleeEntity::CTaskComplexSmartFleeEntity(CEntity *,bool,float,int,int,float)
37EC28:  B               loc_37EDCA
37EC2A:  MOVS            R0, #dword_50; this
37EC2C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37EC30:  MOV             R1, R6; CVehicle *
37EC32:  CMP.W           R9, #0
37EC36:  BEQ.W           loc_37ED74
37EC3A:  BLX             j__ZN28CTaskComplexEnterCarAsDriverC2EP8CVehicle; CTaskComplexEnterCarAsDriver::CTaskComplexEnterCarAsDriver(CVehicle *)
37EC3E:  B               loc_37EDCA
37EC40:  MOVS            R0, #dword_20; this
37EC42:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37EC46:  MOVS            R1, #0
37EC48:  MOVS            R2, #0; unsigned int
37EC4A:  STR             R1, [SP,#0x30+var_30]; unsigned int
37EC4C:  MOV             R1, R6; CVehicle *
37EC4E:  MOVS            R3, #0; unsigned int
37EC50:  BLX             j__ZN22CTaskComplexDestroyCarC2EP8CVehiclejjj; CTaskComplexDestroyCar::CTaskComplexDestroyCar(CVehicle *,uint,uint,uint)
37EC54:  B               loc_37EDCA
37EC56:  MOVS            R0, #off_18; this
37EC58:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37EC5C:  MOV             R5, R0
37EC5E:  BLX             rand
37EC62:  MOV             R11, R0
37EC64:  MOV             R0, R5; this
37EC66:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
37EC6A:  UXTH.W          R0, R11
37EC6E:  VLDR            S2, =0.000015259
37EC72:  VMOV            S0, R0
37EC76:  MOVS            R1, #0
37EC78:  LDR             R0, =(_ZTV16CTaskSimplePause_ptr - 0x37EC88)
37EC7A:  VCVT.F32.S32    S0, S0
37EC7E:  STRH            R1, [R5,#0x10]
37EC80:  STRD.W          R1, R1, [R5,#8]
37EC84:  ADD             R0, PC; _ZTV16CTaskSimplePause_ptr
37EC86:  LDR             R0, [R0]; `vtable for'CTaskSimplePause ...
37EC88:  ADDS            R0, #8
37EC8A:  VMUL.F32        S0, S0, S2
37EC8E:  VLDR            S2, =1000.0
37EC92:  VMUL.F32        S0, S0, S2
37EC96:  VCVT.S32.F32    S0, S0
37EC9A:  STR             R0, [R5]
37EC9C:  VMOV            R0, S0
37ECA0:  ADD.W           R0, R0, #0x1F4
37ECA4:  STR             R0, [R5,#0x14]
37ECA6:  MOV             R0, R8; this
37ECA8:  MOV             R1, R5; CTask *
37ECAA:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
37ECAE:  LDR             R0, [R4]; this
37ECB0:  CBZ             R0, loc_37ECC6
37ECB2:  MOVS            R1, #0
37ECB4:  MOVS            R2, #0; unsigned int
37ECB6:  STRD.W          R1, R1, [SP,#0x30+var_30]; unsigned __int8
37ECBA:  MOV.W           R3, #0x3F800000; float
37ECBE:  STR             R1, [SP,#0x30+var_28]; unsigned __int8
37ECC0:  MOVS            R1, #0x78 ; 'x'; unsigned __int16
37ECC2:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
37ECC6:  CMP.W           R9, #0
37ECCA:  BEQ             loc_37ED7E
37ECCC:  MOVS            R0, #dword_20; this
37ECCE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37ECD2:  MOV             R1, R6; CVehicle *
37ECD4:  MOV             R5, R0
37ECD6:  BLX             j__ZN20CTaskComplexStealCarC2EP8CVehicle; CTaskComplexStealCar::CTaskComplexStealCar(CVehicle *)
37ECDA:  B               loc_37EDA8
37ECDC:  MOVS            R0, #dword_40; this
37ECDE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37ECE2:  MOV             R10, R0
37ECE4:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
37ECE8:  STR.W           R10, [R4,#0x24]
37ECEC:  BLX             rand
37ECF0:  BFC.W           R0, #0xA, #0x16
37ECF4:  CMP.W           R0, #0x200
37ECF8:  BLS.W           loc_37EEAA
37ECFC:  LDR             R2, [R4]
37ECFE:  MOVS            R0, #0x14
37ED00:  LDR             R0, [R0]
37ED02:  LDR             R3, [R2,#0x14]
37ED04:  ADD.W           R1, R0, #0x30 ; '0'
37ED08:  CMP             R0, #0
37ED0A:  IT EQ
37ED0C:  MOVEQ           R1, #4
37ED0E:  ADD.W           R5, R3, #0x30 ; '0'
37ED12:  CMP             R3, #0
37ED14:  LDRD.W          R0, R1, [R1]; float
37ED18:  IT EQ
37ED1A:  ADDEQ           R5, R2, #4
37ED1C:  LDRD.W          R2, R3, [R5]; float
37ED20:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
37ED24:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
37ED28:  MOV             R11, R0
37ED2A:  MOVS            R0, #off_18; this
37ED2C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37ED30:  LDR             R1, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x37ED3A)
37ED32:  MOV             R5, R0
37ED34:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr - 0x37ED3C)
37ED36:  ADD             R1, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
37ED38:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading25ms_fHeadingChangeRateFracE_ptr
37ED3A:  LDR             R1, [R1]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
37ED3C:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingChangeRateFrac ...
37ED3E:  LDR             R3, [R1]; float
37ED40:  MOV             R1, R11; float
37ED42:  LDR             R2, [R0]; float
37ED44:  MOV             R0, R5; this
37ED46:  BLX             j__ZN25CTaskSimpleAchieveHeadingC2Efff; CTaskSimpleAchieveHeading::CTaskSimpleAchieveHeading(float,float,float)
37ED4A:  MOV             R0, R10; this
37ED4C:  MOV             R1, R5; CTask *
37ED4E:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
37ED52:  MOVS            R0, #word_10; this
37ED54:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37ED58:  MOV             R5, R0
37ED5A:  BLX             j__ZN20CTaskSimpleShakeFistC2Ev; CTaskSimpleShakeFist::CTaskSimpleShakeFist(void)
37ED5E:  B               loc_37EEFA
37ED60:  LDR.W           R0, [R6,#0x464]
37ED64:  CBNZ            R0, loc_37EDCC
37ED66:  MOVS            R0, #dword_20; this
37ED68:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37ED6C:  MOV             R1, R6; CVehicle *
37ED6E:  BLX             j__ZN20CTaskComplexStealCarC2EP8CVehicle; CTaskComplexStealCar::CTaskComplexStealCar(CVehicle *)
37ED72:  B               loc_37EDCA
37ED74:  MOVS            R2, #0; int
37ED76:  MOVS            R3, #0; bool
37ED78:  BLX             j__ZN31CTaskComplexEnterCarAsPassengerC2EP8CVehicleib; CTaskComplexEnterCarAsPassenger::CTaskComplexEnterCarAsPassenger(CVehicle *,int,bool)
37ED7C:  B               loc_37EDCA
37ED7E:  MOVS            R0, #dword_54; this
37ED80:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37ED84:  MOV             R1, R10; CPed *
37ED86:  MOVS            R2, #0; int
37ED88:  MOV             R5, R0
37ED8A:  BLX             j__ZN26CTaskComplexDragPedFromCarC2EP4CPedi; CTaskComplexDragPedFromCar::CTaskComplexDragPedFromCar(CPed *,int)
37ED8E:  MOV             R0, R8; this
37ED90:  MOV             R1, R5; CTask *
37ED92:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
37ED96:  MOVS            R0, #dword_50; this
37ED98:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37ED9C:  MOV             R1, R6; CVehicle *
37ED9E:  MOVS            R2, #0; int
37EDA0:  MOVS            R3, #0; bool
37EDA2:  MOV             R5, R0
37EDA4:  BLX             j__ZN31CTaskComplexEnterCarAsPassengerC2EP8CVehicleib; CTaskComplexEnterCarAsPassenger::CTaskComplexEnterCarAsPassenger(CVehicle *,int,bool)
37EDA8:  MOV             R0, R8; this
37EDAA:  MOV             R1, R5; CTask *
37EDAC:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
37EDB0:  LDR.W           R8, [SP,#0x30+var_20]
37EDB4:  CMP.W           R8, #0
37EDB8:  BNE             loc_37EDD2
37EDBA:  B               loc_37EDEE
37EDBC:  MOVS            R0, #dword_20; this
37EDBE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37EDC2:  MOV             R1, R10; CPed *
37EDC4:  MOVS            R2, #0; bool
37EDC6:  BLX             j__ZN24CTaskComplexKillCriminalC2EP4CPedb; CTaskComplexKillCriminal::CTaskComplexKillCriminal(CPed *,bool)
37EDCA:  STR             R0, [R4,#0x24]
37EDCC:  CMP.W           R8, #0
37EDD0:  BEQ             loc_37EDEE
37EDD2:  MOVS            R0, #dword_40; this
37EDD4:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37EDD8:  MOV             R5, R0
37EDDA:  BLX             j__ZN20CTaskComplexSequenceC2Ev; CTaskComplexSequence::CTaskComplexSequence(void)
37EDDE:  MOV             R1, R8; CTask *
37EDE0:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
37EDE4:  LDR             R1, [R4,#0x24]; CTask *
37EDE6:  MOV             R0, R5; this
37EDE8:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
37EDEC:  STR             R5, [R4,#0x24]
37EDEE:  ADD             SP, SP, #0x14
37EDF0:  POP.W           {R8-R11}
37EDF4:  POP             {R4-R7,PC}
37EDF6:  MOVS            R0, #off_18; this
37EDF8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37EDFC:  MOV             R5, R0
37EDFE:  BLX             rand
37EE02:  MOV             R11, R0
37EE04:  MOV             R0, R5; this
37EE06:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
37EE0A:  UXTH.W          R0, R11
37EE0E:  VLDR            S2, =0.000015259
37EE12:  VMOV            S0, R0
37EE16:  MOVS            R1, #0
37EE18:  LDR             R0, =(_ZTV16CTaskSimplePause_ptr - 0x37EE28)
37EE1A:  VCVT.F32.S32    S0, S0
37EE1E:  STRH            R1, [R5,#0x10]
37EE20:  STRD.W          R1, R1, [R5,#8]
37EE24:  ADD             R0, PC; _ZTV16CTaskSimplePause_ptr
37EE26:  LDR             R0, [R0]; `vtable for'CTaskSimplePause ...
37EE28:  ADDS            R0, #8
37EE2A:  VMUL.F32        S0, S0, S2
37EE2E:  VLDR            S2, =1000.0
37EE32:  VMUL.F32        S0, S0, S2
37EE36:  VCVT.S32.F32    S0, S0
37EE3A:  STR             R0, [R5]
37EE3C:  VMOV            R0, S0
37EE40:  ADD.W           R0, R0, #0x1F4
37EE44:  STR             R0, [R5,#0x14]
37EE46:  LDR             R0, [SP,#0x30+var_20]; this
37EE48:  MOV             R1, R5; CTask *
37EE4A:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
37EE4E:  MOVS            R0, #dword_38; this
37EE50:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37EE54:  MOV             R11, R0
37EE56:  MOVS            R1, #0
37EE58:  MOVS            R0, #1
37EE5A:  STRD.W          R1, R1, [SP,#0x30+var_30]; unsigned int
37EE5E:  STR             R0, [SP,#0x30+var_28]; int
37EE60:  MOV             R0, R11; this
37EE62:  MOV             R1, R10; CPed *
37EE64:  MOV.W           R2, #0xFFFFFFFF; int
37EE68:  MOVS            R3, #0; unsigned int
37EE6A:  BLX             j__ZN25CTaskComplexKillPedOnFootC2EP4CPedijjji; CTaskComplexKillPedOnFoot::CTaskComplexKillPedOnFoot(CPed *,int,uint,uint,uint,int)
37EE6E:  LDR.W           R10, [SP,#0x30+var_20]
37EE72:  MOV             R1, R11; CTask *
37EE74:  MOV             R0, R10; this
37EE76:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
37EE7A:  LDR             R0, [R4]; this
37EE7C:  CBZ             R0, loc_37EE92
37EE7E:  MOVS            R1, #0
37EE80:  MOVS            R2, #0; unsigned int
37EE82:  STRD.W          R1, R1, [SP,#0x30+var_30]; unsigned __int8
37EE86:  MOV.W           R3, #0x3F800000; float
37EE8A:  STR             R1, [SP,#0x30+var_28]; unsigned __int8
37EE8C:  MOVS            R1, #0x78 ; 'x'; unsigned __int16
37EE8E:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
37EE92:  MOVS            R0, #dword_50; this
37EE94:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37EE98:  MOV             R5, R0
37EE9A:  CMP.W           R9, #0
37EE9E:  BEQ             loc_37EF38
37EEA0:  MOV             R0, R5; this
37EEA2:  MOV             R1, R6; CVehicle *
37EEA4:  BLX             j__ZN28CTaskComplexEnterCarAsDriverC2EP8CVehicle; CTaskComplexEnterCarAsDriver::CTaskComplexEnterCarAsDriver(CVehicle *)
37EEA8:  B               loc_37EF44
37EEAA:  MOVS            R0, #off_18; this
37EEAC:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37EEB0:  MOV             R5, R0
37EEB2:  BLX             rand
37EEB6:  MOV             R11, R0
37EEB8:  MOV             R0, R5; this
37EEBA:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
37EEBE:  UXTH.W          R0, R11
37EEC2:  VLDR            S2, =0.000015259
37EEC6:  VMOV            S0, R0
37EECA:  MOVS            R1, #0
37EECC:  LDR             R0, =(_ZTV16CTaskSimplePause_ptr - 0x37EEDC)
37EECE:  VCVT.F32.S32    S0, S0
37EED2:  STRH            R1, [R5,#0x10]
37EED4:  STRD.W          R1, R1, [R5,#8]
37EED8:  ADD             R0, PC; _ZTV16CTaskSimplePause_ptr
37EEDA:  LDR             R0, [R0]; `vtable for'CTaskSimplePause ...
37EEDC:  ADDS            R0, #8
37EEDE:  VMUL.F32        S0, S0, S2
37EEE2:  VLDR            S2, =1000.0
37EEE6:  VMUL.F32        S0, S0, S2
37EEEA:  VCVT.S32.F32    S0, S0
37EEEE:  STR             R0, [R5]
37EEF0:  VMOV            R0, S0
37EEF4:  ADD.W           R0, R0, #0x1F4
37EEF8:  STR             R0, [R5,#0x14]
37EEFA:  MOV             R0, R10; this
37EEFC:  MOV             R1, R5; CTask *
37EEFE:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
37EF02:  CMP.W           R9, #0
37EF06:  BEQ             loc_37EF18
37EF08:  MOVS            R0, #dword_20; this
37EF0A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37EF0E:  MOV             R1, R6; CVehicle *
37EF10:  MOV             R5, R0
37EF12:  BLX             j__ZN20CTaskComplexStealCarC2EP8CVehicle; CTaskComplexStealCar::CTaskComplexStealCar(CVehicle *)
37EF16:  B               loc_37EF44
37EF18:  MOVS            R0, #dword_54; this
37EF1A:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37EF1E:  MOVS            R1, #0; CPed *
37EF20:  MOVS            R2, #0; int
37EF22:  MOV             R5, R0
37EF24:  BLX             j__ZN26CTaskComplexDragPedFromCarC2EP4CPedi; CTaskComplexDragPedFromCar::CTaskComplexDragPedFromCar(CPed *,int)
37EF28:  MOV             R0, R10; this
37EF2A:  MOV             R1, R5; CTask *
37EF2C:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
37EF30:  MOVS            R0, #dword_50; this
37EF32:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37EF36:  MOV             R5, R0
37EF38:  MOV             R0, R5; this
37EF3A:  MOV             R1, R6; CVehicle *
37EF3C:  MOVS            R2, #0; int
37EF3E:  MOVS            R3, #0; bool
37EF40:  BLX             j__ZN31CTaskComplexEnterCarAsPassengerC2EP8CVehicleib; CTaskComplexEnterCarAsPassenger::CTaskComplexEnterCarAsPassenger(CVehicle *,int,bool)
37EF44:  MOV             R0, R10; this
37EF46:  MOV             R1, R5; CTask *
37EF48:  BLX             j__ZN20CTaskComplexSequence7AddTaskEP5CTask; CTaskComplexSequence::AddTask(CTask *)
37EF4C:  CMP.W           R8, #0
37EF50:  BNE.W           loc_37EDD2
37EF54:  B               loc_37EDEE
37EF56:  MOVS            R0, #dword_40; this
37EF58:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
37EF5C:  LDR             R1, =(_ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr - 0x37EF66)
37EF5E:  LDR             R2, =(_ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr - 0x37EF6A)
37EF60:  LDR             R3, =(_ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr - 0x37EF6C)
37EF62:  ADD             R1, PC; _ZN27CTaskComplexSmartFleeEntity16ms_fSafeDistanceE_ptr
37EF64:  LDR             R6, =(_ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr - 0x37EF6E)
37EF66:  ADD             R2, PC; _ZN27CTaskComplexSmartFleeEntity28ms_fEntityPosChangeThresholdE_ptr
37EF68:  ADD             R3, PC; _ZN27CTaskComplexSmartFleeEntity12ms_iFleeTimeE_ptr
37EF6A:  ADD             R6, PC; _ZN27CTaskComplexSmartFleeEntity24ms_iEntityPosCheckPeriodE_ptr
37EF6C:  B               loc_37EC06
