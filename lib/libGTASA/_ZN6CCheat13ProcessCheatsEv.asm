; =========================================================
; Game Engine Function: _ZN6CCheat13ProcessCheatsEv
; Address            : 0x2FFAE4 - 0x2FFBBC
; =========================================================

2FFAE4:  PUSH            {R4-R7,LR}
2FFAE6:  ADD             R7, SP, #0xC
2FFAE8:  PUSH.W          {R11}
2FFAEC:  SUB             SP, SP, #0x108
2FFAEE:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2FFAF6)
2FFAF0:  LDR             R1, =(__stack_chk_guard_ptr - 0x2FFAF8)
2FFAF2:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2FFAF4:  ADD             R1, PC; __stack_chk_guard_ptr
2FFAF6:  LDR             R0, [R0]; CTouchInterface::m_pWidgets ...
2FFAF8:  LDR             R1, [R1]; __stack_chk_guard
2FFAFA:  LDR.W           R4, [R0,#(dword_6F39FC - 0x6F3794)]
2FFAFE:  LDR             R0, [R1]
2FFB00:  CMP             R4, #0
2FFB02:  STR             R0, [SP,#0x118+var_14]
2FFB04:  BEQ             loc_2FFB48
2FFB06:  MOVS            R0, #0x9A
2FFB08:  MOVS            R1, #0
2FFB0A:  MOVS            R2, #1
2FFB0C:  BLX             j__ZN15CTouchInterface10IsReleasedENS_9WidgetIDsEP9CVector2Di; CTouchInterface::IsReleased(CTouchInterface::WidgetIDs,CVector2D *,int)
2FFB10:  CBNZ            R0, loc_2FFB1C
2FFB12:  MOVS            R0, #0x38 ; '8'
2FFB14:  BLX             j__ZN4CHID10IsReleasedE10HIDMapping; CHID::IsReleased(HIDMapping)
2FFB18:  CMP             R0, #1
2FFB1A:  BNE             loc_2FFB48
2FFB1C:  MOV             R1, SP; char *
2FFB1E:  MOV             R0, R4; this
2FFB20:  BLX             j__ZN11CWidgetList16GetSelectedEntryEPc; CWidgetList::GetSelectedEntry(char *)
2FFB24:  ADDS            R0, #1
2FFB26:  BEQ             loc_2FFBA0
2FFB28:  LDR             R0, =(_ZN6CCheat10CheatLabelE_ptr - 0x2FFB32)
2FFB2A:  MOVS            R5, #0
2FFB2C:  MOV             R4, SP
2FFB2E:  ADD             R0, PC; _ZN6CCheat10CheatLabelE_ptr
2FFB30:  LDR             R6, [R0]; CCheat::CheatLabel ...
2FFB32:  LDR.W           R1, [R6,R5,LSL#2]; char *
2FFB36:  MOV             R0, R4; char *
2FFB38:  BLX             strcmp
2FFB3C:  CBZ             R0, loc_2FFB4C
2FFB3E:  ADDS            R0, R5, #1
2FFB40:  CMP             R5, #0x6E ; 'n'
2FFB42:  MOV             R5, R0
2FFB44:  BLT             loc_2FFB32
2FFB46:  B               loc_2FFBA0
2FFB48:  MOVS            R0, #0
2FFB4A:  B               loc_2FFBA2
2FFB4C:  ADDS            R0, R5, #1
2FFB4E:  BEQ             loc_2FFBA0
2FFB50:  LDR             R0, =(_ZN6CCheat17m_aCheatFunctionsE_ptr - 0x2FFB56)
2FFB52:  ADD             R0, PC; _ZN6CCheat17m_aCheatFunctionsE_ptr
2FFB54:  LDR             R0, [R0]; CCheat::m_aCheatFunctions ...
2FFB56:  LDR.W           R0, [R0,R5,LSL#2]
2FFB5A:  CBZ             R0, loc_2FFB60
2FFB5C:  BLX             R0
2FFB5E:  B               loc_2FFB72
2FFB60:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x2FFB68)
2FFB62:  MOVS            R2, #0
2FFB64:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
2FFB66:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
2FFB68:  LDRB            R1, [R0,R5]
2FFB6A:  CMP             R1, #0
2FFB6C:  IT EQ
2FFB6E:  MOVEQ           R2, #1
2FFB70:  STRB            R2, [R0,R5]
2FFB72:  LDR             R0, =(_ZN15CWidgetListText13m_fLastScrollE_ptr - 0x2FFB7A)
2FFB74:  LDR             R1, =(_ZN4CPad18m_fLastCheatScrollE_ptr - 0x2FFB7C)
2FFB76:  ADD             R0, PC; _ZN15CWidgetListText13m_fLastScrollE_ptr
2FFB78:  ADD             R1, PC; _ZN4CPad18m_fLastCheatScrollE_ptr
2FFB7A:  LDR             R0, [R0]; CWidgetListText::m_fLastScroll ...
2FFB7C:  LDR             R1, [R1]; CPad::m_fLastCheatScroll ...
2FFB7E:  LDR             R0, [R0]; CWidgetListText::m_fLastScroll
2FFB80:  STR             R0, [R1]; CPad::m_fLastCheatScroll
2FFB82:  MOVS            R0, #0x9A
2FFB84:  BLX             j__ZN15CTouchInterface12DeleteWidgetENS_9WidgetIDsE; CTouchInterface::DeleteWidget(CTouchInterface::WidgetIDs)
2FFB88:  BLX             j__ZN6CTimer12EndUserPauseEv; CTimer::EndUserPause(void)
2FFB8C:  BLX             j__ZN4CHID12GetInputTypeEv; CHID::GetInputType(void)
2FFB90:  CMP             R0, #1
2FFB92:  BNE             loc_2FFBA0
2FFB94:  MOV.W           R0, #0xFFFFFFFF; int
2FFB98:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
2FFB9C:  BLX             j__ZN10CPlayerPed17ClearWeaponTargetEv; CPlayerPed::ClearWeaponTarget(void)
2FFBA0:  MOVS            R0, #1
2FFBA2:  LDR             R1, =(__stack_chk_guard_ptr - 0x2FFBAA)
2FFBA4:  LDR             R2, [SP,#0x118+var_14]
2FFBA6:  ADD             R1, PC; __stack_chk_guard_ptr
2FFBA8:  LDR             R1, [R1]; __stack_chk_guard
2FFBAA:  LDR             R1, [R1]
2FFBAC:  SUBS            R1, R1, R2
2FFBAE:  ITTT EQ
2FFBB0:  ADDEQ           SP, SP, #0x108
2FFBB2:  POPEQ.W         {R11}
2FFBB6:  POPEQ           {R4-R7,PC}
2FFBB8:  BLX             __stack_chk_fail
