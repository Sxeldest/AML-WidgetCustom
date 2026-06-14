; =========================================================
; Game Engine Function: _ZN6CCarAI35FindPoliceBoatMissionForWantedLevelEv
; Address            : 0x2E64F8 - 0x2E652E
; =========================================================

2E64F8:  PUSH            {R4,R6,R7,LR}
2E64FA:  ADD             R7, SP, #8
2E64FC:  MOV.W           R0, #0xFFFFFFFF; int
2E6500:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
2E6504:  LDR             R4, [R0,#0x2C]
2E6506:  MOV.W           R0, #0xFFFFFFFF; int
2E650A:  MOVS            R1, #0; bool
2E650C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
2E6510:  CMP             R0, #0
2E6512:  MOV.W           R1, #0x40 ; '@'
2E6516:  MOV.W           R0, #0x40 ; '@'
2E651A:  SUB.W           R2, R4, #2
2E651E:  ITT NE
2E6520:  MOVNE           R0, #0x15
2E6522:  MOVNE           R1, #4
2E6524:  CMP             R2, #5
2E6526:  IT CC
2E6528:  MOVCC           R1, R0
2E652A:  MOV             R0, R1
2E652C:  POP             {R4,R6,R7,PC}
