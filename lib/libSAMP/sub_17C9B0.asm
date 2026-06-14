; =========================================================
; Game Engine Function: sub_17C9B0
; Address            : 0x17C9B0 - 0x17CA20
; =========================================================

17C9B0:  PUSH            {R4-R7,LR}
17C9B2:  ADD             R7, SP, #0xC
17C9B4:  PUSH.W          {R11}
17C9B8:  SUB             SP, SP, #8
17C9BA:  MOV             R6, R1
17C9BC:  MOV             R5, R0
17C9BE:  BL              sub_17C080
17C9C2:  CBZ             R0, loc_17CA00
17C9C4:  VMOV            S0, R6
17C9C8:  LDR             R1, [R5]
17C9CA:  LDR             R2, [R5,#0x40]
17C9CC:  MOV             R4, R0
17C9CE:  VCVT.F64.F32    D16, S0
17C9D2:  VSTR            D16, [SP,#0x18+var_18]
17C9D6:  BL              sub_17C1B8
17C9DA:  LDR             R0, [R4]
17C9DC:  LDR.W           R1, [R0,#0x390]
17C9E0:  MOV             R0, R4
17C9E2:  BLX             R1
17C9E4:  CBZ             R0, loc_17CA18
17C9E6:  LDR             R0, [R4]
17C9E8:  LDR             R1, [R0,#0x40]
17C9EA:  MOV             R0, R4
17C9EC:  BLX             R1
17C9EE:  LDR             R0, [R4]
17C9F0:  LDR             R1, [R0,#0x44]
17C9F2:  MOV             R0, R4
17C9F4:  ADD             SP, SP, #8
17C9F6:  POP.W           {R11}
17C9FA:  POP.W           {R4-R7,LR}
17C9FE:  BX              R1
17CA00:  LDR             R1, =(aAxl - 0x17CA0A); "AXL" ...
17CA02:  MOVS            R0, #6
17CA04:  LDR             R2, =(aEnvNotLoadedSe_4 - 0x17CA0C); "Env not loaded (Settings_SetChatFontSiz"... ...
17CA06:  ADD             R1, PC; "AXL"
17CA08:  ADD             R2, PC; "Env not loaded (Settings_SetChatFontSiz"...
17CA0A:  ADD             SP, SP, #8
17CA0C:  POP.W           {R11}
17CA10:  POP.W           {R4-R7,LR}
17CA14:  B.W             sub_2242C8
17CA18:  ADD             SP, SP, #8
17CA1A:  POP.W           {R11}
17CA1E:  POP             {R4-R7,PC}
