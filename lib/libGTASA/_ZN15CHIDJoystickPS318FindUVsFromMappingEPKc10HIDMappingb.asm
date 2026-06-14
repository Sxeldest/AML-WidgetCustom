; =========================================================
; Game Engine Function: _ZN15CHIDJoystickPS318FindUVsFromMappingEPKc10HIDMappingb
; Address            : 0x28F710 - 0x28F8A0
; =========================================================

28F710:  PUSH            {R4-R7,LR}
28F712:  ADD             R7, SP, #0xC
28F714:  PUSH.W          {R8-R10}
28F718:  MOV             R8, R0
28F71A:  LDR             R0, [R1,#8]
28F71C:  MOV             R9, R2
28F71E:  CMP             R0, #0
28F720:  BEQ.W           loc_28F81E
28F724:  LDR             R1, [R1,#0xC]
28F726:  MOVS            R2, #0
28F728:  MOV.W           R10, #0
28F72C:  MOVS            R5, #0
28F72E:  ADDS            R1, #4
28F730:  LDR             R6, [R1]
28F732:  CMP             R6, R3
28F734:  BNE.W           def_28F742; jumptable 0028F742 default case, cases 14-63
28F738:  LDR.W           R6, [R1,#-4]
28F73C:  CMP             R6, #0x45 ; 'E'; switch 70 cases
28F73E:  BHI.W           def_28F742; jumptable 0028F742 default case, cases 14-63
28F742:  TBB.W           [PC,R6]; switch jump
28F746:  DCB 0x23; jump table for switch statement
28F747:  DCB 0x23
28F748:  DCB 0x23
28F749:  DCB 0x23
28F74A:  DCB 0x2F
28F74B:  DCB 0x32
28F74C:  DCB 0x36
28F74D:  DCB 0x3A
28F74E:  DCB 0x3E
28F74F:  DCB 0x42
28F750:  DCB 0x45
28F751:  DCB 0x49
28F752:  DCB 0x4D
28F753:  DCB 0x51
28F754:  DCB 0x5C
28F755:  DCB 0x5C
28F756:  DCB 0x5C
28F757:  DCB 0x5C
28F758:  DCB 0x5C
28F759:  DCB 0x5C
28F75A:  DCB 0x5C
28F75B:  DCB 0x5C
28F75C:  DCB 0x5C
28F75D:  DCB 0x5C
28F75E:  DCB 0x5C
28F75F:  DCB 0x5C
28F760:  DCB 0x5C
28F761:  DCB 0x5C
28F762:  DCB 0x5C
28F763:  DCB 0x5C
28F764:  DCB 0x5C
28F765:  DCB 0x5C
28F766:  DCB 0x5C
28F767:  DCB 0x5C
28F768:  DCB 0x5C
28F769:  DCB 0x5C
28F76A:  DCB 0x5C
28F76B:  DCB 0x5C
28F76C:  DCB 0x5C
28F76D:  DCB 0x5C
28F76E:  DCB 0x5C
28F76F:  DCB 0x5C
28F770:  DCB 0x5C
28F771:  DCB 0x5C
28F772:  DCB 0x5C
28F773:  DCB 0x5C
28F774:  DCB 0x5C
28F775:  DCB 0x5C
28F776:  DCB 0x5C
28F777:  DCB 0x5C
28F778:  DCB 0x5C
28F779:  DCB 0x5C
28F77A:  DCB 0x5C
28F77B:  DCB 0x5C
28F77C:  DCB 0x5C
28F77D:  DCB 0x5C
28F77E:  DCB 0x5C
28F77F:  DCB 0x5C
28F780:  DCB 0x5C
28F781:  DCB 0x5C
28F782:  DCB 0x5C
28F783:  DCB 0x5C
28F784:  DCB 0x5C
28F785:  DCB 0x5C
28F786:  DCB 0x27
28F787:  DCB 0x27
28F788:  DCB 0x2B
28F789:  DCB 0x2B
28F78A:  DCB 0x55
28F78B:  DCB 0x59
28F78C:  MOV.W           R10, #1; jumptable 0028F742 cases 0-3
28F790:  MOV             R5, R6
28F792:  B               def_28F742; jumptable 0028F742 default case, cases 14-63
28F794:  MOV.W           R10, #3; jumptable 0028F742 cases 64,65
28F798:  MOVS            R5, #0
28F79A:  B               def_28F742; jumptable 0028F742 default case, cases 14-63
28F79C:  MOV.W           R10, #4; jumptable 0028F742 cases 66,67
28F7A0:  MOVS            R5, #0
28F7A2:  B               def_28F742; jumptable 0028F742 default case, cases 14-63
28F7A4:  MOV.W           R10, #0; jumptable 0028F742 case 4
28F7A8:  B               loc_28F7FC
28F7AA:  MOVS            R5, #0; jumptable 0028F742 case 5
28F7AC:  MOV.W           R10, #0
28F7B0:  B               def_28F742; jumptable 0028F742 default case, cases 14-63
28F7B2:  MOVS            R5, #2; jumptable 0028F742 case 6
28F7B4:  MOV.W           R10, #2
28F7B8:  B               def_28F742; jumptable 0028F742 default case, cases 14-63
28F7BA:  MOV.W           R10, #2; jumptable 0028F742 case 7
28F7BE:  MOVS            R5, #3
28F7C0:  B               def_28F742; jumptable 0028F742 default case, cases 14-63
28F7C2:  MOV.W           R10, #3; jumptable 0028F742 case 8
28F7C6:  MOVS            R5, #4
28F7C8:  B               def_28F742; jumptable 0028F742 default case, cases 14-63
28F7CA:  MOV.W           R10, #3; jumptable 0028F742 case 9
28F7CE:  B               loc_28F7FC
28F7D0:  MOV.W           R10, #3; jumptable 0028F742 case 10
28F7D4:  MOVS            R5, #2
28F7D6:  B               def_28F742; jumptable 0028F742 default case, cases 14-63
28F7D8:  MOVS            R5, #3; jumptable 0028F742 case 11
28F7DA:  MOV.W           R10, #3
28F7DE:  B               def_28F742; jumptable 0028F742 default case, cases 14-63
28F7E0:  MOV.W           R10, #5; jumptable 0028F742 case 12
28F7E4:  MOVS            R5, #0
28F7E6:  B               def_28F742; jumptable 0028F742 default case, cases 14-63
28F7E8:  MOV.W           R10, #6; jumptable 0028F742 case 13
28F7EC:  MOVS            R5, #0
28F7EE:  B               def_28F742; jumptable 0028F742 default case, cases 14-63
28F7F0:  MOV.W           R10, #2; jumptable 0028F742 case 68
28F7F4:  MOVS            R5, #0
28F7F6:  B               def_28F742; jumptable 0028F742 default case, cases 14-63
28F7F8:  MOV.W           R10, #2; jumptable 0028F742 case 69
28F7FC:  MOVS            R5, #1
28F7FE:  ADDS            R2, #1; jumptable 0028F742 default case, cases 14-63
28F800:  ADDS            R1, #0x14
28F802:  CMP             R2, R0
28F804:  BCC.W           loc_28F730
28F808:  CMP.W           R9, #0
28F80C:  BEQ             loc_28F82A
28F80E:  ADR             R1, aWidgetPedMoveL_2; "widget_ped_move_left"
28F810:  MOV             R0, R9; haystack
28F812:  BLX             strstr
28F816:  CBZ             R0, loc_28F82E
28F818:  MOVS            R6, #5
28F81A:  MOVS            R5, #2
28F81C:  B               loc_28F83C
28F81E:  MOVS            R5, #0
28F820:  MOV.W           R10, #0
28F824:  CMP.W           R9, #0
28F828:  BNE             loc_28F80E
28F82A:  MOV             R6, R10
28F82C:  B               loc_28F83C
28F82E:  ADR             R1, aWidgetPedMoveR_2; "widget_ped_move_right"
28F830:  MOV             R0, R9; haystack
28F832:  BLX             strstr
28F836:  CBZ             R0, loc_28F866
28F838:  MOVS            R6, #5
28F83A:  MOVS            R5, #3
28F83C:  VMOV.32         D16[0], R5
28F840:  ADDS            R0, R5, #1
28F842:  VMOV.I32        Q9, #0x3E000000
28F846:  VMOV.32         D17[0], R0
28F84A:  ADDS            R0, R6, #1
28F84C:  VMOV.32         D16[1], R0
28F850:  VMOV.32         D17[1], R6
28F854:  VCVT.F32.S32    Q8, Q8
28F858:  VMUL.F32        Q8, Q8, Q9
28F85C:  VST1.32         {D16-D17}, [R8]
28F860:  POP.W           {R8-R10}
28F864:  POP             {R4-R7,PC}
28F866:  ADR             R1, aWidgetVehicleS_5; "widget_vehicle_steer_left"
28F868:  MOV             R0, R9; haystack
28F86A:  BLX             strstr
28F86E:  CMP             R0, #0
28F870:  BNE             loc_28F818
28F872:  ADR             R1, aWidgetVehicleS_6; "widget_vehicle_steer_right"
28F874:  MOV             R0, R9; haystack
28F876:  BLX             strstr
28F87A:  CMP             R0, #0
28F87C:  BNE             loc_28F838
28F87E:  ADR             R1, aWidgetPedMoveU_2; "widget_ped_move_up"
28F880:  MOV             R0, R9; haystack
28F882:  BLX             strstr
28F886:  MOVS            R6, #5
28F888:  CBZ             R0, loc_28F88E
28F88A:  MOVS            R5, #4
28F88C:  B               loc_28F83C
28F88E:  ADR             R1, aWidgetPedMoveD_2; "widget_ped_move_down"
28F890:  MOV             R0, R9; haystack
28F892:  BLX             strstr
28F896:  CMP             R0, #0
28F898:  ITE EQ
28F89A:  MOVEQ           R6, R10
28F89C:  MOVNE           R5, #1
28F89E:  B               loc_28F83C
