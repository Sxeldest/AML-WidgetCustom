; =========================================================
; Game Engine Function: INT123_synth_1to1_s32_mono
; Address            : 0x239958 - 0x239A28
; =========================================================

239958:  PUSH            {R4-R7,LR}
23995A:  ADD             R7, SP, #0xC
23995C:  PUSH.W          {R8-R10}
239960:  SUB             SP, SP, #0x100
239962:  MOV             R4, R1
239964:  MOVW            R1, #0x91A0
239968:  LDR             R5, [R4,R1]
23996A:  MOVW            R8, #0xB2A8
23996E:  MOVW            R10, #0xB2A0
239972:  MOV             R1, SP
239974:  LDR.W           R9, [R4,R8]
239978:  LDR.W           R6, [R4,R10]
23997C:  STR.W           R1, [R4,R10]
239980:  MOVS            R1, #0
239982:  STR.W           R1, [R4,R8]
239986:  MOVS            R1, #0
239988:  MOV             R2, R4
23998A:  MOVS            R3, #0
23998C:  BLX             R5
23998E:  STR.W           R6, [R4,R10]
239992:  LDR             R1, [SP,#0x118+var_118]
239994:  STR.W           R1, [R6,R9]
239998:  ADD.W           R1, R6, R9
23999C:  LDR             R2, [SP,#0x118+var_110]
23999E:  STR             R2, [R1,#4]
2399A0:  LDR             R2, [SP,#0x118+var_108]
2399A2:  STR             R2, [R1,#8]
2399A4:  LDR             R2, [SP,#0x118+var_100]
2399A6:  STR             R2, [R1,#0xC]
2399A8:  LDR             R2, [SP,#0x118+var_F8]
2399AA:  STR             R2, [R1,#0x10]
2399AC:  LDR             R2, [SP,#0x118+var_F0]
2399AE:  STR             R2, [R1,#0x14]
2399B0:  LDR             R2, [SP,#0x118+var_E8]
2399B2:  STR             R2, [R1,#0x18]
2399B4:  LDR             R2, [SP,#0x118+var_E0]
2399B6:  STR             R2, [R1,#0x1C]
2399B8:  LDR             R2, [SP,#0x118+var_D8]
2399BA:  STR             R2, [R1,#0x20]
2399BC:  LDR             R2, [SP,#0x118+var_D0]
2399BE:  STR             R2, [R1,#0x24]
2399C0:  LDR             R2, [SP,#0x118+var_C8]
2399C2:  STR             R2, [R1,#0x28]
2399C4:  LDR             R2, [SP,#0x118+var_C0]
2399C6:  STR             R2, [R1,#0x2C]
2399C8:  LDR             R2, [SP,#0x118+var_B8]
2399CA:  STR             R2, [R1,#0x30]
2399CC:  LDR             R2, [SP,#0x118+var_B0]
2399CE:  STR             R2, [R1,#0x34]
2399D0:  LDR             R2, [SP,#0x118+var_A8]
2399D2:  STR             R2, [R1,#0x38]
2399D4:  LDR             R2, [SP,#0x118+var_A0]
2399D6:  STR             R2, [R1,#0x3C]
2399D8:  LDR             R2, [SP,#0x118+var_98]
2399DA:  STR             R2, [R1,#0x40]
2399DC:  LDR             R2, [SP,#0x118+var_90]
2399DE:  STR             R2, [R1,#0x44]
2399E0:  LDR             R2, [SP,#0x118+var_88]
2399E2:  STR             R2, [R1,#0x48]
2399E4:  LDR             R2, [SP,#0x118+var_80]
2399E6:  STR             R2, [R1,#0x4C]
2399E8:  LDR             R2, [SP,#0x118+var_78]
2399EA:  STR             R2, [R1,#0x50]
2399EC:  LDR             R2, [SP,#0x118+var_70]
2399EE:  STR             R2, [R1,#0x54]
2399F0:  LDR             R2, [SP,#0x118+var_68]
2399F2:  STR             R2, [R1,#0x58]
2399F4:  LDR             R2, [SP,#0x118+var_60]
2399F6:  STR             R2, [R1,#0x5C]
2399F8:  LDR             R2, [SP,#0x118+var_58]
2399FA:  STR             R2, [R1,#0x60]
2399FC:  LDR             R2, [SP,#0x118+var_50]
2399FE:  STR             R2, [R1,#0x64]
239A00:  LDR             R2, [SP,#0x118+var_48]
239A02:  STR             R2, [R1,#0x68]
239A04:  LDR             R2, [SP,#0x118+var_40]
239A06:  STR             R2, [R1,#0x6C]
239A08:  LDR             R2, [SP,#0x118+var_38]
239A0A:  STR             R2, [R1,#0x70]
239A0C:  LDR             R2, [SP,#0x118+var_30]
239A0E:  STR             R2, [R1,#0x74]
239A10:  LDR             R2, [SP,#0x118+var_28]
239A12:  STR             R2, [R1,#0x78]
239A14:  LDR             R2, [SP,#0x118+var_20]
239A16:  STR             R2, [R1,#0x7C]
239A18:  ADD.W           R1, R9, #0x80
239A1C:  STR.W           R1, [R4,R8]
239A20:  ADD             SP, SP, #0x100
239A22:  POP.W           {R8-R10}
239A26:  POP             {R4-R7,PC}
