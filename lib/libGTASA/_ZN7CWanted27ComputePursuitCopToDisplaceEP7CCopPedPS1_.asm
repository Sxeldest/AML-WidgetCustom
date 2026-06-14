; =========================================================
; Game Engine Function: _ZN7CWanted27ComputePursuitCopToDisplaceEP7CCopPedPS1_
; Address            : 0x422610 - 0x422710
; =========================================================

422610:  PUSH            {R4-R7,LR}
422612:  ADD             R7, SP, #0xC
422614:  PUSH.W          {R8}
422618:  VPUSH           {D8}
42261C:  VMOV.F32        S16, #1.0
422620:  MOV             R5, R0
422622:  MOV             R4, R1
422624:  CMP             R5, #0
422626:  VMOV.F64        D0, D8
42262A:  BEQ             loc_422684
42262C:  MOV.W           R0, #0xFFFFFFFF; int
422630:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
422634:  LDR             R1, [R5,#0x14]
422636:  LDR             R2, [R0,#0x14]
422638:  ADD.W           R3, R1, #0x30 ; '0'
42263C:  CMP             R1, #0
42263E:  IT EQ
422640:  ADDEQ           R3, R5, #4
422642:  ADD.W           R1, R2, #0x30 ; '0'
422646:  CMP             R2, #0
422648:  VLDR            S0, [R3]
42264C:  VLDR            S2, [R3,#4]
422650:  VLDR            S4, [R3,#8]
422654:  IT EQ
422656:  ADDEQ           R1, R0, #4
422658:  VLDR            S6, [R1]
42265C:  VLDR            S8, [R1,#4]
422660:  VSUB.F32        S0, S6, S0
422664:  VLDR            S10, [R1,#8]
422668:  VSUB.F32        S2, S8, S2
42266C:  VSUB.F32        S4, S10, S4
422670:  VMUL.F32        S0, S0, S0
422674:  VMUL.F32        S2, S2, S2
422678:  VMUL.F32        S4, S4, S4
42267C:  VADD.F32        S0, S0, S2
422680:  VADD.F32        S0, S0, S4
422684:  VMAX.F32        D8, D0, D8
422688:  MOV.W           R8, #0
42268C:  MOVS            R0, #0
42268E:  MOV             R6, R0
422690:  LDR.W           R0, [R4,R6,LSL#2]; this
422694:  CBZ             R0, loc_4226F8
422696:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
42269A:  CBZ             R0, loc_422700
42269C:  MOV.W           R0, #0xFFFFFFFF; int
4226A0:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
4226A4:  LDR.W           R1, [R4,R6,LSL#2]
4226A8:  LDR             R2, [R0,#0x14]
4226AA:  LDR             R3, [R1,#0x14]
4226AC:  ADD.W           R5, R2, #0x30 ; '0'
4226B0:  CMP             R2, #0
4226B2:  IT EQ
4226B4:  ADDEQ           R5, R0, #4
4226B6:  ADD.W           R0, R3, #0x30 ; '0'
4226BA:  CMP             R3, #0
4226BC:  VLDR            S0, [R5]
4226C0:  IT EQ
4226C2:  ADDEQ           R0, R1, #4
4226C4:  VLDR            D16, [R5,#4]
4226C8:  VLDR            S2, [R0]
4226CC:  VLDR            D17, [R0,#4]
4226D0:  VSUB.F32        S0, S0, S2
4226D4:  VSUB.F32        D16, D16, D17
4226D8:  VMUL.F32        D1, D16, D16
4226DC:  VMUL.F32        S0, S0, S0
4226E0:  VADD.F32        S0, S0, S2
4226E4:  VADD.F32        S0, S0, S3
4226E8:  VCMPE.F32       S0, S16
4226EC:  VMRS            APSR_nzcv, FPSCR
4226F0:  ITT GT
4226F2:  VMOVGT          D8, D0
4226F6:  MOVGT           R8, R1
4226F8:  ADDS            R0, R6, #1
4226FA:  CMP             R6, #9
4226FC:  BLT             loc_42268E
4226FE:  B               loc_422704
422700:  LDR.W           R8, [R4,R6,LSL#2]
422704:  MOV             R0, R8
422706:  VPOP            {D8}
42270A:  POP.W           {R8}
42270E:  POP             {R4-R7,PC}
