; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager29DeleteMatchingVehicleControlsE18e_ControllerActioni15eControllerType
; Address            : 0x3E9404 - 0x3E97D8
; =========================================================

3E9404:  PUSH            {R4-R7,LR}
3E9406:  ADD             R7, SP, #0xC
3E9408:  PUSH.W          {R8}
3E940C:  MOV             R5, R3
3E940E:  MOV             R6, R2
3E9410:  MOV             R8, R0
3E9412:  CMP             R5, #2
3E9414:  BCC             loc_3E9422
3E9416:  IT NE
3E9418:  CMPNE           R5, #3
3E941A:  BNE.W           loc_3E97D2
3E941E:  CBNZ            R6, loc_3E942A
3E9420:  B               loc_3E97D2
3E9422:  CMP.W           R6, #0x420
3E9426:  BEQ.W           loc_3E97D2
3E942A:  ADD.W           R4, R8, R5,LSL#3
3E942E:  MOVW            R0, #0x3B70
3E9432:  LDR             R1, [R4,R0]
3E9434:  CMP             R1, R6
3E9436:  BNE             loc_3E945A
3E9438:  CMP             R5, #3
3E943A:  BHI             loc_3E9452
3E943C:  LDR.W           R1, =(unk_616F5C - 0x3E9446)
3E9440:  ADD             R0, R4
3E9442:  ADD             R1, PC; unk_616F5C
3E9444:  LDR.W           R1, [R1,R5,LSL#2]
3E9448:  STR             R1, [R0]
3E944A:  MOVW            R0, #0x3B74
3E944E:  MOVS            R1, #0
3E9450:  STR             R1, [R4,R0]
3E9452:  MOV             R0, R8
3E9454:  MOVS            R1, #0x13
3E9456:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E945A:  MOVW            R0, #0x3B50
3E945E:  LDR             R1, [R4,R0]
3E9460:  CMP             R1, R6
3E9462:  BNE             loc_3E9484
3E9464:  CMP             R5, #3
3E9466:  BHI             loc_3E947C
3E9468:  LDR             R1, =(unk_616F5C - 0x3E9470)
3E946A:  ADD             R0, R4
3E946C:  ADD             R1, PC; unk_616F5C
3E946E:  LDR.W           R1, [R1,R5,LSL#2]
3E9472:  STR             R1, [R0]
3E9474:  MOVW            R0, #0x3B54
3E9478:  MOVS            R1, #0
3E947A:  STR             R1, [R4,R0]
3E947C:  MOV             R0, R8
3E947E:  MOVS            R1, #0x12
3E9480:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E9484:  MOVW            R0, #0x3B90
3E9488:  LDR             R1, [R4,R0]
3E948A:  CMP             R1, R6
3E948C:  BNE             loc_3E94AE
3E948E:  CMP             R5, #3
3E9490:  BHI             loc_3E94A6
3E9492:  LDR             R1, =(unk_616F5C - 0x3E949A)
3E9494:  ADD             R0, R4
3E9496:  ADD             R1, PC; unk_616F5C
3E9498:  LDR.W           R1, [R1,R5,LSL#2]
3E949C:  STR             R1, [R0]
3E949E:  MOVW            R0, #0x3B94
3E94A2:  MOVS            R1, #0
3E94A4:  STR             R1, [R4,R0]
3E94A6:  MOV             R0, R8
3E94A8:  MOVS            R1, #0x14
3E94AA:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E94AE:  MOVW            R0, #0x3BB0
3E94B2:  LDR             R1, [R4,R0]
3E94B4:  CMP             R1, R6
3E94B6:  BNE             loc_3E94D8
3E94B8:  CMP             R5, #3
3E94BA:  BHI             loc_3E94D0
3E94BC:  LDR             R1, =(unk_616F5C - 0x3E94C4)
3E94BE:  ADD             R0, R4
3E94C0:  ADD             R1, PC; unk_616F5C
3E94C2:  LDR.W           R1, [R1,R5,LSL#2]
3E94C6:  STR             R1, [R0]
3E94C8:  MOVW            R0, #0x3BB4
3E94CC:  MOVS            R1, #0
3E94CE:  STR             R1, [R4,R0]
3E94D0:  MOV             R0, R8
3E94D2:  MOVS            R1, #0x15
3E94D4:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E94D8:  MOVW            R0, #0x3BD0
3E94DC:  LDR             R1, [R4,R0]
3E94DE:  CMP             R1, R6
3E94E0:  BNE             loc_3E9502
3E94E2:  CMP             R5, #3
3E94E4:  BHI             loc_3E94FA
3E94E6:  LDR             R1, =(unk_616F5C - 0x3E94EE)
3E94E8:  ADD             R0, R4
3E94EA:  ADD             R1, PC; unk_616F5C
3E94EC:  LDR.W           R1, [R1,R5,LSL#2]
3E94F0:  STR             R1, [R0]
3E94F2:  MOVW            R0, #0x3BD4
3E94F6:  MOVS            R1, #0
3E94F8:  STR             R1, [R4,R0]
3E94FA:  MOV             R0, R8
3E94FC:  MOVS            R1, #0x16
3E94FE:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E9502:  MOVW            R0, #0x3BF0
3E9506:  LDR             R1, [R4,R0]
3E9508:  CMP             R1, R6
3E950A:  BNE             loc_3E952C
3E950C:  CMP             R5, #3
3E950E:  BHI             loc_3E9524
3E9510:  LDR             R1, =(unk_616F5C - 0x3E9518)
3E9512:  ADD             R0, R4
3E9514:  ADD             R1, PC; unk_616F5C
3E9516:  LDR.W           R1, [R1,R5,LSL#2]
3E951A:  STR             R1, [R0]
3E951C:  MOVW            R0, #0x3BF4
3E9520:  MOVS            R1, #0
3E9522:  STR             R1, [R4,R0]
3E9524:  MOV             R0, R8
3E9526:  MOVS            R1, #0x17
3E9528:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E952C:  MOVW            R0, #0x3C10
3E9530:  LDR             R1, [R4,R0]
3E9532:  CMP             R1, R6
3E9534:  BNE             loc_3E9556
3E9536:  CMP             R5, #3
3E9538:  BHI             loc_3E954E
3E953A:  LDR             R1, =(unk_616F5C - 0x3E9542)
3E953C:  ADD             R0, R4
3E953E:  ADD             R1, PC; unk_616F5C
3E9540:  LDR.W           R1, [R1,R5,LSL#2]
3E9544:  STR             R1, [R0]
3E9546:  MOVW            R0, #0x3C14
3E954A:  MOVS            R1, #0
3E954C:  STR             R1, [R4,R0]
3E954E:  MOV             R0, R8
3E9550:  MOVS            R1, #0x18
3E9552:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E9556:  MOVW            R0, #0x3C30
3E955A:  LDR             R1, [R4,R0]
3E955C:  CMP             R1, R6
3E955E:  BNE             loc_3E9580
3E9560:  CMP             R5, #3
3E9562:  BHI             loc_3E9578
3E9564:  LDR             R1, =(unk_616F5C - 0x3E956C)
3E9566:  ADD             R0, R4
3E9568:  ADD             R1, PC; unk_616F5C
3E956A:  LDR.W           R1, [R1,R5,LSL#2]
3E956E:  STR             R1, [R0]
3E9570:  MOVW            R0, #0x3C34
3E9574:  MOVS            R1, #0
3E9576:  STR             R1, [R4,R0]
3E9578:  MOV             R0, R8
3E957A:  MOVS            R1, #0x19
3E957C:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E9580:  MOVW            R0, #0x3C50
3E9584:  LDR             R1, [R4,R0]
3E9586:  CMP             R1, R6
3E9588:  BNE             loc_3E95AA
3E958A:  CMP             R5, #3
3E958C:  BHI             loc_3E95A2
3E958E:  LDR             R1, =(unk_616F5C - 0x3E9596)
3E9590:  ADD             R0, R4
3E9592:  ADD             R1, PC; unk_616F5C
3E9594:  LDR.W           R1, [R1,R5,LSL#2]
3E9598:  STR             R1, [R0]
3E959A:  MOVW            R0, #0x3C54
3E959E:  MOVS            R1, #0
3E95A0:  STR             R1, [R4,R0]
3E95A2:  MOV             R0, R8
3E95A4:  MOVS            R1, #0x1A
3E95A6:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E95AA:  MOVW            R0, #0x3C70
3E95AE:  LDR             R1, [R4,R0]
3E95B0:  CMP             R1, R6
3E95B2:  BNE             loc_3E95D4
3E95B4:  CMP             R5, #3
3E95B6:  BHI             loc_3E95CC
3E95B8:  LDR             R1, =(unk_616F5C - 0x3E95C0)
3E95BA:  ADD             R0, R4
3E95BC:  ADD             R1, PC; unk_616F5C
3E95BE:  LDR.W           R1, [R1,R5,LSL#2]
3E95C2:  STR             R1, [R0]
3E95C4:  MOVW            R0, #0x3C74
3E95C8:  MOVS            R1, #0
3E95CA:  STR             R1, [R4,R0]
3E95CC:  MOV             R0, R8
3E95CE:  MOVS            R1, #0x1B
3E95D0:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E95D4:  MOVW            R0, #0x3C90
3E95D8:  LDR             R1, [R4,R0]
3E95DA:  CMP             R1, R6
3E95DC:  BNE             loc_3E95FE
3E95DE:  CMP             R5, #3
3E95E0:  BHI             loc_3E95F6
3E95E2:  LDR             R1, =(unk_616F5C - 0x3E95EA)
3E95E4:  ADD             R0, R4
3E95E6:  ADD             R1, PC; unk_616F5C
3E95E8:  LDR.W           R1, [R1,R5,LSL#2]
3E95EC:  STR             R1, [R0]
3E95EE:  MOVW            R0, #0x3C94
3E95F2:  MOVS            R1, #0
3E95F4:  STR             R1, [R4,R0]
3E95F6:  MOV             R0, R8
3E95F8:  MOVS            R1, #0x1C
3E95FA:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E95FE:  MOVW            R0, #0x3CB0
3E9602:  LDR             R1, [R4,R0]
3E9604:  CMP             R1, R6
3E9606:  BNE             loc_3E9628
3E9608:  CMP             R5, #3
3E960A:  BHI             loc_3E9620
3E960C:  LDR             R1, =(unk_616F5C - 0x3E9614)
3E960E:  ADD             R0, R4
3E9610:  ADD             R1, PC; unk_616F5C
3E9612:  LDR.W           R1, [R1,R5,LSL#2]
3E9616:  STR             R1, [R0]
3E9618:  MOVW            R0, #0x3CB4
3E961C:  MOVS            R1, #0
3E961E:  STR             R1, [R4,R0]
3E9620:  MOV             R0, R8
3E9622:  MOVS            R1, #0x1D
3E9624:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E9628:  MOVW            R0, #0x3CD0
3E962C:  LDR             R1, [R4,R0]
3E962E:  CMP             R1, R6
3E9630:  BNE             loc_3E9652
3E9632:  CMP             R5, #3
3E9634:  BHI             loc_3E964A
3E9636:  LDR             R1, =(unk_616F5C - 0x3E963E)
3E9638:  ADD             R0, R4
3E963A:  ADD             R1, PC; unk_616F5C
3E963C:  LDR.W           R1, [R1,R5,LSL#2]
3E9640:  STR             R1, [R0]
3E9642:  MOVW            R0, #0x3CD4
3E9646:  MOVS            R1, #0
3E9648:  STR             R1, [R4,R0]
3E964A:  MOV             R0, R8
3E964C:  MOVS            R1, #0x1E
3E964E:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E9652:  MOVW            R0, #0x3CF0
3E9656:  LDR             R1, [R4,R0]
3E9658:  CMP             R1, R6
3E965A:  BNE             loc_3E967C
3E965C:  CMP             R5, #3
3E965E:  BHI             loc_3E9674
3E9660:  LDR             R1, =(unk_616F5C - 0x3E9668)
3E9662:  ADD             R0, R4
3E9664:  ADD             R1, PC; unk_616F5C
3E9666:  LDR.W           R1, [R1,R5,LSL#2]
3E966A:  STR             R1, [R0]
3E966C:  MOVW            R0, #0x3CF4
3E9670:  MOVS            R1, #0
3E9672:  STR             R1, [R4,R0]
3E9674:  MOV             R0, R8
3E9676:  MOVS            R1, #0x1F
3E9678:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E967C:  MOVW            R0, #0x3D50
3E9680:  LDR             R1, [R4,R0]
3E9682:  CMP             R1, R6
3E9684:  BNE             loc_3E96A6
3E9686:  CMP             R5, #3
3E9688:  BHI             loc_3E969E
3E968A:  LDR             R1, =(unk_616F5C - 0x3E9692)
3E968C:  ADD             R0, R4
3E968E:  ADD             R1, PC; unk_616F5C
3E9690:  LDR.W           R1, [R1,R5,LSL#2]
3E9694:  STR             R1, [R0]
3E9696:  MOVW            R0, #0x3D54
3E969A:  MOVS            R1, #0
3E969C:  STR             R1, [R4,R0]
3E969E:  MOV             R0, R8
3E96A0:  MOVS            R1, #0x22 ; '"'
3E96A2:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E96A6:  MOVW            R0, #0x3D70
3E96AA:  LDR             R1, [R4,R0]
3E96AC:  CMP             R1, R6
3E96AE:  BNE             loc_3E96D0
3E96B0:  CMP             R5, #3
3E96B2:  BHI             loc_3E96C8
3E96B4:  LDR             R1, =(unk_616F5C - 0x3E96BC)
3E96B6:  ADD             R0, R4
3E96B8:  ADD             R1, PC; unk_616F5C
3E96BA:  LDR.W           R1, [R1,R5,LSL#2]
3E96BE:  STR             R1, [R0]
3E96C0:  MOVW            R0, #0x3D74
3E96C4:  MOVS            R1, #0
3E96C6:  STR             R1, [R4,R0]
3E96C8:  MOV             R0, R8
3E96CA:  MOVS            R1, #0x23 ; '#'
3E96CC:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E96D0:  MOVW            R0, #0x3D90
3E96D4:  LDR             R1, [R4,R0]
3E96D6:  CMP             R1, R6
3E96D8:  BNE             loc_3E96FA
3E96DA:  CMP             R5, #3
3E96DC:  BHI             loc_3E96F2
3E96DE:  LDR             R1, =(unk_616F5C - 0x3E96E6)
3E96E0:  ADD             R0, R4
3E96E2:  ADD             R1, PC; unk_616F5C
3E96E4:  LDR.W           R1, [R1,R5,LSL#2]
3E96E8:  STR             R1, [R0]
3E96EA:  MOVW            R0, #0x3D94
3E96EE:  MOVS            R1, #0
3E96F0:  STR             R1, [R4,R0]
3E96F2:  MOV             R0, R8
3E96F4:  MOVS            R1, #0x24 ; '$'
3E96F6:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E96FA:  MOVW            R0, #0x3DB0
3E96FE:  LDR             R1, [R4,R0]
3E9700:  CMP             R1, R6
3E9702:  BNE             loc_3E9724
3E9704:  CMP             R5, #3
3E9706:  BHI             loc_3E971C
3E9708:  LDR             R1, =(unk_616F5C - 0x3E9710)
3E970A:  ADD             R0, R4
3E970C:  ADD             R1, PC; unk_616F5C
3E970E:  LDR.W           R1, [R1,R5,LSL#2]
3E9712:  STR             R1, [R0]
3E9714:  MOVW            R0, #0x3DB4
3E9718:  MOVS            R1, #0
3E971A:  STR             R1, [R4,R0]
3E971C:  MOV             R0, R8
3E971E:  MOVS            R1, #0x25 ; '%'
3E9720:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E9724:  MOVW            R0, #0x3DD0
3E9728:  LDR             R1, [R4,R0]
3E972A:  CMP             R1, R6
3E972C:  BNE             loc_3E974E
3E972E:  CMP             R5, #3
3E9730:  BHI             loc_3E9746
3E9732:  LDR             R1, =(unk_616F5C - 0x3E973A)
3E9734:  ADD             R0, R4
3E9736:  ADD             R1, PC; unk_616F5C
3E9738:  LDR.W           R1, [R1,R5,LSL#2]
3E973C:  STR             R1, [R0]
3E973E:  MOVW            R0, #0x3DD4
3E9742:  MOVS            R1, #0
3E9744:  STR             R1, [R4,R0]
3E9746:  MOV             R0, R8
3E9748:  MOVS            R1, #0x26 ; '&'
3E974A:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E974E:  MOVW            R0, #0x3DF0
3E9752:  LDR             R1, [R4,R0]
3E9754:  CMP             R1, R6
3E9756:  BNE             loc_3E9778
3E9758:  CMP             R5, #3
3E975A:  BHI             loc_3E9770
3E975C:  LDR             R1, =(unk_616F5C - 0x3E9764)
3E975E:  ADD             R0, R4
3E9760:  ADD             R1, PC; unk_616F5C
3E9762:  LDR.W           R1, [R1,R5,LSL#2]
3E9766:  STR             R1, [R0]
3E9768:  MOVW            R0, #0x3DF4
3E976C:  MOVS            R1, #0
3E976E:  STR             R1, [R4,R0]
3E9770:  MOV             R0, R8
3E9772:  MOVS            R1, #0x27 ; '''
3E9774:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E9778:  MOVW            R0, #0x3E10
3E977C:  LDR             R1, [R4,R0]
3E977E:  CMP             R1, R6
3E9780:  BNE             loc_3E97A2
3E9782:  CMP             R5, #3
3E9784:  BHI             loc_3E979A
3E9786:  LDR             R1, =(unk_616F5C - 0x3E978E)
3E9788:  ADD             R0, R4
3E978A:  ADD             R1, PC; unk_616F5C
3E978C:  LDR.W           R1, [R1,R5,LSL#2]
3E9790:  STR             R1, [R0]
3E9792:  MOVW            R0, #0x3E14
3E9796:  MOVS            R1, #0
3E9798:  STR             R1, [R4,R0]
3E979A:  MOV             R0, R8
3E979C:  MOVS            R1, #0x28 ; '('
3E979E:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E97A2:  MOVW            R0, #0x3E30
3E97A6:  LDR             R1, [R4,R0]
3E97A8:  CMP             R1, R6
3E97AA:  BNE             loc_3E97D2
3E97AC:  CMP             R5, #3
3E97AE:  BHI             loc_3E97C4
3E97B0:  LDR             R1, =(unk_616F5C - 0x3E97B8)
3E97B2:  ADD             R0, R4
3E97B4:  ADD             R1, PC; unk_616F5C
3E97B6:  LDR.W           R1, [R1,R5,LSL#2]
3E97BA:  STR             R1, [R0]
3E97BC:  MOVW            R0, #0x3E34
3E97C0:  MOVS            R1, #0
3E97C2:  STR             R1, [R4,R0]
3E97C4:  MOV             R0, R8
3E97C6:  MOVS            R1, #0x29 ; ')'
3E97C8:  POP.W           {R8}
3E97CC:  POP.W           {R4-R7,LR}
3E97D0:  B               _ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E97D2:  POP.W           {R8}
3E97D6:  POP             {R4-R7,PC}
