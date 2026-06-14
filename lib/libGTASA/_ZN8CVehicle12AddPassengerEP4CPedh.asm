; =========================================================
; Game Engine Function: _ZN8CVehicle12AddPassengerEP4CPedh
; Address            : 0x5843C8 - 0x5844CA
; =========================================================

5843C8:  PUSH            {R4-R7,LR}
5843CA:  ADD             R7, SP, #0xC
5843CC:  PUSH.W          {R11}
5843D0:  SUB             SP, SP, #0x10
5843D2:  MOV             R4, R0
5843D4:  MOV             R6, R2
5843D6:  LDRB.W          R0, [R4,#0x42D]
5843DA:  MOV             R5, R1
5843DC:  LSLS            R0, R0, #0x1E
5843DE:  BMI             loc_584446
5843E0:  LDR.W           R0, [R4,#0x5A0]
5843E4:  VLDR            S0, [R5,#0x90]
5843E8:  CMP             R0, #9
5843EA:  BNE             loc_584456
5843EC:  VLDR            S2, =-0.02
5843F0:  LDR             R0, [R4,#0x14]
5843F2:  VMUL.F32        S0, S0, S2
5843F6:  VLDR            S8, [R0,#0x20]
5843FA:  VLDR            S10, [R0,#0x24]
5843FE:  VLDR            S12, [R0,#0x28]
584402:  VLDR            S2, [R0,#0x10]
584406:  VLDR            S4, [R0,#0x14]
58440A:  VMUL.F32        S8, S0, S8
58440E:  VLDR            S6, [R0,#0x18]
584412:  VMUL.F32        S10, S0, S10
584416:  MOV             R0, R4
584418:  VMUL.F32        S0, S0, S12
58441C:  VMOV            R1, S8
584420:  VMOV            R2, S10
584424:  VMOV            R3, S0
584428:  VLDR            S0, =-0.1
58442C:  VMUL.F32        S6, S6, S0
584430:  VMUL.F32        S4, S4, S0
584434:  VMUL.F32        S0, S2, S0
584438:  VSTR            S0, [SP,#0x20+var_20]
58443C:  VSTR            S4, [SP,#0x20+var_1C]
584440:  VSTR            S6, [SP,#0x20+var_18]
584444:  B               loc_584490
584446:  MOV             R0, R4; this
584448:  MOV             R1, R5; CPed *
58444A:  ADD             SP, SP, #0x10
58444C:  POP.W           {R11}
584450:  POP.W           {R4-R7,LR}
584454:  B               _ZN8CVehicle12AddPassengerEP4CPed; CVehicle::AddPassenger(CPed *)
584456:  VLDR            S2, =-0.2
58445A:  MOVS            R2, #0
58445C:  LDR             R1, [R5,#0x14]
58445E:  VMUL.F32        S0, S0, S2
584462:  LDR             R0, [R4,#0x14]
584464:  VLDR            S4, [R1,#0x30]
584468:  VLDR            S6, [R1,#0x34]
58446C:  MOVS            R1, #0
58446E:  VLDR            S2, [R0,#0x34]
584472:  VSUB.F32        S2, S6, S2
584476:  VMOV            R3, S0
58447A:  VLDR            S0, [R0,#0x30]
58447E:  MOVS            R0, #0
584480:  VSUB.F32        S0, S4, S0
584484:  STR             R0, [SP,#0x20+var_18]
584486:  MOV             R0, R4
584488:  VSTR            S0, [SP,#0x20+var_20]
58448C:  VSTR            S2, [SP,#0x20+var_1C]
584490:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
584494:  LDRB.W          R0, [R4,#0x48C]
584498:  CMP             R0, R6
58449A:  BLS             loc_5844A6
58449C:  ADD.W           R0, R4, R6,LSL#2
5844A0:  LDR.W           R1, [R0,#0x468]
5844A4:  CBZ             R1, loc_5844AA
5844A6:  MOVS            R0, #0
5844A8:  B               loc_5844C2
5844AA:  ADD.W           R1, R0, #0x468; CEntity **
5844AE:  MOV             R0, R5; this
5844B0:  STR             R5, [R1]
5844B2:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5844B6:  LDRB.W          R0, [R4,#0x488]
5844BA:  ADDS            R0, #1
5844BC:  STRB.W          R0, [R4,#0x488]
5844C0:  MOVS            R0, #1
5844C2:  ADD             SP, SP, #0x10
5844C4:  POP.W           {R11}
5844C8:  POP             {R4-R7,PC}
