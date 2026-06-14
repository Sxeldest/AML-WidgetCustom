; =========================================================
; Game Engine Function: _ZN7CCamera39DealWithMirrorBeforeConstructRenderListEb7CVectorfP7CMatrix
; Address            : 0x3DF0E8 - 0x3DF2AC
; =========================================================

3DF0E8:  PUSH            {R4-R7,LR}
3DF0EA:  ADD             R7, SP, #0xC
3DF0EC:  PUSH.W          {R11}
3DF0F0:  VPUSH           {D8-D11}
3DF0F4:  SUB             SP, SP, #0x48
3DF0F6:  MOV             R4, R0
3DF0F8:  CMP             R1, #0
3DF0FA:  STRB.W          R1, [R4,#0x8F4]
3DF0FE:  BEQ.W           loc_3DF2A0
3DF102:  LDR             R1, [R7,#arg_8]
3DF104:  CBZ             R1, loc_3DF112
3DF106:  ADDW            R5, R4, #0xA64
3DF10A:  MOV             R0, R5
3DF10C:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
3DF110:  B               loc_3DF286
3DF112:  ADD.W           R0, R4, #0x920
3DF116:  VMOV            S2, R2
3DF11A:  ADDW            R2, R4, #0x90C
3DF11E:  ADDW            R5, R4, #0x92C
3DF122:  VLDR            S8, [R0]
3DF126:  ADD.W           R0, R4, #0x910
3DF12A:  ADDW            R1, R4, #0x91C
3DF12E:  VMOV            S4, R3
3DF132:  VLDR            S10, [R0]
3DF136:  ADD.W           R0, R4, #0x930
3DF13A:  VLDR            S12, [R2]
3DF13E:  VMUL.F32        S14, S8, S4
3DF142:  VLDR            S5, [R0]
3DF146:  VMUL.F32        S1, S10, S4
3DF14A:  VLDR            S11, [R5]
3DF14E:  VMUL.F32        S3, S12, S2
3DF152:  VLDR            S6, [R1]
3DF156:  VMUL.F32        S15, S5, S4
3DF15A:  VMUL.F32        S18, S11, S2
3DF15E:  LDR.W           R12, [R7,#arg_0]
3DF162:  VMUL.F32        S7, S6, S2
3DF166:  ADDW            R0, R4, #0x934
3DF16A:  ADDW            LR, R4, #0x914
3DF16E:  ADDW            R6, R4, #0x924
3DF172:  VMOV            S9, R12
3DF176:  VLDR            S0, [R7,#arg_4]
3DF17A:  VLDR            S16, [LR]
3DF17E:  ADDW            R5, R4, #0xA64
3DF182:  VADD.F32        S1, S3, S1
3DF186:  VLDR            S3, [R0]
3DF18A:  VMUL.F32        S22, S16, S9
3DF18E:  VLDR            S13, [R6]
3DF192:  VADD.F32        S15, S18, S15
3DF196:  ADDW            R0, R4, #0xA7C
3DF19A:  VADD.F32        S14, S7, S14
3DF19E:  VMUL.F32        S7, S3, S9
3DF1A2:  VMUL.F32        S20, S13, S9
3DF1A6:  VADD.F32        S1, S1, S22
3DF1AA:  VADD.F32        S7, S15, S7
3DF1AE:  VADD.F32        S14, S14, S20
3DF1B2:  VADD.F32        S1, S1, S1
3DF1B6:  VSUB.F32        S0, S7, S0
3DF1BA:  VADD.F32        S14, S14, S14
3DF1BE:  VMUL.F32        S7, S1, S9
3DF1C2:  VMUL.F32        S18, S1, S2
3DF1C6:  VMUL.F32        S1, S1, S4
3DF1CA:  VADD.F32        S0, S0, S0
3DF1CE:  VMUL.F32        S15, S14, S4
3DF1D2:  VMUL.F32        S20, S14, S2
3DF1D6:  VMUL.F32        S14, S14, S9
3DF1DA:  VSUB.F32        S7, S16, S7
3DF1DE:  VSUB.F32        S12, S12, S18
3DF1E2:  VSUB.F32        S10, S10, S1
3DF1E6:  VMUL.F32        S9, S0, S9
3DF1EA:  VMUL.F32        S4, S0, S4
3DF1EE:  VMUL.F32        S0, S0, S2
3DF1F2:  VSUB.F32        S8, S8, S15
3DF1F6:  VSUB.F32        S6, S6, S20
3DF1FA:  VSTR            S7, [R0]
3DF1FE:  VSUB.F32        S14, S13, S14
3DF202:  ADDW            R0, R4, #0xA78
3DF206:  VSUB.F32        S3, S3, S9
3DF20A:  VSTR            S10, [R0]
3DF20E:  VSUB.F32        S4, S5, S4
3DF212:  ADDW            R0, R4, #0xA74
3DF216:  VSUB.F32        S0, S11, S0
3DF21A:  VSTR            S12, [R0]
3DF21E:  VMUL.F32        S2, S12, S8
3DF222:  ADDW            R0, R4, #0xA9C
3DF226:  VMUL.F32        S1, S7, S6
3DF22A:  VMUL.F32        S9, S10, S14
3DF22E:  VMUL.F32        S10, S10, S6
3DF232:  VSTR            S3, [R0]
3DF236:  ADDW            R0, R4, #0xA98
3DF23A:  VMUL.F32        S5, S7, S8
3DF23E:  VMUL.F32        S12, S12, S14
3DF242:  VSTR            S4, [R0]
3DF246:  ADDW            R0, R4, #0xA94
3DF24A:  VSTR            S0, [R0]
3DF24E:  ADDW            R0, R4, #0xA8C
3DF252:  VSUB.F32        S2, S10, S2
3DF256:  VSTR            S14, [R0]
3DF25A:  ADDW            R0, R4, #0xA88
3DF25E:  VSUB.F32        S0, S5, S9
3DF262:  VSUB.F32        S4, S12, S1
3DF266:  VSTR            S8, [R0]
3DF26A:  ADDW            R0, R4, #0xA84
3DF26E:  VSTR            S6, [R0]
3DF272:  ADDW            R0, R4, #0xA6C
3DF276:  VSTR            S2, [R0]
3DF27A:  ADDW            R0, R4, #0xA68
3DF27E:  VSTR            S4, [R0]
3DF282:  VSTR            S0, [R5]
3DF286:  MOV             R6, SP
3DF288:  MOV             R1, R5
3DF28A:  MOV             R0, R6; CMatrix *
3DF28C:  BLX             j__Z6InvertRK7CMatrix; Invert(CMatrix const&)
3DF290:  ADDW            R0, R4, #0xA1C
3DF294:  MOV             R1, R6
3DF296:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
3DF29A:  MOV             R0, R6; this
3DF29C:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
3DF2A0:  ADD             SP, SP, #0x48 ; 'H'
3DF2A2:  VPOP            {D8-D11}
3DF2A6:  POP.W           {R11}
3DF2AA:  POP             {R4-R7,PC}
