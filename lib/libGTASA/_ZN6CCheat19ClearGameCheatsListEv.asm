; =========================================================
; Game Engine Function: _ZN6CCheat19ClearGameCheatsListEv
; Address            : 0x2FF408 - 0x2FF440
; =========================================================

2FF408:  PUSH            {R7,LR}
2FF40A:  MOV             R7, SP
2FF40C:  LDR             R0, =(_ZN15CWidgetListText13m_fLastScrollE_ptr - 0x2FF414)
2FF40E:  LDR             R1, =(_ZN4CPad18m_fLastCheatScrollE_ptr - 0x2FF416)
2FF410:  ADD             R0, PC; _ZN15CWidgetListText13m_fLastScrollE_ptr
2FF412:  ADD             R1, PC; _ZN4CPad18m_fLastCheatScrollE_ptr
2FF414:  LDR             R0, [R0]; CWidgetListText::m_fLastScroll ...
2FF416:  LDR             R1, [R1]; CPad::m_fLastCheatScroll ...
2FF418:  LDR             R0, [R0]; CWidgetListText::m_fLastScroll
2FF41A:  STR             R0, [R1]; CPad::m_fLastCheatScroll
2FF41C:  MOVS            R0, #0x9A
2FF41E:  BLX             j__ZN15CTouchInterface12DeleteWidgetENS_9WidgetIDsE; CTouchInterface::DeleteWidget(CTouchInterface::WidgetIDs)
2FF422:  BLX             j__ZN6CTimer12EndUserPauseEv; CTimer::EndUserPause(void)
2FF426:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
2FF42A:  CMP             R0, #1
2FF42C:  IT NE
2FF42E:  POPNE           {R7,PC}
2FF430:  MOV.W           R0, #0xFFFFFFFF; int
2FF434:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FF438:  POP.W           {R7,LR}
2FF43C:  B.W             j_j__ZN10CPlayerPed17ClearWeaponTargetEv; j_CPlayerPed::ClearWeaponTarget(void)
