; =========================================================
; Game Engine Function: _ZN8CCarCtrl26WeaveThroughCarsSectorListER8CPtrListP8CVehicleP9CPhysicalffffPfS6_
; Address            : 0x2EF398 - 0x2EF49A
; =========================================================

2EF398:  PUSH            {R4-R7,LR}
2EF39A:  ADD             R7, SP, #0xC
2EF39C:  PUSH.W          {R8-R11}
2EF3A0:  SUB             SP, SP, #4
2EF3A2:  VPUSH           {D8-D12}
2EF3A6:  SUB             SP, SP, #0x10; float *
2EF3A8:  LDR             R5, [R0]
2EF3AA:  MOV             R4, R2
2EF3AC:  MOV             R11, R1
2EF3AE:  CMP             R5, #0
2EF3B0:  BEQ             loc_2EF48C
2EF3B2:  LDR             R0, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x2EF3C4)
2EF3B4:  VMOV.F32        S24, #8.0
2EF3B8:  VLDR            S16, [R7,#arg_8]
2EF3BC:  VMOV            S22, R3
2EF3C0:  ADD             R0, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
2EF3C2:  VLDR            S18, [R7,#arg_4]
2EF3C6:  VLDR            S20, [R7,#arg_0]
2EF3CA:  ADDW            R8, R11, #0x42C
2EF3CE:  LDR.W           R9, [R0]; CWorld::ms_nCurrentScanCode ...
2EF3D2:  ADD.W           R10, SP, #0x58+var_54
2EF3D6:  LDRD.W          R6, R5, [R5]
2EF3DA:  LDRH.W          R0, [R9]; CWorld::ms_nCurrentScanCode
2EF3DE:  LDRH            R1, [R6,#0x30]
2EF3E0:  CMP             R1, R0
2EF3E2:  IT NE
2EF3E4:  CMPNE           R6, R4
2EF3E6:  BNE             loc_2EF3EE
2EF3E8:  CMP             R5, #0
2EF3EA:  BNE             loc_2EF3D6
2EF3EC:  B               loc_2EF48C
2EF3EE:  LDR             R1, [R6,#0x1C]
2EF3F0:  ANDS.W          R1, R1, #1
2EF3F4:  BEQ             loc_2EF3E8
2EF3F6:  STRH            R0, [R6,#0x30]
2EF3F8:  MOV             R0, R10; this
2EF3FA:  MOV             R1, R6
2EF3FC:  BLX             j__ZNK7CEntity14GetBoundCentreEv; CEntity::GetBoundCentre(void)
2EF400:  VLDR            S0, [SP,#0x58+var_54]
2EF404:  VCMPE.F32       S0, S22
2EF408:  VMRS            APSR_nzcv, FPSCR
2EF40C:  BLE             loc_2EF3E8
2EF40E:  VCMPE.F32       S0, S18
2EF412:  VMRS            APSR_nzcv, FPSCR
2EF416:  BGE             loc_2EF3E8
2EF418:  VLDR            S0, [SP,#0x58+var_50]
2EF41C:  VCMPE.F32       S0, S20
2EF420:  VMRS            APSR_nzcv, FPSCR
2EF424:  BLE             loc_2EF3E8
2EF426:  VCMPE.F32       S0, S16
2EF42A:  VMRS            APSR_nzcv, FPSCR
2EF42E:  BGE             loc_2EF3E8
2EF430:  LDR.W           R1, [R11,#0x14]
2EF434:  LDR             R2, [R6,#0x14]
2EF436:  ADD.W           R0, R1, #0x30 ; '0'
2EF43A:  CMP             R1, #0
2EF43C:  IT EQ
2EF43E:  ADDEQ.W         R0, R11, #4
2EF442:  ADD.W           R1, R2, #0x30 ; '0'
2EF446:  CMP             R2, #0
2EF448:  IT EQ
2EF44A:  ADDEQ           R1, R6, #4
2EF44C:  CMP             R6, R11
2EF44E:  BEQ             loc_2EF3E8
2EF450:  VLDR            S0, [R0,#8]
2EF454:  VLDR            S2, [R1,#8]
2EF458:  VSUB.F32        S0, S2, S0
2EF45C:  VABS.F32        S0, S0
2EF460:  VCMPE.F32       S0, S24
2EF464:  VMRS            APSR_nzcv, FPSCR
2EF468:  BGE             loc_2EF3E8
2EF46A:  LDRB.W          R0, [R8,#3]
2EF46E:  LSLS            R0, R0, #0x1C
2EF470:  ITT MI
2EF472:  LDRBMI.W        R0, [R6,#0x42F]
2EF476:  MOVSMI.W        R0, R0,LSL#28
2EF47A:  BMI             loc_2EF3E8
2EF47C:  LDRD.W          R2, R3, [R7,#arg_C]; float *
2EF480:  MOV             R0, R6; this
2EF482:  MOV             R1, R11; CEntity *
2EF484:  BLX             j__ZN8CCarCtrl16WeaveForOtherCarEP7CEntityP8CVehiclePfS4_; CCarCtrl::WeaveForOtherCar(CEntity *,CVehicle *,float *,float *)
2EF488:  CMP             R5, #0
2EF48A:  BNE             loc_2EF3D6
2EF48C:  ADD             SP, SP, #0x10
2EF48E:  VPOP            {D8-D12}
2EF492:  ADD             SP, SP, #4
2EF494:  POP.W           {R8-R11}
2EF498:  POP             {R4-R7,PC}
