; =========================================================
; Game Engine Function: _ZN6CCarAI23MellowOutChaseSpeedBoatEP8CVehicle
; Address            : 0x2E64A4 - 0x2E64F8
; =========================================================

2E64A4:  PUSH            {R4,R6,R7,LR}
2E64A6:  ADD             R7, SP, #8
2E64A8:  MOV             R4, R0
2E64AA:  MOV.W           R0, #0xFFFFFFFF; int
2E64AE:  BLX             j__Z16FindPlayerWantedi; FindPlayerWanted(int)
2E64B2:  LDR             R1, [R0,#0x2C]
2E64B4:  CMP             R1, #6; switch 7 cases
2E64B6:  IT HI
2E64B8:  POPHI           {R4,R6,R7,PC}
2E64BA:  MOVS            R0, #8
2E64BC:  TBB.W           [PC,R1]; switch jump
2E64C0:  DCB 5; jump table for switch statement
2E64C1:  DCB 4
2E64C2:  DCB 8
2E64C3:  DCB 0xC
2E64C4:  DCB 0x10
2E64C5:  DCB 0x14
2E64C6:  DCB 0x18
2E64C7:  ALIGN 2
2E64C8:  MOVS            R0, #0xA; jumptable 002E64BC case 1
2E64CA:  STRB.W          R0, [R4,#0x3D4]; jumptable 002E64BC case 0
2E64CE:  POP             {R4,R6,R7,PC}
2E64D0:  MOVS            R0, #0xF; jumptable 002E64BC case 2
2E64D2:  STRB.W          R0, [R4,#0x3D4]
2E64D6:  POP             {R4,R6,R7,PC}
2E64D8:  MOVS            R0, #0x14; jumptable 002E64BC case 3
2E64DA:  STRB.W          R0, [R4,#0x3D4]
2E64DE:  POP             {R4,R6,R7,PC}
2E64E0:  MOVS            R0, #0x19; jumptable 002E64BC case 4
2E64E2:  STRB.W          R0, [R4,#0x3D4]
2E64E6:  POP             {R4,R6,R7,PC}
2E64E8:  MOVS            R0, #0x1E; jumptable 002E64BC case 5
2E64EA:  STRB.W          R0, [R4,#0x3D4]
2E64EE:  POP             {R4,R6,R7,PC}
2E64F0:  MOVS            R0, #0x28 ; '('; jumptable 002E64BC case 6
2E64F2:  STRB.W          R0, [R4,#0x3D4]
2E64F6:  POP             {R4,R6,R7,PC}
