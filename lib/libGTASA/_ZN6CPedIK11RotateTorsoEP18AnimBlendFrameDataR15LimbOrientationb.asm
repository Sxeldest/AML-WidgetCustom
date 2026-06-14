; =========================================================
; Game Engine Function: _ZN6CPedIK11RotateTorsoEP18AnimBlendFrameDataR15LimbOrientationb
; Address            : 0x4B94F0 - 0x4B9582
; =========================================================

4B94F0:  PUSH            {R4-R7,LR}
4B94F2:  ADD             R7, SP, #0xC
4B94F4:  PUSH.W          {R11}
4B94F8:  VPUSH           {D8-D9}
4B94FC:  MOV             R6, R2
4B94FE:  VLDR            S16, =180.0
4B9502:  VLDR            S0, [R6]
4B9506:  MOV             R4, R0
4B9508:  VLDR            S18, =3.1416
4B950C:  CMP             R3, #1
4B950E:  VMUL.F32        S0, S0, S16
4B9512:  LDR             R5, [R1,#0x10]
4B9514:  VDIV.F32        S0, S0, S18
4B9518:  VMOV            R2, S0
4B951C:  BNE             loc_4B9526
4B951E:  LDR             R0, =(_ZN6CPedIK7XaxisIKE_ptr - 0x4B9526)
4B9520:  MOVS            R3, #1
4B9522:  ADD             R0, PC; _ZN6CPedIK7XaxisIKE_ptr
4B9524:  B               loc_4B952C
4B9526:  LDR             R0, =(_ZN6CPedIK7XaxisIKE_ptr - 0x4B952E)
4B9528:  MOVS            R3, #0
4B952A:  ADD             R0, PC; _ZN6CPedIK7XaxisIKE_ptr
4B952C:  LDR             R1, [R0]; CPedIK::XaxisIK ...
4B952E:  MOV             R0, R5
4B9530:  BLX             j__Z12RtQuatRotateP6RtQuatPK5RwV3df15RwOpCombineType; RtQuatRotate(RtQuat *,RwV3d const*,float,RwOpCombineType)
4B9534:  VLDR            S0, [R6,#4]
4B9538:  MOVS            R3, #1
4B953A:  LDR             R0, =(_ZN6CPedIK7ZaxisIKE_ptr - 0x4B9544)
4B953C:  VMUL.F32        S0, S0, S16
4B9540:  ADD             R0, PC; _ZN6CPedIK7ZaxisIKE_ptr
4B9542:  LDR             R1, [R0]; CPedIK::ZaxisIK ...
4B9544:  MOV             R0, R5
4B9546:  VDIV.F32        S0, S0, S18
4B954A:  VMOV            R2, S0
4B954E:  BLX             j__Z12RtQuatRotateP6RtQuatPK5RwV3df15RwOpCombineType; RtQuatRotate(RtQuat *,RwV3d const*,float,RwOpCombineType)
4B9552:  LDR             R0, [R4]
4B9554:  LDR.W           R2, [R0,#0x488]
4B9558:  LDR.W           R1, [R0,#0x484]
4B955C:  LDR.W           R3, [R0,#0x48C]
4B9560:  ORR.W           R2, R2, #0x4000
4B9564:  LDR.W           R6, [R0,#0x490]
4B9568:  STR.W           R1, [R0,#0x484]
4B956C:  STR.W           R2, [R0,#0x488]
4B9570:  STR.W           R3, [R0,#0x48C]
4B9574:  STR.W           R6, [R0,#0x490]
4B9578:  VPOP            {D8-D9}
4B957C:  POP.W           {R11}
4B9580:  POP             {R4-R7,PC}
