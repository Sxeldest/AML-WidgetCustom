; =========================================================
; Game Engine Function: _ZN20CTaskSimpleCarGetOut13ComputeAnimIDERiS0_
; Address            : 0x503440 - 0x5034F6
; =========================================================

503440:  PUSH            {R4-R7,LR}
503442:  ADD             R7, SP, #0xC
503444:  PUSH.W          {R11}
503448:  SUB             SP, SP, #0x30
50344A:  MOV             R6, R0
50344C:  MOV             R4, R1
50344E:  LDR             R1, [R6,#0x14]; CVehicle *
503450:  MOV             R5, R2
503452:  LDR.W           R0, [R1,#0x5A0]
503456:  CBZ             R0, loc_503460
503458:  MOV             R1, R6
50345A:  LDRB.W          R0, [R1,#0x10]!
50345E:  B               loc_503472
503460:  MOV             R0, SP; this
503462:  BLX             j__ZN19CUpsideDownCarCheck15IsCarUpsideDownEPK8CVehicle; CUpsideDownCarCheck::IsCarUpsideDown(CVehicle const*)
503466:  CMP             R0, #0
503468:  MOV             R1, R6
50346A:  IT NE
50346C:  MOVNE           R0, #1
50346E:  STRB.W          R0, [R1,#0x10]!
503472:  LDR             R2, [R6,#0x18]
503474:  CBZ             R0, loc_5034BA
503476:  LDR             R0, [R6,#0x14]
503478:  LDR             R0, [R0,#0x14]
50347A:  VLDR            S0, [R0,#8]
50347E:  BIC.W           R0, R2, #1
503482:  CMP             R0, #0xA
503484:  BNE             loc_5034A8
503486:  VMOV.F32        S2, #-0.5
50348A:  VCMPE.F32       S0, S2
50348E:  VMRS            APSR_nzcv, FPSCR
503492:  BLT             loc_5034B6
503494:  SUB.W           R0, R2, #8
503498:  CMP             R0, #3
50349A:  BHI             loc_5034F2
50349C:  ADR             R1, dword_5034F8
50349E:  LDR.W           R0, [R1,R0,LSL#2]
5034A2:  STR             R0, [R5]
5034A4:  MOVS            R0, #0
5034A6:  B               loc_5034E8
5034A8:  VMOV.F32        S2, #0.5
5034AC:  VCMPE.F32       S0, S2
5034B0:  VMRS            APSR_nzcv, FPSCR
5034B4:  BLE             loc_503494
5034B6:  MOVS            R0, #0
5034B8:  STRB            R0, [R1]
5034BA:  SUB.W           R0, R2, #8
5034BE:  CMP             R0, #4
5034C0:  BCS             loc_5034CC
5034C2:  ADR             R1, dword_503508
5034C4:  LDR.W           R1, [R1,R0,LSL#2]
5034C8:  STR             R1, [R5]
5034CA:  B               loc_5034CE
5034CC:  LDR             R1, [R5]; int
5034CE:  LDR             R0, [R6,#0x14]
5034D0:  MOVS            R3, #0x94
5034D2:  LDR             R2, =(_ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr - 0x5034DC)
5034D4:  LDR.W           R0, [R0,#0x388]
5034D8:  ADD             R2, PC; _ZN21CVehicleAnimGroupData19m_vehicleAnimGroupsE_ptr
5034DA:  LDR             R2, [R2]; CVehicleAnimGroupData::m_vehicleAnimGroups ...
5034DC:  LDRB.W          R0, [R0,#0xDE]
5034E0:  SMLABB.W        R0, R0, R3, R2; this
5034E4:  BLX             j__ZN17CVehicleAnimGroup8GetGroupEi; CVehicleAnimGroup::GetGroup(int)
5034E8:  STR             R0, [R4]
5034EA:  ADD             SP, SP, #0x30 ; '0'
5034EC:  POP.W           {R11}
5034F0:  POP             {R4-R7,PC}
5034F2:  MOVS            R0, #0
5034F4:  B               loc_5034E8
