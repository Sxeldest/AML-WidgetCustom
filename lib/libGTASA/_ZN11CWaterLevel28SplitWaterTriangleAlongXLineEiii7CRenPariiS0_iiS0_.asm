; =========================================================
; Game Engine Function: _ZN11CWaterLevel28SplitWaterTriangleAlongXLineEiii7CRenPariiS0_iiS0_
; Address            : 0x598C00 - 0x598F3A
; =========================================================

598C00:  PUSH            {R4-R7,LR}
598C02:  ADD             R7, SP, #0xC
598C04:  PUSH.W          {R8-R11}
598C08:  SUB             SP, SP, #4
598C0A:  VPUSH           {D8-D15}
598C0E:  SUB             SP, SP, #0x48
598C10:  MOV             R6, R1
598C12:  MOV             R8, R0
598C14:  LDRD.W          R0, R9, [R7,#arg_24]
598C18:  MOV             R5, R3
598C1A:  LDR.W           R10, [R7,#arg_38]
598C1E:  MOV             R11, R2
598C20:  LDR             R1, [R7,#arg_C]
598C22:  CMP             R6, R0
598C24:  BNE.W           loc_598DAC
598C28:  SUB.W           R10, R8, R6
598C2C:  SUB.W           R0, R11, R9
598C30:  SUBS            R4, R1, R6
598C32:  MUL.W           R0, R0, R10
598C36:  MOV             R1, R4
598C38:  BLX.W           __aeabi_idiv
598C3C:  VMOV            S0, R4
598C40:  ADD.W           R4, R0, R9
598C44:  VMOV            S2, R10
598C48:  LDR             R0, [R7,#arg_1C]
598C4A:  VCVT.F32.S32    S0, S0
598C4E:  LDR             R1, [R7,#arg_2C]
598C50:  VCVT.F32.S32    S2, S2
598C54:  STR             R1, [SP,#0xA8+var_80]
598C56:  VMOV            S19, R5
598C5A:  MOV.W           R10, #0
598C5E:  VMOV            S4, R1
598C62:  LDR             R1, [R7,#arg_30]
598C64:  STR             R1, [SP,#0xA8+var_7C]
598C66:  STR.W           R9, [SP,#0xA8+var_84]
598C6A:  VMOV            S6, R1
598C6E:  LDR             R1, [R7,#arg_34]
598C70:  STR             R1, [SP,#0xA8+var_78]
598C72:  VDIV.F32        S0, S2, S0
598C76:  VMOV.F32        S2, #1.0
598C7A:  VMOV            S8, R1
598C7E:  LDR             R1, [R7,#arg_38]
598C80:  STR             R1, [SP,#0xA8+var_74]
598C82:  MOV             R1, R4
598C84:  STR             R6, [SP,#0xA8+var_88]
598C86:  STR.W           R10, [SP,#0xA8+var_8C]
598C8A:  STRD.W          R10, R8, [SP,#0xA8+var_A4]
598C8E:  STR             R4, [SP,#0xA8+var_9C]
598C90:  VSUB.F32        S20, S2, S0
598C94:  VMOV            S2, R0
598C98:  LDR             R0, [R7,#arg_14]
598C9A:  VMUL.F32        S22, S0, S2
598C9E:  VMOV            S10, R0
598CA2:  LDR             R0, [R7,#arg_18]
598CA4:  VMUL.F32        S28, S0, S10
598CA8:  VMOV            S12, R0
598CAC:  LDR             R0, [R7,#arg_4]
598CAE:  VMUL.F32        S2, S20, S8
598CB2:  VMUL.F32        S4, S20, S4
598CB6:  VMOV            S24, R0
598CBA:  LDR             R0, [R7,#arg_0]
598CBC:  VMUL.F32        S26, S0, S12
598CC0:  VMUL.F32        S8, S0, S24
598CC4:  MOV             R9, R0
598CC6:  VMUL.F32        S6, S20, S6
598CCA:  VMOV            S21, R9
598CCE:  MOV             R0, R6
598CD0:  VADD.F32        S16, S22, S2
598CD4:  VADD.F32        S30, S28, S4
598CD8:  VADD.F32        S17, S8, S2
598CDC:  VMUL.F32        S2, S0, S19
598CE0:  VMUL.F32        S0, S0, S21
598CE4:  VADD.F32        S18, S26, S6
598CE8:  VSTR            S30, [SP,#0xA8+var_98]
598CEC:  VADD.F32        S23, S2, S4
598CF0:  VADD.F32        S25, S0, S6
598CF4:  VSTR            S18, [SP,#0xA8+var_94]
598CF8:  VSTR            S16, [SP,#0xA8+var_90]
598CFC:  VSTR            S17, [SP,#0xA8+var_A8]
598D00:  VMOV            R2, S23
598D04:  VMOV            R3, S25
598D08:  BLX.W           j__ZN11CWaterLevel19RenderWaterTriangleEii7CRenPariiS0_iiS0_; CWaterLevel::RenderWaterTriangle(int,int,CRenPar,int,int,CRenPar,int,int,CRenPar)
598D0C:  VMUL.F32        S4, S20, S24
598D10:  LDR             R0, [R7,#arg_8]
598D12:  VMUL.F32        S2, S20, S21
598D16:  STR             R0, [SP,#0xA8+var_9C]
598D18:  VMUL.F32        S0, S20, S19
598D1C:  LDR             R0, [R7,#arg_4]
598D1E:  MOV             R1, R8
598D20:  MOV             R2, R11
598D22:  MOV             R3, R4
598D24:  STRD.W          R9, R0, [SP,#0xA8+var_A4]
598D28:  MOV             R0, R6
598D2A:  STR.W           R10, [SP,#0xA8+var_6C]
598D2E:  VADD.F32        S22, S4, S22
598D32:  VSTR            S30, [SP,#0xA8+var_78]
598D36:  VADD.F32        S24, S2, S26
598D3A:  VSTR            S18, [SP,#0xA8+var_74]
598D3E:  VADD.F32        S20, S0, S28
598D42:  VSTR            S16, [SP,#0xA8+var_70]
598D46:  STR.W           R10, [SP,#0xA8+var_7C]
598D4A:  VSTR            S23, [SP,#0xA8+var_88]
598D4E:  VSTR            S25, [SP,#0xA8+var_84]
598D52:  VSTR            S17, [SP,#0xA8+var_80]
598D56:  STR.W           R10, [SP,#0xA8+var_8C]
598D5A:  VSTR            S20, [SP,#0xA8+var_98]
598D5E:  VSTR            S24, [SP,#0xA8+var_94]
598D62:  VSTR            S22, [SP,#0xA8+var_90]
598D66:  STR             R5, [SP,#0xA8+var_A8]
598D68:  BLX.W           j__ZN11CWaterLevel20RenderWaterRectangleEiiii7CRenParS0_S0_S0_; CWaterLevel::RenderWaterRectangle(int,int,int,int,CRenPar,CRenPar,CRenPar,CRenPar)
598D6C:  VMOV            R2, S20
598D70:  LDR             R0, [R7,#arg_20]
598D72:  VMOV            R3, S24
598D76:  STR             R4, [SP,#0xA8+var_84]
598D78:  STR             R0, [SP,#0xA8+var_8C]
598D7A:  MOV             R1, R11
598D7C:  LDR             R0, [R7,#arg_1C]
598D7E:  STR             R0, [SP,#0xA8+var_90]
598D80:  LDR             R0, [R7,#arg_18]
598D82:  STR             R0, [SP,#0xA8+var_94]
598D84:  LDR             R0, [R7,#arg_14]
598D86:  STR.W           R10, [SP,#0xA8+var_74]
598D8A:  VSTR            S30, [SP,#0xA8+var_80]
598D8E:  VSTR            S18, [SP,#0xA8+var_7C]
598D92:  VSTR            S16, [SP,#0xA8+var_78]
598D96:  STR.W           R8, [SP,#0xA8+var_88]
598D9A:  STRD.W          R11, R0, [SP,#0xA8+var_9C]
598D9E:  LDR             R0, [R7,#arg_C]
598DA0:  STRD.W          R10, R0, [SP,#0xA8+var_A4]
598DA4:  MOV             R0, R8
598DA6:  VSTR            S22, [SP,#0xA8+var_A8]
598DAA:  B               loc_598F28
598DAC:  STR             R5, [SP,#0xA8+var_64]
598DAE:  SUB.W           R5, R8, R6
598DB2:  SUB.W           R0, R9, R11
598DB6:  SUBS            R4, R1, R6
598DB8:  MULS            R0, R5
598DBA:  MOV             R1, R4
598DBC:  BLX.W           __aeabi_idiv
598DC0:  VMOV            S0, R4
598DC4:  LDR             R1, [R7,#arg_2C]
598DC6:  VMOV            S2, R5
598DCA:  ADD.W           R4, R0, R11
598DCE:  VCVT.F32.S32    S0, S0
598DD2:  LDR             R0, [R7,#arg_4]
598DD4:  VCVT.F32.S32    S2, S2
598DD8:  STR             R1, [SP,#0xA8+var_80]
598DDA:  STR.W           R9, [SP,#0xA8+var_84]
598DDE:  MOVS            R5, #0
598DE0:  VMOV            S10, R0
598DE4:  LDR             R0, [R7,#arg_C]
598DE6:  LDR.W           R9, [R7,#arg_0]
598DEA:  VDIV.F32        S16, S2, S0
598DEE:  VMOV            S2, R1
598DF2:  LDR             R1, [R7,#arg_14]
598DF4:  VMOV.F32        S0, #1.0
598DF8:  VMUL.F32        S2, S16, S2
598DFC:  VMOV            S18, R1
598E00:  LDR             R1, [R7,#arg_30]
598E02:  STR             R1, [SP,#0xA8+var_7C]
598E04:  VMOV            S4, R1
598E08:  LDR             R1, [R7,#arg_34]
598E0A:  STR             R1, [SP,#0xA8+var_78]
598E0C:  STR.W           R10, [SP,#0xA8+var_74]
598E10:  VSUB.F32        S0, S0, S16
598E14:  LDR.W           R10, [R7,#arg_18]
598E18:  VMOV            S6, R1
598E1C:  STR             R0, [SP,#0xA8+var_88]
598E1E:  VMUL.F32        S4, S16, S4
598E22:  VMUL.F32        S6, S16, S6
598E26:  STR             R5, [SP,#0xA8+var_8C]
598E28:  VMOV            S20, R10
598E2C:  LDR.W           R10, [R7,#arg_1C]
598E30:  STRD.W          R5, R0, [SP,#0xA8+var_A4]
598E34:  MOV             R0, R8
598E36:  MOV             R1, R4
598E38:  STR             R4, [SP,#0xA8+var_9C]
598E3A:  VMOV            S22, R10
598E3E:  LDR.W           R10, [SP,#0xA8+var_64]
598E42:  VMUL.F32        S24, S0, S10
598E46:  VMUL.F32        S8, S0, S22
598E4A:  VMUL.F32        S12, S0, S20
598E4E:  VMUL.F32        S14, S0, S18
598E52:  VADD.F32        S17, S24, S6
598E56:  VADD.F32        S26, S8, S6
598E5A:  VMOV            S6, R10
598E5E:  VMOV            S8, R9
598E62:  VMUL.F32        S19, S0, S6
598E66:  VMUL.F32        S21, S0, S8
598E6A:  VADD.F32        S30, S14, S2
598E6E:  VADD.F32        S28, S12, S4
598E72:  VADD.F32        S23, S19, S2
598E76:  VADD.F32        S25, S21, S4
598E7A:  VSTR            S30, [SP,#0xA8+var_98]
598E7E:  VSTR            S28, [SP,#0xA8+var_94]
598E82:  VSTR            S26, [SP,#0xA8+var_90]
598E86:  VSTR            S17, [SP,#0xA8+var_A8]
598E8A:  VMOV            R2, S23
598E8E:  VMOV            R3, S25
598E92:  BLX.W           j__ZN11CWaterLevel19RenderWaterTriangleEii7CRenPariiS0_iiS0_; CWaterLevel::RenderWaterTriangle(int,int,CRenPar,int,int,CRenPar,int,int,CRenPar)
598E96:  VMUL.F32        S0, S16, S18
598E9A:  LDR             R0, [R7,#arg_20]
598E9C:  VMUL.F32        S2, S16, S20
598EA0:  STR             R0, [SP,#0xA8+var_8C]
598EA2:  VMUL.F32        S4, S16, S22
598EA6:  LDR             R0, [R7,#arg_1C]
598EA8:  STR             R0, [SP,#0xA8+var_90]
598EAA:  MOV             R2, R11
598EAC:  LDR             R0, [R7,#arg_18]
598EAE:  MOV             R3, R4
598EB0:  LDR             R1, [R7,#arg_C]
598EB2:  STR             R0, [SP,#0xA8+var_94]
598EB4:  VADD.F32        S16, S19, S0
598EB8:  LDR             R0, [R7,#arg_14]
598EBA:  VADD.F32        S18, S21, S2
598EBE:  STR             R0, [SP,#0xA8+var_98]
598EC0:  VADD.F32        S20, S24, S4
598EC4:  MOV             R0, R8
598EC6:  STR             R5, [SP,#0xA8+var_6C]
598EC8:  VSTR            S30, [SP,#0xA8+var_78]
598ECC:  VSTR            S28, [SP,#0xA8+var_74]
598ED0:  VSTR            S26, [SP,#0xA8+var_70]
598ED4:  STR             R5, [SP,#0xA8+var_7C]
598ED6:  VSTR            S23, [SP,#0xA8+var_88]
598EDA:  VSTR            S25, [SP,#0xA8+var_84]
598EDE:  VSTR            S17, [SP,#0xA8+var_80]
598EE2:  STR             R5, [SP,#0xA8+var_9C]
598EE4:  VSTR            S16, [SP,#0xA8+var_A8]
598EE8:  VSTR            S18, [SP,#0xA8+var_A4]
598EEC:  VSTR            S20, [SP,#0xA8+var_A0]
598EF0:  BLX.W           j__ZN11CWaterLevel20RenderWaterRectangleEiiii7CRenParS0_S0_S0_; CWaterLevel::RenderWaterRectangle(int,int,int,int,CRenPar,CRenPar,CRenPar,CRenPar)
598EF4:  LDR             R0, [R7,#arg_4]
598EF6:  ADD             R1, SP, #0xA8+var_A4
598EF8:  STR             R4, [SP,#0xA8+var_84]
598EFA:  MOV             R2, R10
598EFC:  STR             R5, [SP,#0xA8+var_74]
598EFE:  MOV             R3, R9
598F00:  VSTR            S23, [SP,#0xA8+var_80]
598F04:  VSTR            S25, [SP,#0xA8+var_7C]
598F08:  VSTR            S17, [SP,#0xA8+var_78]
598F0C:  STRD.W          R5, R8, [SP,#0xA8+var_8C]
598F10:  VSTR            S16, [SP,#0xA8+var_98]
598F14:  VSTR            S18, [SP,#0xA8+var_94]
598F18:  VSTR            S20, [SP,#0xA8+var_90]
598F1C:  STR             R0, [SP,#0xA8+var_A8]
598F1E:  LDR             R0, [R7,#arg_8]
598F20:  STM.W           R1, {R0,R8,R11}
598F24:  MOV             R0, R6
598F26:  MOV             R1, R11
598F28:  BLX.W           j__ZN11CWaterLevel19RenderWaterTriangleEii7CRenPariiS0_iiS0_; CWaterLevel::RenderWaterTriangle(int,int,CRenPar,int,int,CRenPar,int,int,CRenPar)
598F2C:  ADD             SP, SP, #0x48 ; 'H'
598F2E:  VPOP            {D8-D15}
598F32:  ADD             SP, SP, #4
598F34:  POP.W           {R8-R11}
598F38:  POP             {R4-R7,PC}
