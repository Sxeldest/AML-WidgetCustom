; =========================================================
; Game Engine Function: _ZN12CAudioEngine23ReportMissionAudioEventEtP7CObject
; Address            : 0x3BD88C - 0x3BD8A6
; =========================================================

3BD88C:  PUSH            {R7,LR}
3BD88E:  MOV             R7, SP
3BD890:  SUB             SP, SP, #8
3BD892:  MOV.W           R3, #0x3F800000
3BD896:  ADD.W           R0, R0, #0x2A0; this
3BD89A:  STR             R3, [SP,#0x10+var_10]; float
3BD89C:  MOVS            R3, #0; float
3BD89E:  BLX             j__ZN20CAEScriptAudioEntity23ReportMissionAudioEventEtP9CPhysicalff; CAEScriptAudioEntity::ReportMissionAudioEvent(ushort,CPhysical *,float,float)
3BD8A2:  ADD             SP, SP, #8
3BD8A4:  POP             {R7,PC}
