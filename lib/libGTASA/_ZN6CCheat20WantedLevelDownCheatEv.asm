; =========================================================
; Game Engine Function: _ZN6CCheat20WantedLevelDownCheatEv
; Address            : 0x2FD5EA - 0x2FD600
; =========================================================

2FD5EA:  PUSH            {R7,LR}
2FD5EC:  MOV             R7, SP
2FD5EE:  MOV.W           R0, #0xFFFFFFFF; int
2FD5F2:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FD5F6:  MOVS            R1, #0; int
2FD5F8:  POP.W           {R7,LR}
2FD5FC:  B.W             j_j__ZN10CPlayerPed16CheatWantedLevelEi; j_CPlayerPed::CheatWantedLevel(int)
