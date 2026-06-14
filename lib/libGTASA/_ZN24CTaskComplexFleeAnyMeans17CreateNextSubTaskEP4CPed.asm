; =========================================================
; Game Engine Function: _ZN24CTaskComplexFleeAnyMeans17CreateNextSubTaskEP4CPed
; Address            : 0x514774 - 0x514842
; =========================================================

514774:  PUSH            {R4,R5,R7,LR}
514776:  ADD             R7, SP, #8
514778:  SUB             SP, SP, #8
51477A:  MOV             R4, R0
51477C:  MOV             R5, R1
51477E:  LDR             R0, [R4,#8]
514780:  LDR             R1, [R0]
514782:  LDR             R1, [R1,#0x14]
514784:  BLX             R1
514786:  MOVW            R1, #0x385; unsigned int
51478A:  CMP             R0, R1
51478C:  BEQ             loc_5147B8
51478E:  CMP.W           R0, #0x2D4
514792:  BEQ             loc_5147CC
514794:  MOVW            R1, #0x2BE; unsigned int
514798:  CMP             R0, R1
51479A:  BNE             loc_5147E0
51479C:  LDRB.W          R0, [R5,#0x485]
5147A0:  LSLS            R0, R0, #0x1F
5147A2:  ITT NE
5147A4:  LDRNE.W         R0, [R5,#0x590]
5147A8:  CMPNE           R0, #0
5147AA:  BNE             loc_5147E6
5147AC:  LDR             R0, [R4]
5147AE:  MOV             R1, R5
5147B0:  LDR             R2, [R0,#0x2C]
5147B2:  MOV             R0, R4
5147B4:  BLX             R2
5147B6:  B               loc_514804
5147B8:  LDR             R0, [R4,#0x50]
5147BA:  CBZ             R0, loc_51480C
5147BC:  MOVS            R0, #dword_20; this
5147BE:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5147C2:  LDR             R1, [R4,#0x50]; CVehicle *
5147C4:  BLX             j__ZN20CTaskComplexStealCarC2EP8CVehicle; CTaskComplexStealCar::CTaskComplexStealCar(CVehicle *)
5147C8:  ADD             SP, SP, #8
5147CA:  POP             {R4,R5,R7,PC}
5147CC:  LDRB.W          R0, [R5,#0x485]
5147D0:  LSLS            R0, R0, #0x1F
5147D2:  ITT NE
5147D4:  LDRNE.W         R0, [R5,#0x590]
5147D8:  CMPNE           R0, #0
5147DA:  BNE             loc_514820
5147DC:  LDR             R0, [R4]
5147DE:  B               loc_514812
5147E0:  MOVS            R0, #0
5147E2:  ADD             SP, SP, #8
5147E4:  POP             {R4,R5,R7,PC}
5147E6:  MOVS            R0, #word_2C; this
5147E8:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5147EC:  MOVS            R2, #0
5147EE:  LDR.W           R1, [R5,#0x590]; CVehicle *
5147F2:  MOVT            R2, #0x4220
5147F6:  MOVS            R3, #3
5147F8:  STRD.W          R3, R2, [SP,#0x10+var_10]; int
5147FC:  MOVS            R2, #0; CEntity *
5147FE:  MOVS            R3, #1; int
514800:  BLX             j__ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif_0; CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *,CEntity *,int,int,float)
514804:  MOVS            R1, #0
514806:  STR             R1, [R4,#0x50]
514808:  ADD             SP, SP, #8
51480A:  POP             {R4,R5,R7,PC}
51480C:  MOVS            R1, #0
51480E:  LDR             R0, [R4]
514810:  STR             R1, [R4,#0x50]
514812:  LDR             R2, [R0,#0x2C]
514814:  MOV             R0, R4
514816:  MOV             R1, R5
514818:  ADD             SP, SP, #8
51481A:  POP.W           {R4,R5,R7,LR}
51481E:  BX              R2
514820:  MOVS            R0, #word_2C; this
514822:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
514826:  MOVS            R2, #0
514828:  LDR.W           R1, [R5,#0x590]; CVehicle *
51482C:  MOVT            R2, #0x4220
514830:  MOVS            R3, #3
514832:  STRD.W          R3, R2, [SP,#0x10+var_10]; int
514836:  MOVS            R2, #0; CEntity *
514838:  MOVS            R3, #1; int
51483A:  BLX             j__ZN27CTaskComplexCarDriveMissionC2EP8CVehicleP7CEntityiif_0; CTaskComplexCarDriveMission::CTaskComplexCarDriveMission(CVehicle *,CEntity *,int,int,float)
51483E:  ADD             SP, SP, #8
514840:  POP             {R4,R5,R7,PC}
