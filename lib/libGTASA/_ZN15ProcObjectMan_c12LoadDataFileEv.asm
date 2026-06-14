; =========================================================
; Game Engine Function: _ZN15ProcObjectMan_c12LoadDataFileEv
; Address            : 0x456EA8 - 0x45704A
; =========================================================

456EA8:  PUSH            {R4-R7,LR}
456EAA:  ADD             R7, SP, #0xC
456EAC:  PUSH.W          {R8-R11}
456EB0:  SUB             SP, SP, #4
456EB2:  VPUSH           {D8-D13}
456EB6:  SUB             SP, SP, #0x110
456EB8:  MOV             R6, R0
456EBA:  LDR             R0, =(__stack_chk_guard_ptr - 0x456EC2)
456EBC:  ADR             R1, aR_16; "r"
456EBE:  ADD             R0, PC; __stack_chk_guard_ptr
456EC0:  LDR             R0, [R0]; __stack_chk_guard
456EC2:  LDR             R0, [R0]
456EC4:  STR             R0, [SP,#0x160+var_54]
456EC6:  ADR             R0, aDataProcobjDat; "data\\procobj.dat"
456EC8:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
456ECC:  MOV             R4, R0
456ECE:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
456ED2:  CMP             R0, #0
456ED4:  BEQ.W           loc_457022
456ED8:  VMOV.F32        S18, #1.0
456EDC:  LDR             R1, =(g_surfaceInfos_ptr - 0x456EE6)
456EDE:  VLDR            S16, =180.0
456EE2:  ADD             R1, PC; g_surfaceInfos_ptr
456EE4:  VLDR            S20, =80.0
456EE8:  VLDR            S22, =3.1416
456EEC:  LDR             R1, [R1]; g_surfaceInfos
456EEE:  STR             R1, [SP,#0x160+var_12C]
456EF0:  STR             R4, [SP,#0x160+var_128]
456EF2:  LDRB            R1, [R0]
456EF4:  CMP             R1, #0
456EF6:  IT NE
456EF8:  CMPNE           R1, #0x23 ; '#'
456EFA:  BEQ.W           loc_457016
456EFE:  ADD             R1, SP, #0x160+var_F8
456F00:  STR             R1, [SP,#0x160+var_140]
456F02:  ADD             R1, SP, #0x160+var_FC
456F04:  STR             R1, [SP,#0x160+var_13C]
456F06:  ADD             R1, SP, #0x160+var_100
456F08:  STR             R1, [SP,#0x160+var_138]
456F0A:  ADD             R1, SP, #0x160+var_104
456F0C:  STR             R1, [SP,#0x160+var_134]
456F0E:  ADD             R1, SP, #0x160+var_D8
456F10:  STR             R1, [SP,#0x160+var_160]
456F12:  ADD             R1, SP, #0x160+var_DC
456F14:  STR             R1, [SP,#0x160+var_15C]
456F16:  ADD             R1, SP, #0x160+var_E0
456F18:  STR             R1, [SP,#0x160+var_158]
456F1A:  ADD             R1, SP, #0x160+var_E4
456F1C:  STR             R1, [SP,#0x160+var_154]
456F1E:  ADD             R1, SP, #0x160+var_E8
456F20:  STR             R1, [SP,#0x160+var_150]
456F22:  ADD             R1, SP, #0x160+var_EC
456F24:  STR             R1, [SP,#0x160+var_14C]
456F26:  ADD             R1, SP, #0x160+var_F0
456F28:  STR             R1, [SP,#0x160+var_148]
456F2A:  ADD             R1, SP, #0x160+var_F4
456F2C:  ADD             R5, SP, #0x160+var_94
456F2E:  ADD.W           R9, SP, #0x160+var_D4
456F32:  STR             R1, [SP,#0x160+var_144]
456F34:  ADR             R1, aSSFFDDFFFFFFDD; "%s %s %f %f %d %d %f %f %f %f %f %f %d "...
456F36:  MOV             R2, R5
456F38:  MOV             R3, R9
456F3A:  BLX             sscanf
456F3E:  LDR             R0, [SP,#0x160+var_104]
456F40:  MOV             R1, R5; char *
456F42:  LDR             R4, [R6,#4]
456F44:  STR             R0, [SP,#0x160+var_124]
456F46:  LDR             R0, [SP,#0x160+var_100]
456F48:  STR             R0, [SP,#0x160+var_108]
456F4A:  LDR             R0, [SP,#0x160+var_FC]
456F4C:  STR             R0, [SP,#0x160+var_10C]
456F4E:  LDR             R0, [SP,#0x160+var_F8]
456F50:  STR             R0, [SP,#0x160+var_110]
456F52:  LDR             R0, [SP,#0x160+var_F4]
456F54:  STR             R0, [SP,#0x160+var_114]
456F56:  LDR             R0, [SP,#0x160+var_F0]
456F58:  STR             R0, [SP,#0x160+var_118]
456F5A:  LDR             R0, [SP,#0x160+var_EC]
456F5C:  STR             R0, [SP,#0x160+var_11C]
456F5E:  LDR             R0, [SP,#0x160+var_E8]
456F60:  STR             R0, [SP,#0x160+var_120]
456F62:  LDRD.W          R10, R11, [SP,#0x160+var_E4]
456F66:  LDR             R0, [SP,#0x160+var_12C]; this
456F68:  VLDR            S26, [SP,#0x160+var_DC]
456F6C:  VLDR            S24, [SP,#0x160+var_D8]
456F70:  BLX             j__ZN14SurfaceInfos_c20GetSurfaceIdFromNameEPc; SurfaceInfos_c::GetSurfaceIdFromName(char *)
456F74:  ADD.W           R1, R4, R4,LSL#3
456F78:  MOV             R4, R6
456F7A:  ADD.W           R8, R6, R1,LSL#3
456F7E:  ADD.W           R1, R8, #0xC; char *
456F82:  STRB.W          R0, [R8,#8]
456F86:  MOV             R0, R9; this
456F88:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
456F8C:  CBZ             R0, loc_45700C
456F8E:  VMOV            S0, R11
456F92:  VMOV            S2, R10
456F96:  VCVT.F32.S32    S0, S0
456F9A:  VCVT.F32.S32    S2, S2
456F9E:  LDR             R0, [SP,#0x160+var_124]
456FA0:  VMUL.F32        S4, S24, S24
456FA4:  VMIN.F32        D3, D13, D10
456FA8:  UXTB            R0, R0
456FAA:  VMOV            S8, R0
456FAE:  VDIV.F32        S0, S0, S16
456FB2:  VDIV.F32        S2, S2, S16
456FB6:  VDIV.F32        S4, S18, S4
456FBA:  VCVT.F32.U32    S8, S8
456FBE:  VSTR            S24, [R8,#0x10]
456FC2:  LDR             R0, [SP,#0x160+var_120]
456FC4:  VMUL.F32        S6, S6, S6
456FC8:  STR.W           R0, [R8,#0x24]
456FCC:  VMUL.F32        S0, S0, S22
456FD0:  LDR             R0, [SP,#0x160+var_11C]
456FD2:  VMUL.F32        S2, S2, S22
456FD6:  STR.W           R0, [R8,#0x28]
456FDA:  LDR             R0, [SP,#0x160+var_118]
456FDC:  STR.W           R0, [R8,#0x2C]
456FE0:  LDR             R0, [SP,#0x160+var_114]
456FE2:  STR.W           R0, [R8,#0x30]
456FE6:  LDR             R0, [SP,#0x160+var_110]
456FE8:  STR.W           R0, [R8,#0x34]
456FEC:  LDR             R0, [SP,#0x160+var_10C]
456FEE:  STR.W           R0, [R8,#0x38]
456FF2:  LDR             R0, [SP,#0x160+var_108]
456FF4:  STRB.W          R0, [R8,#0x3C]
456FF8:  VSTR            S6, [R8,#0x18]
456FFC:  VSTR            S8, [R8,#0x40]
457000:  VSTR            S4, [R8,#0x14]
457004:  VSTR            S0, [R8,#0x1C]
457008:  VSTR            S2, [R8,#0x20]
45700C:  MOV             R6, R4
45700E:  LDR             R0, [R6,#4]
457010:  ADDS            R0, #1
457012:  STR             R0, [R6,#4]
457014:  LDR             R4, [SP,#0x160+var_128]
457016:  MOV             R0, R4; this
457018:  BLX             j__ZN11CFileLoader8LoadLineEj; CFileLoader::LoadLine(uint)
45701C:  CMP             R0, #0
45701E:  BNE.W           loc_456EF2
457022:  MOV             R0, R4; this
457024:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
457028:  LDR             R0, =(__stack_chk_guard_ptr - 0x457030)
45702A:  LDR             R1, [SP,#0x160+var_54]
45702C:  ADD             R0, PC; __stack_chk_guard_ptr
45702E:  LDR             R0, [R0]; __stack_chk_guard
457030:  LDR             R0, [R0]
457032:  SUBS            R0, R0, R1
457034:  ITTTT EQ
457036:  ADDEQ           SP, SP, #0x110
457038:  VPOPEQ          {D8-D13}
45703C:  ADDEQ           SP, SP, #4
45703E:  POPEQ.W         {R8-R11}
457042:  IT EQ
457044:  POPEQ           {R4-R7,PC}
457046:  BLX             __stack_chk_fail
