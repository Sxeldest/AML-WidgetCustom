; =========================================================
; Game Engine Function: _ZN20CTaskSimpleCarGetOut9StartAnimEPK4CPed
; Address            : 0x503364 - 0x503432
; =========================================================

503364:  PUSH            {R4-R7,LR}
503366:  ADD             R7, SP, #0xC
503368:  PUSH.W          {R11}
50336C:  SUB             SP, SP, #0x30
50336E:  MOV             R5, R1
503370:  MOV             R4, R0
503372:  MOV             R0, R5; this
503374:  BLX             j__ZN13CCarEnterExit16RemoveCarSitAnimERK4CPed; CCarEnterExit::RemoveCarSitAnim(CPed const&)
503378:  LDR             R1, [R4,#0x14]; CVehicle *
50337A:  LDR.W           R0, [R1,#0x5A0]
50337E:  CBZ             R0, loc_503388
503380:  MOV             R1, R4
503382:  LDRB.W          R0, [R1,#0x10]!
503386:  B               loc_50339A
503388:  MOV             R0, SP; this
50338A:  BLX             j__ZN19CUpsideDownCarCheck15IsCarUpsideDownEPK8CVehicle; CUpsideDownCarCheck::IsCarUpsideDown(CVehicle const*)
50338E:  CMP             R0, #0
503390:  MOV             R1, R4
503392:  IT NE
503394:  MOVNE           R0, #1
503396:  STRB.W          R0, [R1,#0x10]!
50339A:  LDR             R2, [R4,#0x18]
50339C:  CBZ             R0, loc_5033DA
50339E:  LDR             R0, [R4,#0x14]
5033A0:  LDR             R0, [R0,#0x14]
5033A2:  VLDR            S0, [R0,#8]
5033A6:  BIC.W           R0, R2, #1
5033AA:  CMP             R0, #0xA
5033AC:  BNE             loc_5033C8
5033AE:  VMOV.F32        S2, #-0.5
5033B2:  VCMPE.F32       S0, S2
5033B6:  VMRS            APSR_nzcv, FPSCR
5033BA:  BLT             loc_5033D6
5033BC:  MOVS            R6, #0x6D ; 'm'
5033BE:  CMP             R0, #0xA
5033C0:  IT EQ
5033C2:  MOVEQ           R6, #0x6C ; 'l'
5033C4:  MOVS            R1, #0
5033C6:  B               loc_50340E
5033C8:  VMOV.F32        S2, #0.5
5033CC:  VCMPE.F32       S0, S2
5033D0:  VMRS            APSR_nzcv, FPSCR
5033D4:  BLE             loc_5033BC
5033D6:  MOVS            R0, #0
5033D8:  STRB            R0, [R1]
5033DA:  SUB.W           R0, R2, #8
5033DE:  CMP             R0, #2
5033E0:  BHI             loc_5033EC
5033E2:  LDR             R1, =(unk_61E6CC - 0x5033E8)
5033E4:  ADD             R1, PC; unk_61E6CC
5033E6:  LDR.W           R6, [R1,R0,LSL#2]
5033EA:  B               loc_5033F0
5033EC:  MOVW            R6, #0x177
5033F0:  LDR             R0, [R4,#0x14]
5033F2:  MOVS            R2, #0x94
5033F4:  LDR             R1, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x5033FE)
5033F6:  LDR.W           R0, [R0,#0x388]
5033FA:  ADD             R1, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
5033FC:  LDR             R1, [R1]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
5033FE:  LDRB.W          R0, [R0,#0xDE]
503402:  SMLABB.W        R0, R0, R2, R1; this
503406:  MOV             R1, R6; int
503408:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
50340C:  MOV             R1, R0; int
50340E:  LDR             R0, [R5,#0x18]; int
503410:  MOVS            R3, #0x447A0000
503416:  MOV             R2, R6; unsigned int
503418:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
50341C:  LDR             R1, =(_ZN20CTaskSimpleCarGetOut21FinishAnimCarGetOutCBEP21CAnimBlendAssociationPv_ptr - 0x503426)
50341E:  MOV             R2, R4; void *
503420:  STR             R0, [R4,#0xC]
503422:  ADD             R1, PC; _ZN20CTaskSimpleCarGetOut21FinishAnimCarGetOutCBEP21CAnimBlendAssociationPv_ptr
503424:  LDR             R1, [R1]; CTaskSimpleCarGetOut::FinishAnimCarGetOutCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
503426:  BLX             j__ZN21CAnimBlendAssociation17SetFinishCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetFinishCallback(void (*)(CAnimBlendAssociation*,void *),void *)
50342A:  ADD             SP, SP, #0x30 ; '0'
50342C:  POP.W           {R11}
503430:  POP             {R4-R7,PC}
