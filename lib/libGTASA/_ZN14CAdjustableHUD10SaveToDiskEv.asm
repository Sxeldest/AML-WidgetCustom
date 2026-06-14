; =========================================================
; Game Engine Function: _ZN14CAdjustableHUD10SaveToDiskEv
; Address            : 0x284974 - 0x2853AC
; =========================================================

284974:  PUSH            {R4-R7,LR}
284976:  ADD             R7, SP, #0xC
284978:  PUSH.W          {R8-R11}
28497C:  SUB             SP, SP, #4
28497E:  VPUSH           {D8-D15}
284982:  SUB.W           SP, SP, #0x268
284986:  STR             R0, [SP,#0x2C8+var_29C]
284988:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x284990)
28498C:  ADD             R0, PC; __stack_chk_guard_ptr
28498E:  LDR             R0, [R0]; __stack_chk_guard
284990:  LDR             R0, [R0]; this
284992:  STR             R0, [SP,#0x2C8+var_64]
284994:  BLX             j__ZN15CTouchInterface21LoadDefaultConfigFileEv; CTouchInterface::LoadDefaultConfigFile(void)
284998:  BLX             j__ZN8CFileMgr17SetDirMyDocumentsEv; CFileMgr::SetDirMyDocuments(void)
28499C:  LDR.W           R0, =(aAdjustableCfg_0 - 0x2849A4); "Adjustable.cfg"
2849A0:  ADD             R0, PC; "Adjustable.cfg"
2849A2:  BLX             j__ZN8CFileMgr18OpenFileForWritingEPKc; CFileMgr::OpenFileForWriting(char const*)
2849A6:  LDR.W           R1, =(aUserDefinedTou - 0x2849B4); ";User defined touch control placement. "...
2849AA:  ADD             R5, SP, #0x2C8+var_268
2849AC:  MOV             R4, R0
2849AE:  MOVS            R2, #0x9B; size_t
2849B0:  ADD             R1, PC; ";User defined touch control placement. "...
2849B2:  MOV             R0, R5; void *
2849B4:  BLX             memcpy
2849B8:  MOV             R0, R5; char *
2849BA:  BLX             strlen
2849BE:  MOV             R2, R0; char *
2849C0:  MOV             R0, R4; this
2849C2:  MOV             R1, R5; unsigned int
2849C4:  STR             R4, [SP,#0x2C8+var_2A8]
2849C6:  BLX             j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
2849CA:  LDR.W           R0, =(RsGlobal_ptr - 0x2849DE)
2849CE:  ADD.W           R9, SP, #0x2C8+var_288
2849D2:  VLDR            S16, =1.9
2849D6:  MOV.W           R11, #0
2849DA:  ADD             R0, PC; RsGlobal_ptr
2849DC:  VLDR            S29, =0.0
2849E0:  MOVS            R4, #0
2849E2:  LDR.W           R8, [R0]; RsGlobal
2849E6:  LDR.W           R0, =(RsGlobal_ptr - 0x2849EE)
2849EA:  ADD             R0, PC; RsGlobal_ptr
2849EC:  LDR             R0, [R0]; RsGlobal
2849EE:  STR             R0, [SP,#0x2C8+var_2A0]
2849F0:  LDR.W           R0, =(RsGlobal_ptr - 0x2849F8)
2849F4:  ADD             R0, PC; RsGlobal_ptr
2849F6:  LDR             R0, [R0]; RsGlobal
2849F8:  STR             R0, [SP,#0x2C8+var_2B8]
2849FA:  LDR.W           R0, =(RsGlobal_ptr - 0x284A02)
2849FE:  ADD             R0, PC; RsGlobal_ptr
284A00:  LDR.W           R10, [R0]; RsGlobal
284A04:  LDR.W           R0, =(RsGlobal_ptr - 0x284A0C)
284A08:  ADD             R0, PC; RsGlobal_ptr
284A0A:  LDR             R0, [R0]; RsGlobal
284A0C:  STR             R0, [SP,#0x2C8+var_2A4]
284A0E:  LDR.W           R0, =(RsGlobal_ptr - 0x284A16)
284A12:  ADD             R0, PC; RsGlobal_ptr
284A14:  LDR             R0, [R0]; RsGlobal
284A16:  STR             R0, [SP,#0x2C8+var_2BC]
284A18:  LDR.W           R0, =(RsGlobal_ptr - 0x284A20)
284A1C:  ADD             R0, PC; RsGlobal_ptr
284A1E:  LDR             R0, [R0]; RsGlobal
284A20:  STR             R0, [SP,#0x2C8+var_2AC]
284A22:  LDR.W           R0, =(RsGlobal_ptr - 0x284A2A)
284A26:  ADD             R0, PC; RsGlobal_ptr
284A28:  LDR             R0, [R0]; RsGlobal
284A2A:  STR             R0, [SP,#0x2C8+var_2B0]
284A2C:  LDR.W           R0, =(_ZN15CTouchInterface24m_pszWidgetPositionNamesE_ptr - 0x284A34)
284A30:  ADD             R0, PC; _ZN15CTouchInterface24m_pszWidgetPositionNamesE_ptr
284A32:  LDR             R0, [R0]; CTouchInterface::m_pszWidgetPositionNames ...
284A34:  STR             R0, [SP,#0x2C8+var_2B4]
284A36:  B               loc_284A50
284A38:  DCFS 1.9
284A3C:  DCFS 0.0
284A40:  DCFS 640.0
284A44:  DCFS 1.8
284A48:  DCFS 448.0
284A4C:  DCFS 999.9
284A50:  STRD.W          R11, R11, [SP,#0x2C8+var_290]
284A54:  ADD             R1, SP, #0x2C8+var_298
284A56:  STRD.W          R11, R11, [SP,#0x2C8+var_298]
284A5A:  ADD             R2, SP, #0x2C8+var_290
284A5C:  LDR             R0, [SP,#0x2C8+var_29C]
284A5E:  ADD             R3, SP, #0x2C8+var_294
284A60:  MOV             R5, R9
284A62:  ADDS            R6, R0, R4
284A64:  LDR             R0, [R6,#0x6C]
284A66:  STR             R1, [SP,#0x2C8+var_2C8]
284A68:  ADD             R1, SP, #0x2C8+var_28C
284A6A:  BLX             j__ZN15CTouchInterface17GetWidgetPositionENS_17WidgetPositionIDsERfS1_S1_S1_; CTouchInterface::GetWidgetPosition(CTouchInterface::WidgetPositionIDs,float &,float &,float &,float &)
284A6E:  VLDR            S0, [R8,#4]
284A72:  VLDR            S21, [SP,#0x2C8+var_28C]
284A76:  VCVT.F32.S32    S18, S0
284A7A:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
284A7E:  VMOV            S22, R0
284A82:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
284A86:  VLDR            S0, [R8,#4]
284A8A:  VMOV            S4, R0
284A8E:  VLDR            S2, [R8,#8]
284A92:  VCVT.F32.U32    S22, S22
284A96:  VCVT.F32.U32    S24, S4
284A9A:  VCVT.F32.S32    S26, S2
284A9E:  VLDR            S25, [SP,#0x2C8+var_294]
284AA2:  VCVT.F32.S32    S28, S0
284AA6:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
284AAA:  VMOV            S0, R0
284AAE:  VCVT.F32.U32    S30, S0
284AB2:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
284AB6:  VDIV.F32        S2, S22, S24
284ABA:  VMOV            S0, R0
284ABE:  VCMPE.F32       S2, S16
284AC2:  VCVT.F32.U32    S0, S0
284AC6:  VMRS            APSR_nzcv, FPSCR
284ACA:  VMOV.F32        S4, #30.0
284ACE:  VMOV.F32        S2, S29
284AD2:  VDIV.F32        S0, S30, S0
284AD6:  VMOV.F32        S6, S4
284ADA:  VCMPE.F32       S0, S16
284ADE:  VMOV.F32        S4, S29
284AE2:  IT GT
284AE4:  VMOVGT.F32      S2, S6
284AE8:  VMRS            APSR_nzcv, FPSCR
284AEC:  VSUB.F32        S0, S18, S2
284AF0:  IT GT
284AF2:  VMOVGT.F32      S4, S6
284AF6:  VLDR            S6, =640.0
284AFA:  VSUB.F32        S2, S28, S4
284AFE:  LDR.W           R9, [R8,#(dword_9FC904 - 0x9FC8FC)]
284B02:  VDIV.F32        S4, S28, S26
284B06:  VDIV.F32        S18, S2, S6
284B0A:  VLDR            S2, =1.8
284B0E:  VCMPE.F32       S4, S2
284B12:  VMRS            APSR_nzcv, FPSCR
284B16:  BLE             loc_284B34
284B18:  VMOV            S2, R9
284B1C:  VLDR            S4, =448.0
284B20:  VCVT.F32.S32    S2, S2
284B24:  VDIV.F32        S2, S2, S4
284B28:  VADD.F32        S2, S18, S2
284B2C:  VMOV.F32        S4, #0.5
284B30:  VMUL.F32        S18, S2, S4
284B34:  VLDR            S2, =640.0
284B38:  LDR             R0, [SP,#0x2C8+var_2A0]
284B3A:  VMOV.F32        S20, S2
284B3E:  VLDR            S30, [SP,#0x2C8+var_298]
284B42:  VLDR            S19, [SP,#0x2C8+var_290]
284B46:  VDIV.F32        S22, S0, S20
284B4A:  VLDR            S0, [R0,#4]
284B4E:  VCVT.F32.S32    S24, S0
284B52:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
284B56:  VMOV            S0, R0
284B5A:  VCVT.F32.U32    S26, S0
284B5E:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
284B62:  VMOV            S0, R0
284B66:  VMOV.F32        S2, #30.0
284B6A:  VCVT.F32.U32    S0, S0
284B6E:  VDIV.F32        S0, S26, S0
284B72:  VCMPE.F32       S0, S16
284B76:  VMRS            APSR_nzcv, FPSCR
284B7A:  VMOV.F32        S0, S29
284B7E:  IT GT
284B80:  VMOVGT.F32      S0, S2
284B84:  VMOV            S2, R9
284B88:  VSUB.F32        S0, S24, S0
284B8C:  VCVT.F32.S32    S27, S2
284B90:  VDIV.F32        S17, S0, S20
284B94:  VDIV.F32        S2, S24, S27
284B98:  VLDR            S0, =1.8
284B9C:  VCMPE.F32       S2, S0
284BA0:  VMRS            APSR_nzcv, FPSCR
284BA4:  BLE             loc_284BC4
284BA6:  LDR             R0, [SP,#0x2C8+var_2B8]
284BA8:  VLDR            S2, =448.0
284BAC:  VLDR            S0, [R0,#8]
284BB0:  VCVT.F32.S32    S0, S0
284BB4:  VDIV.F32        S0, S0, S2
284BB8:  VADD.F32        S0, S17, S0
284BBC:  VMOV.F32        S2, #0.5
284BC0:  VMUL.F32        S17, S0, S2
284BC4:  VLDR            S0, [R10,#4]
284BC8:  MOV             R9, R5
284BCA:  VMUL.F32        S24, S21, S22
284BCE:  VLDR            S31, [SP,#0x2C8+var_28C]
284BD2:  VMUL.F32        S26, S25, S18
284BD6:  VCVT.F32.S32    S21, S0
284BDA:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
284BDE:  VMOV            S18, R0
284BE2:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
284BE6:  VLDR            S0, [R10,#4]
284BEA:  VMOV            S4, R0
284BEE:  VLDR            S2, [R10,#8]
284BF2:  VCVT.F32.U32    S18, S18
284BF6:  VCVT.F32.U32    S22, S4
284BFA:  VCVT.F32.S32    S28, S2
284BFE:  VLDR            S25, [SP,#0x2C8+var_294]
284C02:  VCVT.F32.S32    S23, S0
284C06:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
284C0A:  VMOV            S0, R0
284C0E:  VCVT.F32.U32    S20, S0
284C12:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
284C16:  VDIV.F32        S2, S18, S22
284C1A:  VMOV            S0, R0
284C1E:  VLDR            S4, =640.0
284C22:  VCMPE.F32       S2, S16
284C26:  VCVT.F32.U32    S0, S0
284C2A:  VMRS            APSR_nzcv, FPSCR
284C2E:  VMOV.F32        S2, #30.0
284C32:  VMOV.F32        S18, S29
284C36:  VDIV.F32        S0, S20, S0
284C3A:  IT GT
284C3C:  VMOVGT.F32      S18, S2
284C40:  VCMPE.F32       S0, S16
284C44:  VMRS            APSR_nzcv, FPSCR
284C48:  VMOV.F32        S0, S29
284C4C:  IT GT
284C4E:  VMOVGT.F32      S0, S2
284C52:  VDIV.F32        S2, S23, S28
284C56:  LDR.W           R5, [R10,#(dword_9FC904 - 0x9FC8FC)]
284C5A:  VSUB.F32        S0, S23, S0
284C5E:  VDIV.F32        S23, S0, S4
284C62:  VLDR            S0, =1.8
284C66:  VCMPE.F32       S2, S0
284C6A:  VMRS            APSR_nzcv, FPSCR
284C6E:  BLE             loc_284C8C
284C70:  VMOV            S0, R5
284C74:  VLDR            S2, =448.0
284C78:  VCVT.F32.S32    S0, S0
284C7C:  VDIV.F32        S0, S0, S2
284C80:  VADD.F32        S0, S23, S0
284C84:  VMOV.F32        S2, #0.5
284C88:  VMUL.F32        S23, S0, S2
284C8C:  LDR             R0, [SP,#0x2C8+var_2A4]
284C8E:  VSUB.F32        S22, S24, S26
284C92:  VLDR            S26, [SP,#0x2C8+var_298]
284C96:  VLDR            S24, [SP,#0x2C8+var_290]
284C9A:  VLDR            S0, [R0,#4]
284C9E:  VCVT.F32.S32    S20, S0
284CA2:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
284CA6:  VMOV            S0, R0
284CAA:  VCVT.F32.U32    S28, S0
284CAE:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
284CB2:  VMOV            S0, R0
284CB6:  VLDR            S6, =640.0
284CBA:  VMOV.F32        S2, S29
284CBE:  VCVT.F32.U32    S0, S0
284CC2:  VDIV.F32        S0, S28, S0
284CC6:  VCMPE.F32       S0, S16
284CCA:  VMRS            APSR_nzcv, FPSCR
284CCE:  VMOV.F32        S0, #30.0
284CD2:  IT GT
284CD4:  VMOVGT.F32      S2, S0
284CD8:  VMOV            S0, R5
284CDC:  VSUB.F32        S2, S20, S2
284CE0:  VCVT.F32.S32    S0, S0
284CE4:  VDIV.F32        S2, S2, S6
284CE8:  VDIV.F32        S4, S20, S0
284CEC:  VLDR            S6, =1.8
284CF0:  VCMPE.F32       S4, S6
284CF4:  VMRS            APSR_nzcv, FPSCR
284CF8:  BLE             loc_284D18
284CFA:  LDR             R0, [SP,#0x2C8+var_2BC]
284CFC:  VLDR            S6, =448.0
284D00:  VLDR            S4, [R0,#8]
284D04:  VCVT.F32.S32    S4, S4
284D08:  VDIV.F32        S4, S4, S6
284D0C:  VADD.F32        S2, S2, S4
284D10:  VMOV.F32        S4, #0.5
284D14:  VMUL.F32        S2, S2, S4
284D18:  VLDR            S28, [R6,#0x70]
284D1C:  VCMP.F32        S22, S28
284D20:  VMRS            APSR_nzcv, FPSCR
284D24:  BNE             loc_284D92
284D26:  VLDR            S4, =448.0
284D2A:  VMUL.F32        S6, S30, S17
284D2E:  VDIV.F32        S4, S27, S4
284D32:  VMUL.F32        S4, S19, S4
284D36:  VSUB.F32        S4, S4, S6
284D3A:  VLDR            S6, [R6,#0x7C]
284D3E:  VCMP.F32        S4, S6
284D42:  VMRS            APSR_nzcv, FPSCR
284D46:  BNE             loc_284D92
284D48:  VSUB.F32        S4, S21, S18
284D4C:  VLDR            S6, =640.0
284D50:  VDIV.F32        S4, S4, S6
284D54:  VMUL.F32        S4, S31, S4
284D58:  VMUL.F32        S6, S25, S23
284D5C:  VADD.F32        S4, S4, S6
284D60:  VLDR            S6, [R6,#0x78]
284D64:  VCMP.F32        S4, S6
284D68:  VMRS            APSR_nzcv, FPSCR
284D6C:  BNE             loc_284D92
284D6E:  VLDR            S4, =448.0
284D72:  VMUL.F32        S2, S26, S2
284D76:  VDIV.F32        S0, S0, S4
284D7A:  VMUL.F32        S0, S24, S0
284D7E:  VADD.F32        S0, S0, S2
284D82:  VLDR            S2, [R6,#0x74]
284D86:  VCMP.F32        S0, S2
284D8A:  VMRS            APSR_nzcv, FPSCR
284D8E:  BEQ.W           loc_285356
284D92:  LDR             R0, [SP,#0x2C8+var_2AC]
284D94:  VLDR            S18, [R6,#0x78]
284D98:  VLDR            S0, [R0,#4]
284D9C:  VCVT.F32.S32    S20, S0
284DA0:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
284DA4:  VMOV            S0, R0
284DA8:  VCVT.F32.U32    S22, S0
284DAC:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
284DB0:  VMOV            S0, R0
284DB4:  MOVS            R0, #0x52 ; 'R'
284DB6:  VMOV.F32        S2, #30.0
284DBA:  VCVT.F32.U32    S0, S0
284DBE:  VDIV.F32        S0, S22, S0
284DC2:  VCMPE.F32       S0, S16
284DC6:  VMRS            APSR_nzcv, FPSCR
284DCA:  VMOV.F32        S0, S29
284DCE:  IT GT
284DD0:  VMOVGT.F32      S0, S2
284DD4:  VLDR            S2, =640.0
284DD8:  VSUB.F32        S0, S20, S0
284DDC:  STRH.W          R0, [SP,#0x2C8+var_288+4]
284DE0:  MOV             R0, #0x4F525245
284DE8:  STR             R0, [SP,#0x2C8+var_288]
284DEA:  VDIV.F32        S20, S0, S2
284DEE:  VSUB.F32        S0, S18, S28
284DF2:  VABS.F32        S18, S0
284DF6:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
284DFA:  VMOV            S0, R0
284DFE:  VCVT.F32.U32    S22, S0
284E02:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
284E06:  VMOV            S0, R0
284E0A:  ADR.W           R0, dword_2853E0
284E0E:  VDIV.F32        S2, S18, S20
284E12:  ADDS            R5, R0, #4
284E14:  VCVT.F32.U32    S0, S0
284E18:  VLDR            S30, =999.9
284E1C:  VMOV.F32        S4, #0.5
284E20:  VDIV.F32        S0, S22, S0
284E24:  VCMPE.F32       S0, S16
284E28:  VMRS            APSR_nzcv, FPSCR
284E2C:  VMUL.F32        S19, S2, S4
284E30:  IT GT
284E32:  MOVGT           R0, R5
284E34:  VLDR            S0, [R0]
284E38:  VSUB.F32        S0, S19, S0
284E3C:  VABS.F32        S0, S0
284E40:  VCMPE.F32       S0, S30
284E44:  VMRS            APSR_nzcv, FPSCR
284E48:  BGE             loc_284E9C
284E4A:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
284E4E:  VMOV            S0, R0
284E52:  VCVT.F32.U32    S18, S0
284E56:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
284E5A:  VMOV            S0, R0
284E5E:  ADR.W           R0, dword_2853E0
284E62:  MOVW            R1, #:lower16:(loc_454E4E+1)
284E66:  VCVT.F32.U32    S0, S0
284E6A:  MOVT            R1, #:upper16:(loc_454E4E+1)
284E6E:  VDIV.F32        S0, S18, S0
284E72:  VCMPE.F32       S0, S16
284E76:  VMRS            APSR_nzcv, FPSCR
284E7A:  IT LE
284E7C:  MOVLE           R5, R0
284E7E:  LDR.W           R0, =(aScaleLargestPh_0 - 0x284E8A); "SCALE_LARGEST_PHONE"
284E82:  VLDR            S0, [R5]
284E86:  ADD             R0, PC; "SCALE_LARGEST_PHONE"
284E88:  VSUB.F32        S0, S19, S0
284E8C:  VLD1.64         {D16-D17}, [R0]
284E90:  MOV             R0, R9
284E92:  VST1.64         {D16-D17}, [R0]!
284E96:  STR             R1, [R0]
284E98:  VABS.F32        S30, S0
284E9C:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
284EA0:  VMOV            S0, R0
284EA4:  VCVT.F32.U32    S18, S0
284EA8:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
284EAC:  VMOV            S0, R0
284EB0:  ADR.W           R0, dword_2853E8
284EB4:  ADDS            R5, R0, #4
284EB6:  VCVT.F32.U32    S0, S0
284EBA:  VDIV.F32        S0, S18, S0
284EBE:  VCMPE.F32       S0, S16
284EC2:  VMRS            APSR_nzcv, FPSCR
284EC6:  IT GT
284EC8:  MOVGT           R0, R5
284ECA:  VLDR            S0, [R0]
284ECE:  VSUB.F32        S0, S19, S0
284ED2:  VABS.F32        S0, S0
284ED6:  VCMPE.F32       S0, S30
284EDA:  VMRS            APSR_nzcv, FPSCR
284EDE:  BGE             loc_284F36
284EE0:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
284EE4:  VMOV            S0, R0
284EE8:  VCVT.F32.U32    S18, S0
284EEC:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
284EF0:  VMOV            S0, R0
284EF4:  ADR.W           R0, dword_2853E8
284EF8:  VCVT.F32.U32    S0, S0
284EFC:  VDIV.F32        S0, S18, S0
284F00:  VCMPE.F32       S0, S16
284F04:  VMRS            APSR_nzcv, FPSCR
284F08:  IT LE
284F0A:  MOVLE           R5, R0
284F0C:  LDR.W           R0, =(aScaleLargest_0 - 0x284F18); "SCALE_LARGEST"
284F10:  VLDR            S0, [R5]
284F14:  ADD             R0, PC; "SCALE_LARGEST"
284F16:  VSUB.F32        S0, S19, S0
284F1A:  MOV             R1, R0
284F1C:  ADDS            R0, R1, #6
284F1E:  VLDR            D16, [R1]
284F22:  VLD1.16         {D17}, [R0]
284F26:  ORR.W           R0, R9, #6
284F2A:  VST1.16         {D17}, [R0]
284F2E:  VABS.F32        S30, S0
284F32:  VSTR            D16, [SP,#0x2C8+var_288]
284F36:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
284F3A:  VMOV            S0, R0
284F3E:  VCVT.F32.U32    S18, S0
284F42:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
284F46:  VMOV            S0, R0
284F4A:  ADR.W           R0, dword_2853F0
284F4E:  ADDS            R5, R0, #4
284F50:  VCVT.F32.U32    S0, S0
284F54:  VDIV.F32        S0, S18, S0
284F58:  VCMPE.F32       S0, S16
284F5C:  VMRS            APSR_nzcv, FPSCR
284F60:  IT GT
284F62:  MOVGT           R0, R5
284F64:  VLDR            S0, [R0]
284F68:  VSUB.F32        S0, S19, S0
284F6C:  VABS.F32        S0, S0
284F70:  VCMPE.F32       S0, S30
284F74:  VMRS            APSR_nzcv, FPSCR
284F78:  BGE             loc_284FD0
284F7A:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
284F7E:  VMOV            S0, R0
284F82:  VCVT.F32.U32    S18, S0
284F86:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
284F8A:  VMOV            S0, R0
284F8E:  ADR.W           R0, dword_2853F0
284F92:  VCVT.F32.U32    S0, S0
284F96:  VDIV.F32        S0, S18, S0
284F9A:  VCMPE.F32       S0, S16
284F9E:  VMRS            APSR_nzcv, FPSCR
284FA2:  IT LE
284FA4:  MOVLE           R5, R0
284FA6:  LDR.W           R0, =(aScaleLarger_0 - 0x284FB2); "SCALE_LARGER"
284FAA:  VLDR            S0, [R5]
284FAE:  ADD             R0, PC; "SCALE_LARGER"
284FB0:  VSUB.F32        S0, S19, S0
284FB4:  MOV             R1, R0
284FB6:  ADDS            R0, R1, #5
284FB8:  VLDR            D16, [R1]
284FBC:  VLD1.8          {D17}, [R0]
284FC0:  ORR.W           R0, R9, #5
284FC4:  VST1.8          {D17}, [R0]
284FC8:  VABS.F32        S30, S0
284FCC:  VSTR            D16, [SP,#0x2C8+var_288]
284FD0:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
284FD4:  VMOV            S0, R0
284FD8:  VCVT.F32.U32    S18, S0
284FDC:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
284FE0:  VMOV            S0, R0
284FE4:  VLDR            S2, =24.65
284FE8:  VCVT.F32.U32    S0, S0
284FEC:  VDIV.F32        S0, S18, S0
284FF0:  VCMPE.F32       S0, S16
284FF4:  VMRS            APSR_nzcv, FPSCR
284FF8:  VMOV.F32        S0, #29.0
284FFC:  IT GT
284FFE:  VMOVGT.F32      S0, S2
285002:  VSUB.F32        S0, S19, S0
285006:  VABS.F32        S0, S0
28500A:  VCMPE.F32       S0, S30
28500E:  VMRS            APSR_nzcv, FPSCR
285012:  BGE             loc_285066
285014:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
285018:  VMOV            S0, R0
28501C:  VCVT.F32.U32    S18, S0
285020:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
285024:  VMOV            S0, R0
285028:  VLDR            S2, =24.65
28502C:  LDR.W           R0, =(aScaleLarge_0 - 0x285038); "SCALE_LARGE"
285030:  VCVT.F32.U32    S0, S0
285034:  ADD             R0, PC; "SCALE_LARGE"
285036:  VLDR            D16, [R0]
28503A:  MOV             R0, #0x454752
285042:  VDIV.F32        S0, S18, S0
285046:  VCMPE.F32       S0, S16
28504A:  VMRS            APSR_nzcv, FPSCR
28504E:  VMOV.F32        S0, #29.0
285052:  IT GT
285054:  VMOVGT.F32      S0, S2
285058:  STR             R0, [SP,#0x2C8+var_280]
28505A:  VSUB.F32        S0, S19, S0
28505E:  VSTR            D16, [SP,#0x2C8+var_288]
285062:  VABS.F32        S30, S0
285066:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
28506A:  VMOV            S0, R0
28506E:  VCVT.F32.U32    S18, S0
285072:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
285076:  VMOV            S0, R0
28507A:  VLDR            S2, =20.4
28507E:  VCVT.F32.U32    S0, S0
285082:  VDIV.F32        S0, S18, S0
285086:  VCMPE.F32       S0, S16
28508A:  VMRS            APSR_nzcv, FPSCR
28508E:  VMOV.F32        S0, #24.0
285092:  IT GT
285094:  VMOVGT.F32      S0, S2
285098:  VSUB.F32        S0, S19, S0
28509C:  VABS.F32        S0, S0
2850A0:  VCMPE.F32       S0, S30
2850A4:  VMRS            APSR_nzcv, FPSCR
2850A8:  BGE             loc_285100
2850AA:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2850AE:  VMOV            S0, R0
2850B2:  VCVT.F32.U32    S18, S0
2850B6:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2850BA:  VMOV            S0, R0
2850BE:  VLDR            S2, =20.4
2850C2:  LDR             R0, =(aScaleMedium_0 - 0x2850CC); "SCALE_MEDIUM"
2850C4:  VCVT.F32.U32    S0, S0
2850C8:  ADD             R0, PC; "SCALE_MEDIUM"
2850CA:  MOV             R1, R0
2850CC:  ADDS            R0, R1, #5
2850CE:  VLDR            D16, [R1]
2850D2:  VLD1.8          {D17}, [R0]
2850D6:  ORR.W           R0, R9, #5
2850DA:  VDIV.F32        S0, S18, S0
2850DE:  VCMPE.F32       S0, S16
2850E2:  VMRS            APSR_nzcv, FPSCR
2850E6:  VMOV.F32        S0, #24.0
2850EA:  IT GT
2850EC:  VMOVGT.F32      S0, S2
2850F0:  VST1.8          {D17}, [R0]
2850F4:  VSUB.F32        S0, S19, S0
2850F8:  VSTR            D16, [SP,#0x2C8+var_288]
2850FC:  VABS.F32        S30, S0
285100:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
285104:  VMOV            S0, R0
285108:  VCVT.F32.U32    S18, S0
28510C:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
285110:  VMOV            S0, R0
285114:  VLDR            S2, =14.45
285118:  VCVT.F32.U32    S0, S0
28511C:  VDIV.F32        S0, S18, S0
285120:  VCMPE.F32       S0, S16
285124:  VMRS            APSR_nzcv, FPSCR
285128:  VMOV.F32        S0, #17.0
28512C:  IT GT
28512E:  VMOVGT.F32      S0, S2
285132:  VSUB.F32        S0, S19, S0
285136:  VABS.F32        S0, S0
28513A:  VCMPE.F32       S0, S30
28513E:  VMRS            APSR_nzcv, FPSCR
285142:  BGE             loc_285194
285144:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
285148:  VMOV            S0, R0
28514C:  VCVT.F32.U32    S18, S0
285150:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
285154:  VMOV            S0, R0
285158:  VLDR            S2, =14.45
28515C:  LDR             R0, =(aScaleSmall_0 - 0x285166); "SCALE_SMALL"
28515E:  VCVT.F32.U32    S0, S0
285162:  ADD             R0, PC; "SCALE_SMALL"
285164:  VLDR            D16, [R0]
285168:  MOV             R0, #0x4C4C41
285170:  VDIV.F32        S0, S18, S0
285174:  VCMPE.F32       S0, S16
285178:  VMRS            APSR_nzcv, FPSCR
28517C:  VMOV.F32        S0, #17.0
285180:  IT GT
285182:  VMOVGT.F32      S0, S2
285186:  STR             R0, [SP,#0x2C8+var_280]
285188:  VSUB.F32        S0, S19, S0
28518C:  VSTR            D16, [SP,#0x2C8+var_288]
285190:  VABS.F32        S30, S0
285194:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
285198:  VMOV            S0, R0
28519C:  VCVT.F32.U32    S18, S0
2851A0:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2851A4:  VMOV            S0, R0
2851A8:  VLDR            S2, =11.9
2851AC:  VCVT.F32.U32    S0, S0
2851B0:  VDIV.F32        S0, S18, S0
2851B4:  VCMPE.F32       S0, S16
2851B8:  VMRS            APSR_nzcv, FPSCR
2851BC:  VMOV.F32        S0, #14.0
2851C0:  IT GT
2851C2:  VMOVGT.F32      S0, S2
2851C6:  VSUB.F32        S0, S19, S0
2851CA:  VABS.F32        S0, S0
2851CE:  VCMPE.F32       S0, S30
2851D2:  VMRS            APSR_nzcv, FPSCR
2851D6:  BGE             loc_28522E
2851D8:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2851DC:  VMOV            S0, R0
2851E0:  VCVT.F32.U32    S18, S0
2851E4:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2851E8:  VMOV            S0, R0
2851EC:  VLDR            S2, =11.9
2851F0:  LDR             R0, =(aScaleSmaller_0 - 0x2851FA); "SCALE_SMALLER"
2851F2:  VCVT.F32.U32    S0, S0
2851F6:  ADD             R0, PC; "SCALE_SMALLER"
2851F8:  MOV             R1, R0
2851FA:  ADDS            R0, R1, #6
2851FC:  VLDR            D16, [R1]
285200:  VLD1.16         {D17}, [R0]
285204:  ORR.W           R0, R9, #6
285208:  VDIV.F32        S0, S18, S0
28520C:  VCMPE.F32       S0, S16
285210:  VMRS            APSR_nzcv, FPSCR
285214:  VMOV.F32        S0, #14.0
285218:  IT GT
28521A:  VMOVGT.F32      S0, S2
28521E:  VST1.16         {D17}, [R0]
285222:  VSUB.F32        S0, S19, S0
285226:  VSTR            D16, [SP,#0x2C8+var_288]
28522A:  VABS.F32        S30, S0
28522E:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
285232:  VMOV            S0, R0
285236:  VCVT.F32.U32    S18, S0
28523A:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
28523E:  VMOV            S0, R0
285242:  VLDR            S2, =9.775
285246:  VCVT.F32.U32    S0, S0
28524A:  VDIV.F32        S0, S18, S0
28524E:  VCMPE.F32       S0, S16
285252:  VMRS            APSR_nzcv, FPSCR
285256:  VMOV.F32        S0, #11.5
28525A:  IT GT
28525C:  VMOVGT.F32      S0, S2
285260:  VSUB.F32        S0, S19, S0
285264:  VABS.F32        S0, S0
285268:  VCMPE.F32       S0, S30
28526C:  VMRS            APSR_nzcv, FPSCR
285270:  BGE             loc_285296
285272:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
285276:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
28527A:  LDR             R0, =(aScaleSmallest_0 - 0x285280); "SCALE_SMALLEST"
28527C:  ADD             R0, PC; "SCALE_SMALLEST"
28527E:  MOV             R1, R0
285280:  ADDS            R0, R1, #7
285282:  VLDR            D16, [R1]
285286:  VLD1.8          {D17}, [R0]
28528A:  ORR.W           R0, R9, #7
28528E:  VST1.8          {D17}, [R0]
285292:  VSTR            D16, [SP,#0x2C8+var_288]
285296:  LDR             R5, [SP,#0x2C8+var_2B0]
285298:  VLDR            S18, [R6,#0x78]
28529C:  VLDR            S20, [R6,#0x70]
2852A0:  VLDR            S0, [R5,#4]
2852A4:  VCVT.F32.S32    S22, S0
2852A8:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2852AC:  VMOV            S0, R0
2852B0:  VCVT.F32.U32    S24, S0
2852B4:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2852B8:  VMOV            S0, R0
2852BC:  VMOV.F32        S4, #30.0
2852C0:  VCVT.F32.U32    S0, S0
2852C4:  VLDR            S2, [R5,#8]
2852C8:  VMOV.F32        S8, #0.5
2852CC:  ADD             R5, SP, #0x2C8+var_268
2852CE:  VDIV.F32        S0, S24, S0
2852D2:  VCMPE.F32       S0, S16
2852D6:  VMRS            APSR_nzcv, FPSCR
2852DA:  VMOV.F32        S0, S29
2852DE:  VMOV.F32        S10, S8
2852E2:  VLDR            S8, =640.0
2852E6:  IT GT
2852E8:  VMOVGT.F32      S0, S4
2852EC:  VCVT.F32.S32    S2, S2
2852F0:  VSUB.F32        S0, S22, S0
2852F4:  VLDR            S4, [R6,#0x74]
2852F8:  VLDR            S6, [R6,#0x7C]
2852FC:  LDR             R0, [R6,#0x6C]
2852FE:  VADD.F32        S4, S4, S6
285302:  VLDR            S6, =448.0
285306:  LDR             R1, [SP,#0x2C8+var_2B4]
285308:  VDIV.F32        S2, S2, S6
28530C:  LDR.W           R0, [R1,R0,LSL#2]
285310:  ADR             R1, aPositionandsca; "PositionAndScale %d, %d, %s ; %s\n"
285312:  VDIV.F32        S0, S0, S8
285316:  VADD.F32        S6, S20, S18
28531A:  VMUL.F32        S4, S4, S10
28531E:  VMUL.F32        S6, S6, S10
285322:  VDIV.F32        S2, S4, S2
285326:  VDIV.F32        S0, S6, S0
28532A:  VCVT.S32.F32    S2, S2
28532E:  STR             R0, [SP,#0x2C8+var_2C4]
285330:  VCVT.S32.F32    S0, S0
285334:  MOV             R0, R5
285336:  STR.W           R9, [SP,#0x2C8+var_2C8]
28533A:  VMOV            R3, S2
28533E:  VMOV            R2, S0
285342:  BL              sub_5E6BC0
285346:  MOV             R0, R5; char *
285348:  BLX             strlen
28534C:  MOV             R2, R0; char *
28534E:  LDR             R0, [SP,#0x2C8+var_2A8]; this
285350:  MOV             R1, R5; unsigned int
285352:  BLX             j__ZN8CFileMgr5WriteEjPci; CFileMgr::Write(uint,char *,int)
285356:  ADDS            R4, #0x28 ; '('
285358:  CMP.W           R4, #0x2F8
28535C:  BNE.W           loc_284A50
285360:  LDR             R0, [SP,#0x2C8+var_2A8]; this
285362:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
285366:  LDR             R0, =(byte_61CD7E - 0x28536C)
285368:  ADD             R0, PC; byte_61CD7E ; this
28536A:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
28536E:  LDR             R0, =(aAdjustableCfg_0 - 0x285376); "Adjustable.cfg"
285370:  MOVS            R1, #0; char *
285372:  ADD             R0, PC; "Adjustable.cfg"
285374:  BLX             j__ZN15CTouchInterface12LoadFromFileEPKcb; CTouchInterface::LoadFromFile(char const*,bool)
285378:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x28537E)
28537A:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
28537C:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
28537E:  LDR             R0, [R0]; this
285380:  CMP             R0, #0
285382:  IT NE
285384:  BLXNE           j__ZN15CTouchInterface27RepositionAdjustableWidgetsEv; CTouchInterface::RepositionAdjustableWidgets(void)
285388:  LDR             R0, =(__stack_chk_guard_ptr - 0x285390)
28538A:  LDR             R1, [SP,#0x2C8+var_64]
28538C:  ADD             R0, PC; __stack_chk_guard_ptr
28538E:  LDR             R0, [R0]; __stack_chk_guard
285390:  LDR             R0, [R0]
285392:  SUBS            R0, R0, R1
285394:  ITTTT EQ
285396:  ADDEQ.W         SP, SP, #0x268
28539A:  VPOPEQ          {D8-D15}
28539E:  ADDEQ           SP, SP, #4
2853A0:  POPEQ.W         {R8-R11}
2853A4:  IT EQ
2853A6:  POPEQ           {R4-R7,PC}
2853A8:  BLX             __stack_chk_fail
