; =========================================================
; Game Engine Function: _ZN6CCheat8EndPauseEv
; Address            : 0x2FF3E4 - 0x2FF406
; =========================================================

2FF3E4:  PUSH            {R7,LR}
2FF3E6:  MOV             R7, SP
2FF3E8:  BLX             j__ZN6CTimer12EndUserPauseEv; CTimer::EndUserPause(void)
2FF3EC:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
2FF3F0:  CMP             R0, #1
2FF3F2:  IT NE
2FF3F4:  POPNE           {R7,PC}
2FF3F6:  MOV.W           R0, #0xFFFFFFFF; int
2FF3FA:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FF3FE:  POP.W           {R7,LR}
2FF402:  B.W             j_j__ZN10CPlayerPed17ClearWeaponTargetEv; j_CPlayerPed::ClearWeaponTarget(void)
