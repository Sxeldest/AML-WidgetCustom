; =========================================================
; Game Engine Function: _ZN13BreakObject_c11DoCollisionEP12BreakGroup_tf
; Address            : 0x452194 - 0x4521C6
; =========================================================

452194:  VLDR            S0, [R1,#0x38]
452198:  VLDR            S2, [R1,#0x5C]
45219C:  VSUB.F32        S2, S0, S2
4521A0:  VLDR            S0, [R0,#0x10]
4521A4:  VCMPE.F32       S2, S0
4521A8:  VMRS            APSR_nzcv, FPSCR
4521AC:  IT GE
4521AE:  BXGE            LR
4521B0:  PUSH            {R7,LR}
4521B2:  MOV             R7, SP
4521B4:  SUB             SP, SP, #8; float
4521B6:  ADD.W           R3, R0, #0x14; int
4521BA:  VSTR            S0, [SP,#0x10+var_10]
4521BE:  BLX             j__ZN13BreakObject_c19DoCollisionResponseEP12BreakGroup_tfP5RwV3df; BreakObject_c::DoCollisionResponse(BreakGroup_t *,float,RwV3d *,float)
4521C2:  ADD             SP, SP, #8
4521C4:  POP             {R7,PC}
