; =========================================================
; Game Engine Function: _ZN39CTaskComplexAvoidOtherPedWhileWandering13ComputeSphereER10CColSpherePP4CPed
; Address            : 0x5220B8 - 0x5221B6
; =========================================================

5220B8:  PUSH            {R4,R6,R7,LR}
5220BA:  ADD             R7, SP, #8
5220BC:  SUB             SP, SP, #0x18
5220BE:  VLDR            S0, =0.0
5220C2:  MOV.W           R12, #0
5220C6:  MOVS            R3, #0
5220C8:  STRD.W          R12, R12, [SP,#0x20+var_14]
5220CC:  VMOV.F32        S2, S0
5220D0:  STR.W           R12, [SP,#0x20+var_C]
5220D4:  VMOV.F32        S4, S0
5220D8:  LDR.W           R0, [R2,R3,LSL#2]
5220DC:  CBZ             R0, loc_522116
5220DE:  LDR.W           LR, [R0,#0x14]
5220E2:  ADD.W           R12, R12, #1
5220E6:  ADD.W           R4, LR, #0x30 ; '0'
5220EA:  CMP.W           LR, #0
5220EE:  IT EQ
5220F0:  ADDEQ           R4, R0, #4
5220F2:  VLDR            S6, [R4]
5220F6:  VADD.F32        S4, S6, S4
5220FA:  VSTR            S4, [SP,#0x20+var_14]
5220FE:  VLDR            S6, [R4,#4]
522102:  VADD.F32        S2, S6, S2
522106:  VSTR            S2, [SP,#0x20+var_10]
52210A:  VLDR            S6, [R4,#8]
52210E:  VADD.F32        S0, S6, S0
522112:  VSTR            S0, [SP,#0x20+var_C]
522116:  ADDS            R3, #1
522118:  CMP             R3, #0x10
52211A:  BNE             loc_5220D8
52211C:  VMOV            S8, R12
522120:  MOVS            R0, #0
522122:  VMOV.F32        S6, #1.0
522126:  VCVT.F32.S32    S8, S8
52212A:  VDIV.F32        S6, S6, S8
52212E:  VMUL.F32        S2, S6, S2
522132:  VMUL.F32        S4, S6, S4
522136:  VMUL.F32        S6, S6, S0
52213A:  VLDR            S0, =0.0
52213E:  VSTR            S2, [SP,#0x20+var_10]
522142:  VSTR            S4, [SP,#0x20+var_14]
522146:  VSTR            S6, [SP,#0x20+var_C]
52214A:  VMOV            D3, D0
52214E:  LDR.W           R3, [R2,R0,LSL#2]
522152:  CBZ             R3, loc_522188
522154:  LDR.W           R12, [R3,#0x14]
522158:  ADD.W           R4, R12, #0x30 ; '0'
52215C:  CMP.W           R12, #0
522160:  IT EQ
522162:  ADDEQ           R4, R3, #4
522164:  VLDR            S8, [R4]
522168:  VLDR            S10, [R4,#4]
52216C:  VSUB.F32        S8, S8, S4
522170:  VSUB.F32        S10, S10, S2
522174:  VMUL.F32        S8, S8, S8
522178:  VMUL.F32        S10, S10, S10
52217C:  VADD.F32        S8, S8, S10
522180:  VADD.F32        S8, S8, S0
522184:  VMAX.F32        D3, D4, D3
522188:  ADDS            R0, #1
52218A:  CMP             R0, #0x10
52218C:  BNE             loc_52214E
52218E:  VSQRT.F32       S0, S6
522192:  MOVS            R0, #0xFF
522194:  MOVS            R2, #0
522196:  STRD.W          R2, R0, [SP,#0x20+var_20]; unsigned __int8
52219A:  ADD             R2, SP, #0x20+var_14; CVector *
52219C:  MOV             R0, R1; this
52219E:  VLDR            S2, =1.05
5221A2:  VADD.F32        S0, S0, S2
5221A6:  VMOV            R3, S0
5221AA:  MOV             R1, R3; float
5221AC:  MOVS            R3, #0; unsigned __int8
5221AE:  BLX             j__ZN10CColSphere3SetEfRK7CVectorhhh; CColSphere::Set(float,CVector const&,uchar,uchar,uchar)
5221B2:  ADD             SP, SP, #0x18
5221B4:  POP             {R4,R6,R7,PC}
