; =========================================================
; Game Engine Function: sub_2AC218
; Address            : 0x2AC218 - 0x2AC22A
; =========================================================

2AC218:  LDR             R0, [R0]
2AC21A:  LDR.W           R0, [R0,#0xC8]; this
2AC21E:  CMP             R0, #0
2AC220:  IT NE
2AC222:  BNE.W           j_j__ZN10CGameLogic17IsCoopGameGoingOnEv; j_CGameLogic::IsCoopGameGoingOn(void)
2AC226:  MOVS            R0, #1
2AC228:  BX              LR
