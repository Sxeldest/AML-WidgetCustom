; =========================================================
; Game Engine Function: _ZNK25CTaskComplexHitPedWithCar11HitKillsPedEP4CPed
; Address            : 0x50B7E0 - 0x50B812
; =========================================================

50B7E0:  PUSH            {R4,R6,R7,LR}
50B7E2:  ADD             R7, SP, #8
50B7E4:  MOV             R4, R0
50B7E6:  MOV             R0, R1; this
50B7E8:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
50B7EC:  VMOV.F32        S2, #20.0
50B7F0:  CMP             R0, #0
50B7F2:  VMOV.F32        S0, #12.0
50B7F6:  MOV.W           R0, #0
50B7FA:  IT NE
50B7FC:  VMOVNE.F32      S0, S2
50B800:  VLDR            S2, [R4,#0x10]
50B804:  VCMPE.F32       S2, S0
50B808:  VMRS            APSR_nzcv, FPSCR
50B80C:  IT GT
50B80E:  MOVGT           R0, #1
50B810:  POP             {R4,R6,R7,PC}
