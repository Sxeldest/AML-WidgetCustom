; =========================================================
; Game Engine Function: _ZN5CBike19CalculateLeanMatrixEv
; Address            : 0x566074 - 0x566170
; =========================================================

566074:  PUSH            {R4-R7,LR}
566076:  ADD             R7, SP, #0xC
566078:  PUSH.W          {R8}
56607C:  VPUSH           {D8-D12}
566080:  SUB             SP, SP, #0x90
566082:  MOV             R4, R0
566084:  LDRB.W          R0, [R4,#0x5DC]
566088:  CMP             R0, #0
56608A:  BNE             loc_566164
56608C:  MOVS            R0, #0
56608E:  VLDR            S2, =-0.05
566092:  STRD.W          R0, R0, [SP,#0xC8+var_88]
566096:  ADDW            R0, R4, #0x65C
56609A:  MOV             R8, SP
56609C:  VLDR            S0, [R0]
5660A0:  MOV             R0, R8; this
5660A2:  VABS.F32        S0, S0
5660A6:  VMUL.F32        S0, S0, S2
5660AA:  VMOV            R1, S0; x
5660AE:  BLX             j__ZN7CMatrix10SetRotateXEf; CMatrix::SetRotateX(float)
5660B2:  LDR.W           R1, [R4,#0x65C]; x
5660B6:  MOV             R0, R8; this
5660B8:  BLX             j__ZN7CMatrix7RotateYEf; CMatrix::RotateY(float)
5660BC:  ADD.W           R6, R4, #0x5E0
5660C0:  LDR             R1, [R4,#0x14]
5660C2:  MOV             R0, R6
5660C4:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
5660C8:  ADD             R5, SP, #0xC8+var_80
5660CA:  MOV             R1, R6
5660CC:  MOV             R2, R8
5660CE:  MOV             R0, R5
5660D0:  BLX             j__ZmlRK7CMatrixS1_; operator*(CMatrix const&,CMatrix const&)
5660D4:  MOV             R0, R6
5660D6:  MOV             R1, R5
5660D8:  BLX             j__ZN7CMatrixaSERKS_; CMatrix::operator=(CMatrix const&)
5660DC:  MOV             R0, R5; this
5660DE:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
5660E2:  MOV             R0, R4; this
5660E4:  LDR             R5, [R4,#0x14]
5660E6:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
5660EA:  LDR.W           R1, [R4,#0x65C]
5660EE:  VMOV.F32        S16, #1.0
5660F2:  VLDR            S24, [R0,#8]
5660F6:  VLDR            S18, [R5,#0x20]
5660FA:  MOV             R0, R1; x
5660FC:  VLDR            S20, [R5,#0x24]
566100:  VLDR            S22, [R5,#0x28]
566104:  BLX             cosf
566108:  VMOV            S0, R0
56610C:  ADD.W           R0, R4, #0x618
566110:  VMUL.F32        S2, S24, S18
566114:  ADDW            R2, R4, #0x614
566118:  VSUB.F32        S0, S16, S0
56611C:  ADD.W           R1, R4, #0x610
566120:  VMUL.F32        S4, S24, S20
566124:  VLDR            S8, [R2]
566128:  VMUL.F32        S6, S24, S22
56612C:  VLDR            S10, [R0]
566130:  MOVS            R3, #1
566132:  VMUL.F32        S2, S2, S0
566136:  VMUL.F32        S4, S4, S0
56613A:  VMUL.F32        S0, S6, S0
56613E:  VLDR            S6, [R1]
566142:  STRB.W          R3, [R4,#0x5DC]
566146:  VADD.F32        S2, S6, S2
56614A:  VADD.F32        S4, S4, S8
56614E:  VADD.F32        S0, S0, S10
566152:  VSTR            S2, [R1]
566156:  VSTR            S4, [R2]
56615A:  VSTR            S0, [R0]
56615E:  MOV             R0, R8; this
566160:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
566164:  ADD             SP, SP, #0x90
566166:  VPOP            {D8-D12}
56616A:  POP.W           {R8}
56616E:  POP             {R4-R7,PC}
