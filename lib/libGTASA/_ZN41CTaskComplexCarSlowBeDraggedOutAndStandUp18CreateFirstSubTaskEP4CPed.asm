; =========================================================
; Game Engine Function: _ZN41CTaskComplexCarSlowBeDraggedOutAndStandUp18CreateFirstSubTaskEP4CPed
; Address            : 0x505482 - 0x505548
; =========================================================

505482:  PUSH            {R4,R5,R7,LR}
505484:  ADD             R7, SP, #8
505486:  SUB             SP, SP, #0x10
505488:  MOV             R5, R0
50548A:  MOVS            R0, #0; int
50548C:  MOV             R4, R1
50548E:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
505492:  LDR.W           R2, [R4,#0x590]
505496:  CMP             R0, R4
505498:  BEQ             loc_5054AA
50549A:  LDR.W           R0, [R2,#0x464]
50549E:  CMP             R0, R4
5054A0:  BNE             loc_5054B6
5054A2:  MOV             R0, R4; this
5054A4:  BLX             j__ZN4CPed15SetRadioStationEv; CPed::SetRadioStation(void)
5054A8:  B               loc_5054B2
5054AA:  ADD.W           R0, R2, #0x13C; this
5054AE:  BLX             j__ZN21CAEVehicleAudioEntity32PlayerAboutToExitVehicleAsDriverEv; CAEVehicleAudioEntity::PlayerAboutToExitVehicleAsDriver(void)
5054B2:  LDR.W           R2, [R4,#0x590]
5054B6:  LDR.W           R0, [R2,#0x388]
5054BA:  MOV.W           R1, #0x2C0
5054BE:  LDRB.W          R0, [R0,#0xDE]
5054C2:  CMP             R0, #0xF
5054C4:  IT NE
5054C6:  CMPNE           R0, #0x18
5054C8:  BEQ             loc_50553C
5054CA:  LDR             R1, [R5,#0x10]
5054CC:  CMP             R1, #8
5054CE:  IT EQ
5054D0:  CMPEQ           R0, #0x10
5054D2:  BNE             loc_5054DA
5054D4:  MOV.W           R1, #0x2C0
5054D8:  B               loc_50553C
5054DA:  LDR.W           R0, [R2,#0x388]
5054DE:  MOVW            R1, #0x337
5054E2:  LDRB.W          R0, [R0,#0xDE]
5054E6:  CMP             R0, #0x1C
5054E8:  BHI             loc_50553C
5054EA:  MOVS            R2, #1
5054EC:  MOVW            R3, #0x6001
5054F0:  LSLS            R2, R0
5054F2:  MOVT            R3, #0x10CC
5054F6:  TST             R2, R3
5054F8:  BEQ             loc_505510
5054FA:  LDR             R0, [R5,#0x10]
5054FC:  CMP             R0, #8
5054FE:  BEQ             loc_50550A
505500:  CMP             R0, #0xA
505502:  BNE             loc_505538
505504:  MOVS            R0, #0
505506:  MOVS            R1, #0x45 ; 'E'
505508:  B               loc_505522
50550A:  MOVS            R0, #0
50550C:  MOVS            R1, #0x46 ; 'F'
50550E:  B               loc_505522
505510:  CMP             R0, #1
505512:  BEQ             loc_50551E
505514:  CMP             R0, #0x11
505516:  BNE             loc_50553C
505518:  MOVS            R0, #0
50551A:  MOVS            R1, #0x49 ; 'I'
50551C:  B               loc_505522
50551E:  MOVS            R0, #0
505520:  MOVS            R1, #0x47 ; 'G'; int
505522:  STRD.W          R0, R0, [SP,#0x18+var_18]; CPhysical *
505526:  STRD.W          R0, R0, [SP,#0x18+var_10]; int
50552A:  ADD.W           R0, R4, #0x13C; this
50552E:  MOVS            R2, #0; float
505530:  MOV.W           R3, #0x3F800000; float
505534:  BLX             j__ZN17CAEPedAudioEntity13AddAudioEventEiffP9CPhysicalhij; CAEPedAudioEntity::AddAudioEvent(int,float,float,CPhysical *,uchar,int,uint)
505538:  MOVW            R1, #0x337; int
50553C:  MOV             R0, R5; this
50553E:  MOV             R2, R4; CPed *
505540:  ADD             SP, SP, #0x10
505542:  POP.W           {R4,R5,R7,LR}
505546:  B               _ZN41CTaskComplexCarSlowBeDraggedOutAndStandUp13CreateSubTaskEiP4CPed; CTaskComplexCarSlowBeDraggedOutAndStandUp::CreateSubTask(int,CPed *)
