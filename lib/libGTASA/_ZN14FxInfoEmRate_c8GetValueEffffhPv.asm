; =========================================================
; Game Engine Function: _ZN14FxInfoEmRate_c8GetValueEffffhPv
; Address            : 0x36A3A6 - 0x36A44C
; =========================================================

36A3A6:  PUSH            {R4-R7,LR}
36A3A8:  ADD             R7, SP, #0xC
36A3AA:  PUSH.W          {R8}
36A3AE:  VPUSH           {D8-D9}
36A3B2:  SUB             SP, SP, #0x40
36A3B4:  ADD.W           R5, R0, #8
36A3B8:  MOV             R4, R1
36A3BA:  MOV             R1, SP; float *
36A3BC:  MOV             R2, R4; float
36A3BE:  MOV             R0, R5; this
36A3C0:  MOV             R6, R3
36A3C2:  BLX             j__ZN19FxInterpInfoFloat_c6GetValEPff; FxInterpInfoFloat_c::GetVal(float *,float)
36A3C6:  LDRD.W          R0, R8, [R7,#arg_4]
36A3CA:  VMOV            S16, R6
36A3CE:  CBZ             R0, loc_36A3DE
36A3D0:  VLDR            S0, [SP,#0x60+var_60]
36A3D4:  VMUL.F32        S0, S0, S16
36A3D8:  VSTR            S0, [R8]
36A3DC:  B               loc_36A440
36A3DE:  VMOV            S0, R4
36A3E2:  VSUB.F32        S18, S0, S16
36A3E6:  VCMPE.F32       S18, #0.0
36A3EA:  VMRS            APSR_nzcv, FPSCR
36A3EE:  BGE             loc_36A430
36A3F0:  VLDR            S0, [R7,#arg_0]
36A3F4:  VMOV            R0, S18
36A3F8:  MOVS            R1, #0; int
36A3FA:  VMOV            R2, S0; float
36A3FE:  EOR.W           R3, R0, #0x80000000; float
36A402:  MOV             R0, R5; this
36A404:  BLX             j__ZN19FxInterpInfoFloat_c6GetValEiff; FxInterpInfoFloat_c::GetVal(int,float,float)
36A408:  VADD.F32        S0, S18, S16
36A40C:  STR.W           R0, [R8]
36A410:  MOV             R0, R5; this
36A412:  MOVS            R1, #0; int
36A414:  MOV             R2, R4; float
36A416:  VMOV            R3, S0; float
36A41A:  BLX             j__ZN19FxInterpInfoFloat_c6GetValEiff; FxInterpInfoFloat_c::GetVal(int,float,float)
36A41E:  VMOV            S0, R0
36A422:  VLDR            S2, [R8]
36A426:  VADD.F32        S0, S0, S2
36A42A:  VSTR            S0, [R8]
36A42E:  B               loc_36A440
36A430:  MOV             R0, R5; this
36A432:  MOVS            R1, #0; int
36A434:  MOV             R2, R4; float
36A436:  MOV             R3, R6; float
36A438:  BLX             j__ZN19FxInterpInfoFloat_c6GetValEiff; FxInterpInfoFloat_c::GetVal(int,float,float)
36A43C:  STR.W           R0, [R8]
36A440:  ADD             SP, SP, #0x40 ; '@'
36A442:  VPOP            {D8-D9}
36A446:  POP.W           {R8}
36A44A:  POP             {R4-R7,PC}
