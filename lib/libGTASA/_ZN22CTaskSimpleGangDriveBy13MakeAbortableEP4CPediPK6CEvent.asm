; =========================================================
; Game Engine Function: _ZN22CTaskSimpleGangDriveBy13MakeAbortableEP4CPediPK6CEvent
; Address            : 0x4E44CC - 0x4E45AE
; =========================================================

4E44CC:  PUSH            {R4-R7,LR}
4E44CE:  ADD             R7, SP, #0xC
4E44D0:  PUSH.W          {R8}
4E44D4:  MOV             R6, R2
4E44D6:  MOV             R4, R0
4E44D8:  SUBS            R0, R6, #1
4E44DA:  MOV             R5, R3
4E44DC:  MOV             R8, R1
4E44DE:  CMP             R0, #1
4E44E0:  BHI             loc_4E4522
4E44E2:  CBZ             R5, loc_4E44FE
4E44E4:  LDR             R0, [R5]
4E44E6:  LDR             R1, [R0,#8]
4E44E8:  MOV             R0, R5
4E44EA:  BLX             R1
4E44EC:  CMP             R0, #9
4E44EE:  BNE             loc_4E44FE
4E44F0:  LDRB.W          R0, [R5,#0x3C]
4E44F4:  CMP             R0, #0
4E44F6:  ITT NE
4E44F8:  LDRBNE          R0, [R5,#9]
4E44FA:  CMPNE           R0, #0
4E44FC:  BEQ             loc_4E4526
4E44FE:  MOVS            R0, #7
4E4500:  MOV             R1, R8; CPed *
4E4502:  STRB            R0, [R4,#0xF]
4E4504:  MOV             R0, R4; this
4E4506:  BLX             j__ZN22CTaskSimpleGangDriveBy10ManageAnimEP4CPed; CTaskSimpleGangDriveBy::ManageAnim(CPed *)
4E450A:  CMP             R0, #1
4E450C:  BNE             loc_4E453C
4E450E:  LDR             R0, [R4,#0x2C]
4E4510:  CMP             R6, #2
4E4512:  LDRB            R1, [R4,#0xF]
4E4514:  STRB            R1, [R4,#0x10]
4E4516:  BNE             loc_4E452E
4E4518:  MOVS            R1, #0xC47A0000
4E451E:  STR             R1, [R0,#0x1C]
4E4520:  B               loc_4E453C
4E4522:  MOVS            R0, #6
4E4524:  STRB            R0, [R4,#0xF]
4E4526:  MOVS            R0, #0
4E4528:  POP.W           {R8}
4E452C:  POP             {R4-R7,PC}
4E452E:  LDRH            R1, [R0,#0x2E]
4E4530:  TST.W           R1, #1
4E4534:  ITT EQ
4E4536:  ORREQ.W         R1, R1, #1
4E453A:  STRHEQ          R1, [R0,#0x2E]
4E453C:  LDR.W           R0, [R8,#0x444]
4E4540:  CMP             R0, #0
4E4542:  ITTT NE
4E4544:  LDRHNE          R1, [R0,#0x34]
4E4546:  ORRNE.W         R1, R1, #8
4E454A:  STRHNE          R1, [R0,#0x34]
4E454C:  MOV             R0, R8; this
4E454E:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
4E4552:  CMP             R0, #1
4E4554:  BNE             loc_4E4562
4E4556:  MOV             R0, R8; this
4E4558:  BLX             j__ZN10CPlayerPed29GetPlayerInfoForThisPlayerPedEv; CPlayerPed::GetPlayerInfoForThisPlayerPed(void)
4E455C:  MOVS            R1, #1
4E455E:  STRB.W          R1, [R0,#0x153]
4E4562:  LDR             R0, [R4,#0x2C]
4E4564:  CBZ             R0, loc_4E45A4
4E4566:  LDRB.W          R1, [R0,#0x2E]
4E456A:  LSLS            R1, R1, #0x1F
4E456C:  BNE             loc_4E4594
4E456E:  VLDR            S0, [R0,#0x1C]
4E4572:  VCMPE.F32       S0, #0.0
4E4576:  VMRS            APSR_nzcv, FPSCR
4E457A:  BGT             loc_4E458C
4E457C:  ITTT GE
4E457E:  VLDRGE          S0, [R0,#0x18]
4E4582:  VCMPEGE.F32     S0, #0.0
4E4586:  VMRSGE          APSR_nzcv, FPSCR
4E458A:  BLE             loc_4E4594
4E458C:  MOV.W           R1, #0xC1000000
4E4590:  STR             R1, [R0,#0x1C]
4E4592:  LDR             R0, [R4,#0x2C]; this
4E4594:  LDR             R1, =(_ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr - 0x4E459E)
4E4596:  MOVS            R2, #0; void *
4E4598:  MOVS            R5, #0
4E459A:  ADD             R1, PC; _ZN20CDefaultAnimCallback13DefaultAnimCBEP21CAnimBlendAssociationPv_ptr
4E459C:  LDR             R1, [R1]; CDefaultAnimCallback::DefaultAnimCB(CAnimBlendAssociation *,void *) ; void (*)(CAnimBlendAssociation *, void *)
4E459E:  BLX             j__ZN21CAnimBlendAssociation17SetDeleteCallbackEPFvPS_PvES1_; CAnimBlendAssociation::SetDeleteCallback(void (*)(CAnimBlendAssociation*,void *),void *)
4E45A2:  STR             R5, [R4,#0x2C]
4E45A4:  MOVS            R0, #1
4E45A6:  STRB            R0, [R4,#8]
4E45A8:  POP.W           {R8}
4E45AC:  POP             {R4-R7,PC}
