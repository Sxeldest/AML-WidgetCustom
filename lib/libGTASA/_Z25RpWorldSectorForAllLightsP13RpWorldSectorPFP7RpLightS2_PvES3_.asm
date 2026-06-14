; =========================================================
; Game Engine Function: _Z25RpWorldSectorForAllLightsP13RpWorldSectorPFP7RpLightS2_PvES3_
; Address            : 0x21E278 - 0x21E312
; =========================================================

21E278:  PUSH            {R4-R7,LR}
21E27A:  ADD             R7, SP, #0xC
21E27C:  PUSH.W          {R8,R9,R11}
21E280:  SUB             SP, SP, #0x18
21E282:  MOV             R8, R0
21E284:  MOVS            R0, #0
21E286:  STR             R0, [SP,#0x30+var_1C]
21E288:  MOV             R4, R8
21E28A:  STR             R0, [SP,#0x30+var_28]
21E28C:  MOV             R6, R1
21E28E:  LDR.W           R1, [R4,#0x48]!
21E292:  MOV             R9, R2
21E294:  CMP             R1, R4
21E296:  BEQ             loc_21E2C0
21E298:  MOV             R5, SP
21E29A:  LDR             R0, [R1]
21E29C:  STRD.W          R0, R1, [SP,#0x30+var_30]
21E2A0:  LDR             R0, [R1]
21E2A2:  STR             R5, [R0,#4]
21E2A4:  LDR             R0, [R1,#8]
21E2A6:  STR             R5, [R1]
21E2A8:  CBZ             R0, loc_21E2B0
21E2AA:  MOV             R1, R9
21E2AC:  BLX             R6
21E2AE:  CBZ             R0, loc_21E2FC
21E2B0:  LDRD.W          R1, R0, [SP,#0x30+var_30]
21E2B4:  STR             R1, [R0]
21E2B6:  LDRD.W          R0, R2, [SP,#0x30+var_30]
21E2BA:  CMP             R1, R4
21E2BC:  STR             R2, [R0,#4]
21E2BE:  BNE             loc_21E29A
21E2C0:  MOV             R0, R8
21E2C2:  BLX             j__Z21RpWorldSectorGetWorldPK13RpWorldSector; RpWorldSectorGetWorld(RpWorldSector const*)
21E2C6:  MOV             R4, R0
21E2C8:  CMP             R4, #0
21E2CA:  ITT NE
21E2CC:  LDRNE.W         R0, [R4,#0x3C]!
21E2D0:  CMPNE           R0, R4
21E2D2:  BEQ             loc_21E308
21E2D4:  MOV             R5, SP
21E2D6:  LDR             R1, [R0]
21E2D8:  STRD.W          R1, R0, [SP,#0x30+var_30]
21E2DC:  LDR             R1, [R0]
21E2DE:  STR             R5, [R1,#4]
21E2E0:  MOV             R1, R9
21E2E2:  STR.W           R5, [R0],#-0x34
21E2E6:  BLX             R6
21E2E8:  CBZ             R0, loc_21E2FC
21E2EA:  LDRD.W          R0, R1, [SP,#0x30+var_30]
21E2EE:  STR             R0, [R1]
21E2F0:  LDRD.W          R1, R2, [SP,#0x30+var_30]
21E2F4:  CMP             R0, R4
21E2F6:  STR             R2, [R1,#4]
21E2F8:  BNE             loc_21E2D6
21E2FA:  B               loc_21E308
21E2FC:  LDR             R1, [SP,#0x30+var_2C]
21E2FE:  LDR             R0, [SP,#0x30+var_30]
21E300:  STR             R0, [R1]
21E302:  LDR             R0, [SP,#0x30+var_30]
21E304:  LDR             R1, [SP,#0x30+var_2C]
21E306:  STR             R1, [R0,#4]
21E308:  MOV             R0, R8
21E30A:  ADD             SP, SP, #0x18
21E30C:  POP.W           {R8,R9,R11}
21E310:  POP             {R4-R7,PC}
