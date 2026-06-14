; =========================================================
; Game Engine Function: _ZN12CAudioEngine23ReportMissionAudioEventEtP8CVehicle
; Address            : 0x3BD8C0 - 0x3BD8DA
; =========================================================

3BD8C0:  PUSH            {R7,LR}
3BD8C2:  MOV             R7, SP
3BD8C4:  SUB             SP, SP, #8
3BD8C6:  MOV.W           R3, #0x3F800000
3BD8CA:  ADD.W           R0, R0, #0x2A0; this
3BD8CE:  STR             R3, [SP,#0x10+var_10]; float
3BD8D0:  MOVS            R3, #0; float
3BD8D2:  BLX             j__ZN20CAEScriptAudioEntity23ReportMissionAudioEventEtP9CPhysicalff; CAEScriptAudioEntity::ReportMissionAudioEvent(ushort,CPhysical *,float,float)
3BD8D6:  ADD             SP, SP, #8
3BD8D8:  POP             {R7,PC}
