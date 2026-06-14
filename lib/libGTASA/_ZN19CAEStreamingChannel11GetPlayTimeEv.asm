; =========================================================
; Game Engine Function: _ZN19CAEStreamingChannel11GetPlayTimeEv
; Address            : 0x3A97AE - 0x3A9818
; =========================================================

3A97AE:  PUSH            {R4,R5,R7,LR}
3A97B0:  ADD             R7, SP, #8
3A97B2:  SUB             SP, SP, #8
3A97B4:  MOV             R4, R0
3A97B6:  MOV             R0, #0x24040
3A97BE:  LDR             R0, [R4,R0]
3A97C0:  ORR.W           R1, R0, #2
3A97C4:  ADDS            R1, #1
3A97C6:  BNE             loc_3A9814
3A97C8:  LDR             R5, [R4,#4]
3A97CA:  ADD             R2, SP, #0x10+var_C
3A97CC:  MOVW            R1, #0x1026
3A97D0:  LDR             R0, [R5,#8]
3A97D2:  BLX             j_alGetSourcei
3A97D6:  LDR             R0, [R5,#0x20]
3A97D8:  LDR             R1, [SP,#0x10+var_C]
3A97DA:  ADD             R0, R1
3A97DC:  MOV.W           R1, #0x1F4
3A97E0:  MULS            R0, R1
3A97E2:  LDR             R1, [R4,#0x20]
3A97E4:  BLX             __aeabi_uidiv
3A97E8:  MOV             R5, #0x24048
3A97F0:  STR             R0, [R4,R5]
3A97F2:  BLX             j__ZN15CAEAudioUtility28GetCurrentTimeInMillisecondsEv; CAEAudioUtility::GetCurrentTimeInMilliseconds(void)
3A97F6:  MOV             R2, R0
3A97F8:  MOV             R0, #0x2405C
3A9800:  STR             R1, [R4,R0]
3A9802:  MOV             R1, #0x24058
3A980A:  LDR             R0, [R4,R5]
3A980C:  STR             R2, [R4,R1]
3A980E:  CMP             R0, #0
3A9810:  IT LE
3A9812:  MOVLE           R0, #0
3A9814:  ADD             SP, SP, #8
3A9816:  POP             {R4,R5,R7,PC}
