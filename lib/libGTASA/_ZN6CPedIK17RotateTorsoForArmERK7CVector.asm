; =========================================================
; Game Engine Function: _ZN6CPedIK17RotateTorsoForArmERK7CVector
; Address            : 0x4B9598 - 0x4B96BC
; =========================================================

4B9598:  PUSH            {R4-R7,LR}
4B959A:  ADD             R7, SP, #0xC
4B959C:  PUSH.W          {R11}
4B95A0:  MOV             R4, R0
4B95A2:  VLDR            S0, [R1]
4B95A6:  LDR             R6, [R4]
4B95A8:  VLDR            S2, [R1,#4]
4B95AC:  LDR             R0, [R6,#0x14]
4B95AE:  ADD.W           R1, R0, #0x30 ; '0'
4B95B2:  CMP             R0, #0
4B95B4:  IT EQ
4B95B6:  ADDEQ           R1, R6, #4
4B95B8:  VLDR            S4, [R1]
4B95BC:  VLDR            S6, [R1,#4]
4B95C0:  VSUB.F32        S0, S0, S4
4B95C4:  VSUB.F32        S2, S2, S6
4B95C8:  VMOV            R0, S0
4B95CC:  VMOV            R1, S2; x
4B95D0:  EOR.W           R0, R0, #0x80000000; y
4B95D4:  BLX             atan2f
4B95D8:  ADDW            R1, R6, #0x55C
4B95DC:  VLDR            S0, =3.1416
4B95E0:  VMOV            S4, R0
4B95E4:  VLDR            S2, [R1]
4B95E8:  VADD.F32        S6, S2, S0
4B95EC:  VCMPE.F32       S4, S6
4B95F0:  VMRS            APSR_nzcv, FPSCR
4B95F4:  BLE             loc_4B95FC
4B95F6:  VLDR            S6, =-6.2832
4B95FA:  B               loc_4B9612
4B95FC:  VLDR            S6, =-3.1416
4B9600:  VADD.F32        S6, S2, S6
4B9604:  VCMPE.F32       S4, S6
4B9608:  VMRS            APSR_nzcv, FPSCR
4B960C:  BGE             loc_4B9616
4B960E:  VLDR            S6, =6.2832
4B9612:  VADD.F32        S4, S4, S6
4B9616:  VSUB.F32        S4, S4, S2
4B961A:  VLDR            S2, =0.7854
4B961E:  VCMPE.F32       S4, S2
4B9622:  VMRS            APSR_nzcv, FPSCR
4B9626:  BLE             loc_4B963C
4B9628:  VLDR            S6, =-0.7854
4B962C:  VADD.F32        S4, S4, S6
4B9630:  VCMPE.F32       S4, S2
4B9634:  VMRS            APSR_nzcv, FPSCR
4B9638:  BLE             loc_4B9660
4B963A:  B               loc_4B966E
4B963C:  VLDR            S2, =-1.0472
4B9640:  VCMPE.F32       S4, S2
4B9644:  VMRS            APSR_nzcv, FPSCR
4B9648:  BGE             loc_4B96B6
4B964A:  VLDR            S2, =1.0472
4B964E:  VADD.F32        S4, S4, S2
4B9652:  VLDR            S2, =-0.34907
4B9656:  VCMPE.F32       S4, S2
4B965A:  VMRS            APSR_nzcv, FPSCR
4B965E:  BLT             loc_4B966E
4B9660:  VMOV.F32        S2, S4
4B9664:  VCMP.F32        S4, #0.0
4B9668:  VMRS            APSR_nzcv, FPSCR
4B966C:  BEQ             loc_4B96B6
4B966E:  VMOV.F32        S4, #0.5
4B9672:  LDR             R1, =(_ZN6CPedIK7XaxisIKE_ptr - 0x4B967E)
4B9674:  LDR.W           R0, [R6,#0x4D8]
4B9678:  MOVS            R3, #2
4B967A:  ADD             R1, PC; _ZN6CPedIK7XaxisIKE_ptr
4B967C:  LDR             R6, [R1]; CPedIK::XaxisIK ...
4B967E:  LDR             R0, [R0,#0x10]
4B9680:  VMUL.F32        S2, S2, S4
4B9684:  VLDR            S4, =180.0
4B9688:  MOV             R1, R6
4B968A:  VMUL.F32        S2, S2, S4
4B968E:  VDIV.F32        S0, S2, S0
4B9692:  VMOV            R5, S0
4B9696:  MOV             R2, R5
4B9698:  BLX             j__Z12RtQuatRotateP6RtQuatPK5RwV3df15RwOpCombineType; RtQuatRotate(RtQuat *,RwV3d const*,float,RwOpCombineType)
4B969C:  LDR             R0, [R4]
4B969E:  MOV             R1, R6
4B96A0:  MOV             R2, R5
4B96A2:  MOVS            R3, #2
4B96A4:  LDR.W           R0, [R0,#0x498]
4B96A8:  LDR             R0, [R0,#0x10]
4B96AA:  POP.W           {R11}
4B96AE:  POP.W           {R4-R7,LR}
4B96B2:  B.W             sub_18DD5C
4B96B6:  POP.W           {R11}
4B96BA:  POP             {R4-R7,PC}
