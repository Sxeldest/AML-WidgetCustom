; =========================================================
; Game Engine Function: _ZN6CCheat11WantedCheatEv
; Address            : 0x2FE280 - 0x2FE296
; =========================================================

2FE280:  PUSH            {R7,LR}
2FE282:  MOV             R7, SP
2FE284:  MOV.W           R0, #0xFFFFFFFF; int
2FE288:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FE28C:  MOVS            R1, #6; int
2FE28E:  POP.W           {R7,LR}
2FE292:  B.W             j_j__ZN10CPlayerPed16CheatWantedLevelEi; j_CPlayerPed::CheatWantedLevel(int)
