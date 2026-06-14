; =========================================================
; Game Engine Function: _ZN19CTaskSimpleCarDrive18ProcessHeadBoppingEP4CPedhf
; Address            : 0x4FB06C - 0x4FB2B4
; =========================================================

4FB06C:  PUSH            {R4-R7,LR}
4FB06E:  ADD             R7, SP, #0xC
4FB070:  PUSH.W          {R8,R9,R11}
4FB074:  VPUSH           {D8-D9}
4FB078:  VLDR            S16, =0.0
4FB07C:  MOV             R4, R2
4FB07E:  MOV             R6, R3
4FB080:  MOV             R8, R1
4FB082:  MOV             R5, R0
4FB084:  CBZ             R4, loc_4FB0DC
4FB086:  LDRB.W          R0, [R5,#0x5C]
4FB08A:  LSLS            R0, R0, #0x1F
4FB08C:  BNE             loc_4FB0E0
4FB08E:  VLDR            S0, [R5,#0x44]
4FB092:  VCMP.F32        S0, #0.0
4FB096:  VMRS            APSR_nzcv, FPSCR
4FB09A:  BNE             loc_4FB0DC
4FB09C:  BLX             rand
4FB0A0:  UXTH            R0, R0
4FB0A2:  VLDR            S18, =0.000015259
4FB0A6:  VMOV            S0, R0
4FB0AA:  VLDR            S2, =1000.0
4FB0AE:  VCVT.F32.S32    S0, S0
4FB0B2:  VMUL.F32        S0, S0, S18
4FB0B6:  VMUL.F32        S0, S0, S2
4FB0BA:  VCVT.S32.F32    S0, S0
4FB0BE:  VMOV            R0, S0
4FB0C2:  CMP.W           R0, #0x3E4
4FB0C6:  BLT             loc_4FB0DC
4FB0C8:  MOV             R9, R5
4FB0CA:  LDR.W           R0, [R9,#0x20]!
4FB0CE:  ADDS            R0, #1
4FB0D0:  BEQ             loc_4FB13C
4FB0D2:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4FB0D8)
4FB0D4:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4FB0D6:  LDR.W           R9, [R0]; CTimer::m_snTimeInMilliseconds ...
4FB0DA:  B               loc_4FB144
4FB0DC:  MOVS            R4, #0
4FB0DE:  B               loc_4FB19A
4FB0E0:  VLDR            S0, =3.1416
4FB0E4:  VLDR            S2, [R5,#0x2C]
4FB0E8:  VMUL.F32        S0, S2, S0
4FB0EC:  VMOV            R0, S0; x
4FB0F0:  BLX             sinf
4FB0F4:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4FB100)
4FB0F6:  VMOV            S16, R0
4FB0FA:  LDR             R2, [R5,#0x34]
4FB0FC:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4FB0FE:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4FB100:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4FB102:  SUBS            R0, R1, R2
4FB104:  MOVW            R1, #0x1389
4FB108:  CMP             R0, R1
4FB10A:  BCC             loc_4FB19A
4FB10C:  BLX             rand
4FB110:  UXTH            R0, R0
4FB112:  VLDR            S2, =0.000015259
4FB116:  VMOV            S0, R0
4FB11A:  VCVT.F32.S32    S0, S0
4FB11E:  VMUL.F32        S0, S0, S2
4FB122:  VLDR            S2, =1000.0
4FB126:  VMUL.F32        S0, S0, S2
4FB12A:  VCVT.S32.F32    S0, S0
4FB12E:  VMOV            R0, S0
4FB132:  CMP.W           R0, #0x3E4
4FB136:  IT GE
4FB138:  MOVGE           R4, #0
4FB13A:  B               loc_4FB19A
4FB13C:  MOV             R0, R5; this
4FB13E:  MOV             R1, R8; CPed *
4FB140:  BLX             j__ZN19CTaskSimpleCarDrive12StartBoppingEP4CPed; CTaskSimpleCarDrive::StartBopping(CPed *)
4FB144:  LDR.W           R0, [R9]; CTimer::m_snTimeInMilliseconds
4FB148:  STR             R0, [R5,#0x34]
4FB14A:  BLX             rand
4FB14E:  UXTH            R0, R0
4FB150:  VMOV            S0, R0
4FB154:  VCVT.F32.S32    S0, S0
4FB158:  VMUL.F32        S0, S0, S18
4FB15C:  VADD.F32        S0, S0, S0
4FB160:  VCVT.S32.F32    S0, S0
4FB164:  VMOV            R0, S0
4FB168:  ADDS            R0, #1
4FB16A:  STR             R0, [R5,#0x38]
4FB16C:  BLX             rand
4FB170:  VMOV            S0, R0
4FB174:  VLDR            S2, =4.6566e-10
4FB178:  VMOV.F32        S4, #5.0
4FB17C:  MOVS            R0, #0
4FB17E:  VCVT.F32.S32    S0, S0
4FB182:  STR             R0, [R5,#0x44]
4FB184:  STR             R0, [R5,#0x3C]
4FB186:  VMUL.F32        S0, S0, S2
4FB18A:  VMOV.F32        S2, #3.0
4FB18E:  VMUL.F32        S0, S0, S4
4FB192:  VADD.F32        S0, S0, S2
4FB196:  VSTR            S0, [R5,#0x40]
4FB19A:  LDRB.W          R0, [R5,#0x5C]
4FB19E:  VMOV            S0, R6
4FB1A2:  VLDR            S2, [R5,#0x44]
4FB1A6:  ANDS.W          R1, R4, #1
4FB1AA:  AND.W           R0, R0, #0xFE
4FB1AE:  ORR.W           R0, R0, R1
4FB1B2:  STRB.W          R0, [R5,#0x5C]
4FB1B6:  BNE             loc_4FB1EA
4FB1B8:  VCMPE.F32       S2, #0.0
4FB1BC:  VMRS            APSR_nzcv, FPSCR
4FB1C0:  ITTT GT
4FB1C2:  VLDRGT          S4, =-0.05
4FB1C6:  VADDGT.F32      S2, S2, S4
4FB1CA:  VSTRGT          S2, [R5,#0x44]
4FB1CE:  VMOV.F32        S4, #1.0
4FB1D2:  VCMPE.F32       S2, #0.0
4FB1D6:  VMRS            APSR_nzcv, FPSCR
4FB1DA:  ITTT LT
4FB1DC:  MOVLT           R0, #0
4FB1DE:  VLDRLT          S2, =0.0
4FB1E2:  STRLT           R0, [R5,#0x44]
4FB1E4:  VSUB.F32        S2, S4, S2
4FB1E8:  B               loc_4FB218
4FB1EA:  VMOV.F32        S4, #1.0
4FB1EE:  VCMPE.F32       S2, S4
4FB1F2:  VMRS            APSR_nzcv, FPSCR
4FB1F6:  ITTT LT
4FB1F8:  VLDRLT          S6, =0.05
4FB1FC:  VADDLT.F32      S2, S2, S6
4FB200:  VSTRLT          S2, [R5,#0x44]
4FB204:  VCMPE.F32       S2, S4
4FB208:  VMRS            APSR_nzcv, FPSCR
4FB20C:  ITTT GT
4FB20E:  MOVGT.W         R0, #0x3F800000
4FB212:  STRGT           R0, [R5,#0x44]
4FB214:  VMOVGT.F32      S2, S4
4FB218:  VLDR            S4, [R5,#0x3C]
4FB21C:  VSUB.F32        S6, S16, S4
4FB220:  VMUL.F32        S2, S6, S2
4FB224:  VADD.F32        S2, S2, S4
4FB228:  VLDR            S4, =64.0
4FB22C:  VCMPE.F32       S0, S4
4FB230:  VMRS            APSR_nzcv, FPSCR
4FB234:  VSTR            S2, [R5,#0x3C]
4FB238:  BGE             loc_4FB2AA
4FB23A:  VCMPE.F32       S2, #0.0
4FB23E:  VMRS            APSR_nzcv, FPSCR
4FB242:  BLE             loc_4FB2AA
4FB244:  VLDR            S0, [R5,#0x40]
4FB248:  LDR.W           R0, [R8,#0x49C]
4FB24C:  VMUL.F32        S16, S2, S0
4FB250:  LDR             R1, [R5,#0x38]
4FB252:  LDR             R4, [R0,#0x10]
4FB254:  CMP             R1, #0
4FB256:  BLE             loc_4FB28A
4FB258:  LDR             R0, [R5,#0x30]
4FB25A:  CBZ             R0, loc_4FB26A
4FB25C:  VMOV            R0, S16
4FB260:  LDR             R1, =(unk_61E664 - 0x4FB266)
4FB262:  ADD             R1, PC; unk_61E664
4FB264:  EOR.W           R2, R0, #0x80000000
4FB268:  B               loc_4FB272
4FB26A:  LDR             R1, =(unk_61E664 - 0x4FB274)
4FB26C:  VMOV            R2, S16
4FB270:  ADD             R1, PC; unk_61E664
4FB272:  MOV             R0, R4
4FB274:  MOVS            R3, #1
4FB276:  BLX             j__Z12RtQuatRotateP6RtQuatPK5RwV3df15RwOpCombineType; RtQuatRotate(RtQuat *,RwV3d const*,float,RwOpCombineType)
4FB27A:  LDR             R0, [R5,#0x38]
4FB27C:  CMP             R0, #2
4FB27E:  BNE             loc_4FB28A
4FB280:  LDR             R1, =(unk_61E670 - 0x4FB28A)
4FB282:  VMOV            R2, S16
4FB286:  ADD             R1, PC; unk_61E670
4FB288:  B               loc_4FB296
4FB28A:  VMOV            R0, S16
4FB28E:  LDR             R1, =(unk_61E670 - 0x4FB294)
4FB290:  ADD             R1, PC; unk_61E670
4FB292:  EOR.W           R2, R0, #0x80000000
4FB296:  MOV             R0, R4
4FB298:  MOVS            R3, #1
4FB29A:  BLX             j__Z12RtQuatRotateP6RtQuatPK5RwV3df15RwOpCombineType; RtQuatRotate(RtQuat *,RwV3d const*,float,RwOpCombineType)
4FB29E:  LDR.W           R0, [R8,#0x488]
4FB2A2:  ORR.W           R0, R0, #0x4000
4FB2A6:  STR.W           R0, [R8,#0x488]
4FB2AA:  VPOP            {D8-D9}
4FB2AE:  POP.W           {R8,R9,R11}
4FB2B2:  POP             {R4-R7,PC}
