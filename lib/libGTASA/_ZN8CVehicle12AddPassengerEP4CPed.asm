; =========================================================
; Game Engine Function: _ZN8CVehicle12AddPassengerEP4CPed
; Address            : 0x5842C8 - 0x5843BA
; =========================================================

5842C8:  PUSH            {R4-R7,LR}
5842CA:  ADD             R7, SP, #0xC
5842CC:  PUSH.W          {R11}
5842D0:  SUB             SP, SP, #0x10
5842D2:  MOV             R4, R0
5842D4:  MOV             R6, R1
5842D6:  LDR.W           R0, [R4,#0x5A0]
5842DA:  VLDR            S0, [R6,#0x90]
5842DE:  CMP             R0, #9
5842E0:  BNE             loc_58433C
5842E2:  VLDR            S2, =-0.02
5842E6:  LDR             R0, [R4,#0x14]
5842E8:  VMUL.F32        S0, S0, S2
5842EC:  VLDR            S8, [R0,#0x20]
5842F0:  VLDR            S10, [R0,#0x24]
5842F4:  VLDR            S12, [R0,#0x28]
5842F8:  VLDR            S2, [R0,#0x10]
5842FC:  VLDR            S4, [R0,#0x14]
584300:  VMUL.F32        S8, S0, S8
584304:  VLDR            S6, [R0,#0x18]
584308:  VMUL.F32        S10, S0, S10
58430C:  MOV             R0, R4
58430E:  VMUL.F32        S0, S0, S12
584312:  VMOV            R1, S8
584316:  VMOV            R2, S10
58431A:  VMOV            R3, S0
58431E:  VLDR            S0, =-0.1
584322:  VMUL.F32        S6, S6, S0
584326:  VMUL.F32        S4, S4, S0
58432A:  VMUL.F32        S0, S2, S0
58432E:  VSTR            S0, [SP,#0x20+var_20]
584332:  VSTR            S4, [SP,#0x20+var_1C]
584336:  VSTR            S6, [SP,#0x20+var_18]
58433A:  B               loc_584376
58433C:  VLDR            S2, =-0.2
584340:  MOVS            R2, #0
584342:  LDR             R1, [R6,#0x14]
584344:  VMUL.F32        S0, S0, S2
584348:  LDR             R0, [R4,#0x14]
58434A:  VLDR            S4, [R1,#0x30]
58434E:  VLDR            S6, [R1,#0x34]
584352:  MOVS            R1, #0
584354:  VLDR            S2, [R0,#0x34]
584358:  VSUB.F32        S2, S6, S2
58435C:  VMOV            R3, S0
584360:  VLDR            S0, [R0,#0x30]
584364:  MOVS            R0, #0
584366:  VSUB.F32        S0, S4, S0
58436A:  STR             R0, [SP,#0x20+var_18]
58436C:  MOV             R0, R4
58436E:  VSTR            S0, [SP,#0x20+var_20]
584372:  VSTR            S2, [SP,#0x20+var_1C]
584376:  BLX             j__ZN9CPhysical14ApplyTurnForceE7CVectorS0_; CPhysical::ApplyTurnForce(CVector,CVector)
58437A:  LDRB.W          R0, [R4,#0x48C]
58437E:  CBZ             R0, loc_584396
584380:  ADD.W           R1, R4, #0x468
584384:  MOVS            R2, #0
584386:  MOVS            R3, #0
584388:  LDR.W           R5, [R1,R3,LSL#2]
58438C:  CBZ             R5, loc_58439A
58438E:  ADDS            R3, #1
584390:  ADDS            R2, #4
584392:  CMP             R3, R0
584394:  BLT             loc_584388
584396:  MOVS            R0, #0
584398:  B               loc_5843B2
58439A:  STR.W           R6, [R1,R3,LSL#2]
58439E:  ADD             R1, R2; CEntity **
5843A0:  MOV             R0, R6; this
5843A2:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5843A6:  LDRB.W          R0, [R4,#0x488]
5843AA:  ADDS            R0, #1
5843AC:  STRB.W          R0, [R4,#0x488]
5843B0:  MOVS            R0, #1
5843B2:  ADD             SP, SP, #0x10
5843B4:  POP.W           {R11}
5843B8:  POP             {R4-R7,PC}
