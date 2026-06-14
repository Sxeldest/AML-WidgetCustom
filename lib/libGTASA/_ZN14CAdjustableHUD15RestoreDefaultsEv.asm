; =========================================================
; Game Engine Function: _ZN14CAdjustableHUD15RestoreDefaultsEv
; Address            : 0x285DD8 - 0x286162
; =========================================================

285DD8:  PUSH            {R4-R7,LR}
285DDA:  ADD             R7, SP, #0xC
285DDC:  PUSH.W          {R8-R11}
285DE0:  SUB             SP, SP, #4
285DE2:  VPUSH           {D8-D15}
285DE6:  SUB             SP, SP, #0x28
285DE8:  MOV             R4, R0
285DEA:  BLX             j__ZN8CFileMgr17SetDirMyDocumentsEv; CFileMgr::SetDirMyDocuments(void)
285DEE:  LDR             R5, =(aAdjustableCfg_0 - 0x285DF4); "Adjustable.cfg"
285DF0:  ADD             R5, PC; "Adjustable.cfg"
285DF2:  MOV             R0, R5; this
285DF4:  BLX             j__ZN8CFileMgr18OpenFileForWritingEPKc; CFileMgr::OpenFileForWriting(char const*)
285DF8:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
285DFC:  LDR             R0, =(byte_61CD7E - 0x285E02)
285DFE:  ADD             R0, PC; byte_61CD7E ; this
285E00:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
285E04:  BLX             j__ZN15CTouchInterface21LoadDefaultConfigFileEv; CTouchInterface::LoadDefaultConfigFile(void)
285E08:  MOV             R0, R5; this
285E0A:  MOVS            R1, #0; char *
285E0C:  BLX             j__ZN15CTouchInterface12LoadFromFileEPKcb; CTouchInterface::LoadFromFile(char const*,bool)
285E10:  LDR             R0, =(PositionIDs_ptr - 0x285E22)
285E12:  VMOV.F32        S20, #30.0
285E16:  VLDR            S28, =1.9
285E1A:  MOV.W           R8, #0
285E1E:  ADD             R0, PC; PositionIDs_ptr
285E20:  VLDR            S18, =0.0
285E24:  VLDR            S22, =640.0
285E28:  LDR             R5, [R0]; PositionIDs
285E2A:  LDR             R0, =(RsGlobal_ptr - 0x285E34)
285E2C:  VLDR            S31, =1.8
285E30:  ADD             R0, PC; RsGlobal_ptr
285E32:  VLDR            S16, =448.0
285E36:  LDR.W           R11, [R0]; RsGlobal
285E3A:  LDR             R0, =(RsGlobal_ptr - 0x285E40)
285E3C:  ADD             R0, PC; RsGlobal_ptr
285E3E:  LDR             R0, [R0]; RsGlobal
285E40:  STR             R0, [SP,#0x88+var_74]
285E42:  LDR             R0, =(RsGlobal_ptr - 0x285E48)
285E44:  ADD             R0, PC; RsGlobal_ptr
285E46:  LDR             R0, [R0]; RsGlobal
285E48:  STR             R0, [SP,#0x88+var_7C]
285E4A:  LDR             R0, =(RsGlobal_ptr - 0x285E50)
285E4C:  ADD             R0, PC; RsGlobal_ptr
285E4E:  LDR.W           R10, [R0]; RsGlobal
285E52:  LDR             R0, =(RsGlobal_ptr - 0x285E58)
285E54:  ADD             R0, PC; RsGlobal_ptr
285E56:  LDR             R0, [R0]; RsGlobal
285E58:  STR             R0, [SP,#0x88+var_78]
285E5A:  LDR             R0, =(RsGlobal_ptr - 0x285E60)
285E5C:  ADD             R0, PC; RsGlobal_ptr
285E5E:  LDR             R0, [R0]; RsGlobal
285E60:  STR             R0, [SP,#0x88+var_80]
285E62:  ADD.W           R9, R4, R8
285E66:  LDR             R0, [R4]
285E68:  LDR.W           R1, [R9,#0x88]
285E6C:  TST             R0, R1
285E6E:  BEQ.W           loc_286146
285E72:  MOVS            R0, #0
285E74:  ADD             R1, SP, #0x88+var_70
285E76:  STRD.W          R0, R0, [SP,#0x88+var_68]
285E7A:  ADD             R2, SP, #0x88+var_68
285E7C:  STRD.W          R0, R0, [SP,#0x88+var_70]
285E80:  ADD             R3, SP, #0x88+var_6C
285E82:  LDR             R0, [R5]
285E84:  STR             R1, [SP,#0x88+var_88]
285E86:  ADD             R1, SP, #0x88+var_64
285E88:  BLX             j__ZN15CTouchInterface17GetWidgetPositionENS_17WidgetPositionIDsERfS1_S1_S1_; CTouchInterface::GetWidgetPosition(CTouchInterface::WidgetPositionIDs,float &,float &,float &,float &)
285E8C:  VLDR            S0, [R11,#4]
285E90:  VLDR            S30, [SP,#0x88+var_64]
285E94:  VCVT.F32.S32    S17, S0
285E98:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
285E9C:  VMOV            S19, R0
285EA0:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
285EA4:  VLDR            S0, [R11,#4]
285EA8:  VMOV            S4, R0
285EAC:  VLDR            S2, [R11,#8]
285EB0:  VCVT.F32.U32    S21, S19
285EB4:  VCVT.F32.U32    S23, S4
285EB8:  VCVT.F32.S32    S25, S2
285EBC:  VLDR            S19, [SP,#0x88+var_6C]
285EC0:  VCVT.F32.S32    S27, S0
285EC4:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
285EC8:  VMOV            S0, R0
285ECC:  VCVT.F32.U32    S29, S0
285ED0:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
285ED4:  VDIV.F32        S2, S21, S23
285ED8:  VMOV            S0, R0
285EDC:  VCMPE.F32       S2, S28
285EE0:  VCVT.F32.U32    S0, S0
285EE4:  VMRS            APSR_nzcv, FPSCR
285EE8:  VMOV.F32        S2, S18
285EEC:  VMOV.F32        S4, S18
285EF0:  VDIV.F32        S0, S29, S0
285EF4:  IT GT
285EF6:  VMOVGT.F32      S2, S20
285EFA:  VCMPE.F32       S0, S28
285EFE:  VMRS            APSR_nzcv, FPSCR
285F02:  VSUB.F32        S0, S17, S2
285F06:  IT GT
285F08:  VMOVGT.F32      S4, S20
285F0C:  LDR.W           R6, [R11,#(dword_9FC904 - 0x9FC8FC)]
285F10:  VSUB.F32        S2, S27, S4
285F14:  VDIV.F32        S4, S27, S25
285F18:  VDIV.F32        S23, S2, S22
285F1C:  VCMPE.F32       S4, S31
285F20:  VMRS            APSR_nzcv, FPSCR
285F24:  BLE             loc_285F3E
285F26:  VMOV            S2, R6
285F2A:  VMOV.F32        S4, #0.5
285F2E:  VCVT.F32.S32    S2, S2
285F32:  VDIV.F32        S2, S2, S16
285F36:  VADD.F32        S2, S23, S2
285F3A:  VMUL.F32        S23, S2, S4
285F3E:  LDR             R0, [SP,#0x88+var_74]
285F40:  VDIV.F32        S21, S0, S22
285F44:  VLDR            S0, [R0,#4]
285F48:  VLDR            S17, [SP,#0x88+var_70]
285F4C:  VLDR            S27, [SP,#0x88+var_68]
285F50:  VCVT.F32.S32    S25, S0
285F54:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
285F58:  VMOV            S0, R0
285F5C:  VCVT.F32.U32    S29, S0
285F60:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
285F64:  VMOV            S0, R0
285F68:  VMOV            S2, R6
285F6C:  VCVT.F32.U32    S0, S0
285F70:  VDIV.F32        S0, S29, S0
285F74:  VCMPE.F32       S0, S28
285F78:  VMRS            APSR_nzcv, FPSCR
285F7C:  VMOV.F32        S0, S18
285F80:  IT GT
285F82:  VMOVGT.F32      S0, S20
285F86:  VCVT.F32.S32    S2, S2
285F8A:  VSUB.F32        S4, S25, S0
285F8E:  VDIV.F32        S0, S2, S16
285F92:  VDIV.F32        S2, S25, S2
285F96:  VDIV.F32        S25, S4, S22
285F9A:  VCMPE.F32       S2, S31
285F9E:  VMRS            APSR_nzcv, FPSCR
285FA2:  BLE             loc_285FBE
285FA4:  LDR             R0, [SP,#0x88+var_7C]
285FA6:  VMOV.F32        S4, #0.5
285FAA:  VLDR            S2, [R0,#8]
285FAE:  VCVT.F32.S32    S2, S2
285FB2:  VDIV.F32        S2, S2, S16
285FB6:  VADD.F32        S2, S25, S2
285FBA:  VMUL.F32        S25, S2, S4
285FBE:  VMUL.F32        S23, S19, S23
285FC2:  VLDR            S29, [SP,#0x88+var_64]
285FC6:  VMUL.F32        S19, S27, S0
285FCA:  VLDR            S0, [R10,#4]
285FCE:  VMUL.F32        S21, S30, S21
285FD2:  VCVT.F32.S32    S27, S0
285FD6:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
285FDA:  VMOV            S30, R0
285FDE:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
285FE2:  VLDR            S0, [R10,#4]
285FE6:  VMOV            S4, R0
285FEA:  VLDR            S2, [R10,#8]
285FEE:  VCVT.F32.U32    S31, S30
285FF2:  VCVT.F32.U32    S28, S4
285FF6:  VCVT.F32.S32    S24, S2
285FFA:  VLDR            S30, [SP,#0x88+var_6C]
285FFE:  VCVT.F32.S32    S26, S0
286002:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
286006:  VMOV            S0, R0
28600A:  VCVT.F32.U32    S16, S0
28600E:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
286012:  VDIV.F32        S2, S31, S28
286016:  VMOV            S0, R0
28601A:  VLDR            S28, =1.9
28601E:  VDIV.F32        S4, S26, S24
286022:  VCVT.F32.U32    S0, S0
286026:  VLDR            S31, =1.8
28602A:  VCMPE.F32       S2, S28
28602E:  VMRS            APSR_nzcv, FPSCR
286032:  VMOV.F32        S2, S18
286036:  VDIV.F32        S0, S16, S0
28603A:  IT GT
28603C:  VMOVGT.F32      S2, S20
286040:  VCMPE.F32       S0, S28
286044:  VMRS            APSR_nzcv, FPSCR
286048:  VSUB.F32        S2, S27, S2
28604C:  VMOV.F32        S0, S18
286050:  VCMPE.F32       S4, S31
286054:  VDIV.F32        S2, S2, S22
286058:  IT GT
28605A:  VMOVGT.F32      S0, S20
28605E:  LDR.W           R6, [R10,#(dword_9FC904 - 0x9FC8FC)]
286062:  VSUB.F32        S0, S26, S0
286066:  VMRS            APSR_nzcv, FPSCR
28606A:  VDIV.F32        S27, S0, S22
28606E:  VMUL.F32        S0, S17, S25
286072:  VMUL.F32        S25, S29, S2
286076:  BLE             loc_286096
286078:  VMOV            S2, R6
28607C:  VLDR            S29, =448.0
286080:  VMOV.F32        S4, #0.5
286084:  VCVT.F32.S32    S2, S2
286088:  VDIV.F32        S2, S2, S29
28608C:  VADD.F32        S2, S27, S2
286090:  VMUL.F32        S27, S2, S4
286094:  B               loc_28609A
286096:  VLDR            S29, =448.0
28609A:  LDR             R0, [SP,#0x88+var_78]
28609C:  VSUB.F32        S17, S19, S0
2860A0:  VSUB.F32        S21, S21, S23
2860A4:  VLDR            S19, [SP,#0x88+var_70]
2860A8:  VLDR            S16, [SP,#0x88+var_68]
2860AC:  VLDR            S0, [R0,#4]
2860B0:  VCVT.F32.S32    S24, S0
2860B4:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2860B8:  VMOV            S0, R0
2860BC:  VCVT.F32.U32    S26, S0
2860C0:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2860C4:  VMOV            S0, R0
2860C8:  VMOV            S2, R6
2860CC:  VCVT.F32.U32    S0, S0
2860D0:  VDIV.F32        S0, S26, S0
2860D4:  VCMPE.F32       S0, S28
2860D8:  VMRS            APSR_nzcv, FPSCR
2860DC:  VMOV.F32        S0, S18
2860E0:  IT GT
2860E2:  VMOVGT.F32      S0, S20
2860E6:  VCVT.F32.S32    S2, S2
2860EA:  VSUB.F32        S0, S24, S0
2860EE:  VDIV.F32        S4, S2, S29
2860F2:  VDIV.F32        S6, S24, S2
2860F6:  VDIV.F32        S2, S0, S22
2860FA:  VMUL.F32        S0, S30, S27
2860FE:  VMUL.F32        S4, S16, S4
286102:  VMOV.F32        S16, S29
286106:  VCMPE.F32       S6, S31
28610A:  VMRS            APSR_nzcv, FPSCR
28610E:  VADD.F32        S0, S25, S0
286112:  BLE             loc_28612E
286114:  LDR             R0, [SP,#0x88+var_80]
286116:  VLDR            S6, [R0,#8]
28611A:  VCVT.F32.S32    S6, S6
28611E:  VDIV.F32        S6, S6, S16
286122:  VADD.F32        S2, S2, S6
286126:  VMOV.F32        S6, #0.5
28612A:  VMUL.F32        S2, S2, S6
28612E:  VMUL.F32        S2, S19, S2
286132:  VSTR            S21, [R9,#0x70]
286136:  VADD.F32        S2, S4, S2
28613A:  VSTR            S2, [R9,#0x74]
28613E:  VSTR            S0, [R9,#0x78]
286142:  VSTR            S17, [R9,#0x7C]
286146:  ADD.W           R8, R8, #0x28 ; '('
28614A:  ADDS            R5, #4
28614C:  CMP.W           R8, #0x2F8
286150:  BNE.W           loc_285E62
286154:  ADD             SP, SP, #0x28 ; '('
286156:  VPOP            {D8-D15}
28615A:  ADD             SP, SP, #4
28615C:  POP.W           {R8-R11}
286160:  POP             {R4-R7,PC}
