; =========================================================
; Game Engine Function: _ZN12CAudioEngine23ReportMissionAudioEventEtP4CPed
; Address            : 0x3BD8A6 - 0x3BD8C0
; =========================================================

3BD8A6:  PUSH            {R7,LR}
3BD8A8:  MOV             R7, SP
3BD8AA:  SUB             SP, SP, #8
3BD8AC:  MOV.W           R3, #0x3F800000
3BD8B0:  ADD.W           R0, R0, #0x2A0; this
3BD8B4:  STR             R3, [SP,#0x10+var_10]; float
3BD8B6:  MOVS            R3, #0; float
3BD8B8:  BLX             j__ZN20CAEScriptAudioEntity23ReportMissionAudioEventEtP9CPhysicalff; CAEScriptAudioEntity::ReportMissionAudioEvent(ushort,CPhysical *,float,float)
3BD8BC:  ADD             SP, SP, #8
3BD8BE:  POP             {R7,PC}
