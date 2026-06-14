; =========================================================
; Game Engine Function: _ZN22KeyboardControlsScreen24KeyboardMappingSelection6RenderEP12SelectScreen9CVector2DS3_f
; Address            : 0x2A3734 - 0x2A395A
; =========================================================

2A3734:  PUSH            {R4-R7,LR}
2A3736:  ADD             R7, SP, #0xC
2A3738:  PUSH.W          {R8-R11}
2A373C:  SUB             SP, SP, #4
2A373E:  VPUSH           {D8-D9}
2A3742:  SUB             SP, SP, #0x40
2A3744:  MOV             R5, R0
2A3746:  MOVS            R0, #0xFF
2A3748:  STR             R0, [SP,#0x70+var_70]; unsigned __int8
2A374A:  ADD             R0, SP, #0x70+var_38; this
2A374C:  MOV             R6, R3
2A374E:  MOV             R4, R1
2A3750:  MOVS            R1, #0xFF; unsigned __int8
2A3752:  MOVS            R2, #0xFF; unsigned __int8
2A3754:  MOVS            R3, #0xFF; unsigned __int8
2A3756:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2A375A:  VMOV.F32        S0, #0.5
2A375E:  VLDR            S2, [R7,#arg_4]
2A3762:  VMOV.F32        S4, #-8.0
2A3766:  VLDR            S18, [R7,#arg_8]
2A376A:  LDR             R0, =(byte_6E01A8 - 0x2A3770)
2A376C:  ADD             R0, PC; byte_6E01A8
2A376E:  LDRB            R0, [R0]
2A3770:  VMUL.F32        S0, S2, S0
2A3774:  VMOV            S2, R6
2A3778:  CMP             R0, #1
2A377A:  VADD.F32        S0, S0, S2
2A377E:  VADD.F32        S0, S0, S4
2A3782:  VSUB.F32        S16, S0, S18
2A3786:  BNE             loc_2A37D0
2A3788:  VCMPE.F32       S18, #0.0
2A378C:  VMRS            APSR_nzcv, FPSCR
2A3790:  BLE             loc_2A37A0
2A3792:  MOVS            R0, #0xFF
2A3794:  MOVS            R1, #0xFF
2A3796:  STR             R0, [SP,#0x70+var_70]
2A3798:  ADD             R0, SP, #0x70+var_40
2A379A:  MOVS            R2, #0xFF
2A379C:  MOVS            R3, #0xFF
2A379E:  B               loc_2A37AC
2A37A0:  MOVS            R0, #0x80
2A37A2:  MOVS            R1, #0x80; unsigned __int8
2A37A4:  STR             R0, [SP,#0x70+var_70]; unsigned __int8
2A37A6:  ADD             R0, SP, #0x70+var_40; this
2A37A8:  MOVS            R2, #0x80; unsigned __int8
2A37AA:  MOVS            R3, #0x80; unsigned __int8
2A37AC:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2A37B0:  LDRB.W          R0, [SP,#0x70+var_40]
2A37B4:  LDRB.W          R1, [SP,#0x70+var_3F]
2A37B8:  LDRB.W          R2, [SP,#0x70+var_3E]
2A37BC:  LDRB.W          R3, [SP,#0x70+var_3D]
2A37C0:  STRB.W          R0, [SP,#0x70+var_38]
2A37C4:  STRB.W          R1, [SP,#0x70+var_38+1]
2A37C8:  STRB.W          R2, [SP,#0x70+var_38+2]
2A37CC:  STRB.W          R3, [SP,#0x70+var_38+3]
2A37D0:  LDR             R1, [R5,#4]; char *
2A37D2:  MOV             R0, R4; this
2A37D4:  BLX             j__ZN22KeyboardControlsScreen19IsConflictedControlEPKc; KeyboardControlsScreen::IsConflictedControl(char const*)
2A37D8:  MOV             R6, R0
2A37DA:  LDR             R0, [R5]
2A37DC:  LDR             R1, [R0,#0x14]
2A37DE:  MOV             R0, R5
2A37E0:  BLX             R1
2A37E2:  VMOV.F32        S0, #16.0
2A37E6:  MOV             R2, R0
2A37E8:  VADD.F32        S2, S18, S18
2A37EC:  LDR             R0, [SP,#0x70+var_38]
2A37EE:  VMOV            R9, S16
2A37F2:  CMP             R6, #1
2A37F4:  VADD.F32        S0, S2, S0
2A37F8:  VMOV            R8, S0
2A37FC:  BNE             loc_2A38DC
2A37FE:  MOVS            R1, #0
2A3800:  ADD.W           R10, SP, #0x70+var_34
2A3804:  MOVW            R12, #0
2A3808:  STR             R0, [SP,#0x70+var_34]
2A380A:  MOV.W           R11, #0
2A380E:  MOVT            R1, #0x420C
2A3812:  MOVS            R3, #1
2A3814:  MOVS            R6, #2
2A3816:  ADD             R0, SP, #0x70+var_40
2A3818:  STR.W           R11, [SP,#0x70+var_50]
2A381C:  STRD.W          R6, R10, [SP,#0x70+var_70]
2A3820:  MOVT            R12, #0x4396
2A3824:  STRD.W          R3, R1, [SP,#0x70+var_68]
2A3828:  MOV             R1, R4
2A382A:  MOVS            R3, #0
2A382C:  STRD.W          R9, R12, [SP,#0x70+var_60]
2A3830:  STRD.W          R8, R11, [SP,#0x70+var_58]
2A3834:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
2A3838:  LDR             R1, [R5,#4]; char *
2A383A:  MOV             R0, R4; this
2A383C:  BLX             j__ZN22KeyboardControlsScreen17GetMappingFromTagEPKc; KeyboardControlsScreen::GetMappingFromTag(char const*)
2A3840:  MOV             R5, R0
2A3842:  ADD             R0, SP, #0x70+var_44; this
2A3844:  MOVS            R6, #0xFF
2A3846:  MOVS            R1, #0xFF; unsigned __int8
2A3848:  MOVS            R2, #0; unsigned __int8
2A384A:  MOVS            R3, #0; unsigned __int8
2A384C:  STR             R6, [SP,#0x70+var_70]; unsigned __int8
2A384E:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2A3852:  LDR             R0, [SP,#0x70+var_44]
2A3854:  MOV             R1, R4
2A3856:  STR             R0, [SP,#0x70+var_34]
2A3858:  MOVS            R0, #0x438C0000
2A385E:  MOV             R2, R5
2A3860:  STR             R0, [SP,#0x70+var_5C]
2A3862:  MOV             R0, #0x43AC8000
2A386A:  STR.W           R10, [SP,#0x70+var_6C]
2A386E:  STR.W           R11, [SP,#0x70+var_50]
2A3872:  MOVS            R3, #2
2A3874:  STRD.W          R8, R11, [SP,#0x70+var_58]
2A3878:  MOV.W           R10, #2
2A387C:  STRD.W          R0, R9, [SP,#0x70+var_64]
2A3880:  MOVS            R0, #1
2A3882:  STR             R0, [SP,#0x70+var_68]
2A3884:  MOVS            R0, #2
2A3886:  STR             R0, [SP,#0x70+var_70]
2A3888:  ADD             R0, SP, #0x70+var_40
2A388A:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
2A388E:  ADD             R0, SP, #0x70+var_48; this
2A3890:  MOVS            R1, #0xFF; unsigned __int8
2A3892:  MOVS            R2, #0; unsigned __int8
2A3894:  MOVS            R3, #0; unsigned __int8
2A3896:  STR             R6, [SP,#0x70+var_70]; unsigned __int8
2A3898:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2A389C:  LDR             R0, =(TheText_ptr - 0x2A38A4)
2A389E:  ADR             R1, aMobX99; "MOB_X99"
2A38A0:  ADD             R0, PC; TheText_ptr
2A38A2:  LDR             R0, [R0]; TheText ; this
2A38A4:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
2A38A8:  MOV             R2, R0
2A38AA:  LDR             R0, [SP,#0x70+var_48]
2A38AC:  MOVS            R1, #0
2A38AE:  STR             R0, [SP,#0x70+var_34]
2A38B0:  MOVS            R0, #0
2A38B2:  ADD             R3, SP, #0x70+var_34
2A38B4:  STR.W           R11, [SP,#0x70+var_50]
2A38B8:  MOVT            R0, #0x4120
2A38BC:  STR.W           R10, [SP,#0x70+var_70]
2A38C0:  MOVT            R1, #0x41A0
2A38C4:  STR             R3, [SP,#0x70+var_6C]
2A38C6:  MOVS            R3, #1
2A38C8:  STRD.W          R3, R1, [SP,#0x70+var_68]
2A38CC:  MOV             R1, R4
2A38CE:  STRD.W          R9, R0, [SP,#0x70+var_60]
2A38D2:  ADD             R0, SP, #0x70+var_40
2A38D4:  STRD.W          R8, R11, [SP,#0x70+var_58]
2A38D8:  MOVS            R3, #0
2A38DA:  B               loc_2A3948
2A38DC:  MOVS            R1, #0
2A38DE:  STR             R0, [SP,#0x70+var_34]
2A38E0:  MOVS            R0, #0
2A38E2:  ADD.W           R11, SP, #0x70+var_34
2A38E6:  MOVS            R6, #0
2A38E8:  MOVT            R0, #0x4396
2A38EC:  MOVT            R1, #0x41A0
2A38F0:  MOVS            R3, #1
2A38F2:  MOV.W           R10, #2
2A38F6:  STR             R6, [SP,#0x70+var_50]
2A38F8:  STRD.W          R10, R11, [SP,#0x70+var_70]
2A38FC:  STRD.W          R3, R1, [SP,#0x70+var_68]
2A3900:  MOV             R1, R4
2A3902:  STRD.W          R9, R0, [SP,#0x70+var_60]
2A3906:  ADD             R0, SP, #0x70+var_40
2A3908:  MOVS            R3, #0
2A390A:  STRD.W          R8, R6, [SP,#0x70+var_58]
2A390E:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
2A3912:  LDR             R1, [R5,#4]; char *
2A3914:  MOV             R0, R4; this
2A3916:  BLX             j__ZN22KeyboardControlsScreen17GetMappingFromTagEPKc; KeyboardControlsScreen::GetMappingFromTag(char const*)
2A391A:  MOV             R2, R0
2A391C:  LDR             R0, [SP,#0x70+var_38]
2A391E:  MOVW            R1, #0x8000
2A3922:  STR             R0, [SP,#0x70+var_34]
2A3924:  MOVS            R0, #0
2A3926:  MOVT            R1, #0x43AC
2A392A:  MOVT            R0, #0x438C
2A392E:  MOVS            R3, #1
2A3930:  STR             R6, [SP,#0x70+var_50]
2A3932:  STRD.W          R10, R11, [SP,#0x70+var_70]
2A3936:  STRD.W          R3, R1, [SP,#0x70+var_68]
2A393A:  MOV             R1, R4
2A393C:  STRD.W          R9, R0, [SP,#0x70+var_60]
2A3940:  ADD             R0, SP, #0x70+var_40
2A3942:  MOVS            R3, #2
2A3944:  STRD.W          R8, R6, [SP,#0x70+var_58]
2A3948:  BLX             j__ZN10MenuScreen14DrawTextDirectEPt9TextAligni5CRGBAb9CVector2DS3_bPi; MenuScreen::DrawTextDirect(ushort *,TextAlign,int,CRGBA,bool,CVector2D,CVector2D,bool,int *)
2A394C:  ADD             SP, SP, #0x40 ; '@'
2A394E:  VPOP            {D8-D9}
2A3952:  ADD             SP, SP, #4
2A3954:  POP.W           {R8-R11}
2A3958:  POP             {R4-R7,PC}
