; =========================================================
; Game Engine Function: _ZN14CRunningScript21CanAllowMissionReplayEv
; Address            : 0x3293A0 - 0x3293D8
; =========================================================

3293A0:  PUSH            {R7,LR}
3293A2:  MOV             R7, SP
3293A4:  LDR             R1, =(aDesert5_0 - 0x3293AC); "desert5"
3293A6:  ADDS            R0, #8; char *
3293A8:  ADD             R1, PC; "desert5"
3293AA:  BLX             strcmp
3293AE:  MOV             R1, R0
3293B0:  MOVS            R0, #0
3293B2:  CMP             R1, #0
3293B4:  IT EQ
3293B6:  POPEQ           {R7,PC}
3293B8:  LDR             R1, =(AllowMissionReplay_ptr - 0x3293C0)
3293BA:  LDR             R2, =(missionReplaySetting_ptr - 0x3293C2)
3293BC:  ADD             R1, PC; AllowMissionReplay_ptr
3293BE:  ADD             R2, PC; missionReplaySetting_ptr
3293C0:  LDR             R1, [R1]; AllowMissionReplay
3293C2:  LDR             R2, [R2]; missionReplaySetting
3293C4:  LDR             R1, [R1]
3293C6:  LDR             R2, [R2]
3293C8:  CMP             R1, #0
3293CA:  IT EQ
3293CC:  MOVEQ           R0, #1
3293CE:  CMP             R2, #0
3293D0:  IT NE
3293D2:  MOVNE           R2, #1
3293D4:  ANDS            R0, R2
3293D6:  POP             {R7,PC}
