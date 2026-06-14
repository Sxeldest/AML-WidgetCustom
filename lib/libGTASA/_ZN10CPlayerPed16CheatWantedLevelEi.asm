; =========================================================
; Game Engine Function: _ZN10CPlayerPed16CheatWantedLevelEi
; Address            : 0x4C96C8 - 0x4C96D8
; =========================================================

4C96C8:  LDR.W           R0, [R0,#0x444]
4C96CC:  CMP             R0, #0
4C96CE:  ITE NE
4C96D0:  LDRNE           R0, [R0]
4C96D2:  MOVEQ           R0, #0; this
4C96D4:  B.W             j_j__ZN7CWanted16CheatWantedLevelEi; j_CWanted::CheatWantedLevel(int)
