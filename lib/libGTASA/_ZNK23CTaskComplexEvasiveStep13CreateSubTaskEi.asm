; =========================================================
; Game Engine Function: _ZNK23CTaskComplexEvasiveStep13CreateSubTaskEi
; Address            : 0x50AFA8 - 0x50B02E
; =========================================================

50AFA8:  PUSH            {R4-R7,LR}
50AFAA:  ADD             R7, SP, #0xC
50AFAC:  PUSH.W          {R11}; float
50AFB0:  MOV             R5, R0
50AFB2:  MOVW            R0, #0x1F5
50AFB6:  MOVS            R4, #0
50AFB8:  CMP             R1, R0
50AFBA:  BEQ             loc_50AFF6
50AFBC:  MOVW            R0, #0x386
50AFC0:  CMP             R1, R0
50AFC2:  BNE             loc_50B026
50AFC4:  MOVS            R0, #off_18; this
50AFC6:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50AFCA:  MOV             R4, R0
50AFCC:  LDRD.W          R0, R1, [R5,#0xC]
50AFD0:  EOR.W           R1, R1, #0x80000000; float
50AFD4:  MOVS            R2, #0; float
50AFD6:  EOR.W           R0, R0, #0x80000000; this
50AFDA:  MOVS            R3, #0; float
50AFDC:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
50AFE0:  MOV             R1, R0; float
50AFE2:  LDR             R0, =(_ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr - 0x50AFEC)
50AFE4:  MOV.W           R2, #0x40000000; float
50AFE8:  ADD             R0, PC; _ZN25CTaskSimpleAchieveHeading20ms_fHeadingToleranceE_ptr
50AFEA:  LDR             R0, [R0]; CTaskSimpleAchieveHeading::ms_fHeadingTolerance ...
50AFEC:  LDR             R3, [R0]; float
50AFEE:  MOV             R0, R4; this
50AFF0:  BLX             j__ZN25CTaskSimpleAchieveHeadingC2Efff; CTaskSimpleAchieveHeading::CTaskSimpleAchieveHeading(float,float,float)
50AFF4:  B               loc_50B026
50AFF6:  MOVS            R0, #dword_14; this
50AFF8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
50AFFC:  MOV             R6, R0
50AFFE:  LDR             R5, [R5,#0x18]
50B000:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
50B004:  LDR             R0, =(_ZTV22CTaskSimpleEvasiveStep_ptr - 0x50B010)
50B006:  MOV             R1, R6
50B008:  STRB            R4, [R6,#0xC]
50B00A:  CMP             R5, #0
50B00C:  ADD             R0, PC; _ZTV22CTaskSimpleEvasiveStep_ptr
50B00E:  STR             R4, [R6,#0x10]
50B010:  LDR             R0, [R0]; `vtable for'CTaskSimpleEvasiveStep ...
50B012:  ADD.W           R0, R0, #8
50B016:  STR             R0, [R6]
50B018:  STR.W           R5, [R1,#8]!; CEntity **
50B01C:  ITT NE
50B01E:  MOVNE           R0, R5; this
50B020:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
50B024:  MOV             R4, R6
50B026:  MOV             R0, R4
50B028:  POP.W           {R11}
50B02C:  POP             {R4-R7,PC}
