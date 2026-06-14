; =========================================================
; Game Engine Function: _Z22LIB_GameServiceSignOutv
; Address            : 0x26D6DC - 0x26D6EC
; =========================================================

26D6DC:  PUSH            {R7,LR}
26D6DE:  MOV             R7, SP
26D6E0:  BLX             j__Z22WarGameService_SignOutv; WarGameService_SignOut(void)
26D6E4:  MOVS            R0, #1; bool
26D6E6:  POP.W           {R7,LR}
26D6EA:  B               _Z24AND_ClearAchievementDatab; AND_ClearAchievementData(bool)
