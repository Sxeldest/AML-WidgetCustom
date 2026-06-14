; =========================================================
; Game Engine Function: _Z14RwCameraCreatev
; Address            : 0x1D5F60 - 0x1D605E
; =========================================================

1D5F60:  PUSH            {R4,R6,R7,LR}
1D5F62:  ADD             R7, SP, #8
1D5F64:  VPUSH           {D8}
1D5F68:  LDR             R0, =(RwEngineInstance_ptr - 0x1D5F70)
1D5F6A:  LDR             R1, =(dword_6BCD28 - 0x1D5F72)
1D5F6C:  ADD             R0, PC; RwEngineInstance_ptr
1D5F6E:  ADD             R1, PC; dword_6BCD28
1D5F70:  LDR             R0, [R0]; RwEngineInstance
1D5F72:  LDR             R1, [R1]
1D5F74:  LDR             R2, [R0]
1D5F76:  LDR             R0, [R2,R1]
1D5F78:  LDR.W           R1, [R2,#0x13C]
1D5F7C:  BLX             R1
1D5F7E:  MOV             R4, R0
1D5F80:  MOVS            R0, #0
1D5F82:  CBZ             R4, loc_1D5FF2
1D5F84:  ADR             R1, dword_1D6060
1D5F86:  LDR             R2, =(sub_1D6F00+1 - 0x1D5F96)
1D5F88:  VLD1.64         {D16-D17}, [R1@128]
1D5F8C:  MOVS            R1, #4
1D5F8E:  VMOV.F32        Q9, #1.0
1D5F92:  ADD             R2, PC; sub_1D6F00
1D5F94:  STRB            R0, [R4,#7]
1D5F96:  STRH.W          R0, [R4,#5]
1D5F9A:  STRB            R1, [R4]
1D5F9C:  MOVS            R1, #0x40A00000
1D5FA2:  LDR.W           R12, =(sub_1D6ECC+1 - 0x1D5FB6)
1D5FA6:  LDR             R3, =(sub_1D608C+1 - 0x1D5FC0)
1D5FA8:  STR.W           R1, [R4,#0x88]
1D5FAC:  MOVS            R1, #1
1D5FAE:  STRD.W          R0, R0, [R4,#0x60]
1D5FB2:  ADD             R12, PC; sub_1D6ECC
1D5FB4:  STR.W           R0, [R4,#1]
1D5FB8:  ADD.W           R0, R4, #0x68 ; 'h'
1D5FBC:  ADD             R3, PC; sub_1D608C
1D5FBE:  STRD.W          R3, R1, [R4,#0x10]
1D5FC2:  STRD.W          R12, R2, [R4,#0x18]
1D5FC6:  VST1.32         {D18-D19}, [R0]
1D5FCA:  ADD.W           R0, R4, #0x78 ; 'x'
1D5FCE:  VST1.32         {D16-D17}, [R0]
1D5FD2:  BLX             j__Z20RwIm2DGetNearScreenZv; RwIm2DGetNearScreenZ(void)
1D5FD6:  VMOV            S16, R0
1D5FDA:  BLX             j__Z19RwIm2DGetFarScreenZv; RwIm2DGetFarScreenZ(void)
1D5FDE:  VMOV            S2, R0
1D5FE2:  LDR             R0, [R4,#0x14]
1D5FE4:  VLDR            S0, [R4,#0x84]
1D5FE8:  CMP             R0, #2
1D5FEA:  BNE             loc_1D5FF6
1D5FEC:  VLDR            S4, [R4,#0x80]
1D5FF0:  B               loc_1D6006
1D5FF2:  MOVS            R4, #0
1D5FF4:  B               loc_1D6056
1D5FF6:  VMOV.F32        S6, #1.0
1D5FFA:  VLDR            S4, [R4,#0x80]
1D5FFE:  VDIV.F32        S4, S6, S4
1D6002:  VDIV.F32        S0, S6, S0
1D6006:  VSUB.F32        S6, S2, S16
1D600A:  VLDR            S8, =0.0001
1D600E:  LDR             R0, =(cameraTKList_ptr - 0x1D601A)
1D6010:  MOVS            R1, #0
1D6012:  STR             R1, [R4,#0x2C]
1D6014:  MOV             R1, R4
1D6016:  ADD             R0, PC; cameraTKList_ptr
1D6018:  LDR             R0, [R0]; cameraTKList
1D601A:  VMUL.F32        S6, S6, S8
1D601E:  VADD.F32        S8, S16, S6
1D6022:  VSUB.F32        S2, S2, S6
1D6026:  VSUB.F32        S6, S0, S4
1D602A:  VADD.F32        S0, S0, S4
1D602E:  VMOV.F32        S4, #0.5
1D6032:  VSUB.F32        S10, S2, S8
1D6036:  VADD.F32        S2, S2, S8
1D603A:  VDIV.F32        S6, S10, S6
1D603E:  VMUL.F32        S0, S0, S6
1D6042:  VSTR            S6, [R4,#0x8C]
1D6046:  VSUB.F32        S0, S2, S0
1D604A:  VMUL.F32        S0, S0, S4
1D604E:  VSTR            S0, [R4,#0x90]
1D6052:  BLX             j__Z27_rwPluginRegistryInitObjectPK16RwPluginRegistryPv; _rwPluginRegistryInitObject(RwPluginRegistry const*,void *)
1D6056:  MOV             R0, R4
1D6058:  VPOP            {D8}
1D605C:  POP             {R4,R6,R7,PC}
