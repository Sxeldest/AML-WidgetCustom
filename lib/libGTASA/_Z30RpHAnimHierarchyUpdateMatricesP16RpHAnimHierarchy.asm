; =========================================================
; Game Engine Function: _Z30RpHAnimHierarchyUpdateMatricesP16RpHAnimHierarchy
; Address            : 0x1C2CB4 - 0x1C3566
; =========================================================

1C2CB4:  PUSH            {R4-R7,LR}
1C2CB6:  ADD             R7, SP, #0xC
1C2CB8:  PUSH.W          {R8-R11}
1C2CBC:  SUB             SP, SP, #4
1C2CBE:  VPUSH           {D8-D9}
1C2CC2:  SUB.W           SP, SP, #0x8F0
1C2CC6:  MOV             R4, R0
1C2CC8:  LDR.W           R11, [R4]
1C2CCC:  STR             R4, [SP,#0x920+var_8FC]
1C2CCE:  TST.W           R11, #2
1C2CD2:  BNE             loc_1C2CF0
1C2CD4:  MOVS.W          R0, R11,LSL#31
1C2CD8:  ITT NE
1C2CDA:  LDRNE           R1, [R4,#0x1C]
1C2CDC:  ADDSNE.W        R0, R1, #1
1C2CE0:  BNE             loc_1C2D8A
1C2CE2:  MOVS.W          R0, R11,LSL#17
1C2CE6:  BMI             loc_1C2DC6
1C2CE8:  ADD             R0, SP, #0x920+var_878
1C2CEA:  STR             R0, [SP,#0x920+var_900]
1C2CEC:  MOV             R0, R4
1C2CEE:  B               loc_1C2DF8
1C2CF0:  LDR             R0, [R4,#0x14]
1C2CF2:  LDR             R5, [R0,#4]
1C2CF4:  CMP             R5, #0
1C2CF6:  BEQ             loc_1C2DA0
1C2CF8:  MOV             R0, R5
1C2CFA:  BLX             j__Z12RwFrameDirtyPK7RwFrame; RwFrameDirty(RwFrame const*)
1C2CFE:  CMP             R0, #0
1C2D00:  BEQ.W           loc_1C2EBC
1C2D04:  ADD.W           R0, R5, #0x10
1C2D08:  ADD.W           R8, SP, #0x920+var_878
1C2D0C:  VLD1.32         {D16-D17}, [R0]
1C2D10:  ADD.W           R0, R5, #0x20 ; ' '
1C2D14:  ADD.W           R9, R8, #0x30 ; '0'
1C2D18:  ADD.W           R4, R8, #0x20 ; ' '
1C2D1C:  VLD1.32         {D18-D19}, [R0]
1C2D20:  ADD.W           R0, R5, #0x30 ; '0'
1C2D24:  VLD1.32         {D20-D21}, [R0]
1C2D28:  ADD.W           R0, R5, #0x40 ; '@'
1C2D2C:  VLD1.32         {D22-D23}, [R0]
1C2D30:  MOV             R0, R8
1C2D32:  VST1.64         {D22-D23}, [R9]
1C2D36:  VST1.64         {D20-D21}, [R4]
1C2D3A:  VST1.64         {D16-D17}, [R0]!
1C2D3E:  VST1.64         {D18-D19}, [R0]
1C2D42:  LDR             R6, [R5,#4]
1C2D44:  CBZ             R6, loc_1C2D86
1C2D46:  ADD             R5, SP, #0x920+var_838
1C2D48:  MOV             R0, R8
1C2D4A:  VLD1.64         {D22-D23}, [R9]
1C2D4E:  ADD.W           R2, R6, #0x10
1C2D52:  MOV             R1, R5
1C2D54:  VLD1.64         {D16-D17}, [R0]!
1C2D58:  VLD1.64         {D18-D19}, [R0]
1C2D5C:  ADD.W           R0, R5, #0x30 ; '0'
1C2D60:  VST1.64         {D22-D23}, [R0]
1C2D64:  ADD.W           R0, R5, #0x20 ; ' '
1C2D68:  VLD1.64         {D20-D21}, [R4]
1C2D6C:  VST1.64         {D20-D21}, [R0]
1C2D70:  MOV             R0, R5
1C2D72:  VST1.64         {D16-D17}, [R0]!
1C2D76:  VST1.64         {D18-D19}, [R0]
1C2D7A:  MOV             R0, R8
1C2D7C:  BLX             j__Z16RwMatrixMultiplyP11RwMatrixTagPKS_S2_; RwMatrixMultiply(RwMatrixTag *,RwMatrixTag const*,RwMatrixTag const*)
1C2D80:  LDR             R6, [R6,#4]
1C2D82:  CMP             R6, #0
1C2D84:  BNE             loc_1C2D48
1C2D86:  LDR             R4, [SP,#0x920+var_8FC]
1C2D88:  B               loc_1C2EF4
1C2D8A:  LDR             R0, [R4,#0x18]
1C2D8C:  LDR             R2, [R0,#8]
1C2D8E:  ADD.W           R1, R2, R1,LSL#6
1C2D92:  STR             R1, [SP,#0x920+var_900]
1C2D94:  AND.W           R1, R11, #0x6000
1C2D98:  CMP.W           R1, #0x6000
1C2D9C:  BEQ             loc_1C2DF8
1C2D9E:  B               loc_1C32B2
1C2DA0:  MOV.W           R0, #0x3F800000
1C2DA4:  MOVS            R1, #0
1C2DA6:  STR             R0, [SP,#0x920+var_864]
1C2DA8:  STR             R0, [SP,#0x920+var_850]
1C2DAA:  STR             R1, [SP,#0x920+var_868]
1C2DAC:  STRD.W          R0, R1, [SP,#0x920+var_878]
1C2DB0:  MOV.W           R0, #0xFFFFFFFF
1C2DB4:  STR             R1, [SP,#0x920+var_870]
1C2DB6:  STR             R1, [SP,#0x920+var_860]
1C2DB8:  STRD.W          R1, R1, [SP,#0x920+var_858]
1C2DBC:  STRD.W          R1, R1, [SP,#0x920+var_844]
1C2DC0:  STR             R0, [SP,#0x920+var_86C]
1C2DC2:  STR             R1, [SP,#0x920+var_848]
1C2DC4:  B               loc_1C2EF4
1C2DC6:  MOV.W           R0, #0x3F800000
1C2DCA:  MOVS            R1, #0
1C2DCC:  STR             R0, [SP,#0x920+var_8A4]
1C2DCE:  STR             R0, [SP,#0x920+var_890]
1C2DD0:  STR             R1, [SP,#0x920+var_8A8]
1C2DD2:  STR             R1, [SP,#0x920+var_8B0]
1C2DD4:  STRD.W          R0, R1, [SP,#0x920+var_8B8]
1C2DD8:  MOV.W           R0, #0xFFFFFFFF
1C2DDC:  STR             R1, [SP,#0x920+var_8A0]
1C2DDE:  STRD.W          R1, R1, [SP,#0x920+var_898]
1C2DE2:  STRD.W          R1, R1, [SP,#0x920+var_884]
1C2DE6:  STR             R0, [SP,#0x920+var_8AC]
1C2DE8:  MOVS.W          R0, R11,LSL#18
1C2DEC:  ADD             R0, SP, #0x920+var_8B8
1C2DEE:  STR             R0, [SP,#0x920+var_900]
1C2DF0:  MOV             R0, R4
1C2DF2:  STR             R1, [SP,#0x920+var_888]
1C2DF4:  BPL.W           loc_1C32B2
1C2DF8:  LDR             R0, [R0,#0x14]
1C2DFA:  CMP             R0, #0
1C2DFC:  ITT NE
1C2DFE:  LDRNE           R5, [R0,#4]
1C2E00:  CMPNE           R5, #0
1C2E02:  BEQ             loc_1C2E96
1C2E04:  MOV             R0, R5
1C2E06:  BLX             j__Z12RwFrameDirtyPK7RwFrame; RwFrameDirty(RwFrame const*)
1C2E0A:  CMP             R0, #0
1C2E0C:  BEQ.W           loc_1C327A
1C2E10:  ADD.W           R0, R5, #0x10
1C2E14:  ADD.W           R8, SP, #0x920+var_878
1C2E18:  VLD1.32         {D16-D17}, [R0]
1C2E1C:  ADD.W           R0, R5, #0x20 ; ' '
1C2E20:  ADD.W           R9, R8, #0x30 ; '0'
1C2E24:  ADD.W           R4, R8, #0x20 ; ' '
1C2E28:  VLD1.32         {D18-D19}, [R0]
1C2E2C:  ADD.W           R0, R5, #0x30 ; '0'
1C2E30:  VLD1.32         {D20-D21}, [R0]
1C2E34:  ADD.W           R0, R5, #0x40 ; '@'
1C2E38:  VLD1.32         {D22-D23}, [R0]
1C2E3C:  MOV             R0, R8
1C2E3E:  VST1.64         {D22-D23}, [R9]
1C2E42:  VST1.64         {D20-D21}, [R4]
1C2E46:  VST1.64         {D16-D17}, [R0]!
1C2E4A:  VST1.64         {D18-D19}, [R0]
1C2E4E:  LDR             R6, [R5,#4]
1C2E50:  CBZ             R6, loc_1C2E92
1C2E52:  ADD             R5, SP, #0x920+var_838
1C2E54:  MOV             R0, R8
1C2E56:  VLD1.64         {D22-D23}, [R9]
1C2E5A:  ADD.W           R2, R6, #0x10
1C2E5E:  MOV             R1, R5
1C2E60:  VLD1.64         {D16-D17}, [R0]!
1C2E64:  VLD1.64         {D18-D19}, [R0]
1C2E68:  ADD.W           R0, R5, #0x30 ; '0'
1C2E6C:  VST1.64         {D22-D23}, [R0]
1C2E70:  ADD.W           R0, R5, #0x20 ; ' '
1C2E74:  VLD1.64         {D20-D21}, [R4]
1C2E78:  VST1.64         {D20-D21}, [R0]
1C2E7C:  MOV             R0, R5
1C2E7E:  VST1.64         {D16-D17}, [R0]!
1C2E82:  VST1.64         {D18-D19}, [R0]
1C2E86:  MOV             R0, R8
1C2E88:  BLX             j__Z16RwMatrixMultiplyP11RwMatrixTagPKS_S2_; RwMatrixMultiply(RwMatrixTag *,RwMatrixTag const*,RwMatrixTag const*)
1C2E8C:  LDR             R6, [R6,#4]
1C2E8E:  CMP             R6, #0
1C2E90:  BNE             loc_1C2E54
1C2E92:  LDR             R4, [SP,#0x920+var_8FC]
1C2E94:  B               loc_1C32B2
1C2E96:  MOV.W           R0, #0x3F800000
1C2E9A:  MOVS            R1, #0
1C2E9C:  STR             R0, [SP,#0x920+var_864]
1C2E9E:  STR             R0, [SP,#0x920+var_850]
1C2EA0:  STR             R1, [SP,#0x920+var_868]
1C2EA2:  STRD.W          R0, R1, [SP,#0x920+var_878]
1C2EA6:  MOV.W           R0, #0xFFFFFFFF
1C2EAA:  STR             R1, [SP,#0x920+var_870]
1C2EAC:  STR             R1, [SP,#0x920+var_860]
1C2EAE:  STRD.W          R1, R1, [SP,#0x920+var_858]
1C2EB2:  STRD.W          R1, R1, [SP,#0x920+var_844]
1C2EB6:  STR             R0, [SP,#0x920+var_86C]
1C2EB8:  STR             R1, [SP,#0x920+var_848]
1C2EBA:  B               loc_1C32B2
1C2EBC:  MOV             R0, R5
1C2EBE:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
1C2EC2:  MOV             R1, R0
1C2EC4:  VLD1.32         {D16-D17}, [R1]!
1C2EC8:  VLD1.32         {D18-D19}, [R1]
1C2ECC:  ADD.W           R1, R0, #0x20 ; ' '
1C2ED0:  ADDS            R0, #0x30 ; '0'
1C2ED2:  VLD1.32         {D20-D21}, [R1]
1C2ED6:  ADD             R1, SP, #0x920+var_878
1C2ED8:  VLD1.32         {D22-D23}, [R0]
1C2EDC:  ADD.W           R0, R1, #0x30 ; '0'
1C2EE0:  VST1.64         {D22-D23}, [R0]
1C2EE4:  ADD.W           R0, R1, #0x20 ; ' '
1C2EE8:  VST1.64         {D20-D21}, [R0]
1C2EEC:  VST1.64         {D16-D17}, [R1]!
1C2EF0:  VST1.64         {D18-D19}, [R1]
1C2EF4:  ANDS.W          R0, R11, #0x2000
1C2EF8:  STR             R0, [SP,#0x920+var_908]
1C2EFA:  BEQ             loc_1C2F44
1C2EFC:  LDR             R0, [R4,#0x14]
1C2EFE:  LDR.W           R0, [R0,#0xA0]
1C2F02:  LDRB            R1, [R0,#3]
1C2F04:  LSLS            R1, R1, #0x1E
1C2F06:  BNE             loc_1C2F44
1C2F08:  LDR.W           R1, =(RwEngineInstance_ptr - 0x1C2F10)
1C2F0C:  ADD             R1, PC; RwEngineInstance_ptr
1C2F0E:  LDR             R1, [R1]; RwEngineInstance
1C2F10:  LDR             R1, [R1]
1C2F12:  LDR.W           R2, [R1,#0xBC]!
1C2F16:  STR             R2, [R0,#8]
1C2F18:  LDR             R0, [R4,#0x14]
1C2F1A:  LDR.W           R0, [R0,#0xA0]
1C2F1E:  STR             R1, [R0,#0xC]
1C2F20:  LDR             R0, [R4,#0x14]
1C2F22:  LDR             R2, [R1]
1C2F24:  LDR.W           R0, [R0,#0xA0]
1C2F28:  ADDS            R0, #8
1C2F2A:  STR             R0, [R2,#4]
1C2F2C:  LDR             R0, [R4,#0x14]
1C2F2E:  LDR.W           R0, [R0,#0xA0]
1C2F32:  ADDS            R0, #8
1C2F34:  STR             R0, [R1]
1C2F36:  LDR             R0, [R4,#0x14]
1C2F38:  LDR.W           R0, [R0,#0xA0]
1C2F3C:  LDRB            R1, [R0,#3]
1C2F3E:  ORR.W           R1, R1, #2
1C2F42:  STRB            R1, [R0,#3]
1C2F44:  LDR             R0, [R4,#4]
1C2F46:  CMP             R0, #1
1C2F48:  BLT.W           loc_1C3554
1C2F4C:  LDR             R0, [R4,#0x20]
1C2F4E:  VMOV.F32        S16, #-2.0
1C2F52:  VMOV.F32        S18, #1.0
1C2F56:  ADD             R2, SP, #0x920+var_8B8
1C2F58:  ADD.W           R9, R0, #0x6C ; 'l'
1C2F5C:  MOVS            R5, #0
1C2F5E:  LDR             R1, [R0,#0x24]
1C2F60:  STR             R1, [SP,#0x920+var_900]
1C2F62:  LDR             R1, [R0,#0x3C]
1C2F64:  AND.W           R0, R11, #0x1000
1C2F68:  STR             R0, [SP,#0x920+var_90C]
1C2F6A:  MOV.W           R11, #0
1C2F6E:  LDR             R0, [R4,#0x10]
1C2F70:  MOV             R4, R1
1C2F72:  ADD             R1, SP, #0x920+var_838
1C2F74:  ADD.W           R8, R0, #8
1C2F78:  LDR.W           R0, =(_Z20RpHAnimKeyFrameApplyPvS__ptr - 0x1C2F84)
1C2F7C:  ADD.W           R6, R1, #0x40 ; '@'
1C2F80:  ADD             R0, PC; _Z20RpHAnimKeyFrameApplyPvS__ptr
1C2F82:  LDR             R0, [R0]; RpHAnimKeyFrameApply(void *,void *)
1C2F84:  STR             R0, [SP,#0x920+var_904]
1C2F86:  STRD.W          R11, R11, [SP,#0x920+var_888]
1C2F8A:  MOV.W           R1, #0x3F800000
1C2F8E:  STR.W           R11, [SP,#0x920+var_880]
1C2F92:  STR.W           R11, [SP,#0x920+var_8A0]
1C2F96:  STRD.W          R11, R11, [SP,#0x920+var_898]
1C2F9A:  STRD.W          R11, R11, [SP,#0x920+var_8B4]
1C2F9E:  STR.W           R11, [SP,#0x920+var_8A8]
1C2FA2:  LDR             R0, [SP,#0x920+var_8AC]
1C2FA4:  STR             R1, [SP,#0x920+var_8B8]
1C2FA6:  STR             R1, [SP,#0x920+var_8A4]
1C2FA8:  STR             R1, [SP,#0x920+var_890]
1C2FAA:  STRD.W          R11, R11, [SP,#0x920+var_8C8]
1C2FAE:  STR.W           R11, [SP,#0x920+var_8C0]
1C2FB2:  STR.W           R11, [SP,#0x920+var_8E0]
1C2FB6:  STRD.W          R11, R11, [SP,#0x920+var_8D8]
1C2FBA:  STR.W           R11, [SP,#0x920+var_8F0]
1C2FBE:  STRD.W          R1, R11, [SP,#0x920+var_8F8]
1C2FC2:  STRD.W          R11, R1, [SP,#0x920+var_8E8]
1C2FC6:  STR             R1, [SP,#0x920+var_8D0]
1C2FC8:  MOVS            R1, #0x20003
1C2FCE:  ORRS            R0, R1
1C2FD0:  STR             R0, [SP,#0x920+var_8AC]
1C2FD2:  LDR             R0, [SP,#0x920+var_8EC]
1C2FD4:  ORRS            R0, R1
1C2FD6:  STR             R0, [SP,#0x920+var_8EC]
1C2FD8:  LDR             R0, [SP,#0x920+var_904]
1C2FDA:  CMP             R4, R0
1C2FDC:  BEQ             loc_1C2FEA
1C2FDE:  SUB.W           R1, R9, #0x20 ; ' '
1C2FE2:  MOV             R0, R2
1C2FE4:  BLX             R4
1C2FE6:  ADD             R2, SP, #0x920+var_8B8
1C2FE8:  B               loc_1C30B8
1C2FEA:  VLDR            S0, [R9,#-0x18]
1C2FEE:  MOVS            R0, #3
1C2FF0:  VLDR            S2, [R9,#-0x14]
1C2FF4:  VLDR            S4, [R9,#-0x10]
1C2FF8:  VMUL.F32        S1, S0, S0
1C2FFC:  VLDR            S6, [R9,#-0xC]
1C3000:  VMUL.F32        S10, S2, S2
1C3004:  VMUL.F32        S8, S4, S4
1C3008:  STR.W           R11, [SP,#0x920+var_888]
1C300C:  VMUL.F32        S12, S4, S6
1C3010:  STR.W           R11, [SP,#0x920+var_884]
1C3014:  VMUL.F32        S14, S0, S2
1C3018:  STR.W           R11, [SP,#0x920+var_880]
1C301C:  VMUL.F32        S3, S2, S6
1C3020:  STR             R0, [SP,#0x920+var_8AC]
1C3022:  VMUL.F32        S5, S0, S4
1C3026:  VMUL.F32        S0, S0, S6
1C302A:  VMUL.F32        S2, S2, S4
1C302E:  VADD.F32        S4, S10, S8
1C3032:  VADD.F32        S8, S1, S8
1C3036:  VADD.F32        S6, S14, S12
1C303A:  VADD.F32        S10, S1, S10
1C303E:  VSUB.F32        S12, S14, S12
1C3042:  VSUB.F32        S1, S5, S3
1C3046:  VADD.F32        S14, S2, S0
1C304A:  VSUB.F32        S0, S2, S0
1C304E:  VMUL.F32        S2, S4, S16
1C3052:  VADD.F32        S4, S6, S6
1C3056:  VADD.F32        S6, S10, S10
1C305A:  VADD.F32        S3, S5, S3
1C305E:  VADD.F32        S8, S8, S8
1C3062:  VADD.F32        S10, S1, S1
1C3066:  VADD.F32        S12, S12, S12
1C306A:  VADD.F32        S14, S14, S14
1C306E:  VSTR            S4, [SP,#0x920+var_8B4]
1C3072:  VADD.F32        S0, S0, S0
1C3076:  VADD.F32        S2, S2, S18
1C307A:  VADD.F32        S1, S3, S3
1C307E:  VSUB.F32        S4, S18, S8
1C3082:  VSUB.F32        S6, S18, S6
1C3086:  VSTR            S10, [SP,#0x920+var_8B0]
1C308A:  VSTR            S12, [SP,#0x920+var_8A8]
1C308E:  VSTR            S14, [SP,#0x920+var_8A0]
1C3092:  VSTR            S1, [SP,#0x920+var_898]
1C3096:  VSTR            S0, [SP,#0x920+var_894]
1C309A:  VSTR            S2, [SP,#0x920+var_8B8]
1C309E:  VSTR            S4, [SP,#0x920+var_8A4]
1C30A2:  VSTR            S6, [SP,#0x920+var_890]
1C30A6:  LDR.W           R0, [R9,#-8]
1C30AA:  STR             R0, [SP,#0x920+var_888]
1C30AC:  LDR.W           R0, [R9,#-4]
1C30B0:  STR             R0, [SP,#0x920+var_884]
1C30B2:  LDR.W           R0, [R9]
1C30B6:  STR             R0, [SP,#0x920+var_880]
1C30B8:  MOV             R1, R2
1C30BA:  ADD             R0, SP, #0x920+var_8F8
1C30BC:  ADD             R2, SP, #0x920+var_878
1C30BE:  BLX             j__Z16RwMatrixMultiplyP11RwMatrixTagPKS_S2_; RwMatrixMultiply(RwMatrixTag *,RwMatrixTag const*,RwMatrixTag const*)
1C30C2:  LDR.W           R0, [R8,#4]
1C30C6:  CMP             R0, #0
1C30C8:  BEQ             loc_1C3162
1C30CA:  LDR             R1, [SP,#0x920+var_90C]
1C30CC:  CBNZ            R1, loc_1C30D4
1C30CE:  LDR             R1, [SP,#0x920+var_908]
1C30D0:  CBNZ            R1, loc_1C3114
1C30D2:  B               loc_1C3162
1C30D4:  ADD             R1, SP, #0x920+var_8B8
1C30D6:  MOV             R3, R1
1C30D8:  VLD1.64         {D16-D17}, [R1]!
1C30DC:  ADD.W           R2, R3, #0x20 ; ' '
1C30E0:  VLD1.64         {D20-D21}, [R1]
1C30E4:  ADD.W           R1, R3, #0x30 ; '0'
1C30E8:  VLD1.64         {D22-D23}, [R1]
1C30EC:  ADD.W           R1, R0, #0x10
1C30F0:  VLD1.64         {D18-D19}, [R2]
1C30F4:  VST1.32         {D16-D17}, [R1]
1C30F8:  ADD.W           R1, R0, #0x40 ; '@'
1C30FC:  VST1.32         {D22-D23}, [R1]
1C3100:  ADD.W           R1, R0, #0x30 ; '0'
1C3104:  VST1.32         {D18-D19}, [R1]
1C3108:  ADD.W           R1, R0, #0x20 ; ' '
1C310C:  VST1.32         {D20-D21}, [R1]
1C3110:  LDR             R1, [SP,#0x920+var_908]
1C3112:  CBZ             R1, loc_1C315E
1C3114:  ADD             R1, SP, #0x920+var_8F8
1C3116:  MOV             R3, R1
1C3118:  ADD.W           R2, R3, #0x20 ; ' '
1C311C:  VLD1.64         {D18-D19}, [R2]
1C3120:  ADD.W           R2, R3, #0x30 ; '0'
1C3124:  VLD1.64         {D16-D17}, [R1]!
1C3128:  VLD1.64         {D22-D23}, [R2]
1C312C:  ADD.W           R2, R0, #0x50 ; 'P'
1C3130:  VLD1.64         {D20-D21}, [R1]
1C3134:  LDRB            R1, [R0,#3]
1C3136:  VST1.32         {D16-D17}, [R2]
1C313A:  ADD.W           R2, R0, #0x80
1C313E:  AND.W           R1, R1, #0xF3
1C3142:  VST1.32         {D22-D23}, [R2]
1C3146:  ADD.W           R2, R0, #0x70 ; 'p'
1C314A:  ORR.W           R1, R1, #8
1C314E:  VST1.32         {D18-D19}, [R2]
1C3152:  ADD.W           R2, R0, #0x60 ; '`'
1C3156:  VST1.32         {D20-D21}, [R2]
1C315A:  STRB            R1, [R0,#3]
1C315C:  B               loc_1C3162
1C315E:  BLX             j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
1C3162:  LDR.W           R0, [R8]
1C3166:  AND.W           R0, R0, #3
1C316A:  CMP             R0, #2
1C316C:  BEQ             loc_1C31B2
1C316E:  CMP             R0, #1
1C3170:  BEQ             loc_1C3222
1C3172:  CMP             R0, #0
1C3174:  BNE             loc_1C3262
1C3176:  ADD             R0, SP, #0x920+var_8F8
1C3178:  MOV             R1, R0
1C317A:  VLD1.64         {D16-D17}, [R0]!
1C317E:  VLD1.64         {D18-D19}, [R0]
1C3182:  ADD.W           R0, R1, #0x20 ; ' '
1C3186:  VLD1.64         {D20-D21}, [R0]
1C318A:  ADD.W           R0, R1, #0x30 ; '0'
1C318E:  VLD1.64         {D22-D23}, [R0]
1C3192:  ADD             R0, SP, #0x920+var_878
1C3194:  MOV             R1, R0
1C3196:  ADD.W           R0, R1, #0x30 ; '0'
1C319A:  VST1.64         {D22-D23}, [R0]
1C319E:  ADD.W           R0, R1, #0x20 ; ' '
1C31A2:  VST1.64         {D20-D21}, [R0]
1C31A6:  MOV             R0, R1
1C31A8:  VST1.64         {D16-D17}, [R0]!
1C31AC:  VST1.64         {D18-D19}, [R0]
1C31B0:  B               loc_1C3262
1C31B2:  ADD.W           R10, SP, #0x920+var_878
1C31B6:  MOV             R1, R6
1C31B8:  ADD.W           R2, R10, #0x30 ; '0'
1C31BC:  ADD.W           R3, R1, #0x30 ; '0'
1C31C0:  VLD1.64         {D22-D23}, [R2]
1C31C4:  ADD.W           R12, R10, #0x20 ; ' '
1C31C8:  MOV             R0, R10
1C31CA:  MOV             R6, R4
1C31CC:  VST1.32         {D22-D23}, [R3]
1C31D0:  ADD.W           R3, R1, #0x20 ; ' '
1C31D4:  VLD1.64         {D18-D19}, [R12]
1C31D8:  VLD1.32         {D16-D17}, [R0]!
1C31DC:  VST1.32         {D18-D19}, [R3]
1C31E0:  MOV             R3, R1
1C31E2:  ADDS            R1, #0x40 ; '@'
1C31E4:  VLD1.64         {D20-D21}, [R0]
1C31E8:  VST1.32         {D16-D17}, [R3]!
1C31EC:  VST1.32         {D20-D21}, [R3]
1C31F0:  ADD             R3, SP, #0x920+var_8F8
1C31F2:  MOV             LR, R3
1C31F4:  ADD.W           R4, LR, #0x30 ; '0'
1C31F8:  VLD1.64         {D18-D19}, [R4]
1C31FC:  ADD.W           R4, LR, #0x20 ; ' '
1C3200:  VLD1.64         {D16-D17}, [R3]!
1C3204:  VLD1.64         {D20-D21}, [R4]
1C3208:  MOV             R4, R6
1C320A:  MOV             R6, R1
1C320C:  VLD1.64         {D22-D23}, [R3]
1C3210:  VST1.64         {D18-D19}, [R2]
1C3214:  VST1.64         {D20-D21}, [R12]
1C3218:  VST1.64         {D16-D17}, [R10]
1C321C:  VST1.64         {D22-D23}, [R0]
1C3220:  B               loc_1C3262
1C3222:  SUB.W           R1, R6, #0x30 ; '0'
1C3226:  SUB.W           R0, R6, #0x40 ; '@'
1C322A:  VLD1.32         {D18-D19}, [R1]
1C322E:  SUB.W           R1, R6, #0x20 ; ' '
1C3232:  VLD1.32         {D20-D21}, [R1]
1C3236:  SUB.W           R1, R6, #0x10
1C323A:  MOV             R6, R0
1C323C:  VLD1.32         {D22-D23}, [R1]
1C3240:  ADD             R1, SP, #0x920+var_878
1C3242:  MOV             R2, R1
1C3244:  ADD.W           R1, R2, #0x30 ; '0'
1C3248:  VLD1.32         {D16-D17}, [R0]
1C324C:  VST1.64         {D22-D23}, [R1]
1C3250:  ADD.W           R1, R2, #0x20 ; ' '
1C3254:  VST1.64         {D20-D21}, [R1]
1C3258:  MOV             R1, R2
1C325A:  VST1.64         {D16-D17}, [R1]!
1C325E:  VST1.64         {D18-D19}, [R1]
1C3262:  LDR             R0, [SP,#0x920+var_8FC]
1C3264:  ADD             R2, SP, #0x920+var_8B8
1C3266:  LDR             R1, [SP,#0x920+var_900]
1C3268:  ADD.W           R8, R8, #0x10
1C326C:  ADDS            R5, #1
1C326E:  LDR             R0, [R0,#4]
1C3270:  ADD             R9, R1
1C3272:  CMP             R5, R0
1C3274:  BLT.W           loc_1C2F86
1C3278:  B               loc_1C3554
1C327A:  MOV             R0, R5
1C327C:  BLX             j__Z13RwFrameGetLTMP7RwFrame; RwFrameGetLTM(RwFrame *)
1C3280:  MOV             R1, R0
1C3282:  VLD1.32         {D16-D17}, [R1]!
1C3286:  VLD1.32         {D18-D19}, [R1]
1C328A:  ADD.W           R1, R0, #0x20 ; ' '
1C328E:  ADDS            R0, #0x30 ; '0'
1C3290:  VLD1.32         {D20-D21}, [R1]
1C3294:  ADD             R1, SP, #0x920+var_878
1C3296:  VLD1.32         {D22-D23}, [R0]
1C329A:  ADD.W           R0, R1, #0x30 ; '0'
1C329E:  VST1.64         {D22-D23}, [R0]
1C32A2:  ADD.W           R0, R1, #0x20 ; ' '
1C32A6:  VST1.64         {D20-D21}, [R0]
1C32AA:  VST1.64         {D16-D17}, [R1]!
1C32AE:  VST1.64         {D18-D19}, [R1]
1C32B2:  ANDS.W          R0, R11, #0x2000
1C32B6:  STR             R0, [SP,#0x920+var_914]
1C32B8:  BEQ             loc_1C3300
1C32BA:  LDR             R0, [R4,#0x14]
1C32BC:  LDR.W           R0, [R0,#0xA0]
1C32C0:  LDRB            R1, [R0,#3]
1C32C2:  LSLS            R1, R1, #0x1E
1C32C4:  BNE             loc_1C3300
1C32C6:  LDR             R1, =(RwEngineInstance_ptr - 0x1C32CC)
1C32C8:  ADD             R1, PC; RwEngineInstance_ptr
1C32CA:  LDR             R1, [R1]; RwEngineInstance
1C32CC:  LDR             R1, [R1]
1C32CE:  LDR.W           R2, [R1,#0xBC]!
1C32D2:  STR             R2, [R0,#8]
1C32D4:  LDR             R0, [R4,#0x14]
1C32D6:  LDR.W           R0, [R0,#0xA0]
1C32DA:  STR             R1, [R0,#0xC]
1C32DC:  LDR             R0, [R4,#0x14]
1C32DE:  LDR             R2, [R1]
1C32E0:  LDR.W           R0, [R0,#0xA0]
1C32E4:  ADDS            R0, #8
1C32E6:  STR             R0, [R2,#4]
1C32E8:  LDR             R0, [R4,#0x14]
1C32EA:  LDR.W           R0, [R0,#0xA0]
1C32EE:  ADDS            R0, #8
1C32F0:  STR             R0, [R1]
1C32F2:  LDR             R0, [R4,#0x14]
1C32F4:  LDR.W           R0, [R0,#0xA0]
1C32F8:  LDRB            R1, [R0,#3]
1C32FA:  ORR.W           R1, R1, #2
1C32FE:  STRB            R1, [R0,#3]
1C3300:  LDR             R0, [R4,#4]
1C3302:  CMP             R0, #1
1C3304:  BLT.W           loc_1C3554
1C3308:  LDR             R1, [SP,#0x920+var_8FC]
1C330A:  VMOV.F32        S16, #-2.0
1C330E:  VMOV.F32        S18, #1.0
1C3312:  ADD             R5, SP, #0x920+var_8F8
1C3314:  MOV.W           R9, #0
1C3318:  LDR             R0, [R1,#0x20]
1C331A:  ADD.W           R6, R0, #0x4C ; 'L'
1C331E:  LDR             R2, [R0,#0x24]
1C3320:  STR             R2, [SP,#0x920+var_904]
1C3322:  AND.W           R2, R11, #0x4000
1C3326:  LDR             R3, [R0,#0x3C]
1C3328:  LDR             R0, =(_Z20RpHAnimKeyFrameApplyPvS__ptr - 0x1C3332)
1C332A:  LDR             R4, [R1,#8]
1C332C:  LDR             R1, [R1,#0x10]
1C332E:  ADD             R0, PC; _Z20RpHAnimKeyFrameApplyPvS__ptr
1C3330:  STR             R2, [SP,#0x920+var_91C]
1C3332:  AND.W           R2, R11, #0x1000
1C3336:  ADD.W           R8, R1, #8
1C333A:  STR             R2, [SP,#0x920+var_918]
1C333C:  ADD             R2, SP, #0x920+var_838
1C333E:  LDR             R0, [R0]; RpHAnimKeyFrameApply(void *,void *)
1C3340:  MOV.W           R11, #0
1C3344:  ADDS            R2, #4
1C3346:  STR             R2, [SP,#0x920+var_90C]
1C3348:  STR             R0, [SP,#0x920+var_908]
1C334A:  STR             R3, [SP,#0x920+var_910]
1C334C:  MOV.W           R0, #0x3F800000
1C3350:  MOVS            R1, #:lower16:(elf_hash_chain+0xFE9B)
1C3352:  STR             R0, [SP,#0x920+var_8E4]
1C3354:  MOVT            R1, #:upper16:(elf_hash_chain+0xFE9B)
1C3358:  STR             R0, [SP,#0x920+var_8D0]
1C335A:  STR             R0, [SP,#0x920+var_8F8]
1C335C:  LDR             R0, [SP,#0x920+var_8EC]
1C335E:  STR.W           R9, [SP,#0x920+var_8E8]
1C3362:  STRD.W          R9, R9, [SP,#0x920+var_8F4]
1C3366:  ORRS            R0, R1
1C3368:  STRD.W          R9, R9, [SP,#0x920+var_8D8]
1C336C:  STR.W           R9, [SP,#0x920+var_8E0]
1C3370:  STR.W           R9, [SP,#0x920+var_8C0]
1C3374:  STRD.W          R9, R9, [SP,#0x920+var_8C8]
1C3378:  STR             R0, [SP,#0x920+var_8EC]
1C337A:  LDR             R0, [SP,#0x920+var_908]
1C337C:  CMP             R3, R0
1C337E:  BEQ             loc_1C3388
1C3380:  MOV             R0, R5
1C3382:  MOV             R1, R6
1C3384:  BLX             R3
1C3386:  B               loc_1C3450
1C3388:  VLDR            S0, [R6,#8]
1C338C:  MOVS            R0, #3
1C338E:  VLDR            S2, [R6,#0xC]
1C3392:  VLDR            S4, [R6,#0x10]
1C3396:  VMUL.F32        S1, S0, S0
1C339A:  VLDR            S6, [R6,#0x14]
1C339E:  VMUL.F32        S10, S2, S2
1C33A2:  VMUL.F32        S8, S4, S4
1C33A6:  STR.W           R9, [SP,#0x920+var_8C8]
1C33AA:  VMUL.F32        S12, S4, S6
1C33AE:  STR.W           R9, [SP,#0x920+var_8C4]
1C33B2:  VMUL.F32        S14, S0, S2
1C33B6:  STR.W           R9, [SP,#0x920+var_8C0]
1C33BA:  VMUL.F32        S3, S2, S6
1C33BE:  STR             R0, [SP,#0x920+var_8EC]
1C33C0:  VMUL.F32        S5, S0, S4
1C33C4:  VMUL.F32        S0, S0, S6
1C33C8:  VMUL.F32        S2, S2, S4
1C33CC:  VADD.F32        S4, S10, S8
1C33D0:  VADD.F32        S8, S1, S8
1C33D4:  VADD.F32        S6, S14, S12
1C33D8:  VADD.F32        S10, S1, S10
1C33DC:  VSUB.F32        S12, S14, S12
1C33E0:  VSUB.F32        S1, S5, S3
1C33E4:  VADD.F32        S14, S2, S0
1C33E8:  VSUB.F32        S0, S2, S0
1C33EC:  VMUL.F32        S2, S4, S16
1C33F0:  VADD.F32        S4, S6, S6
1C33F4:  VADD.F32        S6, S10, S10
1C33F8:  VADD.F32        S3, S5, S3
1C33FC:  VADD.F32        S8, S8, S8
1C3400:  VADD.F32        S10, S1, S1
1C3404:  VADD.F32        S12, S12, S12
1C3408:  VADD.F32        S14, S14, S14
1C340C:  VSTR            S4, [SP,#0x920+var_8F4]
1C3410:  VADD.F32        S0, S0, S0
1C3414:  VADD.F32        S2, S2, S18
1C3418:  VADD.F32        S1, S3, S3
1C341C:  VSUB.F32        S4, S18, S8
1C3420:  VSUB.F32        S6, S18, S6
1C3424:  VSTR            S10, [SP,#0x920+var_8F0]
1C3428:  VSTR            S12, [SP,#0x920+var_8E8]
1C342C:  VSTR            S14, [SP,#0x920+var_8E0]
1C3430:  VSTR            S1, [SP,#0x920+var_8D8]
1C3434:  VSTR            S0, [SP,#0x920+var_8D4]
1C3438:  VSTR            S2, [SP,#0x920+var_8F8]
1C343C:  VSTR            S4, [SP,#0x920+var_8E4]
1C3440:  VSTR            S6, [SP,#0x920+var_8D0]
1C3444:  LDR             R0, [R6,#0x18]
1C3446:  STR             R0, [SP,#0x920+var_8C8]
1C3448:  LDR             R0, [R6,#0x1C]
1C344A:  STR             R0, [SP,#0x920+var_8C4]
1C344C:  LDR             R0, [R6,#0x20]
1C344E:  STR             R0, [SP,#0x920+var_8C0]
1C3450:  LDR             R2, [SP,#0x920+var_900]
1C3452:  MOV             R0, R4
1C3454:  MOV             R1, R5
1C3456:  MOV             R10, R5
1C3458:  BLX             j__Z16RwMatrixMultiplyP11RwMatrixTagPKS_S2_; RwMatrixMultiply(RwMatrixTag *,RwMatrixTag const*,RwMatrixTag const*)
1C345C:  LDR.W           R5, [R8,#4]
1C3460:  CMP             R5, #0
1C3462:  BEQ             loc_1C3506
1C3464:  LDR             R0, [SP,#0x920+var_918]
1C3466:  CBNZ            R0, loc_1C346E
1C3468:  LDR             R0, [SP,#0x920+var_914]
1C346A:  CBNZ            R0, loc_1C34AE
1C346C:  B               loc_1C3506
1C346E:  MOV             R2, R10
1C3470:  ADD.W           R1, R2, #0x20 ; ' '
1C3474:  MOV             R0, R2
1C3476:  VLD1.64         {D18-D19}, [R1]
1C347A:  VLD1.64         {D16-D17}, [R0]!
1C347E:  VLD1.64         {D20-D21}, [R0]
1C3482:  ADD.W           R0, R2, #0x30 ; '0'
1C3486:  VLD1.64         {D22-D23}, [R0]
1C348A:  ADD.W           R0, R5, #0x10
1C348E:  VST1.32         {D16-D17}, [R0]
1C3492:  ADD.W           R0, R5, #0x40 ; '@'
1C3496:  VST1.32         {D22-D23}, [R0]
1C349A:  ADD.W           R0, R5, #0x30 ; '0'
1C349E:  VST1.32         {D18-D19}, [R0]
1C34A2:  ADD.W           R0, R5, #0x20 ; ' '
1C34A6:  VST1.32         {D20-D21}, [R0]
1C34AA:  LDR             R0, [SP,#0x920+var_914]
1C34AC:  CBZ             R0, loc_1C34EA
1C34AE:  LDR             R1, [SP,#0x920+var_91C]
1C34B0:  ADD.W           R0, R5, #0x50 ; 'P'
1C34B4:  CBNZ            R1, loc_1C34F2
1C34B6:  MOV             R1, R4
1C34B8:  ADD.W           R2, R4, #0x20 ; ' '
1C34BC:  VLD1.32         {D16-D17}, [R1]!
1C34C0:  VLD1.32         {D20-D21}, [R1]
1C34C4:  ADD.W           R1, R4, #0x30 ; '0'
1C34C8:  VLD1.32         {D22-D23}, [R1]
1C34CC:  ADD.W           R1, R0, #0x30 ; '0'
1C34D0:  VLD1.32         {D18-D19}, [R2]
1C34D4:  VST1.32         {D22-D23}, [R1]
1C34D8:  ADD.W           R1, R0, #0x20 ; ' '
1C34DC:  VST1.32         {D18-D19}, [R1]
1C34E0:  VST1.32         {D16-D17}, [R0]!
1C34E4:  VST1.32         {D20-D21}, [R0]
1C34E8:  B               loc_1C34FA
1C34EA:  MOV             R0, R5
1C34EC:  BLX             j__Z20RwFrameUpdateObjectsP7RwFrame; RwFrameUpdateObjects(RwFrame *)
1C34F0:  B               loc_1C3506
1C34F2:  ADD             R2, SP, #0x920+var_878
1C34F4:  MOV             R1, R4
1C34F6:  BLX             j__Z16RwMatrixMultiplyP11RwMatrixTagPKS_S2_; RwMatrixMultiply(RwMatrixTag *,RwMatrixTag const*,RwMatrixTag const*)
1C34FA:  LDRB            R0, [R5,#3]
1C34FC:  AND.W           R0, R0, #0xF3
1C3500:  ORR.W           R0, R0, #8
1C3504:  STRB            R0, [R5,#3]
1C3506:  LDR.W           R0, [R8]
1C350A:  AND.W           R0, R0, #3
1C350E:  CMP             R0, #2
1C3510:  BEQ             loc_1C3520
1C3512:  CMP             R0, #1
1C3514:  MOV             R5, R10
1C3516:  BEQ             loc_1C3530
1C3518:  CMP             R0, #0
1C351A:  IT EQ
1C351C:  STREQ           R4, [SP,#0x920+var_900]
1C351E:  B               loc_1C353A
1C3520:  LDR             R1, [SP,#0x920+var_90C]
1C3522:  MOV             R5, R10
1C3524:  LDR             R0, [SP,#0x920+var_900]
1C3526:  STR             R4, [SP,#0x920+var_900]
1C3528:  STR.W           R0, [R1],#4
1C352C:  STR             R1, [SP,#0x920+var_90C]
1C352E:  B               loc_1C353A
1C3530:  LDR             R1, [SP,#0x920+var_90C]
1C3532:  LDR.W           R0, [R1,#-4]!
1C3536:  STR             R1, [SP,#0x920+var_90C]
1C3538:  STR             R0, [SP,#0x920+var_900]
1C353A:  LDR             R0, [SP,#0x920+var_904]
1C353C:  ADD.W           R8, R8, #0x10
1C3540:  LDR             R3, [SP,#0x920+var_910]
1C3542:  ADD.W           R11, R11, #1
1C3546:  ADD             R6, R0
1C3548:  LDR             R0, [SP,#0x920+var_8FC]
1C354A:  ADDS            R4, #0x40 ; '@'
1C354C:  LDR             R0, [R0,#4]
1C354E:  CMP             R11, R0
1C3550:  BLT.W           loc_1C334C
1C3554:  MOVS            R0, #1
1C3556:  ADD.W           SP, SP, #0x8F0
1C355A:  VPOP            {D8-D9}
1C355E:  ADD             SP, SP, #4
1C3560:  POP.W           {R8-R11}
1C3564:  POP             {R4-R7,PC}
