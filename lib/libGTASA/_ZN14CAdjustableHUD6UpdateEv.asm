; =========================================================
; Game Engine Function: _ZN14CAdjustableHUD6UpdateEv
; Address            : 0x28262C - 0x2847FC
; =========================================================

28262C:  PUSH            {R4-R7,LR}
28262E:  ADD             R7, SP, #0xC
282630:  PUSH.W          {R8-R11}
282634:  SUB             SP, SP, #4
282636:  VPUSH           {D8-D15}
28263A:  SUB             SP, SP, #0x30
28263C:  MOV             R4, R0
28263E:  BLX             j__ZN14CAdjustableHUD13EnableButtonsEv; CAdjustableHUD::EnableButtons(void)
282642:  MOV             R0, R4; this
282644:  BLX             j__ZN14CAdjustableHUD11SetTexturesEv; CAdjustableHUD::SetTextures(void)
282648:  LDR.W           R0, =(lastDevice_ptr - 0x282650)
28264C:  ADD             R0, PC; lastDevice_ptr
28264E:  LDR             R0, [R0]; lastDevice
282650:  LDR             R0, [R0]; this
282652:  BLX             j__ZN15CTouchInterface11IsTouchDownEi; CTouchInterface::IsTouchDown(int)
282656:  CMP             R0, #1
282658:  BNE             loc_2826C8
28265A:  LDR.W           R0, =(lastDevice_ptr - 0x28266A)
28265E:  MOVS            R1, #0
282660:  STRB.W          R1, [R4,#0x495]
282664:  ADD             R2, SP, #0x90+var_78; int *
282666:  ADD             R0, PC; lastDevice_ptr
282668:  STR             R1, [SP,#0x90+var_74]
28266A:  STR             R1, [SP,#0x90+var_78]
28266C:  ADD             R1, SP, #0x90+var_74; int *
28266E:  LDR             R0, [R0]; lastDevice
282670:  MOVS            R3, #0; float *
282672:  LDR             R0, [R0]; int
282674:  BLX             j__Z25LIB_PointerGetCoordinatesiPiS_Pf; LIB_PointerGetCoordinates(int,int *,int *,float *)
282678:  VLDR            S0, [SP,#0x90+var_74]
28267C:  ADD.W           R1, R4, #0x4A8
282680:  VLDR            S2, [SP,#0x90+var_78]
282684:  VCVT.F32.S32    S0, S0
282688:  VCVT.F32.S32    S2, S2
28268C:  LDR             R0, [R4,#0x64]
28268E:  STR             R1, [SP,#0x90+var_7C]
282690:  ADDS            R0, #1
282692:  VSTR            S0, [R1]
282696:  ADDW            R1, R4, #0x4AC
28269A:  STR             R1, [SP,#0x90+var_80]
28269C:  VSTR            S2, [R1]
2826A0:  BNE.W           loc_283CC4
2826A4:  VMOV            R0, S0
2826A8:  ADD.W           R6, R4, #0x34 ; '4'
2826AC:  VMOV            R1, S2
2826B0:  LDM             R6, {R2,R3,R6}
2826B2:  LDR             R5, [R4,#0x40]
2826B4:  STRD.W          R6, R5, [SP,#0x90+var_90]
2826B8:  BLX             j__ZN7CWidget12IsInsideRectE9CVector2D5CRect; CWidget::IsInsideRect(CVector2D,CRect)
2826BC:  CMP             R0, #1
2826BE:  BNE.W           loc_2828B4
2826C2:  MOVS            R0, #2
2826C4:  B.W             loc_283CC2
2826C8:  LDR             R0, [R4,#0x64]
2826CA:  CMP             R0, #2
2826CC:  BNE             loc_2826EE
2826CE:  ADD.W           R6, R4, #0x34 ; '4'
2826D2:  LDM             R6, {R2,R3,R6}
2826D4:  LDR             R5, [R4,#0x40]
2826D6:  LDR.W           R0, [R4,#0x4A8]
2826DA:  LDR.W           R1, [R4,#0x4AC]
2826DE:  STRD.W          R6, R5, [SP,#0x90+var_90]
2826E2:  BLX             j__ZN7CWidget12IsInsideRectE9CVector2D5CRect; CWidget::IsInsideRect(CVector2D,CRect)
2826E6:  CMP             R0, #1
2826E8:  BEQ.W           loc_282848
2826EC:  LDR             R0, [R4,#0x64]
2826EE:  CMP             R0, #3
2826F0:  BNE             loc_28270C
2826F2:  ADD.W           R6, R4, #0x24 ; '$'
2826F6:  LDM             R6, {R2,R3,R6}
2826F8:  LDR             R5, [R4,#0x30]
2826FA:  LDR.W           R0, [R4,#0x4A8]
2826FE:  LDR.W           R1, [R4,#0x4AC]
282702:  STRD.W          R6, R5, [SP,#0x90+var_90]
282706:  BLX             j__ZN7CWidget12IsInsideRectE9CVector2D5CRect; CWidget::IsInsideRect(CVector2D,CRect)
28270A:  CBNZ            R0, loc_282718
28270C:  MOVS            R0, #0x41 ; 'A'
28270E:  BLX             j__ZN4CHID10IsReleasedE10HIDMapping; CHID::IsReleased(HIDMapping)
282712:  CMP             R0, #1
282714:  BNE.W           loc_282882
282718:  ADD.W           R0, R4, #0x370
28271C:  VLD1.32         {D16-D17}, [R0]
282720:  ADD.W           R0, R4, #0x380
282724:  VLD1.32         {D18-D19}, [R0]
282728:  ADD.W           R0, R4, #0x390
28272C:  VLD1.32         {D20-D21}, [R0]
282730:  ADD.W           R0, R4, #0x3A0
282734:  VLD1.32         {D22-D23}, [R0]
282738:  ADD.W           R0, R4, #0x3B0
28273C:  VLD1.32         {D24-D25}, [R0]
282740:  ADD.W           R0, R4, #0x3C0
282744:  VLD1.32         {D26-D27}, [R0]
282748:  ADD.W           R0, R4, #0x3D0
28274C:  VLD1.32         {D28-D29}, [R0]
282750:  ADD.W           R0, R4, #0x360
282754:  VLD1.32         {D30-D31}, [R0]
282758:  ADD.W           R0, R4, #0x70 ; 'p'
28275C:  VST1.32         {D30-D31}, [R0]
282760:  ADD.W           R0, R4, #0x98
282764:  VST1.32         {D16-D17}, [R0]
282768:  ADD.W           R0, R4, #0xC0
28276C:  VST1.32         {D18-D19}, [R0]
282770:  ADD.W           R0, R4, #0xE8
282774:  VST1.32         {D20-D21}, [R0]
282778:  ADD.W           R0, R4, #0x110
28277C:  VST1.32         {D22-D23}, [R0]
282780:  ADD.W           R0, R4, #0x138
282784:  VST1.32         {D24-D25}, [R0]
282788:  ADD.W           R0, R4, #0x160
28278C:  VST1.32         {D26-D27}, [R0]
282790:  ADD.W           R0, R4, #0x188
282794:  VST1.32         {D28-D29}, [R0]
282798:  ADD.W           R0, R4, #0x3E0
28279C:  VLD1.32         {D16-D17}, [R0]
2827A0:  ADD.W           R0, R4, #0x1B0
2827A4:  VST1.32         {D16-D17}, [R0]
2827A8:  ADD.W           R0, R4, #0x3F0
2827AC:  VLD1.32         {D16-D17}, [R0]
2827B0:  ADD.W           R0, R4, #0x1D8
2827B4:  VST1.32         {D16-D17}, [R0]
2827B8:  ADD.W           R0, R4, #0x400
2827BC:  VLD1.32         {D16-D17}, [R0]
2827C0:  ADD.W           R0, R4, #0x200
2827C4:  VST1.32         {D16-D17}, [R0]
2827C8:  ADD.W           R0, R4, #0x410
2827CC:  VLD1.32         {D16-D17}, [R0]
2827D0:  ADD.W           R0, R4, #0x228
2827D4:  VST1.32         {D16-D17}, [R0]
2827D8:  ADD.W           R0, R4, #0x420
2827DC:  VLD1.32         {D16-D17}, [R0]
2827E0:  ADD.W           R0, R4, #0x250
2827E4:  VST1.32         {D16-D17}, [R0]
2827E8:  ADD.W           R0, R4, #0x430
2827EC:  VLD1.32         {D16-D17}, [R0]
2827F0:  ADD.W           R0, R4, #0x278
2827F4:  VST1.32         {D16-D17}, [R0]
2827F8:  ADD.W           R0, R4, #0x440
2827FC:  VLD1.32         {D16-D17}, [R0]
282800:  ADD.W           R0, R4, #0x2A0
282804:  VST1.32         {D16-D17}, [R0]
282808:  ADD.W           R0, R4, #0x450
28280C:  VLD1.32         {D16-D17}, [R0]
282810:  ADD.W           R0, R4, #0x2C8
282814:  VST1.32         {D16-D17}, [R0]
282818:  ADD.W           R0, R4, #0x460
28281C:  VLD1.32         {D16-D17}, [R0]
282820:  ADD.W           R0, R4, #0x2F0
282824:  VST1.32         {D16-D17}, [R0]
282828:  ADD.W           R0, R4, #0x470
28282C:  VLD1.32         {D16-D17}, [R0]
282830:  ADD.W           R0, R4, #0x318
282834:  VST1.32         {D16-D17}, [R0]
282838:  ADD.W           R0, R4, #0x480
28283C:  VLD1.32         {D16-D17}, [R0]
282840:  ADD.W           R0, R4, #0x340
282844:  VST1.32         {D16-D17}, [R0]
282848:  MOVS            R0, #1
28284A:  STRB.W          R0, [R4,#0x496]
28284E:  LDR.W           R0, [R4,#0x490]
282852:  MOV.W           R2, #0xFFFFFFFF
282856:  STR             R2, [R4,#0x64]
282858:  ADDS            R1, R0, #1
28285A:  BEQ.W           loc_2844B0
28285E:  LDRB.W          R1, [R4,#0x494]
282862:  CMP             R1, #0
282864:  BNE.W           loc_2844B0
282868:  LDR.W           R1, =(byte_6DFE50 - 0x282870)
28286C:  ADD             R1, PC; byte_6DFE50
28286E:  LDRB            R1, [R1]
282870:  CMP             R1, #1
282872:  BNE             loc_2828D8
282874:  LDR.W           R0, =(byte_6DFE50 - 0x28287E)
282878:  MOVS            R1, #0
28287A:  ADD             R0, PC; byte_6DFE50
28287C:  STRB            R1, [R0]
28287E:  B.W             loc_2844B0
282882:  LDR             R0, [R4,#0x64]
282884:  CMP             R0, #4
282886:  BNE.W           loc_282AA0
28288A:  ADD.W           R6, R4, #0x44 ; 'D'
28288E:  LDM             R6, {R2,R3,R6}
282890:  LDR             R5, [R4,#0x50]
282892:  LDR.W           R0, [R4,#0x4A8]
282896:  LDR.W           R1, [R4,#0x4AC]
28289A:  STRD.W          R6, R5, [SP,#0x90+var_90]
28289E:  BLX             j__ZN7CWidget12IsInsideRectE9CVector2D5CRect; CWidget::IsInsideRect(CVector2D,CRect)
2828A2:  CMP             R0, #1
2828A4:  BNE.W           loc_282A9E
2828A8:  MOV             R0, R4; this
2828AA:  BLX             j__ZN14CAdjustableHUD15RestoreDefaultsEv; CAdjustableHUD::RestoreDefaults(void)
2828AE:  BLX             j__Z15PlaySelectSoundv; PlaySelectSound(void)
2828B2:  B               loc_28284E
2828B4:  ADD.W           R6, R4, #0x24 ; '$'
2828B8:  LDM             R6, {R2,R3,R6}
2828BA:  LDR             R5, [R4,#0x30]
2828BC:  LDR.W           R0, [R4,#0x4A8]
2828C0:  LDR.W           R1, [R4,#0x4AC]
2828C4:  STRD.W          R6, R5, [SP,#0x90+var_90]
2828C8:  BLX             j__ZN7CWidget12IsInsideRectE9CVector2D5CRect; CWidget::IsInsideRect(CVector2D,CRect)
2828CC:  CMP             R0, #1
2828CE:  BNE.W           loc_282A7A
2828D2:  MOVS            R0, #3
2828D4:  B.W             loc_283CC2
2828D8:  LDR.W           R1, =(RsGlobal_ptr - 0x2828E4)
2828DC:  ADD.W           R0, R0, R0,LSL#2
2828E0:  ADD             R1, PC; RsGlobal_ptr
2828E2:  ADD.W           R0, R4, R0,LSL#3
2828E6:  LDR             R1, [R1]; RsGlobal
2828E8:  VLDR            S22, [R0,#0x70]
2828EC:  VLDR            S20, [R0,#0x74]
2828F0:  VLDR            S0, [R1,#4]
2828F4:  VLDR            S26, [R0,#0x78]
2828F8:  VLDR            S24, [R0,#0x7C]
2828FC:  VCVT.F32.S32    S16, S0
282900:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
282904:  VMOV            S0, R0
282908:  VCVT.F32.U32    S18, S0
28290C:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
282910:  VMOV            S0, R0
282914:  VLDR            S28, =1.9
282918:  VMOV.F32        S17, #30.0
28291C:  VLDR            S21, =0.0
282920:  VCVT.F32.U32    S0, S0
282924:  VLDR            S30, =640.0
282928:  VDIV.F32        S0, S18, S0
28292C:  VCMPE.F32       S0, S28
282930:  VMRS            APSR_nzcv, FPSCR
282934:  VMOV.F32        S0, S21
282938:  VSUB.F32        S18, S26, S22
28293C:  IT GT
28293E:  VMOVGT.F32      S0, S17
282942:  VSUB.F32        S16, S16, S0
282946:  BLX             j__Z13OS_SystemFormv; OS_SystemForm(void)
28294A:  MOV             R5, R0
28294C:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
282950:  VMOV            S0, R0
282954:  VCVT.F32.U32    S19, S0
282958:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
28295C:  VMOV            S0, R0
282960:  VDIV.F32        S2, S16, S30
282964:  VCVT.F32.U32    S0, S0
282968:  VABS.F32        S4, S18
28296C:  VMOV.F32        S16, #0.5
282970:  VMOV.F32        S18, #1.0
282974:  VDIV.F32        S0, S19, S0
282978:  VDIV.F32        S2, S4, S2
28297C:  VCMPE.F32       S0, S28
282980:  VLDR            S4, =0.85
282984:  VMRS            APSR_nzcv, FPSCR
282988:  VMUL.F32        S19, S2, S16
28298C:  VMOV.F32        S0, S18
282990:  IT GT
282992:  VMOVGT.F32      S0, S4
282996:  CMP             R5, #1
282998:  BNE.W           loc_282AF8
28299C:  VLDR            S2, =-42.0
2829A0:  VLDR            S23, =999.9
2829A4:  VMUL.F32        S0, S0, S2
2829A8:  VADD.F32        S0, S19, S0
2829AC:  VABS.F32        S0, S0
2829B0:  VCMPE.F32       S0, S23
2829B4:  VMRS            APSR_nzcv, FPSCR
2829B8:  BGE.W           loc_2831E4
2829BC:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2829C0:  MOV             R8, R0
2829C2:  LDR.W           R0, =(RsGlobal_ptr - 0x2829CA)
2829C6:  ADD             R0, PC; RsGlobal_ptr
2829C8:  LDR             R5, [R0]; RsGlobal
2829CA:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2829CE:  MOV             R9, R0
2829D0:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2829D4:  MOV             R10, R0
2829D6:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2829DA:  VLDR            S0, [R5,#4]
2829DE:  MOV             R6, R0
2829E0:  VCVT.F32.S32    S21, S0
2829E4:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2829E8:  VMOV            S0, R0
2829EC:  VCVT.F32.U32    S23, S0
2829F0:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2829F4:  VMOV            S0, R0
2829F8:  VLDR            S2, =0.0
2829FC:  VMOV            S4, R9
282A00:  ADR.W           R0, unk_283188
282A04:  VCVT.F32.U32    S0, S0
282A08:  VMOV            S6, R10
282A0C:  VMOV            S8, R6
282A10:  VDIV.F32        S0, S23, S0
282A14:  VCMPE.F32       S0, S28
282A18:  VMRS            APSR_nzcv, FPSCR
282A1C:  VMOV            S0, R8
282A20:  IT GT
282A22:  VMOVGT.F32      S2, S17
282A26:  VCVT.F32.U32    S0, S0
282A2A:  VCVT.F32.U32    S4, S4
282A2E:  VCVT.F32.U32    S6, S6
282A32:  VCVT.F32.U32    S8, S8
282A36:  VSUB.F32        S2, S21, S2
282A3A:  VDIV.F32        S0, S0, S4
282A3E:  VDIV.F32        S4, S6, S8
282A42:  VCMPE.F32       S0, S28
282A46:  VLDR            S8, =9.775
282A4A:  VMRS            APSR_nzcv, FPSCR
282A4E:  VCMPE.F32       S4, S28
282A52:  VDIV.F32        S2, S2, S30
282A56:  IT GT
282A58:  ADDGT           R0, #4
282A5A:  VMRS            APSR_nzcv, FPSCR
282A5E:  VMOV.F32        S6, #11.5
282A62:  VLDR            S0, [R0]
282A66:  VSUB.F32        S0, S19, S0
282A6A:  VABS.F32        S23, S0
282A6E:  IT GT
282A70:  VMOVGT.F32      S6, S8
282A74:  VMUL.F32        S21, S6, S2
282A78:  B               loc_2831E8
282A7A:  ADD.W           R6, R4, #0x44 ; 'D'
282A7E:  LDM             R6, {R2,R3,R6}
282A80:  LDR             R5, [R4,#0x50]
282A82:  LDR.W           R0, [R4,#0x4A8]
282A86:  LDR.W           R1, [R4,#0x4AC]
282A8A:  STRD.W          R6, R5, [SP,#0x90+var_90]
282A8E:  BLX             j__ZN7CWidget12IsInsideRectE9CVector2D5CRect; CWidget::IsInsideRect(CVector2D,CRect)
282A92:  CMP             R0, #1
282A94:  BNE.W           loc_283114
282A98:  MOVS            R0, #4
282A9A:  B.W             loc_283CC2
282A9E:  LDR             R0, [R4,#0x64]
282AA0:  CMP             R0, #0
282AA2:  BNE.W           loc_283138
282AA6:  ADDS            R6, R4, #4
282AA8:  LDM             R6, {R2,R3,R6}
282AAA:  LDR             R5, [R4,#0x10]
282AAC:  LDR.W           R0, [R4,#0x4A8]
282AB0:  LDR.W           R1, [R4,#0x4AC]
282AB4:  STRD.W          R6, R5, [SP,#0x90+var_90]
282AB8:  BLX             j__ZN7CWidget12IsInsideRectE9CVector2D5CRect; CWidget::IsInsideRect(CVector2D,CRect)
282ABC:  CMP             R0, #0
282ABE:  BEQ.W           loc_283136
282AC2:  LDR             R0, [R4]
282AC4:  CMP             R0, #1
282AC6:  BEQ.W           loc_28284E
282ACA:  BLX             j__Z12PlayNavSoundv; PlayNavSound(void)
282ACE:  MOVS            R0, #1
282AD0:  B               loc_28316A
282AD2:  ALIGN 4
282AD4:  DCFS 1.9
282AD8:  DCFS 0.0
282ADC:  DCFS 640.0
282AE0:  DCFS 0.85
282AE4:  DCFS -42.0
282AE8:  DCFS 999.9
282AEC:  DCFS 9.775
282AF0:  DCFS -36.0
282AF4:  DCFS 24.65
282AF8:  VLDR            S2, =-36.0
282AFC:  VLDR            S23, =999.9
282B00:  VMUL.F32        S0, S0, S2
282B04:  VADD.F32        S0, S19, S0
282B08:  VABS.F32        S0, S0
282B0C:  VCMPE.F32       S0, S23
282B10:  VMRS            APSR_nzcv, FPSCR
282B14:  BGE             loc_282BD2
282B16:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
282B1A:  MOV             R8, R0
282B1C:  LDR.W           R0, =(RsGlobal_ptr - 0x282B24)
282B20:  ADD             R0, PC; RsGlobal_ptr
282B22:  LDR             R5, [R0]; RsGlobal
282B24:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
282B28:  MOV             R9, R0
282B2A:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
282B2E:  MOV             R10, R0
282B30:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
282B34:  VLDR            S0, [R5,#4]
282B38:  MOV             R6, R0
282B3A:  VCVT.F32.S32    S21, S0
282B3E:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
282B42:  VMOV            S0, R0
282B46:  VCVT.F32.U32    S23, S0
282B4A:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
282B4E:  VMOV            S0, R0
282B52:  VLDR            S2, =0.0
282B56:  VMOV            S4, R9
282B5A:  ADR.W           R0, unk_283194
282B5E:  VCVT.F32.U32    S0, S0
282B62:  VMOV            S6, R10
282B66:  VMOV            S8, R6
282B6A:  VDIV.F32        S0, S23, S0
282B6E:  VCMPE.F32       S0, S28
282B72:  VMRS            APSR_nzcv, FPSCR
282B76:  VMOV            S0, R8
282B7A:  IT GT
282B7C:  VMOVGT.F32      S2, S17
282B80:  VCVT.F32.U32    S0, S0
282B84:  VCVT.F32.U32    S4, S4
282B88:  VCVT.F32.U32    S6, S6
282B8C:  VCVT.F32.U32    S8, S8
282B90:  VSUB.F32        S2, S21, S2
282B94:  VDIV.F32        S0, S0, S4
282B98:  VDIV.F32        S4, S6, S8
282B9C:  VCMPE.F32       S0, S28
282BA0:  VLDR            S8, =9.775
282BA4:  VMRS            APSR_nzcv, FPSCR
282BA8:  VCMPE.F32       S4, S28
282BAC:  VDIV.F32        S2, S2, S30
282BB0:  IT GT
282BB2:  ADDGT           R0, #4
282BB4:  VMRS            APSR_nzcv, FPSCR
282BB8:  VMOV.F32        S6, #11.5
282BBC:  VLDR            S0, [R0]
282BC0:  VSUB.F32        S0, S19, S0
282BC4:  VABS.F32        S23, S0
282BC8:  IT GT
282BCA:  VMOVGT.F32      S6, S8
282BCE:  VMUL.F32        S21, S6, S2
282BD2:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
282BD6:  VMOV            S0, R0
282BDA:  VCVT.F32.U32    S25, S0
282BDE:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
282BE2:  VMOV            S0, R0
282BE6:  ADR.W           R5, loc_28319C
282BEA:  ADDS            R6, R5, #4
282BEC:  VCVT.F32.U32    S0, S0
282BF0:  MOV             R0, R5
282BF2:  VDIV.F32        S0, S25, S0
282BF6:  VCMPE.F32       S0, S28
282BFA:  VMRS            APSR_nzcv, FPSCR
282BFE:  IT GT
282C00:  MOVGT           R0, R6
282C02:  VLDR            S0, [R0]
282C06:  VSUB.F32        S0, S19, S0
282C0A:  VABS.F32        S0, S0
282C0E:  VCMPE.F32       S0, S23
282C12:  VMRS            APSR_nzcv, FPSCR
282C16:  BGE             loc_282CD8
282C18:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
282C1C:  STR             R0, [SP,#0x90+var_7C]
282C1E:  LDR.W           R0, =(RsGlobal_ptr - 0x282C26)
282C22:  ADD             R0, PC; RsGlobal_ptr
282C24:  LDR.W           R11, [R0]; RsGlobal
282C28:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
282C2C:  MOV             R9, R0
282C2E:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
282C32:  MOV             R10, R0
282C34:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
282C38:  VLDR            S0, [R11,#4]
282C3C:  MOV             R8, R6
282C3E:  MOV             R6, R0
282C40:  VCVT.F32.S32    S21, S0
282C44:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
282C48:  VMOV            S0, R0
282C4C:  VCVT.F32.U32    S23, S0
282C50:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
282C54:  VMOV            S0, R0
282C58:  VLDR            S2, =0.0
282C5C:  VMOV            S4, R9
282C60:  VCVT.F32.U32    S0, S0
282C64:  VMOV            S8, R6
282C68:  MOV             R6, R8
282C6A:  VMOV            S6, R10
282C6E:  VDIV.F32        S0, S23, S0
282C72:  VCMPE.F32       S0, S28
282C76:  VMRS            APSR_nzcv, FPSCR
282C7A:  IT GT
282C7C:  VMOVGT.F32      S2, S17
282C80:  LDR             R0, [SP,#0x90+var_7C]
282C82:  VSUB.F32        S2, S21, S2
282C86:  VMOV            S0, R0
282C8A:  MOV             R0, R5
282C8C:  VCVT.F32.U32    S0, S0
282C90:  VCVT.F32.U32    S4, S4
282C94:  VCVT.F32.U32    S6, S6
282C98:  VCVT.F32.U32    S8, S8
282C9C:  VDIV.F32        S2, S2, S30
282CA0:  VDIV.F32        S0, S0, S4
282CA4:  VCMPE.F32       S0, S28
282CA8:  VDIV.F32        S4, S6, S8
282CAC:  VMRS            APSR_nzcv, FPSCR
282CB0:  VCMPE.F32       S4, S28
282CB4:  IT GT
282CB6:  MOVGT           R0, R6
282CB8:  VMRS            APSR_nzcv, FPSCR
282CBC:  VLDR            S0, [R0]
282CC0:  ADR.W           R0, unk_283194
282CC4:  VSUB.F32        S0, S19, S0
282CC8:  VABS.F32        S23, S0
282CCC:  IT GT
282CCE:  ADDGT           R0, #4
282CD0:  VLDR            S4, [R0]
282CD4:  VMUL.F32        S21, S4, S2
282CD8:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
282CDC:  VMOV            S0, R0
282CE0:  VCVT.F32.U32    S25, S0
282CE4:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
282CE8:  VMOV            S0, R0
282CEC:  VLDR            S29, =24.65
282CF0:  VCVT.F32.U32    S0, S0
282CF4:  VDIV.F32        S0, S25, S0
282CF8:  VCMPE.F32       S0, S28
282CFC:  VMRS            APSR_nzcv, FPSCR
282D00:  VMOV.F32        S25, #29.0
282D04:  VMOV.F32        S0, S25
282D08:  IT GT
282D0A:  VMOVGT.F32      S0, S29
282D0E:  VSUB.F32        S0, S19, S0
282D12:  VABS.F32        S0, S0
282D16:  VCMPE.F32       S0, S23
282D1A:  VMRS            APSR_nzcv, FPSCR
282D1E:  BGE             loc_282DD8
282D20:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
282D24:  MOV             R8, R0
282D26:  LDR.W           R0, =(RsGlobal_ptr - 0x282D30)
282D2A:  STR             R6, [SP,#0x90+var_7C]
282D2C:  ADD             R0, PC; RsGlobal_ptr
282D2E:  LDR             R6, [R0]; RsGlobal
282D30:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
282D34:  MOV             R9, R0
282D36:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
282D3A:  MOV             R10, R0
282D3C:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
282D40:  VLDR            S0, [R6,#4]
282D44:  MOV             R11, R0
282D46:  VCVT.F32.S32    S21, S0
282D4A:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
282D4E:  VMOV            S0, R0
282D52:  VCVT.F32.U32    S23, S0
282D56:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
282D5A:  VMOV            S0, R0
282D5E:  VLDR            S2, =0.0
282D62:  VMOV            S4, R9
282D66:  VCVT.F32.U32    S0, S0
282D6A:  VMOV            S6, R10
282D6E:  VMOV            S8, R11
282D72:  VDIV.F32        S0, S23, S0
282D76:  VCMPE.F32       S0, S28
282D7A:  VMRS            APSR_nzcv, FPSCR
282D7E:  VMOV            S0, R8
282D82:  IT GT
282D84:  VMOVGT.F32      S2, S17
282D88:  VCVT.F32.U32    S0, S0
282D8C:  VCVT.F32.U32    S4, S4
282D90:  VCVT.F32.U32    S6, S6
282D94:  VCVT.F32.U32    S8, S8
282D98:  VSUB.F32        S2, S21, S2
282D9C:  VDIV.F32        S0, S0, S4
282DA0:  VCMPE.F32       S0, S28
282DA4:  VDIV.F32        S4, S6, S8
282DA8:  VMRS            APSR_nzcv, FPSCR
282DAC:  VMOV.F32        S0, S25
282DB0:  VCMPE.F32       S4, S28
282DB4:  VDIV.F32        S2, S2, S30
282DB8:  IT GT
282DBA:  VMOVGT.F32      S0, S29
282DBE:  LDR             R0, [SP,#0x90+var_7C]
282DC0:  VMRS            APSR_nzcv, FPSCR
282DC4:  VSUB.F32        S0, S19, S0
282DC8:  VABS.F32        S23, S0
282DCC:  IT GT
282DCE:  MOVGT           R5, R0
282DD0:  VLDR            S4, [R5]
282DD4:  VMUL.F32        S21, S4, S2
282DD8:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
282DDC:  VMOV            S0, R0
282DE0:  VCVT.F32.U32    S27, S0
282DE4:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
282DE8:  VMOV            S0, R0
282DEC:  VLDR            S31, =20.4
282DF0:  VCVT.F32.U32    S0, S0
282DF4:  VDIV.F32        S0, S27, S0
282DF8:  VCMPE.F32       S0, S28
282DFC:  VMRS            APSR_nzcv, FPSCR
282E00:  VMOV.F32        S27, #24.0
282E04:  VMOV.F32        S0, S27
282E08:  IT GT
282E0A:  VMOVGT.F32      S0, S31
282E0E:  VSUB.F32        S0, S19, S0
282E12:  VABS.F32        S0, S0
282E16:  VCMPE.F32       S0, S23
282E1A:  VMRS            APSR_nzcv, FPSCR
282E1E:  BGE             loc_282ED0
282E20:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
282E24:  MOV             R8, R0
282E26:  LDR             R0, =(RsGlobal_ptr - 0x282E2C)
282E28:  ADD             R0, PC; RsGlobal_ptr
282E2A:  LDR             R5, [R0]; RsGlobal
282E2C:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
282E30:  MOV             R9, R0
282E32:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
282E36:  MOV             R10, R0
282E38:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
282E3C:  VLDR            S0, [R5,#4]
282E40:  MOV             R6, R0
282E42:  VCVT.F32.S32    S21, S0
282E46:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
282E4A:  VMOV            S0, R0
282E4E:  VCVT.F32.U32    S23, S0
282E52:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
282E56:  VMOV            S0, R0
282E5A:  VLDR            S2, =0.0
282E5E:  VMOV            S4, R9
282E62:  VCVT.F32.U32    S0, S0
282E66:  VMOV            S6, R10
282E6A:  VMOV            S8, R6
282E6E:  VDIV.F32        S0, S23, S0
282E72:  VCMPE.F32       S0, S28
282E76:  VMRS            APSR_nzcv, FPSCR
282E7A:  VMOV            S0, R8
282E7E:  IT GT
282E80:  VMOVGT.F32      S2, S17
282E84:  VCVT.F32.U32    S0, S0
282E88:  VCVT.F32.U32    S4, S4
282E8C:  VCVT.F32.U32    S6, S6
282E90:  VCVT.F32.U32    S8, S8
282E94:  VSUB.F32        S2, S21, S2
282E98:  VDIV.F32        S0, S0, S4
282E9C:  VCMPE.F32       S0, S28
282EA0:  VDIV.F32        S4, S6, S8
282EA4:  VMRS            APSR_nzcv, FPSCR
282EA8:  VMOV.F32        S0, S27
282EAC:  VCMPE.F32       S4, S28
282EB0:  VDIV.F32        S2, S2, S30
282EB4:  IT GT
282EB6:  VMOVGT.F32      S0, S31
282EBA:  VMRS            APSR_nzcv, FPSCR
282EBE:  VSUB.F32        S0, S19, S0
282EC2:  VABS.F32        S23, S0
282EC6:  IT GT
282EC8:  VMOVGT.F32      S25, S29
282ECC:  VMUL.F32        S21, S25, S2
282ED0:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
282ED4:  VMOV            S0, R0
282ED8:  VCVT.F32.U32    S25, S0
282EDC:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
282EE0:  VMOV            S0, R0
282EE4:  VLDR            S29, =14.45
282EE8:  VCVT.F32.U32    S0, S0
282EEC:  VDIV.F32        S0, S25, S0
282EF0:  VCMPE.F32       S0, S28
282EF4:  VMRS            APSR_nzcv, FPSCR
282EF8:  VMOV.F32        S25, #17.0
282EFC:  VMOV.F32        S0, S25
282F00:  IT GT
282F02:  VMOVGT.F32      S0, S29
282F06:  VSUB.F32        S0, S19, S0
282F0A:  VABS.F32        S0, S0
282F0E:  VCMPE.F32       S0, S23
282F12:  VMRS            APSR_nzcv, FPSCR
282F16:  BGE             loc_282FC8
282F18:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
282F1C:  MOV             R8, R0
282F1E:  LDR             R0, =(RsGlobal_ptr - 0x282F24)
282F20:  ADD             R0, PC; RsGlobal_ptr
282F22:  LDR             R5, [R0]; RsGlobal
282F24:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
282F28:  MOV             R9, R0
282F2A:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
282F2E:  MOV             R10, R0
282F30:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
282F34:  VLDR            S0, [R5,#4]
282F38:  MOV             R6, R0
282F3A:  VCVT.F32.S32    S21, S0
282F3E:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
282F42:  VMOV            S0, R0
282F46:  VCVT.F32.U32    S23, S0
282F4A:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
282F4E:  VMOV            S0, R0
282F52:  VLDR            S2, =0.0
282F56:  VMOV            S4, R9
282F5A:  VCVT.F32.U32    S0, S0
282F5E:  VMOV            S6, R10
282F62:  VMOV            S8, R6
282F66:  VDIV.F32        S0, S23, S0
282F6A:  VCMPE.F32       S0, S28
282F6E:  VMRS            APSR_nzcv, FPSCR
282F72:  VMOV            S0, R8
282F76:  IT GT
282F78:  VMOVGT.F32      S2, S17
282F7C:  VCVT.F32.U32    S0, S0
282F80:  VCVT.F32.U32    S4, S4
282F84:  VCVT.F32.U32    S6, S6
282F88:  VCVT.F32.U32    S8, S8
282F8C:  VSUB.F32        S2, S21, S2
282F90:  VDIV.F32        S0, S0, S4
282F94:  VCMPE.F32       S0, S28
282F98:  VDIV.F32        S4, S6, S8
282F9C:  VMRS            APSR_nzcv, FPSCR
282FA0:  VMOV.F32        S0, S25
282FA4:  VCMPE.F32       S4, S28
282FA8:  VDIV.F32        S2, S2, S30
282FAC:  IT GT
282FAE:  VMOVGT.F32      S0, S29
282FB2:  VMRS            APSR_nzcv, FPSCR
282FB6:  VSUB.F32        S0, S19, S0
282FBA:  VABS.F32        S23, S0
282FBE:  IT GT
282FC0:  VMOVGT.F32      S27, S31
282FC4:  VMUL.F32        S21, S27, S2
282FC8:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
282FCC:  VMOV            S0, R0
282FD0:  VCVT.F32.U32    S27, S0
282FD4:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
282FD8:  VMOV            S0, R0
282FDC:  VLDR            S31, =11.9
282FE0:  VCVT.F32.U32    S0, S0
282FE4:  VDIV.F32        S0, S27, S0
282FE8:  VCMPE.F32       S0, S28
282FEC:  VMRS            APSR_nzcv, FPSCR
282FF0:  VMOV.F32        S27, #14.0
282FF4:  VMOV.F32        S0, S27
282FF8:  IT GT
282FFA:  VMOVGT.F32      S0, S31
282FFE:  VSUB.F32        S0, S19, S0
283002:  VABS.F32        S0, S0
283006:  VCMPE.F32       S0, S23
28300A:  VMRS            APSR_nzcv, FPSCR
28300E:  BGE             loc_2830C0
283010:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
283014:  MOV             R8, R0
283016:  LDR             R0, =(RsGlobal_ptr - 0x28301C)
283018:  ADD             R0, PC; RsGlobal_ptr
28301A:  LDR             R5, [R0]; RsGlobal
28301C:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
283020:  MOV             R9, R0
283022:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
283026:  MOV             R10, R0
283028:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
28302C:  VLDR            S0, [R5,#4]
283030:  MOV             R6, R0
283032:  VCVT.F32.S32    S21, S0
283036:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
28303A:  VMOV            S0, R0
28303E:  VCVT.F32.U32    S23, S0
283042:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
283046:  VMOV            S0, R0
28304A:  VLDR            S2, =0.0
28304E:  VMOV            S4, R9
283052:  VCVT.F32.U32    S0, S0
283056:  VMOV            S6, R10
28305A:  VMOV            S8, R6
28305E:  VDIV.F32        S0, S23, S0
283062:  VCMPE.F32       S0, S28
283066:  VMRS            APSR_nzcv, FPSCR
28306A:  VMOV            S0, R8
28306E:  IT GT
283070:  VMOVGT.F32      S2, S17
283074:  VCVT.F32.U32    S0, S0
283078:  VCVT.F32.U32    S4, S4
28307C:  VCVT.F32.U32    S6, S6
283080:  VCVT.F32.U32    S8, S8
283084:  VSUB.F32        S2, S21, S2
283088:  VDIV.F32        S0, S0, S4
28308C:  VCMPE.F32       S0, S28
283090:  VDIV.F32        S4, S6, S8
283094:  VMRS            APSR_nzcv, FPSCR
283098:  VMOV.F32        S0, S27
28309C:  VCMPE.F32       S4, S28
2830A0:  VDIV.F32        S2, S2, S30
2830A4:  IT GT
2830A6:  VMOVGT.F32      S0, S31
2830AA:  VMRS            APSR_nzcv, FPSCR
2830AE:  VSUB.F32        S0, S19, S0
2830B2:  VABS.F32        S23, S0
2830B6:  IT GT
2830B8:  VMOVGT.F32      S25, S29
2830BC:  VMUL.F32        S21, S25, S2
2830C0:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2830C4:  VMOV            S0, R0
2830C8:  VCVT.F32.U32    S25, S0
2830CC:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2830D0:  VMOV            S0, R0
2830D4:  VLDR            S4, =9.775
2830D8:  VMOV.F32        S2, #11.5
2830DC:  VCVT.F32.U32    S0, S0
2830E0:  VDIV.F32        S0, S25, S0
2830E4:  VCMPE.F32       S0, S28
2830E8:  VMRS            APSR_nzcv, FPSCR
2830EC:  IT GT
2830EE:  VMOVGT.F32      S2, S4
2830F2:  VSUB.F32        S0, S19, S2
2830F6:  VABS.F32        S0, S0
2830FA:  VCMPE.F32       S0, S23
2830FE:  VMRS            APSR_nzcv, FPSCR
283102:  BGE.W           loc_2838D0
283106:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
28310A:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
28310E:  LDR             R0, =(RsGlobal_ptr - 0x283114)
283110:  ADD             R0, PC; RsGlobal_ptr
283112:  B               loc_28385E
283114:  ADDS            R6, R4, #4
283116:  LDM             R6, {R2,R3,R6}
283118:  LDR             R5, [R4,#0x10]
28311A:  LDR.W           R0, [R4,#0x4A8]
28311E:  LDR.W           R1, [R4,#0x4AC]
283122:  STRD.W          R6, R5, [SP,#0x90+var_90]
283126:  BLX             j__ZN7CWidget12IsInsideRectE9CVector2D5CRect; CWidget::IsInsideRect(CVector2D,CRect)
28312A:  CMP             R0, #1
28312C:  BNE.W           loc_283CA4
283130:  MOVS            R0, #0
283132:  B.W             loc_283CC2
283136:  LDR             R0, [R4,#0x64]
283138:  CMP             R0, #1
28313A:  BNE.W           loc_28284E
28313E:  ADD.W           R6, R4, #0x14
283142:  LDM             R6, {R2,R3,R6}
283144:  LDR             R5, [R4,#0x20]
283146:  LDR.W           R0, [R4,#0x4A8]
28314A:  LDR.W           R1, [R4,#0x4AC]
28314E:  STRD.W          R6, R5, [SP,#0x90+var_90]
283152:  BLX             j__ZN7CWidget12IsInsideRectE9CVector2D5CRect; CWidget::IsInsideRect(CVector2D,CRect)
283156:  CMP             R0, #1
283158:  BNE.W           loc_28284E
28315C:  LDR             R0, [R4]
28315E:  CMP             R0, #2
283160:  BEQ.W           loc_28284E
283164:  BLX             j__Z12PlayNavSoundv; PlayNavSound(void)
283168:  MOVS            R0, #2
28316A:  STR             R0, [R4]
28316C:  B.W             loc_28284E
283170:  DCD lastDevice_ptr - 0x282650
283174:  DCD lastDevice_ptr - 0x28266A
283178:  DCD byte_6DFE50 - 0x282870
28317C:  DCD byte_6DFE50 - 0x28287E
283180:  DCD RsGlobal_ptr - 0x2828E4
283184:  DCD RsGlobal_ptr - 0x2829CA
283189:  DCB 0
28318A:  TST             R0, R5
28318C:  LDM             R4!, {R0,R2,R3,R6,R7}
28318E:  TST             R6, R1
283190:  DCD RsGlobal_ptr - 0x282B24
283195:  DCB 0
283196:  TST             R0, R2
283198:  LDM             R4!, {R0,R2,R3,R6,R7}
28319A:  RORS            R4, R6
28319C:  MOVS            R0, R0
28319E:  TST             R0, R0
2831A0:  LDR             R1, [SP,#0x90+arg_1D0]
2831A2:  RORS            R1, R3
2831A4:  DCD RsGlobal_ptr - 0x282C26
2831A8:  DCD RsGlobal_ptr - 0x282D30
2831AC:  DCFS 20.4
2831B0:  DCD RsGlobal_ptr - 0x282E2C
2831B4:  DCFS 14.45
2831B8:  DCD RsGlobal_ptr - 0x282F24
2831BC:  DCFS 0.0
2831C0:  DCFS 11.9
2831C4:  DCD RsGlobal_ptr - 0x28301C
2831C8:  DCFS 9.775
2831CC:  DCD RsGlobal_ptr - 0x283114
2831D0:  DCD RsGlobal_ptr - 0x283240
2831D4:  DCD RsGlobal_ptr - 0x283344
2831D8:  DCFS 24.65
2831DC:  DCD RsGlobal_ptr - 0x28344C
2831E0:  DCD RsGlobal_ptr - 0x28354A
2831E4:  VLDR            S21, =0.0
2831E8:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2831EC:  VMOV            S0, R0
2831F0:  VCVT.F32.U32    S25, S0
2831F4:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2831F8:  VMOV            S0, R0
2831FC:  ADR.W           R9, unk_283194
283200:  ADD.W           R6, R9, #4
283204:  VCVT.F32.U32    S0, S0
283208:  MOV             R0, R9
28320A:  VDIV.F32        S0, S25, S0
28320E:  VCMPE.F32       S0, S28
283212:  VMRS            APSR_nzcv, FPSCR
283216:  IT GT
283218:  MOVGT           R0, R6
28321A:  VLDR            S0, [R0]
28321E:  VSUB.F32        S0, S19, S0
283222:  VABS.F32        S0, S0
283226:  VCMPE.F32       S0, S23
28322A:  VMRS            APSR_nzcv, FPSCR
28322E:  BGE             loc_2832EE
283230:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
283234:  STR             R0, [SP,#0x90+var_7C]
283236:  MOV             R8, R6
283238:  LDR.W           R0, =(RsGlobal_ptr - 0x283240)
28323C:  ADD             R0, PC; RsGlobal_ptr
28323E:  LDR             R6, [R0]; RsGlobal
283240:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
283244:  MOV             R5, R0
283246:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
28324A:  MOV             R10, R0
28324C:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
283250:  VLDR            S0, [R6,#4]
283254:  MOV             R11, R0
283256:  MOV             R6, R8
283258:  VCVT.F32.S32    S21, S0
28325C:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
283260:  VMOV            S0, R0
283264:  VCVT.F32.U32    S23, S0
283268:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
28326C:  VMOV            S0, R0
283270:  VLDR            S2, =0.0
283274:  VMOV            S4, R5
283278:  VCVT.F32.U32    S0, S0
28327C:  VMOV            S6, R10
283280:  VMOV            S8, R11
283284:  VDIV.F32        S0, S23, S0
283288:  VCMPE.F32       S0, S28
28328C:  VMRS            APSR_nzcv, FPSCR
283290:  IT GT
283292:  VMOVGT.F32      S2, S17
283296:  LDR             R0, [SP,#0x90+var_7C]
283298:  VSUB.F32        S2, S21, S2
28329C:  VMOV            S0, R0
2832A0:  MOV             R0, R9
2832A2:  VCVT.F32.U32    S0, S0
2832A6:  VCVT.F32.U32    S4, S4
2832AA:  VCVT.F32.U32    S6, S6
2832AE:  VCVT.F32.U32    S8, S8
2832B2:  VDIV.F32        S2, S2, S30
2832B6:  VDIV.F32        S0, S0, S4
2832BA:  VCMPE.F32       S0, S28
2832BE:  VDIV.F32        S4, S6, S8
2832C2:  VMRS            APSR_nzcv, FPSCR
2832C6:  VCMPE.F32       S4, S28
2832CA:  IT GT
2832CC:  MOVGT           R0, R6
2832CE:  VMRS            APSR_nzcv, FPSCR
2832D2:  VLDR            S0, [R0]
2832D6:  ADR.W           R0, unk_283188
2832DA:  VSUB.F32        S0, S19, S0
2832DE:  VABS.F32        S23, S0
2832E2:  IT GT
2832E4:  ADDGT           R0, #4
2832E6:  VLDR            S4, [R0]
2832EA:  VMUL.F32        S21, S4, S2
2832EE:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2832F2:  VMOV            S0, R0
2832F6:  VCVT.F32.U32    S25, S0
2832FA:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2832FE:  VMOV            S0, R0
283302:  ADR.W           R11, loc_28319C
283306:  ADD.W           R5, R11, #4
28330A:  VCVT.F32.U32    S0, S0
28330E:  MOV             R0, R11
283310:  VDIV.F32        S0, S25, S0
283314:  VCMPE.F32       S0, S28
283318:  VMRS            APSR_nzcv, FPSCR
28331C:  IT GT
28331E:  MOVGT           R0, R5
283320:  VLDR            S0, [R0]
283324:  VSUB.F32        S0, S19, S0
283328:  VABS.F32        S0, S0
28332C:  VCMPE.F32       S0, S23
283330:  VMRS            APSR_nzcv, FPSCR
283334:  BGE             loc_2833F4
283336:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
28333A:  STR             R0, [SP,#0x90+var_80]
28333C:  LDR.W           R0, =(RsGlobal_ptr - 0x283344)
283340:  ADD             R0, PC; RsGlobal_ptr
283342:  LDR.W           R8, [R0]; RsGlobal
283346:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
28334A:  STR             R0, [SP,#0x90+var_84]
28334C:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
283350:  MOV             R10, R0
283352:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
283356:  VLDR            S0, [R8,#4]
28335A:  STR             R6, [SP,#0x90+var_7C]
28335C:  MOV             R6, R0
28335E:  VCVT.F32.S32    S21, S0
283362:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
283366:  VMOV            S0, R0
28336A:  VCVT.F32.U32    S23, S0
28336E:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
283372:  VMOV            S0, R0
283376:  VLDR            S2, =0.0
28337A:  VMOV            S6, R10
28337E:  VCVT.F32.U32    S0, S0
283382:  VMOV            S8, R6
283386:  VDIV.F32        S0, S23, S0
28338A:  VCMPE.F32       S0, S28
28338E:  VMRS            APSR_nzcv, FPSCR
283392:  IT GT
283394:  VMOVGT.F32      S2, S17
283398:  LDR             R0, [SP,#0x90+var_80]
28339A:  VSUB.F32        S2, S21, S2
28339E:  VMOV            S0, R0
2833A2:  VCVT.F32.U32    S0, S0
2833A6:  LDR             R0, [SP,#0x90+var_84]
2833A8:  VMOV            S4, R0
2833AC:  MOV             R0, R11
2833AE:  VDIV.F32        S2, S2, S30
2833B2:  VCVT.F32.U32    S4, S4
2833B6:  VCVT.F32.U32    S6, S6
2833BA:  VCVT.F32.U32    S8, S8
2833BE:  VDIV.F32        S0, S0, S4
2833C2:  VCMPE.F32       S0, S28
2833C6:  VDIV.F32        S4, S6, S8
2833CA:  VMRS            APSR_nzcv, FPSCR
2833CE:  VCMPE.F32       S4, S28
2833D2:  IT GT
2833D4:  MOVGT           R0, R5
2833D6:  VMRS            APSR_nzcv, FPSCR
2833DA:  VLDR            S0, [R0]
2833DE:  LDR             R0, [SP,#0x90+var_7C]
2833E0:  VSUB.F32        S0, S19, S0
2833E4:  VABS.F32        S23, S0
2833E8:  IT GT
2833EA:  MOVGT           R9, R0
2833EC:  VLDR            S4, [R9]
2833F0:  VMUL.F32        S21, S4, S2
2833F4:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2833F8:  VMOV            S0, R0
2833FC:  VCVT.F32.U32    S25, S0
283400:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
283404:  VMOV            S0, R0
283408:  VLDR            S29, =24.65
28340C:  VCVT.F32.U32    S0, S0
283410:  VDIV.F32        S0, S25, S0
283414:  VCMPE.F32       S0, S28
283418:  VMRS            APSR_nzcv, FPSCR
28341C:  VMOV.F32        S25, #29.0
283420:  VMOV.F32        S0, S25
283424:  IT GT
283426:  VMOVGT.F32      S0, S29
28342A:  VSUB.F32        S0, S19, S0
28342E:  VABS.F32        S0, S0
283432:  VCMPE.F32       S0, S23
283436:  VMRS            APSR_nzcv, FPSCR
28343A:  BGE             loc_2834F4
28343C:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
283440:  MOV             R8, R0
283442:  LDR.W           R0, =(RsGlobal_ptr - 0x28344C)
283446:  STR             R5, [SP,#0x90+var_7C]
283448:  ADD             R0, PC; RsGlobal_ptr
28344A:  LDR             R5, [R0]; RsGlobal
28344C:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
283450:  MOV             R9, R0
283452:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
283456:  MOV             R10, R0
283458:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
28345C:  VLDR            S0, [R5,#4]
283460:  MOV             R6, R0
283462:  VCVT.F32.S32    S21, S0
283466:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
28346A:  VMOV            S0, R0
28346E:  VCVT.F32.U32    S23, S0
283472:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
283476:  VMOV            S0, R0
28347A:  VLDR            S2, =0.0
28347E:  VMOV            S4, R9
283482:  VCVT.F32.U32    S0, S0
283486:  VMOV            S6, R10
28348A:  VMOV            S8, R6
28348E:  VDIV.F32        S0, S23, S0
283492:  VCMPE.F32       S0, S28
283496:  VMRS            APSR_nzcv, FPSCR
28349A:  VMOV            S0, R8
28349E:  IT GT
2834A0:  VMOVGT.F32      S2, S17
2834A4:  VCVT.F32.U32    S0, S0
2834A8:  VCVT.F32.U32    S4, S4
2834AC:  VCVT.F32.U32    S6, S6
2834B0:  VCVT.F32.U32    S8, S8
2834B4:  VSUB.F32        S2, S21, S2
2834B8:  VDIV.F32        S0, S0, S4
2834BC:  VCMPE.F32       S0, S28
2834C0:  VDIV.F32        S4, S6, S8
2834C4:  VMRS            APSR_nzcv, FPSCR
2834C8:  VMOV.F32        S0, S25
2834CC:  VCMPE.F32       S4, S28
2834D0:  VDIV.F32        S2, S2, S30
2834D4:  IT GT
2834D6:  VMOVGT.F32      S0, S29
2834DA:  LDR             R0, [SP,#0x90+var_7C]
2834DC:  VMRS            APSR_nzcv, FPSCR
2834E0:  VSUB.F32        S0, S19, S0
2834E4:  VABS.F32        S23, S0
2834E8:  IT GT
2834EA:  MOVGT           R11, R0
2834EC:  VLDR            S4, [R11]
2834F0:  VMUL.F32        S21, S4, S2
2834F4:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2834F8:  VMOV            S0, R0
2834FC:  VCVT.F32.U32    S27, S0
283500:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
283504:  VMOV            S0, R0
283508:  VLDR            S31, =20.4
28350C:  VCVT.F32.U32    S0, S0
283510:  VDIV.F32        S0, S27, S0
283514:  VCMPE.F32       S0, S28
283518:  VMRS            APSR_nzcv, FPSCR
28351C:  VMOV.F32        S27, #24.0
283520:  VMOV.F32        S0, S27
283524:  IT GT
283526:  VMOVGT.F32      S0, S31
28352A:  VSUB.F32        S0, S19, S0
28352E:  VABS.F32        S0, S0
283532:  VCMPE.F32       S0, S23
283536:  VMRS            APSR_nzcv, FPSCR
28353A:  BGE             loc_2835EE
28353C:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
283540:  MOV             R8, R0
283542:  LDR.W           R0, =(RsGlobal_ptr - 0x28354A)
283546:  ADD             R0, PC; RsGlobal_ptr
283548:  LDR             R5, [R0]; RsGlobal
28354A:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
28354E:  MOV             R9, R0
283550:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
283554:  MOV             R10, R0
283556:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
28355A:  VLDR            S0, [R5,#4]
28355E:  MOV             R6, R0
283560:  VCVT.F32.S32    S21, S0
283564:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
283568:  VMOV            S0, R0
28356C:  VCVT.F32.U32    S23, S0
283570:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
283574:  VMOV            S0, R0
283578:  VLDR            S2, =0.0
28357C:  VMOV            S4, R9
283580:  VCVT.F32.U32    S0, S0
283584:  VMOV            S6, R10
283588:  VMOV            S8, R6
28358C:  VDIV.F32        S0, S23, S0
283590:  VCMPE.F32       S0, S28
283594:  VMRS            APSR_nzcv, FPSCR
283598:  VMOV            S0, R8
28359C:  IT GT
28359E:  VMOVGT.F32      S2, S17
2835A2:  VCVT.F32.U32    S0, S0
2835A6:  VCVT.F32.U32    S4, S4
2835AA:  VCVT.F32.U32    S6, S6
2835AE:  VCVT.F32.U32    S8, S8
2835B2:  VSUB.F32        S2, S21, S2
2835B6:  VDIV.F32        S0, S0, S4
2835BA:  VCMPE.F32       S0, S28
2835BE:  VDIV.F32        S4, S6, S8
2835C2:  VMRS            APSR_nzcv, FPSCR
2835C6:  VMOV.F32        S0, S27
2835CA:  VCMPE.F32       S4, S28
2835CE:  VDIV.F32        S2, S2, S30
2835D2:  IT GT
2835D4:  VMOVGT.F32      S0, S31
2835D8:  VMRS            APSR_nzcv, FPSCR
2835DC:  VSUB.F32        S0, S19, S0
2835E0:  VABS.F32        S23, S0
2835E4:  IT GT
2835E6:  VMOVGT.F32      S25, S29
2835EA:  VMUL.F32        S21, S25, S2
2835EE:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2835F2:  VMOV            S0, R0
2835F6:  VCVT.F32.U32    S25, S0
2835FA:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2835FE:  VMOV            S0, R0
283602:  VLDR            S29, =14.45
283606:  VCVT.F32.U32    S0, S0
28360A:  VDIV.F32        S0, S25, S0
28360E:  VCMPE.F32       S0, S28
283612:  VMRS            APSR_nzcv, FPSCR
283616:  VMOV.F32        S25, #17.0
28361A:  VMOV.F32        S0, S25
28361E:  IT GT
283620:  VMOVGT.F32      S0, S29
283624:  VSUB.F32        S0, S19, S0
283628:  VABS.F32        S0, S0
28362C:  VCMPE.F32       S0, S23
283630:  VMRS            APSR_nzcv, FPSCR
283634:  BGE             loc_283712
283636:  B               loc_283660
283638:  DCFS 14.45
28363C:  DCD RsGlobal_ptr - 0x28366E
283640:  DCFS 0.0
283644:  DCFS 11.9
283648:  DCD RsGlobal_ptr - 0x283768
28364C:  DCFS 9.775
283650:  DCD RsGlobal_ptr - 0x283860
283654:  DCFS 448.0
283658:  DCFS -0.067
28365C:  DCFS 1000000.0
283660:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
283664:  MOV             R8, R0
283666:  LDR.W           R0, =(RsGlobal_ptr - 0x28366E)
28366A:  ADD             R0, PC; RsGlobal_ptr
28366C:  LDR             R5, [R0]; RsGlobal
28366E:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
283672:  MOV             R9, R0
283674:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
283678:  MOV             R10, R0
28367A:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
28367E:  VLDR            S0, [R5,#4]
283682:  MOV             R6, R0
283684:  VCVT.F32.S32    S21, S0
283688:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
28368C:  VMOV            S0, R0
283690:  VCVT.F32.U32    S23, S0
283694:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
283698:  VMOV            S0, R0
28369C:  VLDR            S2, =0.0
2836A0:  VMOV            S4, R9
2836A4:  VCVT.F32.U32    S0, S0
2836A8:  VMOV            S6, R10
2836AC:  VMOV            S8, R6
2836B0:  VDIV.F32        S0, S23, S0
2836B4:  VCMPE.F32       S0, S28
2836B8:  VMRS            APSR_nzcv, FPSCR
2836BC:  VMOV            S0, R8
2836C0:  IT GT
2836C2:  VMOVGT.F32      S2, S17
2836C6:  VCVT.F32.U32    S0, S0
2836CA:  VCVT.F32.U32    S4, S4
2836CE:  VCVT.F32.U32    S6, S6
2836D2:  VCVT.F32.U32    S8, S8
2836D6:  VSUB.F32        S2, S21, S2
2836DA:  VDIV.F32        S0, S0, S4
2836DE:  VCMPE.F32       S0, S28
2836E2:  VDIV.F32        S4, S6, S8
2836E6:  VMRS            APSR_nzcv, FPSCR
2836EA:  VMOV.F32        S0, S25
2836EE:  VCMPE.F32       S4, S28
2836F2:  VDIV.F32        S2, S2, S30
2836F6:  IT GT
2836F8:  VMOVGT.F32      S0, S29
2836FC:  VMRS            APSR_nzcv, FPSCR
283700:  VSUB.F32        S0, S19, S0
283704:  VABS.F32        S23, S0
283708:  IT GT
28370A:  VMOVGT.F32      S27, S31
28370E:  VMUL.F32        S21, S27, S2
283712:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
283716:  VMOV            S0, R0
28371A:  VCVT.F32.U32    S27, S0
28371E:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
283722:  VMOV            S0, R0
283726:  VLDR            S31, =11.9
28372A:  VCVT.F32.U32    S0, S0
28372E:  VDIV.F32        S0, S27, S0
283732:  VCMPE.F32       S0, S28
283736:  VMRS            APSR_nzcv, FPSCR
28373A:  VMOV.F32        S27, #14.0
28373E:  VMOV.F32        S0, S27
283742:  IT GT
283744:  VMOVGT.F32      S0, S31
283748:  VSUB.F32        S0, S19, S0
28374C:  VABS.F32        S0, S0
283750:  VCMPE.F32       S0, S23
283754:  VMRS            APSR_nzcv, FPSCR
283758:  BGE             loc_28380C
28375A:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
28375E:  MOV             R8, R0
283760:  LDR.W           R0, =(RsGlobal_ptr - 0x283768)
283764:  ADD             R0, PC; RsGlobal_ptr
283766:  LDR             R5, [R0]; RsGlobal
283768:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
28376C:  MOV             R9, R0
28376E:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
283772:  MOV             R10, R0
283774:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
283778:  VLDR            S0, [R5,#4]
28377C:  MOV             R6, R0
28377E:  VCVT.F32.S32    S21, S0
283782:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
283786:  VMOV            S0, R0
28378A:  VCVT.F32.U32    S23, S0
28378E:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
283792:  VMOV            S0, R0
283796:  VLDR            S2, =0.0
28379A:  VMOV            S4, R9
28379E:  VCVT.F32.U32    S0, S0
2837A2:  VMOV            S6, R10
2837A6:  VMOV            S8, R6
2837AA:  VDIV.F32        S0, S23, S0
2837AE:  VCMPE.F32       S0, S28
2837B2:  VMRS            APSR_nzcv, FPSCR
2837B6:  VMOV            S0, R8
2837BA:  IT GT
2837BC:  VMOVGT.F32      S2, S17
2837C0:  VCVT.F32.U32    S0, S0
2837C4:  VCVT.F32.U32    S4, S4
2837C8:  VCVT.F32.U32    S6, S6
2837CC:  VCVT.F32.U32    S8, S8
2837D0:  VSUB.F32        S2, S21, S2
2837D4:  VDIV.F32        S0, S0, S4
2837D8:  VCMPE.F32       S0, S28
2837DC:  VDIV.F32        S4, S6, S8
2837E0:  VMRS            APSR_nzcv, FPSCR
2837E4:  VMOV.F32        S0, S27
2837E8:  VCMPE.F32       S4, S28
2837EC:  VDIV.F32        S2, S2, S30
2837F0:  IT GT
2837F2:  VMOVGT.F32      S0, S31
2837F6:  VMRS            APSR_nzcv, FPSCR
2837FA:  VSUB.F32        S0, S19, S0
2837FE:  VABS.F32        S23, S0
283802:  IT GT
283804:  VMOVGT.F32      S25, S29
283808:  VMUL.F32        S21, S25, S2
28380C:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
283810:  VMOV            S0, R0
283814:  VCVT.F32.U32    S25, S0
283818:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
28381C:  VMOV            S0, R0
283820:  VLDR            S4, =9.775
283824:  VMOV.F32        S2, #11.5
283828:  VCVT.F32.U32    S0, S0
28382C:  VDIV.F32        S0, S25, S0
283830:  VCMPE.F32       S0, S28
283834:  VMRS            APSR_nzcv, FPSCR
283838:  IT GT
28383A:  VMOVGT.F32      S2, S4
28383E:  VSUB.F32        S0, S19, S2
283842:  VABS.F32        S0, S0
283846:  VCMPE.F32       S0, S23
28384A:  VMRS            APSR_nzcv, FPSCR
28384E:  BGE             loc_2838D0
283850:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
283854:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
283858:  LDR.W           R0, =(RsGlobal_ptr - 0x283860)
28385C:  ADD             R0, PC; RsGlobal_ptr
28385E:  LDR             R5, [R0]; RsGlobal
283860:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
283864:  MOV             R8, R0
283866:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
28386A:  VLDR            S0, [R5,#4]
28386E:  MOV             R6, R0
283870:  VCVT.F32.S32    S19, S0
283874:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
283878:  VMOV            S0, R0
28387C:  VCVT.F32.U32    S21, S0
283880:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
283884:  VMOV            S0, R0
283888:  VLDR            S2, =0.0
28388C:  VMOV            S4, R6
283890:  VCVT.F32.U32    S0, S0
283894:  VDIV.F32        S0, S21, S0
283898:  VCMPE.F32       S0, S28
28389C:  VMRS            APSR_nzcv, FPSCR
2838A0:  VMOV            S0, R8
2838A4:  IT GT
2838A6:  VMOVGT.F32      S2, S17
2838AA:  VCVT.F32.U32    S0, S0
2838AE:  VCVT.F32.U32    S4, S4
2838B2:  VSUB.F32        S2, S19, S2
2838B6:  VDIV.F32        S0, S0, S4
2838BA:  VCMPE.F32       S0, S28
2838BE:  VMRS            APSR_nzcv, FPSCR
2838C2:  VDIV.F32        S2, S2, S30
2838C6:  IT GT
2838C8:  VMOVGT.F32      S27, S31
2838CC:  VMUL.F32        S21, S27, S2
2838D0:  LDR.W           R0, =(RsGlobal_ptr - 0x2838DE)
2838D4:  MOVS            R5, #0
2838D6:  ADD             R1, SP, #0x90+var_64
2838D8:  ADD             R2, SP, #0x90+var_68
2838DA:  ADD             R0, PC; RsGlobal_ptr
2838DC:  ADD             R3, SP, #0x90+var_6C
2838DE:  LDR             R6, [R0]; RsGlobal
2838E0:  ADD             R0, SP, #0x90+var_70
2838E2:  VLDR            S0, [R6,#4]
2838E6:  VLDR            S2, [R6,#8]
2838EA:  VCVT.F32.S32    S30, S2
2838EE:  VCVT.F32.S32    S17, S0
2838F2:  STRD.W          R5, R5, [SP,#0x90+var_68]
2838F6:  STRD.W          R5, R5, [SP,#0x90+var_70]
2838FA:  STR             R0, [SP,#0x90+var_90]
2838FC:  MOVS            R0, #0x70 ; 'p'
2838FE:  BLX             j__ZN15CTouchInterface17GetWidgetPositionENS_17WidgetPositionIDsERfS1_S1_S1_; CTouchInterface::GetWidgetPosition(CTouchInterface::WidgetPositionIDs,float &,float &,float &,float &)
283902:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
283906:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
28390A:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
28390E:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
283912:  LDR.W           LR, [R6,#(dword_9FC904 - 0x9FC8FC)]
283916:  VADD.F32        S2, S22, S26
28391A:  VLDR            S28, =448.0
28391E:  VADD.F32        S4, S20, S24
283922:  VLDR            S20, =0.0
283926:  VSUB.F32        S3, S30, S21
28392A:  VMOV            S0, LR
28392E:  VLDR            S22, =-0.067
283932:  VMUL.F32        S12, S30, S20
283936:  VCVT.F32.S32    S0, S0
28393A:  VLDR            S14, [SP,#0x90+var_68]
28393E:  VMUL.F32        S8, S17, S20
283942:  LDR.W           R12, [R4,#0x490]
283946:  VMUL.F32        S2, S2, S16
28394A:  VMUL.F32        S4, S4, S16
28394E:  VMOV.F32        S26, S20
283952:  MOV             R2, R12
283954:  VSUB.F32        S12, S30, S12
283958:  VDIV.F32        S0, S0, S28
28395C:  VSUB.F32        S6, S2, S21
283960:  VADD.F32        S2, S2, S21
283964:  VSUB.F32        S10, S4, S21
283968:  VADD.F32        S4, S4, S21
28396C:  VMUL.F32        S0, S14, S0
283970:  VMUL.F32        S14, S30, S22
283974:  VSUB.F32        S1, S2, S6
283978:  VADD.F32        S2, S6, S2
28397C:  VADD.F32        S4, S4, S10
283980:  VLDR            S10, [SP,#0x90+var_6C]
283984:  VSUB.F32        S6, S17, S8
283988:  VADD.F32        S10, S10, S0
28398C:  VADD.F32        S8, S21, S8
283990:  VABS.F32        S5, S1
283994:  VMUL.F32        S24, S2, S16
283998:  VLDR            S2, =1000000.0
28399C:  VSUB.F32        S0, S6, S21
2839A0:  VADD.F32        S6, S3, S14
2839A4:  VMAX.F32        D16, D12, D4
2839A8:  VSUB.F32        S8, S12, S21
2839AC:  VMUL.F32        S12, S4, S16
2839B0:  VMUL.F32        S24, S5, S16
2839B4:  VADD.F32        S4, S21, S10
2839B8:  VMIN.F32        D0, D16, D0
2839BC:  VMIN.F32        D16, D3, D4
2839C0:  VMAX.F32        D17, D6, D2
2839C4:  VMIN.F32        D2, D17, D16
2839C8:  CMP             R2, #0
2839CA:  BEQ             loc_283A60
2839CC:  ADDS            R3, R4, R5
2839CE:  LDRB.W          R6, [R3,#0x8D]
2839D2:  CMP             R6, #0
2839D4:  ITTT NE
2839D6:  LDRNE           R6, [R4]
2839D8:  LDRNE.W         R1, [R3,#0x88]
2839DC:  TSTNE           R1, R6
2839DE:  BEQ             loc_283A60
2839E0:  VLDR            S6, [R3,#0x70]
2839E4:  MOVS            R1, #0
2839E6:  VLDR            S8, [R3,#0x74]
2839EA:  VLDR            S12, [R3,#0x7C]
2839EE:  VLDR            S10, [R3,#0x78]
2839F2:  MOVS            R3, #0
2839F4:  VADD.F32        S8, S8, S12
2839F8:  VADD.F32        S12, S6, S10
2839FC:  VSUB.F32        S6, S10, S6
283A00:  VMUL.F32        S8, S8, S16
283A04:  VMUL.F32        S12, S12, S16
283A08:  VABS.F32        S6, S6
283A0C:  VSUB.F32        S14, S8, S4
283A10:  VSUB.F32        S3, S12, S0
283A14:  VMUL.F32        S6, S6, S16
283A18:  VMUL.F32        S14, S14, S14
283A1C:  VMUL.F32        S3, S3, S3
283A20:  VADD.F32        S6, S24, S6
283A24:  VADD.F32        S10, S3, S14
283A28:  VSQRT.F32       S10, S10
283A2C:  VCMPE.F32       S10, S6
283A30:  VMRS            APSR_nzcv, FPSCR
283A34:  VCMPE.F32       S10, S2
283A38:  IT GE
283A3A:  MOVGE           R1, #1
283A3C:  VMRS            APSR_nzcv, FPSCR
283A40:  IT GE
283A42:  MOVGE           R3, #1
283A44:  ORRS            R1, R3
283A46:  ITTT NE
283A48:  VMOVNE.F32      S10, S2
283A4C:  VMOVNE.F32      S12, S26
283A50:  VMOVNE.F32      S8, S20
283A54:  VMOV.F32        S20, S8
283A58:  VMOV.F32        S26, S12
283A5C:  VMOV.F32        S2, S10
283A60:  ADDS            R5, #0x28 ; '('
283A62:  SUBS            R2, #1
283A64:  CMP.W           R5, #0x2F8
283A68:  BNE             loc_2839C8
283A6A:  VLDR            S30, =1000000.0
283A6E:  VCMP.F32        S2, S30
283A72:  VMRS            APSR_nzcv, FPSCR
283A76:  BNE             loc_283AA4
283A78:  VADD.F32        S2, S21, S0
283A7C:  ADD.W           R0, R12, R12,LSL#2
283A80:  VADD.F32        S6, S21, S4
283A84:  VSUB.F32        S4, S4, S21
283A88:  ADD.W           R0, R4, R0,LSL#3
283A8C:  VSUB.F32        S0, S0, S21
283A90:  VSTR            S0, [R0,#0x70]
283A94:  VSTR            S6, [R0,#0x74]
283A98:  VSTR            S2, [R0,#0x78]
283A9C:  VSTR            S4, [R0,#0x7C]
283AA0:  B.W             loc_2844AC
283AA4:  ADDW            R1, R4, #0x4AC
283AA8:  VLDR            S0, [R1]
283AAC:  ADD.W           R1, R4, #0x4A8
283AB0:  VLDR            S2, [R1]
283AB4:  VSUB.F32        S17, S0, S20
283AB8:  VSUB.F32        S0, S2, S26
283ABC:  VMUL.F32        S2, S17, S17
283AC0:  VMUL.F32        S4, S0, S0
283AC4:  VADD.F32        S2, S4, S2
283AC8:  VCMPE.F32       S2, #0.0
283ACC:  VMRS            APSR_nzcv, FPSCR
283AD0:  BLE             loc_283AE6
283AD2:  VSQRT.F32       S2, S2
283AD6:  VMOV.F32        S4, #1.0
283ADA:  VDIV.F32        S2, S4, S2
283ADE:  VMUL.F32        S17, S17, S2
283AE2:  VMUL.F32        S18, S0, S2
283AE6:  LDR.W           R1, =(RsGlobal_ptr - 0x283AF6)
283AEA:  MOV.W           R11, #0
283AEE:  VLDR            S19, =0.002
283AF2:  ADD             R1, PC; RsGlobal_ptr
283AF4:  VLDR            S23, =0.0
283AF8:  LDR.W           R10, [R1]; RsGlobal
283AFC:  MOVS            R1, #0
283AFE:  MOV             R9, R1
283B00:  ADD             R0, SP, #0x90+var_70
283B02:  ADD             R1, SP, #0x90+var_64
283B04:  ADD             R2, SP, #0x90+var_68
283B06:  ADD             R3, SP, #0x90+var_6C
283B08:  LDR.W           R5, [R10,#(dword_9FC900 - 0x9FC8FC)]
283B0C:  STRD.W          R11, R11, [SP,#0x90+var_68]
283B10:  MOV             R8, LR
283B12:  STRD.W          R11, R11, [SP,#0x90+var_70]
283B16:  STR             R0, [SP,#0x90+var_90]
283B18:  MOVS            R0, #0x70 ; 'p'
283B1A:  BLX             j__ZN15CTouchInterface17GetWidgetPositionENS_17WidgetPositionIDsERfS1_S1_S1_; CTouchInterface::GetWidgetPosition(CTouchInterface::WidgetPositionIDs,float &,float &,float &,float &)
283B1E:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
283B22:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
283B26:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
283B2A:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
283B2E:  LDR.W           LR, [R10,#(dword_9FC904 - 0x9FC8FC)]
283B32:  VMOV            S2, R5
283B36:  VMOV            S4, R8
283B3A:  MOVS            R3, #0
283B3C:  VMOV            S6, R9
283B40:  VMOV            S0, LR
283B44:  VCVT.F32.S32    S0, S0
283B48:  VCVT.F32.S32    S2, S2
283B4C:  VCVT.F32.S32    S4, S4
283B50:  VCVT.F32.S32    S6, S6
283B54:  VLDR            S1, [SP,#0x90+var_68]
283B58:  LDR.W           R1, [R4,#0x490]
283B5C:  VDIV.F32        S0, S0, S28
283B60:  MOV             R2, R1
283B62:  VMUL.F32        S8, S2, S19
283B66:  VMUL.F32        S10, S4, S23
283B6A:  VSUB.F32        S14, S4, S21
283B6E:  VMUL.F32        S12, S2, S23
283B72:  VMUL.F32        S0, S1, S0
283B76:  VLDR            S1, [SP,#0x90+var_6C]
283B7A:  VMUL.F32        S6, S8, S6
283B7E:  VMUL.F32        S8, S4, S22
283B82:  VSUB.F32        S4, S4, S10
283B86:  VSUB.F32        S2, S2, S12
283B8A:  VMUL.F32        S10, S18, S6
283B8E:  VMUL.F32        S6, S17, S6
283B92:  VADD.F32        S8, S14, S8
283B96:  VSUB.F32        S4, S4, S21
283B9A:  VADD.F32        S14, S1, S0
283B9E:  VADD.F32        S0, S21, S12
283BA2:  VSUB.F32        S2, S2, S21
283BA6:  VMIN.F32        D16, D4, D2
283BAA:  VADD.F32        S4, S20, S6
283BAE:  VADD.F32        S6, S26, S10
283BB2:  VMAX.F32        D17, D3, D0
283BB6:  VMIN.F32        D0, D17, D1
283BBA:  VADD.F32        S2, S21, S14
283BBE:  VMAX.F32        D17, D2, D1
283BC2:  VMOV.F32        S4, S30
283BC6:  VMIN.F32        D1, D17, D16
283BCA:  CMP             R2, #0
283BCC:  BEQ             loc_283C62
283BCE:  ADDS            R5, R4, R3
283BD0:  LDRB.W          R0, [R5,#0x8D]
283BD4:  CMP             R0, #0
283BD6:  ITTT NE
283BD8:  LDRNE           R0, [R4]
283BDA:  LDRNE.W         R6, [R5,#0x88]
283BDE:  TSTNE           R6, R0
283BE0:  BEQ             loc_283C62
283BE2:  VLDR            S6, [R5,#0x70]
283BE6:  MOVS            R0, #0
283BE8:  VLDR            S8, [R5,#0x74]
283BEC:  MOVS            R6, #0
283BEE:  VLDR            S12, [R5,#0x7C]
283BF2:  VLDR            S10, [R5,#0x78]
283BF6:  VADD.F32        S8, S8, S12
283BFA:  VADD.F32        S12, S6, S10
283BFE:  VSUB.F32        S6, S10, S6
283C02:  VMUL.F32        S8, S8, S16
283C06:  VMUL.F32        S12, S12, S16
283C0A:  VABS.F32        S6, S6
283C0E:  VSUB.F32        S14, S8, S2
283C12:  VSUB.F32        S5, S12, S0
283C16:  VMUL.F32        S6, S6, S16
283C1A:  VMUL.F32        S14, S14, S14
283C1E:  VMUL.F32        S5, S5, S5
283C22:  VADD.F32        S6, S24, S6
283C26:  VADD.F32        S10, S5, S14
283C2A:  VSQRT.F32       S10, S10
283C2E:  VCMPE.F32       S10, S6
283C32:  VMRS            APSR_nzcv, FPSCR
283C36:  VCMPE.F32       S10, S4
283C3A:  IT GE
283C3C:  MOVGE           R0, #1
283C3E:  VMRS            APSR_nzcv, FPSCR
283C42:  IT GE
283C44:  MOVGE           R6, #1
283C46:  ORRS            R0, R6
283C48:  ITTT NE
283C4A:  VMOVNE.F32      S10, S4
283C4E:  VMOVNE.F32      S12, S26
283C52:  VMOVNE.F32      S8, S20
283C56:  VMOV.F32        S20, S8
283C5A:  VMOV.F32        S26, S12
283C5E:  VMOV.F32        S4, S10
283C62:  ADDS            R3, #0x28 ; '('
283C64:  SUBS            R2, #1
283C66:  CMP.W           R3, #0x2F8
283C6A:  BNE             loc_283BCA
283C6C:  VCMP.F32        S4, S30
283C70:  VMRS            APSR_nzcv, FPSCR
283C74:  BEQ.W           loc_284484
283C78:  ADD.W           R1, R9, #1
283C7C:  CMP.W           R9, #0x62 ; 'b'
283C80:  MOV.W           R2, #0xFFFFFFFF
283C84:  BLE.W           loc_283AFE
283C88:  B.W             loc_2844B0
283C8C:  DCFS 1000000.0
283C90:  DCFS 0.002
283C94:  DCFS 0.0
283C98:  DCFS 448.0
283C9C:  DCFS -0.067
283CA0:  DCFS 0.0025
283CA4:  ADD.W           R6, R4, #0x14
283CA8:  LDM             R6, {R2,R3,R6}
283CAA:  LDR             R5, [R4,#0x20]
283CAC:  LDR.W           R0, [R4,#0x4A8]
283CB0:  LDR.W           R1, [R4,#0x4AC]
283CB4:  STRD.W          R6, R5, [SP,#0x90+var_90]
283CB8:  BLX             j__ZN7CWidget12IsInsideRectE9CVector2D5CRect; CWidget::IsInsideRect(CVector2D,CRect)
283CBC:  CMP             R0, #1
283CBE:  BNE             loc_283CC4
283CC0:  MOVS            R0, #1
283CC2:  STR             R0, [R4,#0x64]
283CC4:  LDR.W           R0, [R4,#0x490]
283CC8:  ADDS            R1, R0, #1
283CCA:  BEQ.W           loc_283FA8
283CCE:  ADD.W           R0, R0, R0,LSL#2
283CD2:  ADD.W           R0, R4, R0,LSL#3
283CD6:  VLDR            S20, [R0,#0x70]
283CDA:  VLDR            S16, [R0,#0x74]
283CDE:  VLDR            S22, [R0,#0x78]
283CE2:  VLDR            S18, [R0,#0x7C]
283CE6:  MOVS            R0, #0x51 ; 'Q'
283CE8:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
283CEC:  CBNZ            R0, loc_283CF6
283CEE:  MOVS            R0, #0x2A ; '*'
283CF0:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
283CF4:  CBZ             R0, loc_283D0C
283CF6:  VMOV.F32        S0, #-1.0
283CFA:  LDR.W           R0, =(byte_6DFE50 - 0x283D04)
283CFE:  MOVS            R1, #1
283D00:  ADD             R0, PC; byte_6DFE50
283D02:  STRB            R1, [R0]
283D04:  VADD.F32        S22, S22, S0
283D08:  VADD.F32        S20, S20, S0
283D0C:  MOVS            R0, #0x52 ; 'R'
283D0E:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
283D12:  CBNZ            R0, loc_283D1C
283D14:  MOVS            R0, #0x2C ; ','
283D16:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
283D1A:  CBZ             R0, loc_283D32
283D1C:  VMOV.F32        S0, #1.0
283D20:  LDR.W           R0, =(byte_6DFE50 - 0x283D2A)
283D24:  MOVS            R1, #1
283D26:  ADD             R0, PC; byte_6DFE50
283D28:  STRB            R1, [R0]
283D2A:  VADD.F32        S22, S22, S0
283D2E:  VADD.F32        S20, S20, S0
283D32:  MOVS            R0, #0x4F ; 'O'
283D34:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
283D38:  CBNZ            R0, loc_283D42
283D3A:  MOVS            R0, #0x1D
283D3C:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
283D40:  CBZ             R0, loc_283D58
283D42:  VMOV.F32        S0, #-1.0
283D46:  LDR.W           R0, =(byte_6DFE50 - 0x283D50)
283D4A:  MOVS            R1, #1
283D4C:  ADD             R0, PC; byte_6DFE50
283D4E:  STRB            R1, [R0]
283D50:  VADD.F32        S18, S18, S0
283D54:  VADD.F32        S16, S16, S0
283D58:  MOVS            R0, #0x50 ; 'P'
283D5A:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
283D5E:  CBNZ            R0, loc_283D6C
283D60:  MOVS            R0, #0x2B ; '+'
283D62:  BLX             j__Z19LIB_KeyboardPressed13OSKeyboardKey; LIB_KeyboardPressed(OSKeyboardKey)
283D66:  CMP             R0, #0
283D68:  BEQ.W           loc_284462
283D6C:  VMOV.F32        S0, #1.0
283D70:  LDR.W           R0, =(byte_6DFE50 - 0x283D7A)
283D74:  MOVS            R1, #1
283D76:  ADD             R0, PC; byte_6DFE50
283D78:  STRB            R1, [R0]
283D7A:  VADD.F32        S18, S18, S0
283D7E:  VADD.F32        S16, S16, S0
283D82:  LDR.W           R0, =(RsGlobal_ptr - 0x283D94)
283D86:  ADD.W           R8, R4, #0x68 ; 'h'
283D8A:  LDR.W           R1, [R4,#0x490]
283D8E:  MOVS            R5, #0
283D90:  ADD             R0, PC; RsGlobal_ptr
283D92:  ADD             R2, SP, #0x90+var_68
283D94:  ADD             R3, SP, #0x90+var_6C
283D96:  LDR             R6, [R0]; RsGlobal
283D98:  ADD.W           R0, R1, R1,LSL#2
283D9C:  ADD             R1, SP, #0x90+var_64
283D9E:  ADD.W           R0, R8, R0,LSL#3
283DA2:  VLDR            S0, [R6,#4]
283DA6:  VLDR            S2, [R6,#8]
283DAA:  VCVT.F32.S32    S24, S0
283DAE:  VLDR            S26, [R0,#8]
283DB2:  VLDR            S28, [R0,#0x10]
283DB6:  ADD             R0, SP, #0x90+var_70
283DB8:  VCVT.F32.S32    S30, S2
283DBC:  STRD.W          R5, R5, [SP,#0x90+var_68]
283DC0:  STRD.W          R5, R5, [SP,#0x90+var_70]
283DC4:  STR             R0, [SP,#0x90+var_90]
283DC6:  MOVS            R0, #0x70 ; 'p'
283DC8:  BLX             j__ZN15CTouchInterface17GetWidgetPositionENS_17WidgetPositionIDsERfS1_S1_S1_; CTouchInterface::GetWidgetPosition(CTouchInterface::WidgetPositionIDs,float &,float &,float &,float &)
283DCC:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
283DD0:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
283DD4:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
283DD8:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
283DDC:  VLDR            S0, [R6,#8]
283DE0:  VSUB.F32        S4, S28, S26
283DE4:  VLDR            S2, =448.0
283DE8:  VADD.F32        S5, S18, S16
283DEC:  VCVT.F32.S32    S0, S0
283DF0:  LDR.W           R1, [R4,#0x490]
283DF4:  VLDR            S10, [SP,#0x90+var_68]
283DF8:  VLDR            S12, =0.0
283DFC:  ADD.W           R0, R1, R1,LSL#2
283E00:  VLDR            S8, [SP,#0x90+var_6C]
283E04:  ADD.W           R3, R8, R0,LSL#3
283E08:  ADD.W           R12, R3, #8
283E0C:  ADD.W           LR, R3, #0x10
283E10:  VDIV.F32        S6, S0, S2
283E14:  VMOV.F32        S2, #0.5
283E18:  VLDR            S14, [R3,#8]
283E1C:  VABS.F32        S0, S4
283E20:  VLDR            S1, [R3,#0x10]
283E24:  VMUL.F32        S4, S30, S12
283E28:  VMUL.F32        S6, S10, S6
283E2C:  VLDR            S10, =-0.067
283E30:  VMUL.F32        S12, S24, S12
283E34:  VSUB.F32        S14, S1, S14
283E38:  VADD.F32        S1, S20, S22
283E3C:  VMUL.F32        S10, S30, S10
283E40:  VMUL.F32        S0, S0, S2
283E44:  VSUB.F32        S4, S30, S4
283E48:  VADD.F32        S6, S8, S6
283E4C:  VSUB.F32        S7, S24, S12
283E50:  VMUL.F32        S18, S5, S2
283E54:  VMUL.F32        S8, S1, S2
283E58:  VABS.F32        S14, S14
283E5C:  VSUB.F32        S3, S30, S0
283E60:  VADD.F32        S12, S12, S0
283E64:  VSUB.F32        S16, S4, S0
283E68:  VSUB.F32        S20, S7, S0
283E6C:  VADD.F32        S6, S0, S6
283E70:  VMUL.F32        S4, S14, S2
283E74:  VADD.F32        S10, S3, S10
283E78:  VMAX.F32        D16, D4, D6
283E7C:  VLDR            S8, =1000000.0
283E80:  VMAX.F32        D18, D9, D3
283E84:  VMIN.F32        D3, D16, D10
283E88:  VMIN.F32        D17, D5, D8
283E8C:  VMIN.F32        D5, D18, D17
283E90:  CBZ             R1, loc_283F0E
283E92:  ADDS            R6, R4, R5
283E94:  LDRB.W          R2, [R6,#0x8D]
283E98:  CMP             R2, #0
283E9A:  ITTT NE
283E9C:  LDRNE           R2, [R4]
283E9E:  LDRNE.W         R3, [R6,#0x88]
283EA2:  TSTNE           R3, R2
283EA4:  BEQ             loc_283F0E
283EA6:  VLDR            S12, [R6,#0x70]
283EAA:  VLDR            S14, [R6,#0x74]
283EAE:  VLDR            S3, [R6,#0x7C]
283EB2:  VLDR            S1, [R6,#0x78]
283EB6:  VADD.F32        S14, S14, S3
283EBA:  VADD.F32        S3, S12, S1
283EBE:  VSUB.F32        S12, S1, S12
283EC2:  VMUL.F32        S14, S14, S2
283EC6:  VMUL.F32        S3, S3, S2
283ECA:  VABS.F32        S12, S12
283ECE:  VSUB.F32        S14, S14, S10
283ED2:  VSUB.F32        S3, S3, S6
283ED6:  VMUL.F32        S12, S12, S2
283EDA:  VMUL.F32        S14, S14, S14
283EDE:  VMUL.F32        S3, S3, S3
283EE2:  VADD.F32        S12, S4, S12
283EE6:  VADD.F32        S14, S3, S14
283EEA:  VSQRT.F32       S14, S14
283EEE:  VCMPE.F32       S14, S12
283EF2:  VMRS            APSR_nzcv, FPSCR
283EF6:  VCMPE.F32       S14, S8
283EFA:  IT GE
283EFC:  VMOVGE.F32      S14, S8
283F00:  VMRS            APSR_nzcv, FPSCR
283F04:  IT GE
283F06:  VMOVGE.F32      S14, S8
283F0A:  VMOV.F32        S8, S14
283F0E:  ADDS            R5, #0x28 ; '('
283F10:  SUBS            R1, #1
283F12:  CMP.W           R5, #0x2F8
283F16:  BNE             loc_283E90
283F18:  VLDR            S2, =1000000.0
283F1C:  VCMP.F32        S8, S2
283F20:  VMRS            APSR_nzcv, FPSCR
283F24:  BNE             loc_283F4A
283F26:  VSUB.F32        S2, S6, S0
283F2A:  ADD.W           R0, R4, R0,LSL#3
283F2E:  VADD.F32        S4, S0, S10
283F32:  VADD.F32        S6, S0, S6
283F36:  VSUB.F32        S0, S10, S0
283F3A:  VSTR            S2, [R12]
283F3E:  VSTR            S4, [R0,#0x74]
283F42:  VSTR            S6, [LR]
283F46:  VSTR            S0, [R0,#0x7C]
283F4A:  LDR             R0, [SP,#0x90+var_7C]
283F4C:  VLDR            S28, [R0]
283F50:  LDR             R0, [SP,#0x90+var_80]
283F52:  VLDR            S26, [R0]
283F56:  ADDW            R0, R4, #0x4A4
283F5A:  VLDR            S0, [R0]
283F5E:  ADD.W           R0, R4, #0x4A0
283F62:  VLDR            S2, [R0]
283F66:  VSUB.F32        S0, S26, S0
283F6A:  LDR.W           R0, =(RsGlobal_ptr - 0x283F76)
283F6E:  VSUB.F32        S2, S28, S2
283F72:  ADD             R0, PC; RsGlobal_ptr
283F74:  LDR             R0, [R0]; RsGlobal
283F76:  VMUL.F32        S0, S0, S0
283F7A:  VMUL.F32        S2, S2, S2
283F7E:  VADD.F32        S0, S2, S0
283F82:  VLDR            S2, [R0,#4]
283F86:  VCVT.F32.S32    S30, S2
283F8A:  VLDR            S2, =0.0025
283F8E:  VSQRT.F32       S0, S0
283F92:  VMUL.F32        S2, S30, S2
283F96:  VCMPE.F32       S0, S2
283F9A:  VMRS            APSR_nzcv, FPSCR
283F9E:  BLE             loc_28402E
283FA0:  MOVS            R0, #1
283FA2:  STRB.W          R0, [R4,#0x494]
283FA6:  B               loc_284038
283FA8:  VMOV.F32        S4, #0.5
283FAC:  LDR.W           R2, [R4,#0x4A8]
283FB0:  LDR.W           R3, [R4,#0x4AC]
283FB4:  ADD.W           R0, R4, #0x70 ; 'p'
283FB8:  STR.W           R2, [R4,#0x4A0]
283FBC:  STR.W           R3, [R4,#0x4A4]
283FC0:  VMOV            S2, R2
283FC4:  LDR             R1, [R4]
283FC6:  VMOV            S0, R3
283FCA:  MOVS            R2, #0
283FCC:  LDR             R3, [R0,#0x18]
283FCE:  TST             R3, R1
283FD0:  BEQ             loc_284022
283FD2:  VLDR            S10, [R0]
283FD6:  VLDR            S6, [R0,#4]
283FDA:  VLDR            S8, [R0,#0xC]
283FDE:  VLDR            S12, [R0,#8]
283FE2:  VADD.F32        S6, S6, S8
283FE6:  VADD.F32        S8, S10, S12
283FEA:  VSUB.F32        S10, S12, S10
283FEE:  VMUL.F32        S6, S6, S4
283FF2:  VMUL.F32        S8, S8, S4
283FF6:  VABS.F32        S10, S10
283FFA:  VSUB.F32        S6, S6, S0
283FFE:  VSUB.F32        S8, S8, S2
284002:  VMUL.F32        S10, S10, S4
284006:  VMUL.F32        S14, S6, S6
28400A:  VMUL.F32        S1, S8, S8
28400E:  VADD.F32        S14, S1, S14
284012:  VSQRT.F32       S12, S14
284016:  VCMPE.F32       S12, S10
28401A:  VMRS            APSR_nzcv, FPSCR
28401E:  BLT.W           loc_284424
284022:  ADDS            R3, R2, #1
284024:  ADDS            R0, #0x28 ; '('
284026:  CMP             R2, #0x12
284028:  MOV             R2, R3
28402A:  BLT             loc_283FCC
28402C:  B               loc_2844B4
28402E:  LDRB.W          R0, [R4,#0x494]
284032:  CMP             R0, #0
284034:  BEQ.W           loc_2844B4
284038:  LDR.W           R0, =(RsGlobal_ptr - 0x28404C)
28403C:  ADDW            R2, R4, #0x49C
284040:  LDR.W           R1, [R4,#0x490]
284044:  ADD.W           R8, R4, #0x68 ; 'h'
284048:  ADD             R0, PC; RsGlobal_ptr
28404A:  STR             R2, [SP,#0x90+var_84]
28404C:  VLDR            S17, [R2]
284050:  ADD.W           R2, R4, #0x498
284054:  LDR             R6, [R0]; RsGlobal
284056:  ADD.W           R0, R1, R1,LSL#2
28405A:  STR             R2, [SP,#0x90+var_88]
28405C:  MOVS            R5, #0
28405E:  ADD.W           R0, R8, R0,LSL#3
284062:  VLDR            S19, [R2]
284066:  VLDR            S0, [R6,#8]
28406A:  ADD             R1, SP, #0x90+var_64
28406C:  VLDR            S18, [R0,#8]
284070:  ADD             R2, SP, #0x90+var_68
284072:  VLDR            S20, [R0,#0x10]
284076:  ADD             R0, SP, #0x90+var_70
284078:  ADD             R3, SP, #0x90+var_6C
28407A:  VCVT.F32.S32    S21, S0
28407E:  STRD.W          R5, R5, [SP,#0x90+var_68]
284082:  STRD.W          R5, R5, [SP,#0x90+var_70]
284086:  STR             R0, [SP,#0x90+var_90]
284088:  MOVS            R0, #0x70 ; 'p'
28408A:  BLX             j__ZN15CTouchInterface17GetWidgetPositionENS_17WidgetPositionIDsERfS1_S1_S1_; CTouchInterface::GetWidgetPosition(CTouchInterface::WidgetPositionIDs,float &,float &,float &,float &)
28408E:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
284092:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
284096:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
28409A:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
28409E:  LDR.W           R10, [R6,#(dword_9FC904 - 0x9FC8FC)]
2840A2:  VSUB.F32        S2, S20, S18
2840A6:  VLDR            S16, =448.0
2840AA:  VMOV.F32        S20, #0.5
2840AE:  VLDR            S22, =0.0
2840B2:  VMOV            S0, R10
2840B6:  VLDR            S24, =-0.067
2840BA:  VMUL.F32        S8, S21, S22
2840BE:  VCVT.F32.S32    S0, S0
2840C2:  LDR.W           R1, [R4,#0x490]
2840C6:  VLDR            S6, [SP,#0x90+var_68]
2840CA:  VMUL.F32        S12, S30, S22
2840CE:  VABS.F32        S2, S2
2840D2:  VLDR            S4, [SP,#0x90+var_6C]
2840D6:  ADD.W           R0, R1, R1,LSL#2
2840DA:  ADD.W           R3, R8, R0,LSL#3
2840DE:  ADD.W           R12, R3, #8
2840E2:  ADD.W           LR, R3, #0x10
2840E6:  VDIV.F32        S0, S0, S16
2840EA:  VMUL.F32        S18, S2, S20
2840EE:  VLDR            S2, [R3,#8]
2840F2:  VLDR            S10, [R3,#0x10]
2840F6:  VMUL.F32        S0, S6, S0
2840FA:  VSUB.F32        S6, S21, S8
2840FE:  VSUB.F32        S2, S10, S2
284102:  VMUL.F32        S8, S21, S24
284106:  VSUB.F32        S14, S30, S12
28410A:  VSUB.F32        S10, S21, S18
28410E:  VADD.F32        S4, S4, S0
284112:  VADD.F32        S0, S28, S19
284116:  VABS.F32        S2, S2
28411A:  VADD.F32        S12, S18, S12
28411E:  VSUB.F32        S6, S6, S18
284122:  VSUB.F32        S14, S14, S18
284126:  VADD.F32        S8, S10, S8
28412A:  VADD.F32        S10, S26, S17
28412E:  VMOV.F32        S26, S22
284132:  VMAX.F32        D16, D0, D6
284136:  VMUL.F32        S0, S2, S20
28413A:  VADD.F32        S2, S18, S4
28413E:  VLDR            S4, =1000000.0
284142:  VMIN.F32        D17, D4, D3
284146:  VMAX.F32        D18, D5, D1
28414A:  VMIN.F32        D1, D16, D7
28414E:  VMIN.F32        D3, D18, D17
284152:  CMP             R1, #0
284154:  BEQ             loc_2841EA
284156:  ADDS            R6, R4, R5
284158:  LDRB.W          R2, [R6,#0x8D]
28415C:  CMP             R2, #0
28415E:  ITTT NE
284160:  LDRNE           R2, [R4]
284162:  LDRNE.W         R3, [R6,#0x88]
284166:  TSTNE           R3, R2
284168:  BEQ             loc_2841EA
28416A:  VLDR            S8, [R6,#0x70]
28416E:  MOVS            R2, #0
284170:  VLDR            S10, [R6,#0x74]
284174:  MOVS            R3, #0
284176:  VLDR            S14, [R6,#0x7C]
28417A:  VLDR            S12, [R6,#0x78]
28417E:  VADD.F32        S10, S10, S14
284182:  VADD.F32        S14, S8, S12
284186:  VSUB.F32        S8, S12, S8
28418A:  VMUL.F32        S10, S10, S20
28418E:  VMUL.F32        S14, S14, S20
284192:  VABS.F32        S8, S8
284196:  VSUB.F32        S1, S10, S6
28419A:  VSUB.F32        S5, S14, S2
28419E:  VMUL.F32        S8, S8, S20
2841A2:  VMUL.F32        S1, S1, S1
2841A6:  VMUL.F32        S5, S5, S5
2841AA:  VADD.F32        S8, S0, S8
2841AE:  VADD.F32        S12, S5, S1
2841B2:  VSQRT.F32       S12, S12
2841B6:  VCMPE.F32       S12, S8
2841BA:  VMRS            APSR_nzcv, FPSCR
2841BE:  VCMPE.F32       S12, S4
2841C2:  IT GE
2841C4:  MOVGE           R2, #1
2841C6:  VMRS            APSR_nzcv, FPSCR
2841CA:  IT GE
2841CC:  MOVGE           R3, #1
2841CE:  ORRS            R2, R3
2841D0:  ITTT NE
2841D2:  VMOVNE.F32      S12, S4
2841D6:  VMOVNE.F32      S10, S26
2841DA:  VMOVNE.F32      S14, S22
2841DE:  VMOV.F32        S22, S14
2841E2:  VMOV.F32        S26, S10
2841E6:  VMOV.F32        S4, S12
2841EA:  ADDS            R5, #0x28 ; '('
2841EC:  SUBS            R1, #1
2841EE:  CMP.W           R5, #0x2F8
2841F2:  BNE             loc_284152
2841F4:  VLDR            S28, =1000000.0
2841F8:  VCMP.F32        S4, S28
2841FC:  VMRS            APSR_nzcv, FPSCR
284200:  BNE             loc_284228
284202:  VSUB.F32        S0, S2, S18
284206:  ADD.W           R0, R4, R0,LSL#3
28420A:  VADD.F32        S4, S18, S6
28420E:  VADD.F32        S2, S18, S2
284212:  VSUB.F32        S6, S6, S18
284216:  VSTR            S0, [R12]
28421A:  VSTR            S4, [R0,#0x74]
28421E:  VSTR            S2, [LR]
284222:  VSTR            S6, [R0,#0x7C]
284226:  B               loc_2844B4
284228:  LDR.W           R0, =(RsGlobal_ptr - 0x28423C)
28422C:  MOV.W           R8, #0
284230:  VMOV.F32        S30, #1.0
284234:  VLDR            S17, =0.002
284238:  ADD             R0, PC; RsGlobal_ptr
28423A:  VLDR            S19, =0.0
28423E:  LDR.W           R11, [R0]; RsGlobal
284242:  LDR             R0, [SP,#0x90+var_88]
284244:  VLDR            S0, [R0]
284248:  LDR             R0, [SP,#0x90+var_84]
28424A:  VLDR            S2, [R0]
28424E:  LDR             R0, [SP,#0x90+var_80]
284250:  VLDR            S4, [R0]
284254:  LDR             R0, [SP,#0x90+var_7C]
284256:  VADD.F32        S2, S4, S2
28425A:  VLDR            S6, [R0]
28425E:  VADD.F32        S0, S6, S0
284262:  VSUB.F32        S21, S2, S26
284266:  VSUB.F32        S0, S0, S22
28426A:  VMUL.F32        S2, S21, S21
28426E:  VMUL.F32        S4, S0, S0
284272:  VADD.F32        S2, S4, S2
284276:  VCMPE.F32       S2, #0.0
28427A:  VMRS            APSR_nzcv, FPSCR
28427E:  BLE             loc_284292
284280:  VSQRT.F32       S2, S2
284284:  VDIV.F32        S2, S30, S2
284288:  VMUL.F32        S21, S21, S2
28428C:  VMUL.F32        S23, S0, S2
284290:  B               loc_284296
284292:  VMOV.F32        S23, S30
284296:  MOVS            R5, #0
284298:  ADD             R0, SP, #0x90+var_70
28429A:  ADD             R1, SP, #0x90+var_64
28429C:  ADD             R2, SP, #0x90+var_68
28429E:  ADD             R3, SP, #0x90+var_6C
2842A0:  LDR.W           R6, [R11,#(dword_9FC900 - 0x9FC8FC)]
2842A4:  STRD.W          R5, R5, [SP,#0x90+var_68]
2842A8:  STRD.W          R5, R5, [SP,#0x90+var_70]
2842AC:  STR             R0, [SP,#0x90+var_90]
2842AE:  MOVS            R0, #0x70 ; 'p'
2842B0:  BLX             j__ZN15CTouchInterface17GetWidgetPositionENS_17WidgetPositionIDsERfS1_S1_S1_; CTouchInterface::GetWidgetPosition(CTouchInterface::WidgetPositionIDs,float &,float &,float &,float &)
2842B4:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2842B8:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2842BC:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2842C0:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2842C4:  LDR.W           R9, [R11,#(dword_9FC904 - 0x9FC8FC)]
2842C8:  VMOV            S2, R6
2842CC:  VMOV            S4, R8
2842D0:  VMOV            S6, R10
2842D4:  VMOV            S0, R9
2842D8:  VCVT.F32.S32    S0, S0
2842DC:  VCVT.F32.S32    S2, S2
2842E0:  VCVT.F32.S32    S4, S4
2842E4:  VLDR            S8, [SP,#0x90+var_6C]
2842E8:  VCVT.F32.S32    S6, S6
2842EC:  LDR.W           R2, [R4,#0x490]
2842F0:  VLDR            S10, [SP,#0x90+var_68]
2842F4:  ADD.W           R1, R2, R2,LSL#2
2842F8:  VDIV.F32        S0, S0, S16
2842FC:  ADD.W           R1, R4, R1,LSL#3
284300:  ADD.W           R12, R1, #0x70 ; 'p'
284304:  ADD.W           LR, R1, #0x78 ; 'x'
284308:  VMUL.F32        S12, S2, S17
28430C:  VLDR            S1, [R1,#0x78]
284310:  VMUL.F32        S14, S6, S19
284314:  VMUL.F32        S0, S10, S0
284318:  VMUL.F32        S10, S6, S24
28431C:  VMUL.F32        S3, S2, S19
284320:  VMUL.F32        S4, S12, S4
284324:  VLDR            S12, [R1,#0x70]
284328:  VSUB.F32        S12, S1, S12
28432C:  VSUB.F32        S1, S6, S18
284330:  VSUB.F32        S6, S6, S14
284334:  VADD.F32        S8, S8, S0
284338:  VSUB.F32        S2, S2, S3
28433C:  VMUL.F32        S14, S23, S4
284340:  VMUL.F32        S4, S21, S4
284344:  VABS.F32        S12, S12
284348:  VADD.F32        S0, S1, S10
28434C:  VSUB.F32        S6, S6, S18
284350:  VADD.F32        S10, S18, S3
284354:  VSUB.F32        S2, S2, S18
284358:  VADD.F32        S14, S22, S14
28435C:  VADD.F32        S4, S26, S4
284360:  VMIN.F32        D16, D0, D3
284364:  VADD.F32        S6, S18, S8
284368:  VMUL.F32        S0, S12, S20
28436C:  VMAX.F32        D17, D7, D5
284370:  VMAX.F32        D18, D2, D3
284374:  VMOV.F32        S6, S28
284378:  VMIN.F32        D1, D17, D1
28437C:  VMIN.F32        D2, D18, D16
284380:  CBZ             R2, loc_2843FE
284382:  ADDS            R3, R4, R5
284384:  LDRB.W          R6, [R3,#0x8D]
284388:  CMP             R6, #0
28438A:  ITTT NE
28438C:  LDRNE           R6, [R4]
28438E:  LDRNE.W         R0, [R3,#0x88]
284392:  TSTNE           R0, R6
284394:  BEQ             loc_2843FE
284396:  VLDR            S8, [R3,#0x70]
28439A:  VLDR            S10, [R3,#0x74]
28439E:  VLDR            S14, [R3,#0x7C]
2843A2:  VLDR            S12, [R3,#0x78]
2843A6:  VADD.F32        S10, S10, S14
2843AA:  VADD.F32        S14, S8, S12
2843AE:  VSUB.F32        S8, S12, S8
2843B2:  VMUL.F32        S10, S10, S20
2843B6:  VMUL.F32        S14, S14, S20
2843BA:  VABS.F32        S8, S8
2843BE:  VSUB.F32        S10, S10, S4
2843C2:  VSUB.F32        S14, S14, S2
2843C6:  VMUL.F32        S8, S8, S20
2843CA:  VMUL.F32        S10, S10, S10
2843CE:  VMUL.F32        S14, S14, S14
2843D2:  VADD.F32        S8, S0, S8
2843D6:  VADD.F32        S10, S14, S10
2843DA:  VSQRT.F32       S10, S10
2843DE:  VCMPE.F32       S10, S8
2843E2:  VMRS            APSR_nzcv, FPSCR
2843E6:  VCMPE.F32       S10, S6
2843EA:  IT GE
2843EC:  VMOVGE.F32      S10, S6
2843F0:  VMRS            APSR_nzcv, FPSCR
2843F4:  IT GE
2843F6:  VMOVGE.F32      S10, S6
2843FA:  VMOV.F32        S6, S10
2843FE:  ADDS            R5, #0x28 ; '('
284400:  SUBS            R2, #1
284402:  CMP.W           R5, #0x2F8
284406:  BNE             loc_284380
284408:  VCMP.F32        S6, S28
28440C:  VMRS            APSR_nzcv, FPSCR
284410:  BEQ             loc_284440
284412:  ADD.W           R1, R8, #1
284416:  CMP.W           R8, #0x62 ; 'b'
28441A:  MOV             R10, R9
28441C:  MOV             R8, R1
28441E:  BLE.W           loc_284242
284422:  B               loc_2844B4
284424:  MOVS            R0, #0
284426:  STR.W           R2, [R4,#0x490]
28442A:  STRB.W          R0, [R4,#0x494]
28442E:  ADD.W           R0, R4, #0x498
284432:  VSTR            S8, [R0]
284436:  ADDW            R0, R4, #0x49C
28443A:  VSTR            S6, [R0]
28443E:  B               loc_2844B4
284440:  VSUB.F32        S0, S2, S18
284444:  VADD.F32        S6, S18, S4
284448:  VADD.F32        S2, S18, S2
28444C:  VSUB.F32        S4, S4, S18
284450:  VSTR            S0, [R12]
284454:  VSTR            S6, [R1,#0x74]
284458:  VSTR            S2, [LR]
28445C:  VSTR            S4, [R1,#0x7C]
284460:  B               loc_2844B4
284462:  LDR             R0, =(byte_6DFE50 - 0x284468)
284464:  ADD             R0, PC; byte_6DFE50
284466:  LDRB            R0, [R0]
284468:  CMP             R0, #1
28446A:  BEQ.W           loc_283D82
28446E:  B               loc_283F4A
284470:  DCFS 448.0
284474:  DCFS 0.0
284478:  DCFS -0.067
28447C:  DCFS 1000000.0
284480:  DCFS 0.002
284484:  VADD.F32        S4, S21, S0
284488:  ADD.W           R0, R1, R1,LSL#2
28448C:  VADD.F32        S6, S21, S2
284490:  VSUB.F32        S2, S2, S21
284494:  ADD.W           R0, R4, R0,LSL#3
284498:  VSUB.F32        S0, S0, S21
28449C:  VSTR            S0, [R0,#0x70]
2844A0:  VSTR            S6, [R0,#0x74]
2844A4:  VSTR            S4, [R0,#0x78]
2844A8:  VSTR            S2, [R0,#0x7C]
2844AC:  MOV.W           R2, #0xFFFFFFFF
2844B0:  STR.W           R2, [R4,#0x490]
2844B4:  LDRB.W          R0, [R4,#0x496]
2844B8:  CMP             R0, #0
2844BA:  BEQ.W           loc_2846AC
2844BE:  VMOV.F32        S0, #0.5
2844C2:  MOVS            R0, #1
2844C4:  VMOV.I32        D16, #0x3F000000
2844C8:  VLDR            S2, =1000000.0
2844CC:  STR             R0, [R4]
2844CE:  MOVS            R0, #0
2844D0:  MOVS            R2, #0
2844D2:  MOV             R1, R2
2844D4:  ADD.W           R2, R1, R1,LSL#2
2844D8:  STR.W           R1, [R4,#0x490]
2844DC:  ADD.W           R2, R4, R2,LSL#3
2844E0:  LDRB.W          R3, [R2,#0x8D]
2844E4:  CMP             R3, #0
2844E6:  ITT NE
2844E8:  LDRBNE.W        R3, [R2,#0x88]
2844EC:  MOVSNE.W        R3, R3,LSL#31
2844F0:  BEQ             loc_284590
2844F2:  ADDS            R2, #0x70 ; 'p'
2844F4:  VLD1.32         {D2}, [R2]!
2844F8:  VLDR            D3, [R2]
2844FC:  MOVS            R2, #0
2844FE:  VADD.F32        D17, D2, D3
284502:  VSUB.F32        S8, S6, S4
284506:  VMOV.F32        S6, S2
28450A:  VMUL.F32        D17, D17, D16
28450E:  VABS.F32        S8, S8
284512:  VMUL.F32        S4, S8, S0
284516:  CMP             R0, R2
284518:  BEQ             loc_28457E
28451A:  ADDS            R3, R4, R2
28451C:  LDRB.W          R6, [R3,#0x8D]
284520:  CMP             R6, #0
284522:  ITT NE
284524:  LDRBNE.W        R6, [R3,#0x88]
284528:  MOVSNE.W        R6, R6,LSL#31
28452C:  BEQ             loc_28457E
28452E:  VLDR            D4, [R3,#0x70]
284532:  VLDR            D5, [R3,#0x78]
284536:  VADD.F32        D18, D4, D5
28453A:  VSUB.F32        S8, S10, S8
28453E:  VMUL.F32        D18, D18, D16
284542:  VSUB.F32        D18, D18, D17
284546:  VABS.F32        S8, S8
28454A:  VMUL.F32        D5, D18, D18
28454E:  VMUL.F32        S8, S8, S0
284552:  VADD.F32        S10, S10, S11
284556:  VADD.F32        S8, S4, S8
28455A:  VSQRT.F32       S10, S10
28455E:  VCMPE.F32       S10, S8
284562:  VMRS            APSR_nzcv, FPSCR
284566:  VCMPE.F32       S10, S6
28456A:  IT GE
28456C:  VMOVGE.F32      S10, S6
284570:  VMRS            APSR_nzcv, FPSCR
284574:  IT GE
284576:  VMOVGE.F32      S10, S6
28457A:  VMOV.F32        S6, S10
28457E:  ADDS            R2, #0x28 ; '('
284580:  CMP.W           R2, #0x2F8
284584:  BNE             loc_284516
284586:  VCMP.F32        S6, S2
28458A:  VMRS            APSR_nzcv, FPSCR
28458E:  BNE             loc_284680
284590:  ADDS            R0, #0x28 ; '('
284592:  ADDS            R2, R1, #1
284594:  CMP             R1, #0x12
284596:  BLT             loc_2844D2
284598:  VMOV.I32        D16, #0x3F000000
28459C:  MOVS            R0, #2
28459E:  VLDR            S2, =1000000.0
2845A2:  MOVS            R2, #0
2845A4:  STR             R0, [R4]
2845A6:  MOVS            R0, #0
2845A8:  MOV             R1, R2
2845AA:  ADD.W           R2, R1, R1,LSL#2
2845AE:  STR.W           R1, [R4,#0x490]
2845B2:  ADD.W           R2, R4, R2,LSL#3
2845B6:  LDRB.W          R3, [R2,#0x8D]
2845BA:  CMP             R3, #0
2845BC:  BEQ             loc_284662
2845BE:  LDRB.W          R3, [R2,#0x88]
2845C2:  LSLS            R3, R3, #0x1E
2845C4:  BPL             loc_284662
2845C6:  ADDS            R2, #0x70 ; 'p'
2845C8:  VLD1.32         {D2}, [R2]!
2845CC:  VLDR            D3, [R2]
2845D0:  MOVS            R2, #0
2845D2:  VADD.F32        D17, D2, D3
2845D6:  VSUB.F32        S8, S6, S4
2845DA:  VMOV.F32        S6, S2
2845DE:  VMUL.F32        D17, D17, D16
2845E2:  VABS.F32        S8, S8
2845E6:  VMUL.F32        S4, S8, S0
2845EA:  CMP             R0, R2
2845EC:  BEQ             loc_284650
2845EE:  ADDS            R3, R4, R2
2845F0:  LDRB.W          R6, [R3,#0x8D]
2845F4:  CMP             R6, #0
2845F6:  BEQ             loc_284650
2845F8:  LDRB.W          R6, [R3,#0x88]
2845FC:  LSLS            R6, R6, #0x1E
2845FE:  BPL             loc_284650
284600:  VLDR            D4, [R3,#0x70]
284604:  VLDR            D5, [R3,#0x78]
284608:  VADD.F32        D18, D4, D5
28460C:  VSUB.F32        S8, S10, S8
284610:  VMUL.F32        D18, D18, D16
284614:  VSUB.F32        D18, D18, D17
284618:  VABS.F32        S8, S8
28461C:  VMUL.F32        D5, D18, D18
284620:  VMUL.F32        S8, S8, S0
284624:  VADD.F32        S10, S10, S11
284628:  VADD.F32        S8, S4, S8
28462C:  VSQRT.F32       S10, S10
284630:  VCMPE.F32       S10, S8
284634:  VMRS            APSR_nzcv, FPSCR
284638:  VCMPE.F32       S10, S6
28463C:  IT GE
28463E:  VMOVGE.F32      S10, S6
284642:  VMRS            APSR_nzcv, FPSCR
284646:  IT GE
284648:  VMOVGE.F32      S10, S6
28464C:  VMOV.F32        S6, S10
284650:  ADDS            R2, #0x28 ; '('
284652:  CMP.W           R2, #0x2F8
284656:  BNE             loc_2845EA
284658:  VCMP.F32        S6, S2
28465C:  VMRS            APSR_nzcv, FPSCR
284660:  BNE             loc_284680
284662:  ADDS            R0, #0x28 ; '('
284664:  ADDS            R2, R1, #1
284666:  CMP             R1, #0x12
284668:  BLT             loc_2845A8
28466A:  LDR             R0, =(_ZN14CAdjustableHUD11m_pInstanceE_ptr - 0x284670)
28466C:  ADD             R0, PC; _ZN14CAdjustableHUD11m_pInstanceE_ptr
28466E:  LDR             R0, [R0]; CAdjustableHUD::m_pInstance ...
284670:  LDR             R0, [R0]; this
284672:  CBZ             R0, loc_284694
284674:  BLX             j__ZN14CAdjustableHUDD2Ev; CAdjustableHUD::~CAdjustableHUD()
284678:  BLX             _ZdlPv; operator delete(void *)
28467C:  MOVS            R0, #0
28467E:  B               loc_2846A0
284680:  MOV.W           R0, #0xFFFFFFFF
284684:  STR.W           R0, [R4,#0x490]
284688:  MOVS            R0, #1
28468A:  STRH.W          R0, [R4,#0x495]
28468E:  BLX             j__Z14PlayErrorSoundv; PlayErrorSound(void)
284692:  B               loc_2847EE
284694:  MOV.W           R0, #0x4B0; unsigned int
284698:  BLX             _Znwj; operator new(uint)
28469C:  BLX             j__ZN14CAdjustableHUDC2Ev; CAdjustableHUD::CAdjustableHUD(void)
2846A0:  LDR             R1, =(_ZN14CAdjustableHUD11m_pInstanceE_ptr - 0x2846A6)
2846A2:  ADD             R1, PC; _ZN14CAdjustableHUD11m_pInstanceE_ptr
2846A4:  LDR             R1, [R1]; CAdjustableHUD::m_pInstance ...
2846A6:  STR             R0, [R1]; CAdjustableHUD::m_pInstance
2846A8:  BLX             j__Z13PlayBackSoundv; PlayBackSound(void)
2846AC:  MOVS            R0, #0
2846AE:  BLX             j__Z17LIB_KeyboardState13OSKeyboardKey; LIB_KeyboardState(OSKeyboardKey)
2846B2:  CMP             R0, #0
2846B4:  BNE.W           loc_2847EE
2846B8:  ADD.W           R0, R4, #0x370
2846BC:  VLD1.32         {D16-D17}, [R0]
2846C0:  ADD.W           R0, R4, #0x380
2846C4:  VLD1.32         {D18-D19}, [R0]
2846C8:  ADD.W           R0, R4, #0x390
2846CC:  VLD1.32         {D20-D21}, [R0]
2846D0:  ADD.W           R0, R4, #0x3A0
2846D4:  VLD1.32         {D22-D23}, [R0]
2846D8:  ADD.W           R0, R4, #0x3B0
2846DC:  VLD1.32         {D24-D25}, [R0]
2846E0:  ADD.W           R0, R4, #0x3C0
2846E4:  VLD1.32         {D26-D27}, [R0]
2846E8:  ADD.W           R0, R4, #0x3D0
2846EC:  VLD1.32         {D28-D29}, [R0]
2846F0:  ADD.W           R0, R4, #0x360
2846F4:  VLD1.32         {D30-D31}, [R0]
2846F8:  ADD.W           R0, R4, #0x70 ; 'p'
2846FC:  VST1.32         {D30-D31}, [R0]
284700:  ADD.W           R0, R4, #0x98
284704:  VST1.32         {D16-D17}, [R0]
284708:  ADD.W           R0, R4, #0xC0
28470C:  VST1.32         {D18-D19}, [R0]
284710:  ADD.W           R0, R4, #0xE8
284714:  VST1.32         {D20-D21}, [R0]
284718:  ADD.W           R0, R4, #0x110
28471C:  VST1.32         {D22-D23}, [R0]
284720:  ADD.W           R0, R4, #0x138
284724:  VST1.32         {D24-D25}, [R0]
284728:  ADD.W           R0, R4, #0x160
28472C:  VST1.32         {D26-D27}, [R0]
284730:  ADD.W           R0, R4, #0x188
284734:  VST1.32         {D28-D29}, [R0]
284738:  ADD.W           R0, R4, #0x3E0
28473C:  VLD1.32         {D16-D17}, [R0]
284740:  ADD.W           R0, R4, #0x1B0
284744:  VST1.32         {D16-D17}, [R0]
284748:  ADD.W           R0, R4, #0x3F0
28474C:  VLD1.32         {D16-D17}, [R0]
284750:  ADD.W           R0, R4, #0x1D8
284754:  VST1.32         {D16-D17}, [R0]
284758:  ADD.W           R0, R4, #0x400
28475C:  VLD1.32         {D16-D17}, [R0]
284760:  ADD.W           R0, R4, #0x200
284764:  VST1.32         {D16-D17}, [R0]
284768:  ADD.W           R0, R4, #0x410
28476C:  VLD1.32         {D16-D17}, [R0]
284770:  ADD.W           R0, R4, #0x228
284774:  VST1.32         {D16-D17}, [R0]
284778:  ADD.W           R0, R4, #0x420
28477C:  VLD1.32         {D16-D17}, [R0]
284780:  ADD.W           R0, R4, #0x250
284784:  VST1.32         {D16-D17}, [R0]
284788:  ADD.W           R0, R4, #0x430
28478C:  VLD1.32         {D16-D17}, [R0]
284790:  ADD.W           R0, R4, #0x278
284794:  VST1.32         {D16-D17}, [R0]
284798:  ADD.W           R0, R4, #0x440
28479C:  VLD1.32         {D16-D17}, [R0]
2847A0:  ADD.W           R0, R4, #0x2A0
2847A4:  VST1.32         {D16-D17}, [R0]
2847A8:  ADD.W           R0, R4, #0x450
2847AC:  VLD1.32         {D16-D17}, [R0]
2847B0:  ADD.W           R0, R4, #0x2C8
2847B4:  VST1.32         {D16-D17}, [R0]
2847B8:  ADD.W           R0, R4, #0x460
2847BC:  VLD1.32         {D16-D17}, [R0]
2847C0:  ADD.W           R0, R4, #0x2F0
2847C4:  VST1.32         {D16-D17}, [R0]
2847C8:  ADD.W           R0, R4, #0x470
2847CC:  VLD1.32         {D16-D17}, [R0]
2847D0:  ADD.W           R0, R4, #0x318
2847D4:  VST1.32         {D16-D17}, [R0]
2847D8:  ADD.W           R0, R4, #0x480
2847DC:  VLD1.32         {D16-D17}, [R0]
2847E0:  ADD.W           R0, R4, #0x340
2847E4:  VST1.32         {D16-D17}, [R0]
2847E8:  MOVS            R0, #1
2847EA:  STRB.W          R0, [R4,#0x496]
2847EE:  ADD             SP, SP, #0x30 ; '0'
2847F0:  VPOP            {D8-D15}
2847F4:  ADD             SP, SP, #4
2847F6:  POP.W           {R8-R11}
2847FA:  POP             {R4-R7,PC}
