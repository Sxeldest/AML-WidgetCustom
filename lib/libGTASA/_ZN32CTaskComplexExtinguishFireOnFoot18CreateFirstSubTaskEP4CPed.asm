; =========================================================
; Game Engine Function: _ZN32CTaskComplexExtinguishFireOnFoot18CreateFirstSubTaskEP4CPed
; Address            : 0x51210C - 0x5121C0
; =========================================================

51210C:  PUSH            {R4-R7,LR}
51210E:  ADD             R7, SP, #0xC
512110:  PUSH.W          {R8,R9,R11}
512114:  SUB             SP, SP, #0x10; float
512116:  MOV             R8, R0
512118:  LDR             R0, =(gFireManager_ptr - 0x512122)
51211A:  MOV             R4, R1
51211C:  ADDS            R6, R4, #4
51211E:  ADD             R0, PC; gFireManager_ptr
512120:  LDR             R2, [R4,#0x14]
512122:  MOV             R1, R6
512124:  MOVS            R3, #1; bool
512126:  LDR             R0, [R0]; gFireManager ; this
512128:  CMP             R2, #0
51212A:  IT NE
51212C:  ADDNE.W         R1, R2, #0x30 ; '0'; CVector *
512130:  MOVS            R2, #0; bool
512132:  MOV.W           R9, #0
512136:  BLX             j__ZN12CFireManager15FindNearestFireERK7CVectorbb; CFireManager::FindNearestFire(CVector const&,bool,bool)
51213A:  MOV             R5, R0
51213C:  CBZ             R5, loc_5121B6
51213E:  LDR             R0, [R4,#0x14]
512140:  MOV.W           R9, #0
512144:  VLDR            S0, [R5,#4]
512148:  CMP             R0, #0
51214A:  IT NE
51214C:  ADDNE.W         R6, R0, #0x30 ; '0'
512150:  VLDR            D16, [R5,#8]
512154:  VLDR            S2, [R6]
512158:  VLDR            D17, [R6,#4]
51215C:  VSUB.F32        S0, S2, S0
512160:  VSUB.F32        D16, D17, D16
512164:  VMUL.F32        D1, D16, D16
512168:  VMUL.F32        S0, S0, S0
51216C:  VADD.F32        S0, S0, S2
512170:  VADD.F32        S0, S0, S3
512174:  VLDR            S2, =100.0
512178:  VCMPE.F32       S0, S2
51217C:  VMRS            APSR_nzcv, FPSCR
512180:  BGE             loc_5121B6
512182:  VLDR            D16, [R5,#4]
512186:  LDR             R0, [R5,#0xC]
512188:  STR.W           R0, [R8,#0x14]
51218C:  MOVS            R0, #word_28; this
51218E:  VSTR            D16, [R8,#0xC]
512192:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
512196:  LDR             R1, =(_ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr - 0x5121A6)
512198:  ADDS            R2, R5, #4; CVector *
51219A:  MOV.W           R3, #0x40000000; float
51219E:  STRD.W          R9, R9, [SP,#0x28+var_24]; bool
5121A2:  ADD             R1, PC; _ZN34CTaskComplexGoToPointAndStandStill20ms_fSlowDownDistanceE_ptr
5121A4:  LDR             R1, [R1]; CTaskComplexGoToPointAndStandStill::ms_fSlowDownDistance ...
5121A6:  VLDR            S0, [R1]
5121AA:  MOVS            R1, #6; int
5121AC:  VSTR            S0, [SP,#0x28+var_28]
5121B0:  BLX             j__ZN34CTaskComplexGoToPointAndStandStillC2EiRK7CVectorffbb; CTaskComplexGoToPointAndStandStill::CTaskComplexGoToPointAndStandStill(int,CVector const&,float,float,bool,bool)
5121B4:  MOV             R9, R0
5121B6:  MOV             R0, R9
5121B8:  ADD             SP, SP, #0x10
5121BA:  POP.W           {R8,R9,R11}
5121BE:  POP             {R4-R7,PC}
