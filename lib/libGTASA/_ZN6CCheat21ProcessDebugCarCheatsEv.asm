; =========================================================
; Game Engine Function: _ZN6CCheat21ProcessDebugCarCheatsEv
; Address            : 0x2FF87C - 0x2FF936
; =========================================================

2FF87C:  PUSH            {R4-R7,LR}
2FF87E:  ADD             R7, SP, #0xC
2FF880:  PUSH.W          {R11}
2FF884:  SUB             SP, SP, #0x108
2FF886:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2FF88E)
2FF888:  LDR             R1, =(__stack_chk_guard_ptr - 0x2FF890)
2FF88A:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2FF88C:  ADD             R1, PC; __stack_chk_guard_ptr
2FF88E:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2FF890:  LDR             R1, [R1]; __stack_chk_guard
2FF892:  LDR.W           R4, [R0,#(dword_6F39F4 - 0x6F3794)]
2FF896:  LDR             R0, [R1]
2FF898:  CMP             R4, #0
2FF89A:  STR             R0, [SP,#0x118+var_14]
2FF89C:  BEQ             loc_2FF91C
2FF89E:  MOVS            R0, #0x98
2FF8A0:  MOVS            R1, #0
2FF8A2:  MOVS            R2, #1
2FF8A4:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
2FF8A8:  CBNZ            R0, loc_2FF8B4
2FF8AA:  MOVS            R0, #0x38 ; '8'
2FF8AC:  BLX             j__ZN4CHID10IsReleasedE10HIDMapping; CHID::IsReleased(HIDMapping)
2FF8B0:  CMP             R0, #1
2FF8B2:  BNE             loc_2FF91C
2FF8B4:  MOV             R1, SP; char *
2FF8B6:  MOV             R0, R4; this
2FF8B8:  BLX             j__ZN11CWidgetList16GetSelectedEntryEPc; CWidgetList::GetSelectedEntry(char *)
2FF8BC:  ADDS            R0, #1
2FF8BE:  BEQ             loc_2FF91C
2FF8C0:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x2FF8CC)
2FF8C2:  MOV.W           R5, #0x190
2FF8C6:  MOV             R4, SP
2FF8C8:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
2FF8CA:  LDR             R6, [R0]; CModelInfo::ms_modelInfoPtrs ...
2FF8CC:  LDR.W           R0, [R6,R5,LSL#2]
2FF8D0:  CBZ             R0, loc_2FF8DC
2FF8D2:  ADDS            R0, #0x4A ; 'J'; char *
2FF8D4:  MOV             R1, R4; char *
2FF8D6:  BLX             strcasecmp
2FF8DA:  CBZ             R0, loc_2FF8E8
2FF8DC:  ADDS            R0, R5, #1
2FF8DE:  CMP.W           R5, #0x274
2FF8E2:  MOV             R5, R0
2FF8E4:  BLE             loc_2FF8CC
2FF8E6:  B               loc_2FF8EA
2FF8E8:  MOV             R0, R5; this
2FF8EA:  LDR             R1, =(_ZN15CWidgetListText13m_fLastScrollE_ptr - 0x2FF8F2)
2FF8EC:  LDR             R2, =(_ZN4CPad21m_fLastCarCheatScrollE_ptr - 0x2FF8F4)
2FF8EE:  ADD             R1, PC; _ZN15CWidgetListText13m_fLastScrollE_ptr
2FF8F0:  ADD             R2, PC; _ZN4CPad21m_fLastCarCheatScrollE_ptr
2FF8F2:  LDR             R1, [R1]; CWidgetListText::m_fLastScroll ...
2FF8F4:  LDR             R2, [R2]; CPad::m_fLastCarCheatScroll ...
2FF8F6:  LDR             R1, [R1]; int
2FF8F8:  STR             R1, [R2]; CPad::m_fLastCarCheatScroll
2FF8FA:  BLX             j__ZN6CCheat12VehicleCheatEi; CCheat::VehicleCheat(int)
2FF8FE:  MOVS            R0, #0x98
2FF900:  BLX             j__ZN15CTouchInterface12DeleteWidgetENS_9WidgetIDsE; CTouchInterface::DeleteWidget(CTouchInterface::WidgetIDs)
2FF904:  BLX             j__ZN6CTimer12EndUserPauseEv; CTimer::EndUserPause(void)
2FF908:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
2FF90C:  CMP             R0, #1
2FF90E:  BNE             loc_2FF91C
2FF910:  MOV.W           R0, #0xFFFFFFFF; int
2FF914:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FF918:  BLX             j__ZN10CPlayerPed17ClearWeaponTargetEv; CPlayerPed::ClearWeaponTarget(void)
2FF91C:  LDR             R0, =(__stack_chk_guard_ptr - 0x2FF924)
2FF91E:  LDR             R1, [SP,#0x118+var_14]
2FF920:  ADD             R0, PC; __stack_chk_guard_ptr
2FF922:  LDR             R0, [R0]; __stack_chk_guard
2FF924:  LDR             R0, [R0]
2FF926:  SUBS            R0, R0, R1
2FF928:  ITTT EQ
2FF92A:  ADDEQ           SP, SP, #0x108
2FF92C:  POPEQ.W         {R11}
2FF930:  POPEQ           {R4-R7,PC}
2FF932:  BLX             __stack_chk_fail
