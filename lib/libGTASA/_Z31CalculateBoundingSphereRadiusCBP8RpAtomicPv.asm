; =========================================================
; Game Engine Function: _Z31CalculateBoundingSphereRadiusCBP8RpAtomicPv
; Address            : 0x464FA4 - 0x465034
; =========================================================

464FA4:  PUSH            {R4-R7,LR}
464FA6:  ADD             R7, SP, #0xC
464FA8:  PUSH.W          {R8}
464FAC:  VPUSH           {D8}
464FB0:  SUB             SP, SP, #0x10
464FB2:  MOV             R4, R0
464FB4:  MOV             R8, R1
464FB6:  LDR             R0, [R4,#0x4C]
464FB8:  TST.W           R0, #2
464FBC:  BEQ             loc_464FC6
464FBE:  MOV             R0, R4
464FC0:  BLX             j__Z33_rpAtomicResyncInterpolatedSphereP8RpAtomic; _rpAtomicResyncInterpolatedSphere(RpAtomic *)
464FC4:  LDR             R0, [R4,#0x4C]
464FC6:  LSLS            R0, R0, #0x1E
464FC8:  VLDR            S16, [R4,#0x28]
464FCC:  ITT MI
464FCE:  MOVMI           R0, R4
464FD0:  BLXMI           j__Z33_rpAtomicResyncInterpolatedSphereP8RpAtomic; _rpAtomicResyncInterpolatedSphere(RpAtomic *)
464FD4:  VLDR            D16, [R4,#0x1C]
464FD8:  LDR             R0, [R4,#0x24]
464FDA:  STR             R0, [SP,#0x28+var_20]
464FDC:  VSTR            D16, [SP,#0x28+var_28]
464FE0:  LDR             R0, [R4,#4]
464FE2:  MOV             R5, R0
464FE4:  LDR.W           R1, [R5,#4]!
464FE8:  CBZ             R1, loc_465006
464FEA:  MOV             R6, SP
464FEC:  ADD.W           R3, R0, #0x10
464FF0:  MOV             R0, R6
464FF2:  MOV             R1, R6
464FF4:  MOVS            R2, #1
464FF6:  BLX             j__Z20RwV3dTransformPointsP5RwV3dPKS_iPK11RwMatrixTag; RwV3dTransformPoints(RwV3d *,RwV3d const*,int,RwMatrixTag const*)
464FFA:  LDR             R0, [R5]
464FFC:  MOV             R5, R0
464FFE:  LDR.W           R1, [R5,#4]!
465002:  CMP             R1, #0
465004:  BNE             loc_464FEC
465006:  MOV             R0, SP
465008:  BLX             j__Z11RwV3dLengthPK5RwV3d; RwV3dLength(RwV3d const*)
46500C:  VMOV            S0, R0
465010:  VLDR            S2, [R8]
465014:  MOV             R0, R4
465016:  VADD.F32        S0, S16, S0
46501A:  VCMPE.F32       S0, S2
46501E:  VMRS            APSR_nzcv, FPSCR
465022:  IT GT
465024:  VSTRGT          S0, [R8]
465028:  ADD             SP, SP, #0x10
46502A:  VPOP            {D8}
46502E:  POP.W           {R8}
465032:  POP             {R4-R7,PC}
