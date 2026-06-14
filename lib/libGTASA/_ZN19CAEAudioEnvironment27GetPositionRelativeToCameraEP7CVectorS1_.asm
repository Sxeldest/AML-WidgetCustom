; =========================================================
; Game Engine Function: _ZN19CAEAudioEnvironment27GetPositionRelativeToCameraEP7CVectorS1_
; Address            : 0x391DB0 - 0x391FCE
; =========================================================

391DB0:  PUSH            {R4-R7,LR}
391DB2:  ADD             R7, SP, #0xC
391DB4:  PUSH.W          {R11}
391DB8:  VPUSH           {D8-D9}
391DBC:  SUB             SP, SP, #0x48
391DBE:  MOV             R5, R1
391DC0:  MOV             R4, R0
391DC2:  MOVS            R0, #0
391DC4:  CMP             R5, #0
391DC6:  STRD.W          R0, R0, [SP,#0x68+var_28]
391DCA:  BEQ.W           loc_391FBC
391DCE:  LDR             R0, =(TheCamera_ptr - 0x391DD4)
391DD0:  ADD             R0, PC; TheCamera_ptr
391DD2:  LDR             R0, [R0]; TheCamera
391DD4:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
391DD8:  ADD.W           R1, R1, R1,LSL#5
391DDC:  ADD.W           R0, R0, R1,LSL#4
391DE0:  LDRSH.W         R0, [R0,#0x17E]
391DE4:  CMP             R0, #0x10
391DE6:  BHI             loc_391E48
391DE8:  MOVS            R1, #1
391DEA:  LSL.W           R0, R1, R0
391DEE:  MOV             R1, #0x10180
391DF6:  TST             R0, R1
391DF8:  BEQ             loc_391E48
391DFA:  LDR             R0, =(TheCamera_ptr - 0x391E00)
391DFC:  ADD             R0, PC; TheCamera_ptr
391DFE:  LDR             R6, [R0]; TheCamera
391E00:  MOV             R0, SP
391E02:  ADDW            R1, R6, #0x8FC
391E06:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
391E0A:  VLDR            S0, [SP,#0x68+var_58]
391E0E:  VLDR            S4, [SP,#0x68+var_54]
391E12:  VLDR            S2, [SP,#0x68+var_50]
391E16:  VADD.F32        S10, S0, S0
391E1A:  VADD.F32        S8, S4, S4
391E1E:  LDR             R0, [R6,#(dword_951FBC - 0x951FA8)]
391E20:  VADD.F32        S6, S2, S2
391E24:  ADD.W           R1, R0, #0x30 ; '0'
391E28:  CMP             R0, #0
391E2A:  IT EQ
391E2C:  ADDEQ           R1, R6, #4
391E2E:  VLDR            S12, [R1]
391E32:  VLDR            S14, [R1,#4]
391E36:  VLDR            S1, [R1,#8]
391E3A:  VSUB.F32        S10, S12, S10
391E3E:  VSUB.F32        S8, S14, S8
391E42:  VSUB.F32        S6, S1, S6
391E46:  B               loc_391F40
391E48:  MOV.W           R0, #0xFFFFFFFF; int
391E4C:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
391E50:  VLDR            S16, =0.0
391E54:  CMP             R0, #0
391E56:  VMOV.F32        S18, S16
391E5A:  BEQ             loc_391EBE
391E5C:  LDR             R1, =(TheCamera_ptr - 0x391E64)
391E5E:  LDR             R2, [R0,#0x14]
391E60:  ADD             R1, PC; TheCamera_ptr
391E62:  ADD.W           R3, R2, #0x30 ; '0'
391E66:  CMP             R2, #0
391E68:  LDR             R1, [R1]; TheCamera
391E6A:  LDR             R6, [R1,#(dword_951FBC - 0x951FA8)]
391E6C:  IT EQ
391E6E:  ADDEQ           R3, R0, #4
391E70:  VLDR            S0, [R3]
391E74:  ADD.W           R0, R6, #0x30 ; '0'
391E78:  CMP             R6, #0
391E7A:  VLDR            S2, [R3,#4]
391E7E:  VLDR            S4, [R3,#8]
391E82:  IT EQ
391E84:  ADDEQ           R0, R1, #4
391E86:  VLDR            S6, [R0]
391E8A:  VLDR            S8, [R0,#4]
391E8E:  VSUB.F32        S0, S0, S6
391E92:  VLDR            S10, [R0,#8]
391E96:  VSUB.F32        S2, S2, S8
391E9A:  VSUB.F32        S4, S4, S10
391E9E:  VMUL.F32        S0, S0, S0
391EA2:  VMUL.F32        S2, S2, S2
391EA6:  VMUL.F32        S4, S4, S4
391EAA:  VADD.F32        S0, S0, S2
391EAE:  VMOV.F32        S2, #-0.5
391EB2:  VADD.F32        S0, S0, S4
391EB6:  VSQRT.F32       S0, S0
391EBA:  VADD.F32        S18, S0, S2
391EBE:  LDR             R0, =(TheCamera_ptr - 0x391EC4)
391EC0:  ADD             R0, PC; TheCamera_ptr
391EC2:  LDR             R6, [R0]; TheCamera
391EC4:  MOV             R0, SP
391EC6:  ADDW            R1, R6, #0x8FC
391ECA:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
391ECE:  VMOV.F32        S0, #0.5
391ED2:  VCMPE.F32       S18, S0
391ED6:  VMRS            APSR_nzcv, FPSCR
391EDA:  VMOV.F32        S6, S0
391EDE:  VCMPE.F32       S18, #0.0
391EE2:  IT LT
391EE4:  VMOVLT.F32      S6, S18
391EE8:  VMRS            APSR_nzcv, FPSCR
391EEC:  VMOV.F32        S2, S6
391EF0:  VCMPE.F32       S18, S0
391EF4:  IT LT
391EF6:  VMOVLT.F32      S2, S16
391EFA:  VMRS            APSR_nzcv, FPSCR
391EFE:  IT LT
391F00:  VMOVLT.F32      S6, S2
391F04:  VLDR            S0, [SP,#0x68+var_58]
391F08:  VLDR            S4, [SP,#0x68+var_54]
391F0C:  VLDR            S2, [SP,#0x68+var_50]
391F10:  VMUL.F32        S12, S0, S6
391F14:  VMUL.F32        S10, S6, S4
391F18:  LDR             R0, [R6,#(dword_951FBC - 0x951FA8)]
391F1A:  VMUL.F32        S8, S6, S2
391F1E:  ADD.W           R1, R0, #0x30 ; '0'
391F22:  CMP             R0, #0
391F24:  IT EQ
391F26:  ADDEQ           R1, R6, #4
391F28:  VLDR            S6, [R1,#8]
391F2C:  VLDR            S14, [R1]
391F30:  VLDR            S1, [R1,#4]
391F34:  VADD.F32        S6, S8, S6
391F38:  VADD.F32        S8, S10, S1
391F3C:  VADD.F32        S10, S12, S14
391F40:  VLDR            S12, [R5]
391F44:  VLDR            S14, [R5,#4]
391F48:  VSUB.F32        S10, S12, S10
391F4C:  VLDR            S12, [SP,#0x68+var_68]
391F50:  VSUB.F32        S8, S14, S8
391F54:  VLDR            S14, [SP,#0x68+var_64]
391F58:  VLDR            S1, [R5,#8]
391F5C:  VLDR            S3, [SP,#0x68+var_60]
391F60:  VSUB.F32        S6, S1, S6
391F64:  VMUL.F32        S12, S10, S12
391F68:  VMUL.F32        S14, S8, S14
391F6C:  VMUL.F32        S4, S8, S4
391F70:  VMUL.F32        S0, S10, S0
391F74:  VMUL.F32        S1, S6, S3
391F78:  VMUL.F32        S2, S6, S2
391F7C:  VADD.F32        S12, S12, S14
391F80:  VLDR            S14, [SP,#0x68+var_40]
391F84:  VADD.F32        S0, S0, S4
391F88:  VMUL.F32        S6, S6, S14
391F8C:  VADD.F32        S4, S12, S1
391F90:  VLDR            S12, [SP,#0x68+var_44]
391F94:  VADD.F32        S0, S0, S2
391F98:  VMUL.F32        S8, S8, S12
391F9C:  VNEG.F32        S2, S4
391FA0:  VLDR            S4, [SP,#0x68+var_48]
391FA4:  VMUL.F32        S4, S10, S4
391FA8:  VSTR            S2, [R4]
391FAC:  VSTR            S0, [R4,#4]
391FB0:  VADD.F32        S4, S4, S8
391FB4:  VADD.F32        S4, S4, S6
391FB8:  VSTR            S4, [R4,#8]
391FBC:  MOV             R0, SP; this
391FBE:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
391FC2:  ADD             SP, SP, #0x48 ; 'H'
391FC4:  VPOP            {D8-D9}
391FC8:  POP.W           {R11}
391FCC:  POP             {R4-R7,PC}
