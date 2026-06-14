; =========================================================
; Game Engine Function: _ZN11CAutomobile15TowTruckControlEv
; Address            : 0x5565EC - 0x55680A
; =========================================================

5565EC:  PUSH            {R4-R7,LR}
5565EE:  ADD             R7, SP, #0xC
5565F0:  PUSH.W          {R8-R11}
5565F4:  SUB             SP, SP, #4
5565F6:  VPUSH           {D8-D9}
5565FA:  SUB             SP, SP, #0x80
5565FC:  MOV             R11, R0
5565FE:  LDRB.W          R0, [R11,#0x3A]
556602:  CMP             R0, #7
556604:  BHI.W           loc_5567DE
556608:  LDR.W           R0, [R11,#0x464]; this
55660C:  CMP             R0, #0
55660E:  BEQ.W           loc_5567DE
556612:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
556616:  CMP             R0, #1
556618:  BNE.W           loc_5567DE
55661C:  LDR.W           R0, [R11,#0x464]; this
556620:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
556624:  CMP             R0, #0
556626:  BEQ.W           loc_5567DE
55662A:  LDR             R1, =(TOWTRUCK_HOIST_DOWN_LIMIT_ptr - 0x556632)
55662C:  MOV             R2, R11; CAutomobile *
55662E:  ADD             R1, PC; TOWTRUCK_HOIST_DOWN_LIMIT_ptr
556630:  LDR             R1, [R1]; TOWTRUCK_HOIST_DOWN_LIMIT
556632:  LDRH            R1, [R1]
556634:  VMOV            S0, R1
556638:  MOVS            R1, #0
55663A:  VCVT.F32.U32    S0, S0
55663E:  STR             R1, [SP,#0xB0+var_B0]; CHID *
556640:  MOVS            R1, #1; bool
556642:  VMOV            R3, S0; float
556646:  BLX             j__ZN4CPad15GetCarGunUpDownEbP11CAutomobilefb; CPad::GetCarGunUpDown(bool,CAutomobile *,float,bool)
55664A:  VMOV            S0, R0
55664E:  VMOV.F32        S2, #10.0
556652:  VCVT.F32.S32    S0, S0
556656:  VABS.F32        S4, S0
55665A:  VCMPE.F32       S4, S2
55665E:  VMRS            APSR_nzcv, FPSCR
556662:  BLE             loc_5566C4
556664:  VMOV.F32        S4, #6.0
556668:  CMP             R0, #0
55666A:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x556674)
55666C:  VMOV.F32        S2, #2.0
556670:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
556672:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
556674:  IT GT
556676:  VMOVGT.F32      S2, S4
55667A:  LDRH.W          R1, [R11,#0x880]
55667E:  VMUL.F32        S0, S2, S0
556682:  VLDR            S2, [R0]
556686:  LDR             R0, =(TOWTRUCK_HOIST_DOWN_LIMIT_ptr - 0x55668C)
556688:  ADD             R0, PC; TOWTRUCK_HOIST_DOWN_LIMIT_ptr
55668A:  LDR             R0, [R0]; TOWTRUCK_HOIST_DOWN_LIMIT
55668C:  VMUL.F32        S0, S0, S2
556690:  VLDR            S2, =0.0
556694:  VCVT.S32.F32    S0, S0
556698:  LDRH            R0, [R0]
55669A:  VMOV            S4, R0
55669E:  VMOV            R2, S0
5566A2:  ADD             R1, R2
5566A4:  VMOV            S0, R1
5566A8:  VCVT.F32.S32    S0, S0
5566AC:  VCVT.F32.U32    S4, S4
5566B0:  VMAX.F32        D16, D0, D1
5566B4:  VMIN.F32        D0, D16, D2
5566B8:  VCVT.U32.F32    S0, S0
5566BC:  VMOV            R0, S0
5566C0:  STRH.W          R0, [R11,#0x880]
5566C4:  LDR.W           R0, [R11,#0x4D4]
5566C8:  LDRH.W          R1, [R11,#0x880]
5566CC:  CBZ             R0, loc_5566F6
5566CE:  LDR             R2, =(TOWTRUCK_HOIST_UP_LIMIT_ptr - 0x5566D8)
5566D0:  VMOV            S0, R1
5566D4:  ADD             R2, PC; TOWTRUCK_HOIST_UP_LIMIT_ptr
5566D6:  LDR             R2, [R2]; TOWTRUCK_HOIST_UP_LIMIT
5566D8:  LDRH            R1, [R2]
5566DA:  VCVT.F32.U32    S0, S0
5566DE:  VMOV            S2, R1
5566E2:  VCVT.F32.U32    S2, S2
5566E6:  VMAX.F32        D0, D0, D1
5566EA:  VCVT.U32.F32    S0, S0
5566EE:  VMOV            R1, S0
5566F2:  STRH.W          R1, [R11,#0x880]
5566F6:  LDR             R2, =(TOWTRUCK_HOIST_DOWN_LIMIT_ptr - 0x5566FC)
5566F8:  ADD             R2, PC; TOWTRUCK_HOIST_DOWN_LIMIT_ptr
5566FA:  LDR             R2, [R2]; TOWTRUCK_HOIST_DOWN_LIMIT
5566FC:  LDRH            R2, [R2]
5566FE:  CMP             R1, R2
556700:  IT EQ
556702:  CMPEQ           R0, #0
556704:  BNE             loc_5567DE
556706:  MOVS            R5, #0
556708:  ADD             R1, SP, #0xB0+var_40
55670A:  STRD.W          R5, R5, [SP,#0xB0+var_40]
55670E:  MOVS            R2, #0
556710:  STR             R5, [SP,#0xB0+var_38]
556712:  MOV             R3, R11
556714:  STRD.W          R5, R5, [SP,#0xB0+var_50]
556718:  STR             R5, [SP,#0xB0+var_48]
55671A:  LDR.W           R0, [R11]
55671E:  LDR.W           R6, [R0,#0xF4]
556722:  MOV             R0, R11
556724:  BLX             R6
556726:  CMP             R0, #1
556728:  BNE             loc_5567DE
55672A:  ADD.W           R10, SP, #0xB0+var_90
55672E:  MOVS            R1, #word_10
556730:  ADD.W           R8, SP, #0xB0+var_40
556734:  MOVS            R0, #1
556736:  STRD.W          R1, R10, [SP,#0xB0+var_B0]; __int16 *
55673A:  MOVS            R1, #0
55673C:  SUB.W           R3, R7, #-var_92; bool
556740:  STRD.W          R5, R0, [SP,#0xB0+var_A8]; CEntity **
556744:  MOVT            R1, #0x4120; CVector *
556748:  MOV             R0, R8; this
55674A:  MOVS            R2, #1; float
55674C:  STRD.W          R5, R5, [SP,#0xB0+var_A0]; bool
556750:  STR             R5, [SP,#0xB0+var_98]; bool
556752:  BLX             j__ZN6CWorld18FindObjectsInRangeERK7CVectorfbPssPP7CEntitybbbbb; CWorld::FindObjectsInRange(CVector const&,float,bool,short *,short,CEntity **,bool,bool,bool,bool,bool)
556756:  LDRSH.W         R0, [R7,#var_92]
55675A:  CMP             R0, #1
55675C:  BLT             loc_5567DE
55675E:  VMOV.F32        S16, #0.5
556762:  ADD.W           R9, SP, #0xB0+var_50
556766:  VMOV.F32        S18, #1.0
55676A:  MOVS            R6, #0
55676C:  SXTH            R0, R6
55676E:  LDR.W           R5, [R10,R0,LSL#2]
556772:  CMP             R5, R11
556774:  BEQ             loc_5567D2
556776:  LDR             R0, [R5]
556778:  MOV             R1, R9
55677A:  MOVS            R2, #1
55677C:  MOV             R3, R11
55677E:  LDR.W           R4, [R0,#0xF0]
556782:  MOV             R0, R5
556784:  BLX             R4
556786:  CMP             R0, #1
556788:  BNE             loc_5567D2
55678A:  LDRB.W          R0, [R5,#0x42C]
55678E:  LSLS            R0, R0, #0x1C
556790:  BMI             loc_5567D2
556792:  MOV             R0, R8
556794:  MOV             R1, R9
556796:  VLD1.32         {D16}, [R0@64]!
55679A:  VLD1.32         {D17}, [R1@64]!
55679E:  VSUB.F32        D16, D17, D16
5567A2:  VMUL.F32        D0, D16, D16
5567A6:  VADD.F32        S0, S0, S1
5567AA:  VSQRT.F32       S0, S0
5567AE:  VCMPE.F32       S0, S16
5567B2:  VMRS            APSR_nzcv, FPSCR
5567B6:  BGE             loc_5567D2
5567B8:  VLDR            S0, [R0]
5567BC:  VLDR            S2, [R1]
5567C0:  VSUB.F32        S0, S2, S0
5567C4:  VABS.F32        S0, S0
5567C8:  VCMPE.F32       S0, S18
5567CC:  VMRS            APSR_nzcv, FPSCR
5567D0:  BLT             loc_5567EC
5567D2:  ADDS            R1, R6, #1
5567D4:  LDRSH.W         R0, [R7,#var_92]
5567D8:  SXTH            R6, R1
5567DA:  CMP             R6, R0
5567DC:  BLT             loc_55676C
5567DE:  ADD             SP, SP, #0x80
5567E0:  VPOP            {D8-D9}
5567E4:  ADD             SP, SP, #4
5567E6:  POP.W           {R8-R11}
5567EA:  POP             {R4-R7,PC}
5567EC:  LDR             R0, [R5]
5567EE:  MOV             R1, R11
5567F0:  MOVS            R2, #0
5567F2:  LDR.W           R3, [R0,#0xF8]
5567F6:  MOV             R0, R5
5567F8:  BLX             R3
5567FA:  LDRH.W          R0, [R11,#0x880]
5567FE:  MOVW            R1, #0xFF9C
556802:  ADD             R0, R1
556804:  STRH.W          R0, [R11,#0x880]
556808:  B               loc_5567DE
