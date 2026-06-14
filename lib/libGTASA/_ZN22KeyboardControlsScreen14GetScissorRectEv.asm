; =========================================================
; Game Engine Function: _ZN22KeyboardControlsScreen14GetScissorRectEv
; Address            : 0x2A3418 - 0x2A34AA
; =========================================================

2A3418:  PUSH            {R4-R7,LR}
2A341A:  ADD             R7, SP, #0xC
2A341C:  PUSH.W          {R8}
2A3420:  VPUSH           {D8-D10}
2A3424:  MOV             R5, R1
2A3426:  MOV             R4, R0
2A3428:  LDR             R0, [R5]
2A342A:  LDR             R1, [R0,#0x40]
2A342C:  MOV             R0, R5
2A342E:  BLX             R1
2A3430:  MOV             R6, R0
2A3432:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2A3436:  MOV             R8, R0
2A3438:  LDR             R0, [R5]
2A343A:  LDR             R1, [R0,#0x48]
2A343C:  MOV             R0, R5
2A343E:  BLX             R1
2A3440:  LDR             R1, [R5]
2A3442:  VMOV            S16, R0
2A3446:  MOV             R0, R5
2A3448:  LDR             R1, [R1,#0x40]
2A344A:  BLX             R1
2A344C:  VMOV            S0, R0
2A3450:  VLDR            S2, =480.0
2A3454:  VMOV            S4, R6
2A3458:  VSUB.F32        S0, S16, S0
2A345C:  VDIV.F32        S16, S4, S2
2A3460:  VDIV.F32        S18, S0, S2
2A3464:  VMOV            S0, R8
2A3468:  VCVT.F32.U32    S20, S0
2A346C:  BLX             j__Z18OS_ScreenGetHeightv; OS_ScreenGetHeight(void)
2A3470:  VMOV            S0, R0
2A3474:  VMUL.F32        S16, S16, S20
2A3478:  VCVT.F32.U32    S0, S0
2A347C:  VMUL.F32        S18, S18, S0
2A3480:  BLX             j__Z17OS_ScreenGetWidthv; OS_ScreenGetWidth(void)
2A3484:  VMOV            S0, R0
2A3488:  MOVS            R0, #0
2A348A:  VADD.F32        S2, S16, S18
2A348E:  VCVT.F32.U32    S0, S0
2A3492:  STR             R0, [R4]
2A3494:  VSTR            S2, [R4,#4]
2A3498:  VSTR            S0, [R4,#8]
2A349C:  VSTR            S16, [R4,#0xC]
2A34A0:  VPOP            {D8-D10}
2A34A4:  POP.W           {R8}
2A34A8:  POP             {R4-R7,PC}
