; =========================================================
; Game Engine Function: _ZN4CHud12ReInitialiseEv
; Address            : 0x436A4C - 0x436C16
; =========================================================

436A4C:  PUSH            {R4-R7,LR}
436A4E:  ADD             R7, SP, #0xC
436A50:  PUSH.W          {R8,R9,R11}
436A54:  LDR             R3, =(_ZN4CHud14m_VehicleStateE_ptr - 0x436A5C)
436A56:  LDR             R0, =(_ZN4CHud25m_Wants_To_Draw_3dMarkersE_ptr - 0x436A60)
436A58:  ADD             R3, PC; _ZN4CHud14m_VehicleStateE_ptr
436A5A:  LDR             R4, =(_ZN4CHud9m_MessageE_ptr - 0x436A68)
436A5C:  ADD             R0, PC; _ZN4CHud25m_Wants_To_Draw_3dMarkersE_ptr
436A5E:  LDR             R1, =(_ZN4CHud18m_VehicleNameTimerE_ptr - 0x436A6C)
436A60:  LDR.W           R9, [R3]; CHud::m_VehicleState ...
436A64:  ADD             R4, PC; _ZN4CHud9m_MessageE_ptr
436A66:  LDR             R3, =(_ZN4CHud19m_Wants_To_Draw_HudE_ptr - 0x436A70)
436A68:  ADD             R1, PC; _ZN4CHud18m_VehicleNameTimerE_ptr
436A6A:  LDR             R5, [R0]; CHud::m_Wants_To_Draw_3dMarkers ...
436A6C:  ADD             R3, PC; _ZN4CHud19m_Wants_To_Draw_HudE_ptr
436A6E:  LDR             R0, [R4]; CHud::m_Message ...
436A70:  MOVS            R4, #1
436A72:  LDR.W           R12, =(_ZN4CHud21m_pVehicleNameToPrintE_ptr - 0x436A7E)
436A76:  LDR             R3, [R3]; CHud::m_Wants_To_Draw_Hud ...
436A78:  STRB            R4, [R5]; CHud::m_Wants_To_Draw_3dMarkers
436A7A:  ADD             R12, PC; _ZN4CHud21m_pVehicleNameToPrintE_ptr
436A7C:  LDR             R2, =(_ZN4CHud18m_VehicleFadeTimerE_ptr - 0x436A88)
436A7E:  STRB            R4, [R3]; CHud::m_Wants_To_Draw_Hud
436A80:  MOVS            R4, #0
436A82:  LDR             R3, =(_ZN4CHud11m_pZoneNameE_ptr - 0x436A8E)
436A84:  ADD             R2, PC; _ZN4CHud18m_VehicleFadeTimerE_ptr
436A86:  LDR.W           LR, =(_ZN4CHud18m_pLastVehicleNameE_ptr - 0x436A92)
436A8A:  ADD             R3, PC; _ZN4CHud11m_pZoneNameE_ptr
436A8C:  LDR             R5, =(_ZN4CHud15m_ZoneNameTimerE_ptr - 0x436A98)
436A8E:  ADD             LR, PC; _ZN4CHud18m_pLastVehicleNameE_ptr
436A90:  LDR             R6, [R1]; CHud::m_VehicleNameTimer ...
436A92:  LDR             R3, [R3]; CHud::m_pZoneName ...
436A94:  ADD             R5, PC; _ZN4CHud15m_ZoneNameTimerE_ptr
436A96:  LDR.W           R1, [R12]; CHud::m_pVehicleNameToPrint ...
436A9A:  LDR.W           R8, [R2]; CHud::m_VehicleFadeTimer ...
436A9E:  STR             R4, [R3]; CHud::m_pZoneName
436AA0:  LDR             R3, =(_ZN4CHud15m_pLastZoneNameE_ptr - 0x436AAA)
436AA2:  LDR.W           R2, [LR]; CHud::m_pLastVehicleName ...
436AA6:  ADD             R3, PC; _ZN4CHud15m_pLastZoneNameE_ptr
436AA8:  LDR             R5, [R5]; CHud::m_ZoneNameTimer ...
436AAA:  STR             R4, [R1]; CHud::m_pVehicleNameToPrint
436AAC:  MOV.W           R1, #0x320
436AB0:  LDR             R3, [R3]; CHud::m_pLastZoneName ...
436AB2:  STR             R4, [R5]; CHud::m_ZoneNameTimer
436AB4:  STR             R4, [R2]; CHud::m_pLastVehicleName
436AB6:  STR             R4, [R3]; CHud::m_pLastZoneName
436AB8:  LDR             R3, =(_ZN4CHud11m_ZoneStateE_ptr - 0x436AC0)
436ABA:  STR             R4, [R6]; CHud::m_VehicleNameTimer
436ABC:  ADD             R3, PC; _ZN4CHud11m_ZoneStateE_ptr
436ABE:  STR.W           R4, [R8]; CHud::m_VehicleFadeTimer
436AC2:  STR.W           R4, [R9]; CHud::m_VehicleState
436AC6:  LDR             R3, [R3]; CHud::m_ZoneState ...
436AC8:  STR             R4, [R3]; CHud::m_ZoneState
436ACA:  LDR             R3, =(_ZN4CHud14m_pVehicleNameE_ptr - 0x436AD0)
436ACC:  ADD             R3, PC; _ZN4CHud14m_pVehicleNameE_ptr
436ACE:  LDR             R3, [R3]; CHud::m_pVehicleName ...
436AD0:  STR             R4, [R3]; CHud::m_pVehicleName
436AD2:  BLX             j___aeabi_memclr8_1
436AD6:  LDR             R0, =(BigMessageInUse_ptr - 0x436AE2)
436AD8:  VMOV.I32        Q8, #0
436ADC:  LDR             R1, =(_ZN4CHud12m_BigMessageE_ptr - 0x436AE4)
436ADE:  ADD             R0, PC; BigMessageInUse_ptr
436AE0:  ADD             R1, PC; _ZN4CHud12m_BigMessageE_ptr
436AE2:  LDR             R2, [R0]; BigMessageInUse
436AE4:  LDR             R0, [R1]; CHud::m_BigMessage ...
436AE6:  MOV.W           R1, #0x800
436AEA:  VST1.32         {D16-D17}, [R2]!
436AEE:  VST1.32         {D16-D17}, [R2]
436AF2:  BLX             j___aeabi_memclr8_1
436AF6:  LDR             R5, =(_ZN4CHud20m_LastTimeEnergyLostE_ptr - 0x436AFE)
436AF8:  LDR             R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x436B02)
436AFA:  ADD             R5, PC; _ZN4CHud20m_LastTimeEnergyLostE_ptr
436AFC:  LDR             R2, =(OddJob2Timer_ptr - 0x436B0A)
436AFE:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
436B00:  LDR             R3, =(OddJob2XOffset_ptr - 0x436B0E)
436B02:  LDR.W           LR, [R5]; CHud::m_LastTimeEnergyLost ...
436B06:  ADD             R2, PC; OddJob2Timer_ptr
436B08:  LDR             R5, =(_ZN4CHud31bScriptForceDisplayWithCountersE_ptr - 0x436B12)
436B0A:  ADD             R3, PC; OddJob2XOffset_ptr
436B0C:  LDR             R6, =(OddJob2OffTimer_ptr - 0x436B16)
436B0E:  ADD             R5, PC; _ZN4CHud31bScriptForceDisplayWithCountersE_ptr
436B10:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
436B12:  ADD             R6, PC; OddJob2OffTimer_ptr
436B14:  LDR.W           R12, =(_ZN4CHud17m_EnergyLostTimerE_ptr - 0x436B20)
436B18:  LDR             R5, [R5]; CHud::bScriptForceDisplayWithCounters ...
436B1A:  LDR             R1, [R0]; CWorld::PlayerInFocus
436B1C:  ADD             R12, PC; _ZN4CHud17m_EnergyLostTimerE_ptr
436B1E:  LDR             R0, [R2]; OddJob2Timer
436B20:  STRB            R4, [R5]; CHud::bScriptForceDisplayWithCounters
436B22:  LDR             R5, =(_ZN4CHud23bScriptDontDisplayRadarE_ptr - 0x436B2A)
436B24:  LDR             R2, [R3]; OddJob2XOffset
436B26:  ADD             R5, PC; _ZN4CHud23bScriptDontDisplayRadarE_ptr
436B28:  LDR             R3, [R6]; OddJob2OffTimer
436B2A:  MOVW            R6, #0xFFFF
436B2E:  STRH            R4, [R0]
436B30:  LDR             R5, [R5]; CHud::bScriptDontDisplayRadar ...
436B32:  STR             R4, [R3]
436B34:  STR             R4, [R2]
436B36:  STRB            R4, [R5]; CHud::bScriptDontDisplayRadar
436B38:  LDR             R5, =(_ZN4CHud29bScriptDontDisplayVehicleNameE_ptr - 0x436B40)
436B3A:  LDR             R0, =(_ZN4CHud17m_EnergyLostStateE_ptr - 0x436B46)
436B3C:  ADD             R5, PC; _ZN4CHud29bScriptDontDisplayVehicleNameE_ptr
436B3E:  LDR.W           R12, [R12]; CHud::m_EnergyLostTimer ...
436B42:  ADD             R0, PC; _ZN4CHud17m_EnergyLostStateE_ptr
436B44:  LDR.W           R9, =(_ZN4CHud13m_WeaponTimerE_ptr - 0x436B52)
436B48:  LDR             R5, [R5]; CHud::bScriptDontDisplayVehicleName ...
436B4A:  STR.W           R4, [R12]; CHud::m_EnergyLostTimer
436B4E:  ADD             R9, PC; _ZN4CHud13m_WeaponTimerE_ptr
436B50:  LDR.W           R8, =(_ZN4CHud17m_WeaponFadeTimerE_ptr - 0x436B5C)
436B54:  STRB            R4, [R5]; CHud::bScriptDontDisplayVehicleName
436B56:  LDR             R5, =(_ZN4CHud26bScriptDontDisplayAreaNameE_ptr - 0x436B5E)
436B58:  ADD             R8, PC; _ZN4CHud17m_WeaponFadeTimerE_ptr
436B5A:  ADD             R5, PC; _ZN4CHud26bScriptDontDisplayAreaNameE_ptr
436B5C:  LDR             R5, [R5]; CHud::bScriptDontDisplayAreaName ...
436B5E:  STRB            R4, [R5]; CHud::bScriptDontDisplayAreaName
436B60:  LDR             R5, =(_ZN4CHud13m_ItemToFlashE_ptr - 0x436B66)
436B62:  ADD             R5, PC; _ZN4CHud13m_ItemToFlashE_ptr
436B64:  LDR             R5, [R5]; CHud::m_ItemToFlash ...
436B66:  STRH            R6, [R5]; CHud::m_ItemToFlash
436B68:  MOVS            R6, #0
436B6A:  LDR             R5, =(PagerXOffset_ptr - 0x436B74)
436B6C:  MOVT            R6, #0x4316
436B70:  ADD             R5, PC; PagerXOffset_ptr
436B72:  LDR             R5, [R5]; PagerXOffset
436B74:  STR             R6, [R5]
436B76:  MOV.W           R6, #0x194
436B7A:  LDR             R5, =(OddJob2On_ptr - 0x436B80)
436B7C:  ADD             R5, PC; OddJob2On_ptr
436B7E:  LDR             R5, [R5]; OddJob2On
436B80:  STRH            R4, [R5]
436B82:  LDR             R5, =(_ZN6CWorld7PlayersE_ptr - 0x436B88)
436B84:  ADD             R5, PC; _ZN6CWorld7PlayersE_ptr
436B86:  LDR             R5, [R5]; CWorld::Players ...
436B88:  SMLABB.W        R1, R1, R6, R5
436B8C:  LDR             R5, =(_ZN4CHud21m_EnergyLostFadeTimerE_ptr - 0x436B94)
436B8E:  LDR             R6, =(_ZN4CHud16m_LastBreathTimeE_ptr - 0x436B96)
436B90:  ADD             R5, PC; _ZN4CHud21m_EnergyLostFadeTimerE_ptr
436B92:  ADD             R6, PC; _ZN4CHud16m_LastBreathTimeE_ptr
436B94:  LDR             R3, [R5]; CHud::m_EnergyLostFadeTimer ...
436B96:  LDR.W           R2, [R1,#0xE4]
436B9A:  LDR.W           R1, [R1,#0xBC]
436B9E:  STR             R4, [R3]; CHud::m_EnergyLostFadeTimer
436BA0:  LDR             R3, =(_ZN4CHud18m_LastDisplayScoreE_ptr - 0x436BAA)
436BA2:  LDR             R5, [R0]; CHud::m_EnergyLostState ...
436BA4:  MOVS            R0, #5
436BA6:  ADD             R3, PC; _ZN4CHud18m_LastDisplayScoreE_ptr
436BA8:  STR.W           R2, [LR]; CHud::m_LastTimeEnergyLost
436BAC:  LDR             R2, =(_ZN4CHud13m_WeaponStateE_ptr - 0x436BB4)
436BAE:  LDR             R3, [R3]; CHud::m_LastDisplayScore ...
436BB0:  ADD             R2, PC; _ZN4CHud13m_WeaponStateE_ptr
436BB2:  STR             R0, [R5]; CHud::m_EnergyLostState
436BB4:  LDR.W           LR, [R9]; CHud::m_WeaponTimer ...
436BB8:  STR             R1, [R3]; CHud::m_LastDisplayScore
436BBA:  LDR             R1, =(_ZN4CHud23m_DisplayScoreFadeTimerE_ptr - 0x436BC4)
436BBC:  LDR.W           R12, [R2]; CHud::m_WeaponState ...
436BC0:  ADD             R1, PC; _ZN4CHud23m_DisplayScoreFadeTimerE_ptr
436BC2:  LDR             R2, =(_ZN4CHud19m_DisplayScoreTimerE_ptr - 0x436BCE)
436BC4:  LDR.W           R5, [R8]; CHud::m_WeaponFadeTimer ...
436BC8:  LDR             R1, [R1]; CHud::m_DisplayScoreFadeTimer ...
436BCA:  ADD             R2, PC; _ZN4CHud19m_DisplayScoreTimerE_ptr
436BCC:  LDR             R6, [R6]; CHud::m_LastBreathTime ...
436BCE:  LDR             R2, [R2]; CHud::m_DisplayScoreTimer ...
436BD0:  STR             R4, [R1]; CHud::m_DisplayScoreFadeTimer
436BD2:  LDR             R1, =(_ZN4CHud19m_DisplayScoreStateE_ptr - 0x436BDA)
436BD4:  STR             R4, [R2]; CHud::m_DisplayScoreTimer
436BD6:  ADD             R1, PC; _ZN4CHud19m_DisplayScoreStateE_ptr
436BD8:  LDR             R2, =(_ZN4CHud12m_LastWeaponE_ptr - 0x436BE4)
436BDA:  STR.W           R4, [LR]; CHud::m_WeaponTimer
436BDE:  LDR             R1, [R1]; CHud::m_DisplayScoreState ...
436BE0:  ADD             R2, PC; _ZN4CHud12m_LastWeaponE_ptr
436BE2:  STR             R4, [R5]; CHud::m_WeaponFadeTimer
436BE4:  LDR             R2, [R2]; CHud::m_LastWeapon ...
436BE6:  STR             R0, [R1]; CHud::m_DisplayScoreState
436BE8:  LDR             R1, =(_ZN4CHud12m_LastWantedE_ptr - 0x436BF0)
436BEA:  STR             R4, [R2]; CHud::m_LastWeapon
436BEC:  ADD             R1, PC; _ZN4CHud12m_LastWantedE_ptr
436BEE:  STR.W           R0, [R12]; CHud::m_WeaponState
436BF2:  STR             R4, [R6]; CHud::m_LastBreathTime
436BF4:  LDR             R1, [R1]; CHud::m_LastWanted ...
436BF6:  STR             R4, [R1]; CHud::m_LastWanted
436BF8:  LDR             R1, =(_ZN4CHud13m_WantedTimerE_ptr - 0x436BFE)
436BFA:  ADD             R1, PC; _ZN4CHud13m_WantedTimerE_ptr
436BFC:  LDR             R1, [R1]; CHud::m_WantedTimer ...
436BFE:  STR             R4, [R1]; CHud::m_WantedTimer
436C00:  LDR             R1, =(_ZN4CHud17m_WantedFadeTimerE_ptr - 0x436C06)
436C02:  ADD             R1, PC; _ZN4CHud17m_WantedFadeTimerE_ptr
436C04:  LDR             R1, [R1]; CHud::m_WantedFadeTimer ...
436C06:  STR             R4, [R1]; CHud::m_WantedFadeTimer
436C08:  LDR             R1, =(_ZN4CHud13m_WantedStateE_ptr - 0x436C0E)
436C0A:  ADD             R1, PC; _ZN4CHud13m_WantedStateE_ptr
436C0C:  LDR             R1, [R1]; CHud::m_WantedState ...
436C0E:  STR             R0, [R1]; CHud::m_WantedState
436C10:  POP.W           {R8,R9,R11}
436C14:  POP             {R4-R7,PC}
