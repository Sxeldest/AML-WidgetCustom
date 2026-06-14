; =========================================================
; Game Engine Function: alDopplerVelocity
; Address            : 0x1E1280 - 0x1E12E8
; =========================================================

1E1280:  PUSH            {R4,R5,R11,LR}
1E1284:  ADD             R11, SP, #8
1E1288:  MOV             R5, R0
1E128C:  BL              j_GetContextRef
1E1290:  MOV             R4, R0
1E1294:  CMP             R4, #0
1E1298:  POPEQ           {R4,R5,R11,PC}
1E129C:  VMOV            S0, R5
1E12A0:  VCMPE.F32       S0, #0.0
1E12A4:  VMRS            APSR_nzcv, FPSCR
1E12A8:  BLE             loc_1E12D0
1E12AC:  VABS.F32        S2, S0
1E12B0:  VLDR            S4, =+Inf
1E12B4:  VCMP.F32        S2, S4
1E12B8:  VMRS            APSR_nzcv, FPSCR
1E12BC:  BEQ             loc_1E12D0
1E12C0:  MOV             R0, #1
1E12C4:  VSTR            S0, [R4,#0xD8]
1E12C8:  STR             R0, [R4,#0xC8]
1E12CC:  B               loc_1E12DC
1E12D0:  MOV             R0, R4
1E12D4:  MOVW            R1, #0xA003
1E12D8:  BL              j_alSetError
1E12DC:  MOV             R0, R4
1E12E0:  POP             {R4,R5,R11,LR}
1E12E4:  B               j_ALCcontext_DecRef
