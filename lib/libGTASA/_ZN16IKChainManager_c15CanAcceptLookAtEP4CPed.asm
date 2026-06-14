; =========================================================
; Game Engine Function: _ZN16IKChainManager_c15CanAcceptLookAtEP4CPed
; Address            : 0x4D3510 - 0x4D3618
; =========================================================

4D3510:  PUSH            {R4,R5,R7,LR}
4D3512:  ADD             R7, SP, #8
4D3514:  MOV             R4, R1
4D3516:  LDR             R0, [R4,#0x18]
4D3518:  CMP             R0, #0
4D351A:  BEQ             loc_4D360E
4D351C:  MOV             R0, R4; this
4D351E:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
4D3522:  CMP             R0, #1
4D3524:  BNE             loc_4D360E
4D3526:  MOV             R0, R4; this
4D3528:  BLX             j__ZN7CEntity13GetIsOnScreenEv; CEntity::GetIsOnScreen(void)
4D352C:  CMP             R0, #1
4D352E:  BNE             loc_4D360E
4D3530:  LDR             R0, =(TheCamera_ptr - 0x4D3536)
4D3532:  ADD             R0, PC; TheCamera_ptr
4D3534:  LDR             R0, [R0]; TheCamera
4D3536:  LDRH.W          R0, [R0,#(word_95275C - 0x951FA8)]
4D353A:  CMP             R0, #7
4D353C:  BEQ             loc_4D3592
4D353E:  LDR             R0, =(TheCamera_ptr - 0x4D3546)
4D3540:  LDR             R1, [R4,#0x14]
4D3542:  ADD             R0, PC; TheCamera_ptr
4D3544:  ADD.W           R2, R1, #0x30 ; '0'
4D3548:  CMP             R1, #0
4D354A:  LDR             R0, [R0]; TheCamera
4D354C:  LDR             R3, [R0,#(dword_951FBC - 0x951FA8)]
4D354E:  IT EQ
4D3550:  ADDEQ           R2, R4, #4
4D3552:  VLDR            S0, [R2]
4D3556:  ADD.W           R1, R3, #0x30 ; '0'
4D355A:  CMP             R3, #0
4D355C:  IT EQ
4D355E:  ADDEQ           R1, R0, #4
4D3560:  VLDR            D16, [R2,#4]
4D3564:  VLDR            S2, [R1]
4D3568:  VLDR            D17, [R1,#4]
4D356C:  VSUB.F32        S0, S0, S2
4D3570:  VSUB.F32        D16, D16, D17
4D3574:  VMUL.F32        D1, D16, D16
4D3578:  VMUL.F32        S0, S0, S0
4D357C:  VADD.F32        S0, S0, S2
4D3580:  VADD.F32        S0, S0, S3
4D3584:  VLDR            S2, =400.0
4D3588:  VCMPE.F32       S0, S2
4D358C:  VMRS            APSR_nzcv, FPSCR
4D3590:  BGT             loc_4D360E
4D3592:  LDRB.W          R0, [R4,#0x48E]
4D3596:  LSLS            R0, R0, #0x19
4D3598:  BMI             loc_4D35DA
4D359A:  LDRB.W          R0, [R4,#0x534]
4D359E:  LSLS            R0, R0, #0x1B
4D35A0:  BMI             loc_4D360E
4D35A2:  LDR             R0, [R4,#0x18]
4D35A4:  MOVW            R1, #0x12B
4D35A8:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4D35AC:  CBNZ            R0, loc_4D360E
4D35AE:  LDR             R0, [R4,#0x18]
4D35B0:  MOV.W           R1, #0x12C
4D35B4:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4D35B8:  CBNZ            R0, loc_4D360E
4D35BA:  LDR             R0, [R4,#0x18]
4D35BC:  MOVW            R1, #0x12D
4D35C0:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4D35C4:  MOVS            R5, #0
4D35C6:  CBNZ            R0, loc_4D3614
4D35C8:  LDR             R0, [R4,#0x18]
4D35CA:  MOV.W           R1, #0x12E
4D35CE:  BLX             j__Z30RpAnimBlendClumpGetAssociationP7RpClumpj; RpAnimBlendClumpGetAssociation(RpClump *,uint)
4D35D2:  CMP             R0, #0
4D35D4:  IT EQ
4D35D6:  MOVEQ           R5, #1
4D35D8:  B               loc_4D3614
4D35DA:  LDR.W           R0, [R4,#0x440]
4D35DE:  MOVS            R1, #5; int
4D35E0:  ADDS            R0, #4; this
4D35E2:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4D35E6:  MOVS            R5, #0
4D35E8:  CBZ             R0, loc_4D3614
4D35EA:  MOVS            R1, #0; int
4D35EC:  BLX             j__ZN20CTaskSimpleIKManager13GetTaskAtSlotEi; CTaskSimpleIKManager::GetTaskAtSlot(int)
4D35F0:  CBZ             R0, loc_4D3614
4D35F2:  LDR.W           R0, [R4,#0x440]
4D35F6:  MOVS            R1, #5; int
4D35F8:  ADDS            R0, #4; this
4D35FA:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
4D35FE:  MOVS            R1, #0; int
4D3600:  MOVS            R5, #0
4D3602:  BLX             j__ZN20CTaskSimpleIKManager13GetTaskAtSlotEi; CTaskSimpleIKManager::GetTaskAtSlot(int)
4D3606:  CBZ             R0, loc_4D3614
4D3608:  MOVS            R1, #0xFA; int
4D360A:  BLX             j__ZN18CTaskSimpleIKChain8BlendOutEi; CTaskSimpleIKChain::BlendOut(int)
4D360E:  MOVS            R5, #0
4D3610:  MOV             R0, R5
4D3612:  POP             {R4,R5,R7,PC}
4D3614:  MOV             R0, R5
4D3616:  POP             {R4,R5,R7,PC}
