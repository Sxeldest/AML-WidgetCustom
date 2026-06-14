; =========================================================
; Game Engine Function: sub_17C76C
; Address            : 0x17C76C - 0x17C7E8
; =========================================================

17C76C:  PUSH            {R4-R7,LR}
17C76E:  ADD             R7, SP, #0xC
17C770:  PUSH.W          {R8,R9,R11}
17C774:  SUB             SP, SP, #0x10
17C776:  MOV             R9, R3
17C778:  MOV             R5, R2
17C77A:  MOV             R8, R1
17C77C:  MOV             R6, R0
17C77E:  BL              sub_17C080
17C782:  CBZ             R0, loc_17C7CC
17C784:  LDR             R1, [R7,#arg_0]
17C786:  ADD             R2, SP, #0x28+var_1C
17C788:  MOV             R4, R0
17C78A:  BL              sub_17C5B0
17C78E:  LDR             R1, [R6]
17C790:  MOV             R0, R4
17C792:  LDR             R2, [R6,#0x20]
17C794:  MOV             R3, R8
17C796:  LDR             R6, [SP,#0x28+var_1C]
17C798:  STRD.W          R5, R9, [SP,#0x28+var_28]
17C79C:  STR             R6, [SP,#0x28+var_20]
17C79E:  BL              sub_17C7F0
17C7A2:  MOV             R5, R0
17C7A4:  LDR             R0, [R4]
17C7A6:  MOV             R1, R6
17C7A8:  LDR             R2, [R0,#0x5C]
17C7AA:  MOV             R0, R4
17C7AC:  BLX             R2
17C7AE:  LDR             R0, [R4]
17C7B0:  LDR.W           R1, [R0,#0x390]
17C7B4:  MOV             R0, R4
17C7B6:  BLX             R1
17C7B8:  CBZ             R0, loc_17C7DE
17C7BA:  LDR             R0, [R4]
17C7BC:  LDR             R1, [R0,#0x40]
17C7BE:  MOV             R0, R4
17C7C0:  BLX             R1
17C7C2:  LDR             R0, [R4]
17C7C4:  LDR             R1, [R0,#0x44]
17C7C6:  MOV             R0, R4
17C7C8:  BLX             R1
17C7CA:  B               loc_17C7DE
17C7CC:  LDR             R1, =(aAxl - 0x17C7D6); "AXL" ...
17C7CE:  MOVS            R0, #4; prio
17C7D0:  LDR             R2, =(aEnvNotLoadedAd - 0x17C7D8); "Env not loaded (addSliderToAzVoiceSetti"... ...
17C7D2:  ADD             R1, PC; "AXL"
17C7D4:  ADD             R2, PC; "Env not loaded (addSliderToAzVoiceSetti"...
17C7D6:  BLX             __android_log_print
17C7DA:  MOV.W           R5, #0xFFFFFFFF
17C7DE:  MOV             R0, R5
17C7E0:  ADD             SP, SP, #0x10
17C7E2:  POP.W           {R8,R9,R11}
17C7E6:  POP             {R4-R7,PC}
