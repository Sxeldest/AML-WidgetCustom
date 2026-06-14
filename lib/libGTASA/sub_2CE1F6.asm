; =========================================================
; Game Engine Function: sub_2CE1F6
; Address            : 0x2CE1F6 - 0x2CE28A
; =========================================================

2CE1F6:  PUSH            {R4-R7,LR}
2CE1F8:  ADD             R7, SP, #0xC
2CE1FA:  PUSH.W          {R11}
2CE1FE:  SUB             SP, SP, #0x30
2CE200:  MOV             R5, R1
2CE202:  MOV             R6, R0
2CE204:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
2CE208:  LDR             R1, [R6,#0x14]
2CE20A:  MOV             R4, R0
2CE20C:  ADD.W           R2, R4, #0x18
2CE210:  CBZ             R1, loc_2CE234
2CE212:  LDR             R0, [R2,#8]
2CE214:  VLDR            D16, [R2]
2CE218:  ADD             R2, SP, #0x40+var_30
2CE21A:  STR             R0, [SP,#0x40+var_28]
2CE21C:  ADD             R0, SP, #0x40+var_20
2CE21E:  VSTR            D16, [SP,#0x40+var_30]
2CE222:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
2CE226:  VLDR            D16, [SP,#0x40+var_20]
2CE22A:  LDR             R0, [SP,#0x40+var_18]
2CE22C:  STR             R0, [SP,#0x40+var_38]
2CE22E:  VSTR            D16, [SP,#0x40+var_40]
2CE232:  B               loc_2CE23C
2CE234:  ADDS            R1, R6, #4
2CE236:  MOV             R0, SP
2CE238:  BLX             j__Z14TransformPointR5RwV3dRK16CSimpleTransformRKS_; TransformPoint(RwV3d &,CSimpleTransform const&,RwV3d const&)
2CE23C:  VLDR            S0, [SP,#0x40+var_40]
2CE240:  VLDR            S2, [R5]
2CE244:  VLDR            D16, [SP,#0x40+var_40+4]
2CE248:  VSUB.F32        S0, S2, S0
2CE24C:  VLDR            D17, [R5,#4]
2CE250:  VSUB.F32        D16, D17, D16
2CE254:  VMUL.F32        D1, D16, D16
2CE258:  VMUL.F32        S0, S0, S0
2CE25C:  VADD.F32        S0, S0, S2
2CE260:  VADD.F32        S0, S0, S3
2CE264:  VLDR            S2, [R4,#0x24]
2CE268:  VSQRT.F32       S0, S0
2CE26C:  VCMPE.F32       S0, S2
2CE270:  VMRS            APSR_nzcv, FPSCR
2CE274:  VSUB.F32        S4, S0, S2
2CE278:  IT GT
2CE27A:  VMOVGT.F32      S0, S4
2CE27E:  VMUL.F32        S0, S0, S0
2CE282:  ADD             SP, SP, #0x30 ; '0'
2CE284:  POP.W           {R11}
2CE288:  POP             {R4-R7,PC}
