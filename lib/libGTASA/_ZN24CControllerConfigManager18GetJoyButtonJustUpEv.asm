; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager18GetJoyButtonJustUpEv
; Address            : 0x3E3800 - 0x3E3928
; =========================================================

3E3800:  LDR             R1, [R0,#8]
3E3802:  TST.W           R1, #1
3E3806:  BEQ             loc_3E3848
3E3808:  LSLS            R2, R1, #0x1E
3E380A:  BPL             loc_3E3856
3E380C:  LSLS            R2, R1, #0x1D
3E380E:  BPL             loc_3E3864
3E3810:  LSLS            R2, R1, #0x1C
3E3812:  BPL             loc_3E3872
3E3814:  LSLS            R2, R1, #0x1B
3E3816:  BPL             loc_3E3880
3E3818:  LSLS            R2, R1, #0x1A
3E381A:  BPL             loc_3E388E
3E381C:  LSLS            R2, R1, #0x19
3E381E:  BPL             loc_3E389C
3E3820:  LSLS            R2, R1, #0x18
3E3822:  BPL             loc_3E38AA
3E3824:  LSLS            R2, R1, #0x17
3E3826:  BPL             loc_3E38B8
3E3828:  LSLS            R2, R1, #0x16
3E382A:  BPL             loc_3E38C6
3E382C:  LSLS            R2, R1, #0x15
3E382E:  BPL             loc_3E38D4
3E3830:  LSLS            R2, R1, #0x14
3E3832:  BPL             loc_3E38E2
3E3834:  LSLS            R2, R1, #0x13
3E3836:  BPL             loc_3E38F0
3E3838:  LSLS            R2, R1, #0x12
3E383A:  BPL             loc_3E38FE
3E383C:  LSLS            R2, R1, #0x11
3E383E:  BPL             loc_3E390C
3E3840:  LSLS            R1, R1, #0x10
3E3842:  BPL             loc_3E391A
3E3844:  MOVS            R0, #0
3E3846:  BX              LR
3E3848:  LDRB            R2, [R0,#4]
3E384A:  LSLS            R2, R2, #0x1F
3E384C:  ITT NE
3E384E:  MOVNE           R0, #1
3E3850:  BXNE            LR
3E3852:  LSLS            R2, R1, #0x1E
3E3854:  BMI             loc_3E380C
3E3856:  LDRB            R2, [R0,#4]
3E3858:  LSLS            R2, R2, #0x1E
3E385A:  ITT MI
3E385C:  MOVMI           R0, #2
3E385E:  BXMI            LR
3E3860:  LSLS            R2, R1, #0x1D
3E3862:  BMI             loc_3E3810
3E3864:  LDRB            R2, [R0,#4]
3E3866:  LSLS            R2, R2, #0x1D
3E3868:  ITT MI
3E386A:  MOVMI           R0, #3
3E386C:  BXMI            LR
3E386E:  LSLS            R2, R1, #0x1C
3E3870:  BMI             loc_3E3814
3E3872:  LDRB            R2, [R0,#4]
3E3874:  LSLS            R2, R2, #0x1C
3E3876:  ITT MI
3E3878:  MOVMI           R0, #4
3E387A:  BXMI            LR
3E387C:  LSLS            R2, R1, #0x1B
3E387E:  BMI             loc_3E3818
3E3880:  LDRB            R2, [R0,#4]
3E3882:  LSLS            R2, R2, #0x1B
3E3884:  ITT MI
3E3886:  MOVMI           R0, #5
3E3888:  BXMI            LR
3E388A:  LSLS            R2, R1, #0x1A
3E388C:  BMI             loc_3E381C
3E388E:  LDRB            R2, [R0,#4]
3E3890:  LSLS            R2, R2, #0x1A
3E3892:  ITT MI
3E3894:  MOVMI           R0, #6
3E3896:  BXMI            LR
3E3898:  LSLS            R2, R1, #0x19
3E389A:  BMI             loc_3E3820
3E389C:  LDRB            R2, [R0,#4]
3E389E:  LSLS            R2, R2, #0x19
3E38A0:  ITT MI
3E38A2:  MOVMI           R0, #7
3E38A4:  BXMI            LR
3E38A6:  LSLS            R2, R1, #0x18
3E38A8:  BMI             loc_3E3824
3E38AA:  LDRB            R2, [R0,#4]
3E38AC:  LSLS            R2, R2, #0x18
3E38AE:  ITT MI
3E38B0:  MOVMI           R0, #8
3E38B2:  BXMI            LR
3E38B4:  LSLS            R2, R1, #0x17
3E38B6:  BMI             loc_3E3828
3E38B8:  LDRB            R2, [R0,#5]
3E38BA:  LSLS            R2, R2, #0x1F
3E38BC:  ITT NE
3E38BE:  MOVNE           R0, #9
3E38C0:  BXNE            LR
3E38C2:  LSLS            R2, R1, #0x16
3E38C4:  BMI             loc_3E382C
3E38C6:  LDRB            R2, [R0,#5]
3E38C8:  LSLS            R2, R2, #0x1E
3E38CA:  ITT MI
3E38CC:  MOVMI           R0, #0xA
3E38CE:  BXMI            LR
3E38D0:  LSLS            R2, R1, #0x15
3E38D2:  BMI             loc_3E3830
3E38D4:  LDRB            R2, [R0,#5]
3E38D6:  LSLS            R2, R2, #0x1D
3E38D8:  ITT MI
3E38DA:  MOVMI           R0, #0xB
3E38DC:  BXMI            LR
3E38DE:  LSLS            R2, R1, #0x14
3E38E0:  BMI             loc_3E3834
3E38E2:  LDRB            R2, [R0,#5]
3E38E4:  LSLS            R2, R2, #0x1C
3E38E6:  ITT MI
3E38E8:  MOVMI           R0, #0xC
3E38EA:  BXMI            LR
3E38EC:  LSLS            R2, R1, #0x13
3E38EE:  BMI             loc_3E3838
3E38F0:  LDRB            R2, [R0,#5]
3E38F2:  LSLS            R2, R2, #0x1B
3E38F4:  ITT MI
3E38F6:  MOVMI           R0, #0xD
3E38F8:  BXMI            LR
3E38FA:  LSLS            R2, R1, #0x12
3E38FC:  BMI             loc_3E383C
3E38FE:  LDRB            R2, [R0,#5]
3E3900:  LSLS            R2, R2, #0x1A
3E3902:  ITT MI
3E3904:  MOVMI           R0, #0xE
3E3906:  BXMI            LR
3E3908:  LSLS            R2, R1, #0x11
3E390A:  BMI             loc_3E3840
3E390C:  LDRB            R2, [R0,#5]
3E390E:  LSLS            R2, R2, #0x19
3E3910:  ITT MI
3E3912:  MOVMI           R0, #0xF
3E3914:  BXMI            LR
3E3916:  LSLS            R1, R1, #0x10
3E3918:  BMI             loc_3E3844
3E391A:  LDRB            R0, [R0,#5]
3E391C:  LSLS            R0, R0, #0x18
3E391E:  ITT MI
3E3920:  MOVMI           R0, #0x10
3E3922:  BXMI            LR
3E3924:  MOVS            R0, #0
3E3926:  BX              LR
