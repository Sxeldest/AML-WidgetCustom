; =========================================================
; Game Engine Function: sub_5E43E8
; Address            : 0x5E43E8 - 0x5E46EC
; =========================================================

5E43E8:  PUSH            {R4-R7,LR}
5E43EA:  ADD             R7, SP, #0xC
5E43EC:  PUSH.W          {R8}
5E43F0:  CMP             R0, #0x20 ; ' '
5E43F2:  BEQ.W           loc_5E4562
5E43F6:  CMP             R0, #0x1F
5E43F8:  BNE.W           loc_5E46E4
5E43FC:  LDR             R4, [R1]
5E43FE:  MOV             R0, R4; this
5E4400:  BLX.W           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
5E4404:  LDR             R0, =(_ZN4CPad20m_bMapPadOneToPadTwoE_ptr - 0x5E440C)
5E4406:  LDR             R1, =(ControlsManager_ptr - 0x5E440E)
5E4408:  ADD             R0, PC; _ZN4CPad20m_bMapPadOneToPadTwoE_ptr
5E440A:  ADD             R1, PC; ControlsManager_ptr
5E440C:  LDR             R0, [R0]; CPad::m_bMapPadOneToPadTwo ...
5E440E:  LDR             R5, [R1]; ControlsManager
5E4410:  LDRB            R0, [R0]; CPad::m_bMapPadOneToPadTwo
5E4412:  CMP             R0, #0
5E4414:  MOV             R0, R5; this
5E4416:  IT NE
5E4418:  MOVNE           R4, #1
5E441A:  MOV             R1, R4; int
5E441C:  BLX.W           j__ZN24CControllerConfigManager20UpdateJoyButtonStateEi; CControllerConfigManager::UpdateJoyButtonState(int)
5E4420:  ADD.W           R0, R4, R4,LSL#4
5E4424:  MOV             R2, R4; CPad *
5E4426:  ADDS            R6, R5, R0
5E4428:  MOVW            R0, #(byte_956A4D - 0x953161)
5E442C:  LDRB            R1, [R6,R0]; int
5E442E:  MOV             R0, R5; this
5E4430:  BLX.W           j__ZN24CControllerConfigManager33UpdateJoyInConfigMenus_ButtonDownEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonDown(int,int)
5E4434:  MOVW            R0, #(byte_956A4E - 0x953161)
5E4438:  MOV             R2, R4; CPad *
5E443A:  LDRB            R1, [R6,R0]
5E443C:  MOV             R0, R5; this
5E443E:  CMP             R1, #0
5E4440:  IT NE
5E4442:  MOVNE           R1, #2; int
5E4444:  BLX.W           j__ZN24CControllerConfigManager33UpdateJoyInConfigMenus_ButtonDownEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonDown(int,int)
5E4448:  MOVW            R0, #(byte_956A4F - 0x953161)
5E444C:  MOV             R2, R4; CPad *
5E444E:  LDRB            R1, [R6,R0]
5E4450:  MOV             R0, R5; this
5E4452:  CMP             R1, #0
5E4454:  IT NE
5E4456:  MOVNE           R1, #3; int
5E4458:  BLX.W           j__ZN24CControllerConfigManager33UpdateJoyInConfigMenus_ButtonDownEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonDown(int,int)
5E445C:  MOVW            R0, #(byte_956A50 - 0x953161)
5E4460:  MOV             R2, R4; CPad *
5E4462:  LDRB            R1, [R6,R0]
5E4464:  MOV             R0, R5; this
5E4466:  CMP             R1, #0
5E4468:  IT NE
5E446A:  MOVNE           R1, #4; int
5E446C:  BLX.W           j__ZN24CControllerConfigManager33UpdateJoyInConfigMenus_ButtonDownEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonDown(int,int)
5E4470:  MOVW            R0, #(byte_956A51 - 0x953161)
5E4474:  MOV             R2, R4; CPad *
5E4476:  LDRB            R1, [R6,R0]
5E4478:  MOV             R0, R5; this
5E447A:  CMP             R1, #0
5E447C:  IT NE
5E447E:  MOVNE           R1, #5; int
5E4480:  BLX.W           j__ZN24CControllerConfigManager33UpdateJoyInConfigMenus_ButtonDownEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonDown(int,int)
5E4484:  MOVW            R0, #(byte_956A52 - 0x953161)
5E4488:  MOV             R2, R4; CPad *
5E448A:  LDRB            R1, [R6,R0]
5E448C:  MOV             R0, R5; this
5E448E:  CMP             R1, #0
5E4490:  IT NE
5E4492:  MOVNE           R1, #6; int
5E4494:  BLX.W           j__ZN24CControllerConfigManager33UpdateJoyInConfigMenus_ButtonDownEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonDown(int,int)
5E4498:  MOVW            R0, #(byte_956A53 - 0x953161)
5E449C:  MOV             R2, R4; CPad *
5E449E:  LDRB            R1, [R6,R0]
5E44A0:  MOV             R0, R5; this
5E44A2:  CMP             R1, #0
5E44A4:  IT NE
5E44A6:  MOVNE           R1, #7; int
5E44A8:  BLX.W           j__ZN24CControllerConfigManager33UpdateJoyInConfigMenus_ButtonDownEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonDown(int,int)
5E44AC:  MOVW            R0, #(byte_956A54 - 0x953161)
5E44B0:  MOV             R2, R4; CPad *
5E44B2:  LDRB            R1, [R6,R0]
5E44B4:  MOV             R0, R5; this
5E44B6:  CMP             R1, #0
5E44B8:  IT NE
5E44BA:  MOVNE           R1, #8; int
5E44BC:  BLX.W           j__ZN24CControllerConfigManager33UpdateJoyInConfigMenus_ButtonDownEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonDown(int,int)
5E44C0:  MOVW            R0, #(byte_956A55 - 0x953161)
5E44C4:  MOV             R2, R4; CPad *
5E44C6:  LDRB            R1, [R6,R0]
5E44C8:  MOV             R0, R5; this
5E44CA:  CMP             R1, #0
5E44CC:  IT NE
5E44CE:  MOVNE           R1, #9; int
5E44D0:  BLX.W           j__ZN24CControllerConfigManager33UpdateJoyInConfigMenus_ButtonDownEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonDown(int,int)
5E44D4:  MOVW            R0, #(byte_956A56 - 0x953161)
5E44D8:  MOV             R2, R4; CPad *
5E44DA:  LDRB            R1, [R6,R0]
5E44DC:  MOV             R0, R5; this
5E44DE:  CMP             R1, #0
5E44E0:  IT NE
5E44E2:  MOVNE           R1, #0xA; int
5E44E4:  BLX.W           j__ZN24CControllerConfigManager33UpdateJoyInConfigMenus_ButtonDownEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonDown(int,int)
5E44E8:  MOVW            R0, #(byte_956A57 - 0x953161)
5E44EC:  MOV             R2, R4; CPad *
5E44EE:  LDRB            R1, [R6,R0]
5E44F0:  MOV             R0, R5; this
5E44F2:  CMP             R1, #0
5E44F4:  IT NE
5E44F6:  MOVNE           R1, #0xB; int
5E44F8:  BLX.W           j__ZN24CControllerConfigManager33UpdateJoyInConfigMenus_ButtonDownEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonDown(int,int)
5E44FC:  MOVW            R0, #(byte_956A58 - 0x953161)
5E4500:  MOV             R2, R4; CPad *
5E4502:  LDRB            R1, [R6,R0]
5E4504:  MOV             R0, R5; this
5E4506:  CMP             R1, #0
5E4508:  IT NE
5E450A:  MOVNE           R1, #0xC; int
5E450C:  BLX.W           j__ZN24CControllerConfigManager33UpdateJoyInConfigMenus_ButtonDownEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonDown(int,int)
5E4510:  MOVW            R0, #(byte_956A59 - 0x953161)
5E4514:  MOV             R2, R4; CPad *
5E4516:  LDRB            R1, [R6,R0]
5E4518:  MOV             R0, R5; this
5E451A:  CMP             R1, #0
5E451C:  IT NE
5E451E:  MOVNE           R1, #0xD; int
5E4520:  BLX.W           j__ZN24CControllerConfigManager33UpdateJoyInConfigMenus_ButtonDownEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonDown(int,int)
5E4524:  MOVW            R0, #(byte_956A5A - 0x953161)
5E4528:  MOV             R2, R4; CPad *
5E452A:  LDRB            R1, [R6,R0]
5E452C:  MOV             R0, R5; this
5E452E:  CMP             R1, #0
5E4530:  IT NE
5E4532:  MOVNE           R1, #0xE; int
5E4534:  BLX.W           j__ZN24CControllerConfigManager33UpdateJoyInConfigMenus_ButtonDownEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonDown(int,int)
5E4538:  MOVW            R0, #(byte_956A5B - 0x953161)
5E453C:  MOV             R2, R4; CPad *
5E453E:  LDRB            R1, [R6,R0]
5E4540:  MOV             R0, R5; this
5E4542:  CMP             R1, #0
5E4544:  IT NE
5E4546:  MOVNE           R1, #0xF; int
5E4548:  BLX.W           j__ZN24CControllerConfigManager33UpdateJoyInConfigMenus_ButtonDownEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonDown(int,int)
5E454C:  MOVW            R0, #(byte_956A5C - 0x953161)
5E4550:  MOV             R2, R4; CPad *
5E4552:  LDRB            R1, [R6,R0]
5E4554:  MOV             R0, R5; this
5E4556:  CMP             R1, #0
5E4558:  IT NE
5E455A:  MOVNE           R1, #0x10; int
5E455C:  BLX.W           j__ZN24CControllerConfigManager33UpdateJoyInConfigMenus_ButtonDownEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonDown(int,int)
5E4560:  B               loc_5E46DC
5E4562:  LDR             R4, [R1]
5E4564:  MOV             R0, R4; this
5E4566:  BLX.W           j__ZN4CPad6GetPadEi; CPad::GetPad(int)
5E456A:  LDR             R0, =(_ZN4CPad20m_bMapPadOneToPadTwoE_ptr - 0x5E4572)
5E456C:  LDR             R1, =(ControlsManager_ptr - 0x5E4574)
5E456E:  ADD             R0, PC; _ZN4CPad20m_bMapPadOneToPadTwoE_ptr
5E4570:  ADD             R1, PC; ControlsManager_ptr
5E4572:  LDR             R0, [R0]; CPad::m_bMapPadOneToPadTwo ...
5E4574:  LDR             R5, [R1]; ControlsManager
5E4576:  LDRB            R0, [R0]; CPad::m_bMapPadOneToPadTwo
5E4578:  CMP             R0, #0
5E457A:  MOV             R0, R5; this
5E457C:  IT NE
5E457E:  MOVNE           R4, #1
5E4580:  MOV             R1, R4; int
5E4582:  BLX.W           j__ZN24CControllerConfigManager20UpdateJoyButtonStateEi; CControllerConfigManager::UpdateJoyButtonState(int)
5E4586:  ADD.W           R0, R4, R4,LSL#4
5E458A:  MOVS            R1, #0
5E458C:  ADDS            R6, R5, R0
5E458E:  MOVW            R0, #(byte_956A4E - 0x953161)
5E4592:  MOV             R2, R4; CPad *
5E4594:  MOV.W           R8, #0
5E4598:  LDRB            R0, [R6,R0]
5E459A:  CMP             R0, #0
5E459C:  MOV             R0, R5; this
5E459E:  IT EQ
5E45A0:  MOVEQ           R1, #2; int
5E45A2:  BLX.W           j__ZN24CControllerConfigManager31UpdateJoyInConfigMenus_ButtonUpEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonUp(int,int)
5E45A6:  MOVW            R0, #(byte_956A4F - 0x953161)
5E45AA:  MOVS            R1, #0
5E45AC:  LDRB            R0, [R6,R0]
5E45AE:  MOV             R2, R4; CPad *
5E45B0:  CMP             R0, #0
5E45B2:  MOV             R0, R5; this
5E45B4:  IT EQ
5E45B6:  MOVEQ           R1, #3; int
5E45B8:  BLX.W           j__ZN24CControllerConfigManager31UpdateJoyInConfigMenus_ButtonUpEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonUp(int,int)
5E45BC:  MOVW            R0, #(byte_956A50 - 0x953161)
5E45C0:  MOVS            R1, #0
5E45C2:  LDRB            R0, [R6,R0]
5E45C4:  MOV             R2, R4; CPad *
5E45C6:  CMP             R0, #0
5E45C8:  MOV             R0, R5; this
5E45CA:  IT EQ
5E45CC:  MOVEQ           R1, #4; int
5E45CE:  BLX.W           j__ZN24CControllerConfigManager31UpdateJoyInConfigMenus_ButtonUpEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonUp(int,int)
5E45D2:  MOVW            R0, #(byte_956A51 - 0x953161)
5E45D6:  MOVS            R1, #0
5E45D8:  LDRB            R0, [R6,R0]
5E45DA:  MOV             R2, R4; CPad *
5E45DC:  CMP             R0, #0
5E45DE:  MOV             R0, R5; this
5E45E0:  IT EQ
5E45E2:  MOVEQ           R1, #5; int
5E45E4:  BLX.W           j__ZN24CControllerConfigManager31UpdateJoyInConfigMenus_ButtonUpEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonUp(int,int)
5E45E8:  MOVW            R0, #(byte_956A52 - 0x953161)
5E45EC:  MOVS            R1, #0
5E45EE:  LDRB            R0, [R6,R0]
5E45F0:  MOV             R2, R4; CPad *
5E45F2:  CMP             R0, #0
5E45F4:  MOV             R0, R5; this
5E45F6:  IT EQ
5E45F8:  MOVEQ           R1, #6; int
5E45FA:  BLX.W           j__ZN24CControllerConfigManager31UpdateJoyInConfigMenus_ButtonUpEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonUp(int,int)
5E45FE:  MOVW            R0, #(byte_956A53 - 0x953161)
5E4602:  MOVS            R1, #0
5E4604:  LDRB            R0, [R6,R0]
5E4606:  MOV             R2, R4; CPad *
5E4608:  CMP             R0, #0
5E460A:  MOV             R0, R5; this
5E460C:  IT EQ
5E460E:  MOVEQ           R1, #7; int
5E4610:  BLX.W           j__ZN24CControllerConfigManager31UpdateJoyInConfigMenus_ButtonUpEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonUp(int,int)
5E4614:  MOVW            R0, #(byte_956A54 - 0x953161)
5E4618:  MOVS            R1, #0
5E461A:  LDRB            R0, [R6,R0]
5E461C:  MOV             R2, R4; CPad *
5E461E:  CMP             R0, #0
5E4620:  MOV             R0, R5; this
5E4622:  IT EQ
5E4624:  MOVEQ           R1, #8; int
5E4626:  BLX.W           j__ZN24CControllerConfigManager31UpdateJoyInConfigMenus_ButtonUpEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonUp(int,int)
5E462A:  MOVW            R0, #(byte_956A55 - 0x953161)
5E462E:  MOVS            R1, #0
5E4630:  LDRB            R0, [R6,R0]
5E4632:  MOV             R2, R4; CPad *
5E4634:  CMP             R0, #0
5E4636:  MOV             R0, R5; this
5E4638:  IT EQ
5E463A:  MOVEQ           R1, #9; int
5E463C:  BLX.W           j__ZN24CControllerConfigManager31UpdateJoyInConfigMenus_ButtonUpEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonUp(int,int)
5E4640:  MOVW            R0, #(byte_956A56 - 0x953161)
5E4644:  MOVS            R1, #0
5E4646:  LDRB            R0, [R6,R0]
5E4648:  MOV             R2, R4; CPad *
5E464A:  CMP             R0, #0
5E464C:  MOV             R0, R5; this
5E464E:  IT EQ
5E4650:  MOVEQ           R1, #0xA; int
5E4652:  BLX.W           j__ZN24CControllerConfigManager31UpdateJoyInConfigMenus_ButtonUpEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonUp(int,int)
5E4656:  MOVW            R0, #(byte_956A57 - 0x953161)
5E465A:  MOVS            R1, #0
5E465C:  LDRB            R0, [R6,R0]
5E465E:  MOV             R2, R4; CPad *
5E4660:  CMP             R0, #0
5E4662:  MOV             R0, R5; this
5E4664:  IT EQ
5E4666:  MOVEQ           R1, #0xB; int
5E4668:  BLX.W           j__ZN24CControllerConfigManager31UpdateJoyInConfigMenus_ButtonUpEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonUp(int,int)
5E466C:  MOVW            R0, #(byte_956A58 - 0x953161)
5E4670:  MOVS            R1, #0
5E4672:  LDRB            R0, [R6,R0]
5E4674:  MOV             R2, R4; CPad *
5E4676:  CMP             R0, #0
5E4678:  MOV             R0, R5; this
5E467A:  IT EQ
5E467C:  MOVEQ           R1, #0xC; int
5E467E:  BLX.W           j__ZN24CControllerConfigManager31UpdateJoyInConfigMenus_ButtonUpEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonUp(int,int)
5E4682:  MOVW            R0, #(byte_956A59 - 0x953161)
5E4686:  MOVS            R1, #0
5E4688:  LDRB            R0, [R6,R0]
5E468A:  MOV             R2, R4; CPad *
5E468C:  CMP             R0, #0
5E468E:  MOV             R0, R5; this
5E4690:  IT EQ
5E4692:  MOVEQ           R1, #0xD; int
5E4694:  BLX.W           j__ZN24CControllerConfigManager31UpdateJoyInConfigMenus_ButtonUpEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonUp(int,int)
5E4698:  MOVW            R0, #(byte_956A5A - 0x953161)
5E469C:  MOVS            R1, #0
5E469E:  LDRB            R0, [R6,R0]
5E46A0:  MOV             R2, R4; CPad *
5E46A2:  CMP             R0, #0
5E46A4:  MOV             R0, R5; this
5E46A6:  IT EQ
5E46A8:  MOVEQ           R1, #0xE; int
5E46AA:  BLX.W           j__ZN24CControllerConfigManager31UpdateJoyInConfigMenus_ButtonUpEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonUp(int,int)
5E46AE:  MOVW            R0, #(byte_956A5B - 0x953161)
5E46B2:  MOVS            R1, #0
5E46B4:  LDRB            R0, [R6,R0]
5E46B6:  MOV             R2, R4; CPad *
5E46B8:  CMP             R0, #0
5E46BA:  MOV             R0, R5; this
5E46BC:  IT EQ
5E46BE:  MOVEQ           R1, #0xF; int
5E46C0:  BLX.W           j__ZN24CControllerConfigManager31UpdateJoyInConfigMenus_ButtonUpEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonUp(int,int)
5E46C4:  MOVW            R0, #(byte_956A5C - 0x953161)
5E46C8:  MOV             R2, R4; CPad *
5E46CA:  LDRB            R0, [R6,R0]
5E46CC:  CMP             R0, #0
5E46CE:  MOV             R0, R5; this
5E46D0:  IT EQ
5E46D2:  MOVEQ.W         R8, #0x10
5E46D6:  MOV             R1, R8; int
5E46D8:  BLX.W           j__ZN24CControllerConfigManager31UpdateJoyInConfigMenus_ButtonUpEii; CControllerConfigManager::UpdateJoyInConfigMenus_ButtonUp(int,int)
5E46DC:  MOVS            R0, #1
5E46DE:  POP.W           {R8}
5E46E2:  POP             {R4-R7,PC}
5E46E4:  MOVS            R0, #2
5E46E6:  POP.W           {R8}
5E46EA:  POP             {R4-R7,PC}
