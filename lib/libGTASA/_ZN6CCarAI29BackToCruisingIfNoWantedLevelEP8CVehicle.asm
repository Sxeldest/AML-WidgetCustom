; =========================================================
; Game Engine Function: _ZN6CCarAI29BackToCruisingIfNoWantedLevelEP8CVehicle
; Address            : 0x2E39A4 - 0x2E3A1A
; =========================================================

2E39A4:  PUSH            {R4,R5,R7,LR}
2E39A6:  ADD             R7, SP, #8
2E39A8:  MOV             R4, R0
2E39AA:  LDRB.W          R0, [R4,#0x42C]
2E39AE:  LSLS            R0, R0, #0x1F
2E39B0:  BEQ             locret_2E3A18
2E39B2:  MOV.W           R0, #0xFFFFFFFF; int
2E39B6:  ADDW            R5, R4, #0x42C
2E39BA:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
2E39BE:  LDRB            R0, [R0,#0x1E]
2E39C0:  LSLS            R0, R0, #0x1D
2E39C2:  BMI             loc_2E39F4
2E39C4:  LDRB            R0, [R5]
2E39C6:  LSLS            R0, R0, #0x1F
2E39C8:  IT EQ
2E39CA:  POPEQ           {R4,R5,R7,PC}
2E39CC:  MOV.W           R0, #0xFFFFFFFF; int
2E39D0:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2E39D4:  LDR.W           R0, [R0,#0x444]
2E39D8:  LDR             R0, [R0]
2E39DA:  LDR             R0, [R0,#0x2C]
2E39DC:  CBZ             R0, loc_2E39F4
2E39DE:  MOV.W           R0, #0xFFFFFFFF; int
2E39E2:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
2E39E6:  LDRB            R0, [R0,#0x1E]
2E39E8:  LSLS            R0, R0, #0x1D; this
2E39EA:  BNE             loc_2E39F4
2E39EC:  BLX             j__ZN10CCullZones8NoPoliceEv; CCullZones::NoPolice(void)
2E39F0:  CMP             R0, #1
2E39F2:  BNE             locret_2E3A18
2E39F4:  MOV             R0, R4; this
2E39F6:  BLX             j__ZN8CCarCtrl21JoinCarWithRoadSystemEP8CVehicle; CCarCtrl::JoinCarWithRoadSystem(CVehicle *)
2E39FA:  MOV.W           R0, #0x100
2E39FE:  STRH.W          R0, [R4,#0x3BD]
2E3A02:  LDR             R0, [R5,#4]
2E3A04:  BIC.W           R0, R0, #0x8000; this
2E3A08:  STR             R0, [R5,#4]
2E3A0A:  BLX             j__ZN10CCullZones8NoPoliceEv; CCullZones::NoPolice(void)
2E3A0E:  CMP             R0, #1
2E3A10:  ITT EQ
2E3A12:  MOVEQ           R0, #0
2E3A14:  STRBEQ.W        R0, [R4,#0x3BE]
2E3A18:  POP             {R4,R5,R7,PC}
