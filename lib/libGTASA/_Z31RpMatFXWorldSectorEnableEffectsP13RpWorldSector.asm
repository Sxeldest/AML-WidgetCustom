; =========================================================
; Game Engine Function: _Z31RpMatFXWorldSectorEnableEffectsP13RpWorldSector
; Address            : 0x1C6F84 - 0x1C6FAE
; =========================================================

1C6F84:  PUSH            {R4,R5,R7,LR}
1C6F86:  ADD             R7, SP, #8
1C6F88:  MOV             R4, R0
1C6F8A:  LDR             R0, =(dword_6B724C - 0x1C6F90)
1C6F8C:  ADD             R0, PC; dword_6B724C
1C6F8E:  LDR             R5, [R0]
1C6F90:  LDR             R0, [R4,R5]
1C6F92:  CBZ             R0, loc_1C6F98
1C6F94:  MOV             R0, R4
1C6F96:  POP             {R4,R5,R7,PC}
1C6F98:  MOV             R0, R4
1C6F9A:  BLX             j__Z32_rpMatFXPipelineWorldSectorSetupP13RpWorldSector; _rpMatFXPipelineWorldSectorSetup(RpWorldSector *)
1C6F9E:  CBZ             R0, loc_1C6FA8
1C6FA0:  MOVS            R0, #1
1C6FA2:  STR             R0, [R4,R5]
1C6FA4:  MOV             R0, R4
1C6FA6:  POP             {R4,R5,R7,PC}
1C6FA8:  MOVS            R4, #0
1C6FAA:  MOV             R0, R4
1C6FAC:  POP             {R4,R5,R7,PC}
