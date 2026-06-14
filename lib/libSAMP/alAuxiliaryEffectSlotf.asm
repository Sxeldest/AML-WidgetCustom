; =========================================================
; Game Engine Function: alAuxiliaryEffectSlotf
; Address            : 0x1DD850 - 0x1DD8F0
; =========================================================

1DD850:  PUSH            {R4-R7,R11,LR}
1DD854:  ADD             R11, SP, #0x10
1DD858:  MOV             R5, R2
1DD85C:  MOV             R6, R1
1DD860:  MOV             R7, R0
1DD864:  BL              j_GetContextRef
1DD868:  MOV             R4, R0
1DD86C:  CMP             R4, #0
1DD870:  POPEQ           {R4-R7,R11,PC}
1DD874:  ADD             R0, R4, #0xA0
1DD878:  MOV             R1, R7
1DD87C:  BL              j_LookupUIntMapKey
1DD880:  CMP             R0, #0
1DD884:  BEQ             loc_1DD8C0
1DD888:  CMP             R6, #2
1DD88C:  BNE             loc_1DD8CC
1DD890:  VMOV            S0, R5
1DD894:  VCMPE.F32       S0, #0.0
1DD898:  VMRS            APSR_nzcv, FPSCR
1DD89C:  BLT             loc_1DD8D8
1DD8A0:  VMOV.F32        S2, #1.0
1DD8A4:  VCMPE.F32       S0, S2
1DD8A8:  VMRS            APSR_nzcv, FPSCR
1DD8AC:  BGT             loc_1DD8D8
1DD8B0:  MOV             R1, #1
1DD8B4:  VSTR            S0, [R0,#0xB8]
1DD8B8:  STR             R1, [R0,#0xC0]
1DD8BC:  B               loc_1DD8E4
1DD8C0:  MOV             R0, R4
1DD8C4:  MOVW            R1, #0xA001
1DD8C8:  B               loc_1DD8E0
1DD8CC:  MOV             R0, R4
1DD8D0:  MOVW            R1, #0xA002
1DD8D4:  B               loc_1DD8E0
1DD8D8:  MOV             R0, R4
1DD8DC:  MOVW            R1, #0xA003
1DD8E0:  BL              j_alSetError
1DD8E4:  MOV             R0, R4
1DD8E8:  POP             {R4-R7,R11,LR}
1DD8EC:  B               j_ALCcontext_DecRef
