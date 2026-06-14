; =========================================================
; Game Engine Function: _ZN20CAEScriptAudioEntity23ReportMissionAudioEventEtR7CVector
; Address            : 0x3A50A6 - 0x3A50C0
; =========================================================

3A50A6:  PUSH            {R7,LR}
3A50A8:  MOV             R7, SP
3A50AA:  SUB             SP, SP, #8
3A50AC:  MOV.W           R12, #0x3F800000
3A50B0:  MOVS            R3, #0
3A50B2:  STRD.W          R3, R12, [SP,#0x10+var_10]; float
3A50B6:  MOVS            R3, #0; CPhysical *
3A50B8:  BLX             j__ZN20CAEScriptAudioEntity24ProcessMissionAudioEventEtR7CVectorP9CPhysicalff; CAEScriptAudioEntity::ProcessMissionAudioEvent(ushort,CVector &,CPhysical *,float,float)
3A50BC:  ADD             SP, SP, #8
3A50BE:  POP             {R7,PC}
