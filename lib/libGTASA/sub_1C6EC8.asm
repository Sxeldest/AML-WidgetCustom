; =========================================================
; Game Engine Function: sub_1C6EC8
; Address            : 0x1C6EC8 - 0x1C6F0A
; =========================================================

1C6EC8:  PUSH            {R4-R7,LR}
1C6ECA:  ADD             R7, SP, #0xC
1C6ECC:  PUSH.W          {R11}
1C6ED0:  SUB             SP, SP, #8
1C6ED2:  ADD             R1, SP, #0x18+var_14
1C6ED4:  MOV             R5, R2
1C6ED6:  MOVS            R2, #4
1C6ED8:  MOV             R4, R0
1C6EDA:  BLX             j__Z17RwStreamReadInt32P8RwStreamPij; RwStreamReadInt32(RwStream *,int *,uint)
1C6EDE:  CBZ             R0, loc_1C6EFE
1C6EE0:  LDR             R0, [SP,#0x18+var_14]
1C6EE2:  CBZ             R0, loc_1C6F00
1C6EE4:  LDR             R0, =(dword_6B724C - 0x1C6EEA)
1C6EE6:  ADD             R0, PC; dword_6B724C
1C6EE8:  LDR             R6, [R0]
1C6EEA:  LDR             R0, [R5,R6]
1C6EEC:  CBNZ            R0, loc_1C6F00
1C6EEE:  MOV             R0, R5
1C6EF0:  BLX             j__Z32_rpMatFXPipelineWorldSectorSetupP13RpWorldSector; _rpMatFXPipelineWorldSectorSetup(RpWorldSector *)
1C6EF4:  CMP             R0, #0
1C6EF6:  ITT NE
1C6EF8:  MOVNE           R0, #1
1C6EFA:  STRNE           R0, [R5,R6]
1C6EFC:  B               loc_1C6F00
1C6EFE:  MOVS            R4, #0
1C6F00:  MOV             R0, R4
1C6F02:  ADD             SP, SP, #8
1C6F04:  POP.W           {R11}
1C6F08:  POP             {R4-R7,PC}
