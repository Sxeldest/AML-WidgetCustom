; =========================================================
; Game Engine Function: _Z26RpMatFXAtomicEnableEffectsP8RpAtomic
; Address            : 0x1C6F44 - 0x1C6F6E
; =========================================================

1C6F44:  PUSH            {R4,R5,R7,LR}
1C6F46:  ADD             R7, SP, #8
1C6F48:  MOV             R4, R0
1C6F4A:  LDR             R0, =(dword_6B7248 - 0x1C6F50)
1C6F4C:  ADD             R0, PC; dword_6B7248
1C6F4E:  LDR             R5, [R0]
1C6F50:  LDR             R0, [R4,R5]
1C6F52:  CBZ             R0, loc_1C6F58
1C6F54:  MOV             R0, R4
1C6F56:  POP             {R4,R5,R7,PC}
1C6F58:  MOV             R0, R4
1C6F5A:  BLX             j__Z27_rpMatFXPipelineAtomicSetupP8RpAtomic; _rpMatFXPipelineAtomicSetup(RpAtomic *)
1C6F5E:  CBZ             R0, loc_1C6F68
1C6F60:  MOVS            R0, #1
1C6F62:  STR             R0, [R4,R5]
1C6F64:  MOV             R0, R4
1C6F66:  POP             {R4,R5,R7,PC}
1C6F68:  MOVS            R4, #0
1C6F6A:  MOV             R0, R4
1C6F6C:  POP             {R4,R5,R7,PC}
