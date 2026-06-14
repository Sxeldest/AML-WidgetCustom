; =========================================================
; Game Engine Function: _ZNK36CTaskComplexGoToCarDoorAndStandStill13CreateSubTaskEiP4CPed
; Address            : 0x4FFC30 - 0x4FFD70
; =========================================================

4FFC30:  PUSH            {R4-R7,LR}
4FFC32:  ADD             R7, SP, #0xC
4FFC34:  PUSH.W          {R11}
4FFC38:  SUB             SP, SP, #0x18; float
4FFC3A:  MOV             R5, R0
4FFC3C:  MOVS            R4, #0
4FFC3E:  CMP.W           R1, #0x33C
4FFC42:  BGE             loc_4FFC8A
4FFC44:  CMP             R1, #0xCA
4FFC46:  BEQ             loc_4FFCC8
4FFC48:  CMP             R1, #0xCB
4FFC4A:  BEQ             loc_4FFCEC
4FFC4C:  MOVW            R0, #0x32A
4FFC50:  CMP             R1, R0
4FFC52:  BNE.W           loc_4FFD66
4FFC56:  MOVS            R0, #dword_14; this
4FFC58:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FFC5C:  LDR             R6, [R5,#0xC]
4FFC5E:  MOV             R4, R0
4FFC60:  LDR             R5, [R5,#0x34]
4FFC62:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4FFC66:  LDR             R0, =(_ZTV37CTaskSimpleCarWaitForDoorNotToBeInUse_ptr - 0x4FFC74)
4FFC68:  MOVS            R1, #0
4FFC6A:  STRD.W          R5, R1, [R4,#0xC]
4FFC6E:  MOV             R1, R4
4FFC70:  ADD             R0, PC; _ZTV37CTaskSimpleCarWaitForDoorNotToBeInUse_ptr
4FFC72:  CMP             R6, #0
4FFC74:  LDR             R0, [R0]; `vtable for'CTaskSimpleCarWaitForDoorNotToBeInUse ...
4FFC76:  ADD.W           R0, R0, #8
4FFC7A:  STR             R0, [R4]
4FFC7C:  STR.W           R6, [R1,#8]!; CEntity **
4FFC80:  BEQ             loc_4FFD66
4FFC82:  MOV             R0, R6; this
4FFC84:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4FFC88:  B               loc_4FFD66
4FFC8A:  MOV.W           R0, #8
4FFC8E:  BEQ             loc_4FFD08
4FFC90:  MOVW            R3, #0x389
4FFC94:  CMP             R1, R3
4FFC96:  BEQ             loc_4FFD2E
4FFC98:  CMP.W           R1, #0x384
4FFC9C:  BNE             loc_4FFD66
4FFC9E:  LDR.W           R1, [R2,#0x48C]; unsigned int
4FFCA2:  ORRS            R0, R1
4FFCA4:  STR.W           R0, [R2,#0x48C]
4FFCA8:  MOVS            R0, #word_2C; this
4FFCAA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FFCAE:  MOV             R4, R0
4FFCB0:  LDR             R1, [R5,#0x10]; int
4FFCB2:  LDR             R3, [R5,#0x18]; float
4FFCB4:  MOVS            R0, #0
4FFCB6:  MOVS            R2, #1
4FFCB8:  STRD.W          R2, R0, [SP,#0x28+var_28]; bool
4FFCBC:  ADD.W           R2, R5, #0x38 ; '8'; CVector *
4FFCC0:  MOV             R0, R4; this
4FFCC2:  BLX             j__ZN20CTaskSimpleGoToPointC2EiRK7CVectorfbb; CTaskSimpleGoToPoint::CTaskSimpleGoToPoint(int,CVector const&,float,bool,bool)
4FFCC6:  B               loc_4FFD66
4FFCC8:  MOVS            R0, #off_18; this
4FFCCA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FFCCE:  MOV             R4, R0
4FFCD0:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4FFCD4:  LDR             R0, =(_ZTV16CTaskSimplePause_ptr - 0x4FFCE0)
4FFCD6:  MOVS            R1, #0; unsigned int
4FFCD8:  MOVS            R2, #1
4FFCDA:  STRH            R1, [R4,#0x10]
4FFCDC:  ADD             R0, PC; _ZTV16CTaskSimplePause_ptr
4FFCDE:  STR             R2, [R4,#0x14]
4FFCE0:  STRD.W          R1, R1, [R4,#8]
4FFCE4:  LDR             R0, [R0]; `vtable for'CTaskSimplePause ...
4FFCE6:  ADDS            R0, #8
4FFCE8:  STR             R0, [R4]
4FFCEA:  B               loc_4FFD66
4FFCEC:  MOVS            R0, #dword_20; this
4FFCEE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FFCF2:  MOV             R4, R0
4FFCF4:  MOV.W           R0, #0x41000000
4FFCF8:  STR             R0, [SP,#0x28+var_28]; float
4FFCFA:  MOV             R0, R4; this
4FFCFC:  MOVS            R1, #1; int
4FFCFE:  MOVS            R2, #0; bool
4FFD00:  MOVS            R3, #0; bool
4FFD02:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
4FFD06:  B               loc_4FFD66
4FFD08:  LDR.W           R1, [R2,#0x48C]; unsigned int
4FFD0C:  ORRS            R0, R1
4FFD0E:  STR.W           R0, [R2,#0x48C]
4FFD12:  MOVS            R0, #word_10; this
4FFD14:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FFD18:  MOV             R4, R0
4FFD1A:  LDRD.W          R1, R0, [R5,#0xC]; CVehicle *
4FFD1E:  LDR             R2, [R5,#0x34]; int
4FFD20:  ADD.W           R3, R5, #0x38 ; '8'; CVector *
4FFD24:  STR             R0, [SP,#0x28+var_28]; int
4FFD26:  MOV             R0, R4; this
4FFD28:  BLX             j__ZN48CTaskSimpleCarGoToPointNearDoorUntilDoorNotInUseC2EP8CVehicleiRK7CVectori; CTaskSimpleCarGoToPointNearDoorUntilDoorNotInUse::CTaskSimpleCarGoToPointNearDoorUntilDoorNotInUse(CVehicle *,int,CVector const&,int)
4FFD2C:  B               loc_4FFD66
4FFD2E:  MOVS            R0, #off_3C; this
4FFD30:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4FFD34:  LDR             R3, =(_ZN28CTaskComplexFollowPointRoute20ms_fSlowDownDistanceE_ptr - 0x4FFD3E)
4FFD36:  MOV             R4, R0
4FFD38:  LDR             R0, =(_ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr - 0x4FFD42)
4FFD3A:  ADD             R3, PC; _ZN28CTaskComplexFollowPointRoute20ms_fSlowDownDistanceE_ptr
4FFD3C:  LDR             R1, [R5,#0x10]; int
4FFD3E:  ADD             R0, PC; _ZN28CTaskComplexFollowPointRoute16ms_fTargetRadiusE_ptr
4FFD40:  LDR             R2, [R5,#0x4C]; CPointRoute *
4FFD42:  LDR             R3, [R3]; CTaskComplexFollowPointRoute::ms_fSlowDownDistance ...
4FFD44:  LDR             R0, [R0]; CTaskComplexFollowPointRoute::ms_fTargetRadius ...
4FFD46:  VLDR            S2, [R3]
4FFD4A:  MOVS            R3, #0; int
4FFD4C:  VLDR            S0, [R0]
4FFD50:  MOVS            R0, #0
4FFD52:  STRD.W          R0, R0, [SP,#0x28+var_20]; bool
4FFD56:  STR             R0, [SP,#0x28+var_18]; bool
4FFD58:  MOV             R0, R4; this
4FFD5A:  VSTR            S0, [SP,#0x28+var_28]
4FFD5E:  VSTR            S2, [SP,#0x28+var_24]
4FFD62:  BLX             j__ZN28CTaskComplexFollowPointRouteC2EiRK11CPointRouteiffbbb; CTaskComplexFollowPointRoute::CTaskComplexFollowPointRoute(int,CPointRoute const&,int,float,float,bool,bool,bool)
4FFD66:  MOV             R0, R4
4FFD68:  ADD             SP, SP, #0x18
4FFD6A:  POP.W           {R11}
4FFD6E:  POP             {R4-R7,PC}
