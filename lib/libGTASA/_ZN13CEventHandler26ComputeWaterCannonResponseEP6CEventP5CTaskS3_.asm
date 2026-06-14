; =========================================================
; Game Engine Function: _ZN13CEventHandler26ComputeWaterCannonResponseEP6CEventP5CTaskS3_
; Address            : 0x382A18 - 0x382AFC
; =========================================================

382A18:  PUSH            {R4-R7,LR}
382A1A:  ADD             R7, SP, #0xC
382A1C:  PUSH.W          {R11}
382A20:  SUB             SP, SP, #0x10
382A22:  MOV             R4, R0
382A24:  MOV             R5, R1
382A26:  LDR             R0, [R4]; this
382A28:  MOVS            R1, #0
382A2A:  STRD.W          R1, R1, [SP,#0x20+var_20]; unsigned __int8
382A2E:  MOVS            R2, #0; unsigned int
382A30:  STR             R1, [SP,#0x20+var_18]; unsigned __int8
382A32:  MOV.W           R1, #0x158; unsigned __int16
382A36:  MOV.W           R3, #0x3F800000; float
382A3A:  BLX             j__ZN4CPed3SayEtjfhhh; CPed::Say(ushort,uint,float,uchar,uchar,uchar)
382A3E:  LDR             R0, [R4]; this
382A40:  ADD.W           R1, R5, #0x18; CPed *
382A44:  BLX             j__ZN20CPedGeometryAnalyser17ComputePedHitSideERK4CPedRK7CVector; CPedGeometryAnalyser::ComputePedHitSide(CPed const&,CVector const&)
382A48:  MOV             R6, R0
382A4A:  MOVS            R0, #off_18; this
382A4C:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
382A50:  MOV             R1, R6; int
382A52:  MOVS            R2, #0; int
382A54:  BLX             j__ZN24CTaskComplexFallAndGetUpC2Eii; CTaskComplexFallAndGetUp::CTaskComplexFallAndGetUp(int,int)
382A58:  LDR             R1, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x382A62)
382A5A:  MOVS            R2, #0
382A5C:  STR             R0, [R4,#0x24]
382A5E:  ADD             R1, PC; _ZN6CTimer12ms_fTimeStepE_ptr
382A60:  LDR             R0, [R4]
382A62:  LDR             R1, [R1]; CTimer::ms_fTimeStep ...
382A64:  VLDR            S0, [R1]
382A68:  MOVS            R1, #0
382A6A:  VADD.F32        S0, S0, S0
382A6E:  VMOV            R3, S0
382A72:  BLX             j__ZN9CPhysical14ApplyMoveForceE7CVector; CPhysical::ApplyMoveForce(CVector)
382A76:  VLDR            S0, =0.6
382A7A:  VMOV.F32        S6, #0.5
382A7E:  VLDR            S2, [R5,#0x18]
382A82:  LDR             R0, [R4]
382A84:  VMUL.F32        S2, S2, S0
382A88:  VLDR            S4, [R0,#0x48]
382A8C:  VADD.F32        S2, S4, S2
382A90:  VMUL.F32        S2, S2, S6
382A94:  VSTR            S2, [R0,#0x48]
382A98:  VLDR            S2, [R5,#0x1C]
382A9C:  LDR             R0, [R4]
382A9E:  VMUL.F32        S0, S2, S0
382AA2:  VLDR            S2, [R0,#0x4C]
382AA6:  VADD.F32        S0, S2, S0
382AAA:  VMUL.F32        S0, S0, S6
382AAE:  VSTR            S0, [R0,#0x4C]
382AB2:  LDR             R0, [R4]
382AB4:  VLDR            S2, [R0,#0x4C]
382AB8:  VLDR            S0, [R0,#0x48]
382ABC:  VMUL.F32        S2, S2, S2
382AC0:  VMUL.F32        S4, S0, S0
382AC4:  VADD.F32        S2, S4, S2
382AC8:  VLDR            S4, =0.2
382ACC:  VSQRT.F32       S2, S2
382AD0:  VCMPE.F32       S2, S4
382AD4:  VMRS            APSR_nzcv, FPSCR
382AD8:  BLE             loc_382AF4
382ADA:  VDIV.F32        S2, S4, S2
382ADE:  VMUL.F32        S0, S2, S0
382AE2:  VSTR            S0, [R0,#0x48]
382AE6:  LDR             R0, [R4]
382AE8:  VLDR            S0, [R0,#0x4C]
382AEC:  VMUL.F32        S0, S2, S0
382AF0:  VSTR            S0, [R0,#0x4C]
382AF4:  ADD             SP, SP, #0x10
382AF6:  POP.W           {R11}
382AFA:  POP             {R4-R7,PC}
