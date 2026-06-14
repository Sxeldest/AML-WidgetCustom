; =========================================================
; Game Engine Function: _ZN23CTaskSimplePlayerOnFoot13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x537534 - 0x537692
; =========================================================

537534:  PUSH            {R4-R7,LR}
537536:  ADD             R7, SP, #0xC
537538:  PUSH.W          {R11}
53753C:  MOV             R5, R3
53753E:  MOV             R4, R1
537540:  CMP             R2, #1
537542:  BEQ             loc_537564
537544:  CMP             R2, #2
537546:  BNE             loc_537582
537548:  LDR.W           R0, [R4,#0x444]
53754C:  MOVS            R1, #0
53754E:  MOVS            R3, #0
537550:  MOVS            R2, #3; unsigned int
537552:  MOVT            R3, #0x447A
537556:  STR             R1, [R0,#0x14]
537558:  LDR.W           R1, [R4,#0x4E0]; int
53755C:  LDR             R0, [R4,#0x18]; int
53755E:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
537562:  B               loc_5375FC
537564:  LDR.W           R0, [R4,#0x440]
537568:  MOVS            R1, #0; int
53756A:  ADDS            R0, #4; this
53756C:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
537570:  CMP             R0, #0
537572:  BEQ             loc_5375FC
537574:  CBZ             R5, loc_5375CE
537576:  LDR             R0, [R5]
537578:  LDR             R1, [R0,#0xC]
53757A:  MOV             R0, R5
53757C:  BLX             R1
53757E:  CMP             R0, #0x3D ; '='
537580:  BGE             loc_537586
537582:  MOVS            R6, #0
537584:  B               loc_53768A
537586:  LDR             R0, [R5]
537588:  LDR             R1, [R0,#8]
53758A:  MOV             R0, R5
53758C:  BLX             R1
53758E:  CMP             R0, #9
537590:  BNE             loc_5375CE
537592:  LDR.W           R0, [R4,#0x440]
537596:  MOVS            R1, #0; int
537598:  ADDS            R0, #4; this
53759A:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
53759E:  LDR             R1, [R0]
5375A0:  LDR             R1, [R1,#0x14]
5375A2:  BLX             R1
5375A4:  MOVW            R1, #0x3FA
5375A8:  CMP             R0, R1
5375AA:  BEQ             loc_5375B4
5375AC:  LDRB.W          R0, [R5,#0x21]
5375B0:  LSLS            R0, R0, #0x1E
5375B2:  BPL             loc_5375FC
5375B4:  LDR.W           R0, [R4,#0x440]
5375B8:  MOVS            R1, #0; int
5375BA:  ADDS            R0, #4; this
5375BC:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
5375C0:  LDR             R1, [R0]
5375C2:  MOVS            R2, #1
5375C4:  MOV             R3, R5
5375C6:  LDR             R6, [R1,#0x1C]
5375C8:  MOV             R1, R4
5375CA:  BLX             R6
5375CC:  B               loc_5375FC
5375CE:  LDR.W           R0, [R4,#0x440]
5375D2:  MOVS            R1, #0; int
5375D4:  ADDS            R0, #4; this
5375D6:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
5375DA:  CBZ             R0, loc_5375FC
5375DC:  LDR.W           R0, [R4,#0x440]
5375E0:  MOVS            R1, #0; int
5375E2:  MOVS            R6, #0
5375E4:  ADDS            R0, #4; this
5375E6:  BLX             j__ZNK12CTaskManager16GetTaskSecondaryEi; CTaskManager::GetTaskSecondary(int)
5375EA:  LDR             R1, [R0]
5375EC:  MOVS            R2, #1
5375EE:  MOV             R3, R5
5375F0:  LDR.W           R12, [R1,#0x1C]
5375F4:  MOV             R1, R4
5375F6:  BLX             R12
5375F8:  CMP             R0, #1
5375FA:  BNE             loc_53768A
5375FC:  LDR.W           R0, [R4,#0x720]
537600:  CBNZ            R0, loc_537620
537602:  LDR.W           R0, [R4,#0x444]
537606:  LDRB.W          R0, [R0,#0x34]
53760A:  LSLS            R0, R0, #0x1C
53760C:  BMI             loc_537620
53760E:  LDR             R0, =(TheCamera_ptr - 0x537614)
537610:  ADD             R0, PC; TheCamera_ptr
537612:  LDR             R0, [R0]; TheCamera ; this
537614:  BLX             j__ZN7CCamera24Using1stPersonWeaponModeEv; CCamera::Using1stPersonWeaponMode(void)
537618:  MOVS            R6, #1
53761A:  CBZ             R5, loc_53768A
53761C:  CBNZ            R0, loc_537622
53761E:  B               loc_53768A
537620:  CBZ             R5, loc_537688
537622:  LDR             R0, [R5]
537624:  LDR             R1, [R0,#8]
537626:  MOV             R0, R5
537628:  BLX             R1
53762A:  CMP             R0, #9
53762C:  BEQ             loc_53763A
53762E:  LDR             R0, [R5]
537630:  LDR             R1, [R0,#8]
537632:  MOV             R0, R5
537634:  BLX             R1
537636:  CMP             R0, #0x42 ; 'B'
537638:  BNE             loc_537688
53763A:  LDR             R0, [R5]
53763C:  LDR             R1, [R0,#8]
53763E:  MOV             R0, R5
537640:  BLX             R1
537642:  CMP             R0, #9
537644:  BNE             loc_53766E
537646:  LDRB.W          R0, [R5,#0x3C]
53764A:  CMP             R0, #0
53764C:  ITT NE
53764E:  LDRBNE          R0, [R5,#9]
537650:  CMPNE           R0, #0
537652:  BNE             loc_53766E
537654:  LDR.W           R0, [R4,#0x100]
537658:  CBNZ            R0, loc_537688
53765A:  LDRB.W          R0, [R5,#0x21]
53765E:  LSLS            R0, R0, #0x1E
537660:  BMI             loc_53766E
537662:  LDR             R0, [R5,#0x18]
537664:  MOVS            R6, #1
537666:  CMP             R0, #0x30 ; '0'
537668:  BLT             loc_53768A
53766A:  CMP             R0, #0x34 ; '4'
53766C:  BEQ             loc_53768A
53766E:  LDR             R0, =(TheCamera_ptr - 0x537674)
537670:  ADD             R0, PC; TheCamera_ptr
537672:  LDR             R0, [R0]; TheCamera ; this
537674:  BLX             j__ZN7CCamera21ClearPlayerWeaponModeEv; CCamera::ClearPlayerWeaponMode(void)
537678:  LDR.W           R0, [R4,#0x59C]; this
53767C:  BLX             j__ZN14CWeaponEffects14ClearCrossHairEi; CWeaponEffects::ClearCrossHair(int)
537680:  MOV             R0, R4; this
537682:  MOVS            R1, #0; CEntity *
537684:  BLX             j__ZN4CPed21SetWeaponLockOnTargetEP7CEntity; CPed::SetWeaponLockOnTarget(CEntity *)
537688:  MOVS            R6, #1
53768A:  MOV             R0, R6
53768C:  POP.W           {R11}
537690:  POP             {R4-R7,PC}
