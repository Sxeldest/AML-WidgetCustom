; =========================================================
; Game Engine Function: _ZN20CAEScriptAudioEntity23ReportMissionAudioEventEtP9CPhysicalff
; Address            : 0x3A728C - 0x3A72B6
; =========================================================

3A728C:  PUSH            {R7,LR}
3A728E:  MOV             R7, SP
3A7290:  SUB             SP, SP, #0x18
3A7292:  MOV             R12, R2
3A7294:  MOVS            R2, #0xC47A0000
3A729A:  VLDR            S0, [R7,#8]
3A729E:  STRD.W          R2, R2, [SP,#0x20+var_14]
3A72A2:  STR             R2, [SP,#0x20+var_C]
3A72A4:  ADD             R2, SP, #0x20+var_14; CVector *
3A72A6:  VSTR            S0, [SP,#0x20+var_1C]
3A72AA:  STR             R3, [SP,#0x20+var_20]; float
3A72AC:  MOV             R3, R12; CPhysical *
3A72AE:  BLX             j__ZN20CAEScriptAudioEntity24ProcessMissionAudioEventEtR7CVectorP9CPhysicalff; CAEScriptAudioEntity::ProcessMissionAudioEvent(ushort,CVector &,CPhysical *,float,float)
3A72B2:  ADD             SP, SP, #0x18
3A72B4:  POP             {R7,PC}
