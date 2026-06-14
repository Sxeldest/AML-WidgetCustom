; =========================================================
; Game Engine Function: _ZNK41CEntitySeekPosCalculatorRadiusAngleOffset20ComputeEntitySeekPosERK4CPedRK7CEntityR7CVector
; Address            : 0x544498 - 0x54456E
; =========================================================

544498:  PUSH            {R4-R7,LR}
54449A:  ADD             R7, SP, #0xC
54449C:  PUSH.W          {R8-R10}
5444A0:  VPUSH           {D8-D9}
5444A4:  SUB             SP, SP, #0x10; float
5444A6:  MOV             R6, R2
5444A8:  MOV             R4, R0
5444AA:  LDR             R0, [R6,#0x14]
5444AC:  MOV             R8, R3
5444AE:  MOV             R9, R1
5444B0:  CBZ             R0, loc_5444BC
5444B2:  VLDR            S2, [R0,#0x10]
5444B6:  VLDR            S0, [R0,#0x14]
5444BA:  B               loc_5444D8
5444BC:  LDR             R5, [R6,#0x10]
5444BE:  MOV             R0, R5; x
5444C0:  BLX             sinf
5444C4:  MOV             R10, R0
5444C6:  MOV             R0, R5; x
5444C8:  BLX             cosf
5444CC:  VMOV            S0, R0
5444D0:  EOR.W           R0, R10, #0x80000000
5444D4:  VMOV            S2, R0
5444D8:  VMOV            R0, S2; this
5444DC:  MOVS            R2, #0; float
5444DE:  VMOV            R1, S0; float
5444E2:  MOVS            R3, #0; float
5444E4:  BLX             j__ZN8CGeneral27GetRadianAngleBetweenPointsEffff; CGeneral::GetRadianAngleBetweenPoints(float,float,float,float)
5444E8:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
5444EC:  VMOV            S0, R0
5444F0:  VLDR            S2, [R4,#8]
5444F4:  VADD.F32        S0, S0, S2
5444F8:  VMOV            R0, S0; this
5444FC:  BLX             j__ZN8CGeneral16LimitRadianAngleEf; CGeneral::LimitRadianAngle(float)
544500:  MOV             R5, R0
544502:  BLX             sinf
544506:  VMOV            S0, R0
54450A:  VLDR            S16, [R4,#4]
54450E:  LDR             R0, [R6,#0x14]
544510:  VMUL.F32        S0, S0, S16
544514:  ADD.W           R4, R0, #0x30 ; '0'
544518:  CMP             R0, #0
54451A:  IT EQ
54451C:  ADDEQ           R4, R6, #4
54451E:  MOV             R0, R5; x
544520:  VLDR            S2, [R4]
544524:  VSUB.F32        S18, S2, S0
544528:  BLX             cosf
54452C:  VMOV            S0, R0
544530:  VSTR            S18, [SP,#0x38+var_34]
544534:  VLDR            S2, [R4,#4]
544538:  ADD             R1, SP, #0x38+var_34; CPed *
54453A:  VMUL.F32        S0, S0, S16
54453E:  VLDR            S4, [R4,#8]
544542:  MOV             R0, R9; this
544544:  MOV             R2, R8; CVector *
544546:  VADD.F32        S0, S0, S2
54454A:  VLDR            S2, =0.0
54454E:  VMUL.F32        S2, S16, S2
544552:  VSTR            S0, [SP,#0x38+var_30]
544556:  VADD.F32        S0, S2, S4
54455A:  VSTR            S0, [SP,#0x38+var_2C]
54455E:  BLX             j__ZN20CPedGeometryAnalyser18ComputeClearTargetERK4CPedRK7CVectorRS3_; CPedGeometryAnalyser::ComputeClearTarget(CPed const&,CVector const&,CVector&)
544562:  ADD             SP, SP, #0x10
544564:  VPOP            {D8-D9}
544568:  POP.W           {R8-R10}
54456C:  POP             {R4-R7,PC}
