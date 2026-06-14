; =========================================================
; Game Engine Function: _ZN10CPlayerPed22GetButtonSprintResultsE11eSprintType
; Address            : 0x4C6690 - 0x4C66FC
; =========================================================

4C6690:  LDR             R2, =(PLAYER_SPRINT_THRESHOLD_ptr - 0x4C669A)
4C6692:  LDR.W           R0, [R0,#0x444]
4C6696:  ADD             R2, PC; PLAYER_SPRINT_THRESHOLD_ptr
4C6698:  LDR             R2, [R2]; PLAYER_SPRINT_THRESHOLD
4C669A:  VLDR            S2, [R0,#0x1C]
4C669E:  VLDR            S0, [R2]
4C66A2:  VCMPE.F32       S2, S0
4C66A6:  VMRS            APSR_nzcv, FPSCR
4C66AA:  BLE             loc_4C66E0
4C66AC:  VDIV.F32        S0, S2, S0
4C66B0:  LDR             R0, =(PLAYER_SPRINT_SET_ptr - 0x4C66B6)
4C66B2:  ADD             R0, PC; PLAYER_SPRINT_SET_ptr
4C66B4:  LDR             R0, [R0]; PLAYER_SPRINT_SET
4C66B6:  ADD.W           R0, R0, R1,LSL#5
4C66BA:  VMOV.F32        S2, #-1.0
4C66BE:  VLDR            S4, =0.0
4C66C2:  VADD.F32        S0, S0, S2
4C66C6:  VLDR            S2, [R0,#0x1C]
4C66CA:  VMAX.F32        D0, D0, D2
4C66CE:  VMOV.F32        S4, #1.0
4C66D2:  VMUL.F32        S0, S0, S2
4C66D6:  VADD.F32        S0, S0, S4
4C66DA:  VMOV            R0, S0
4C66DE:  BX              LR
4C66E0:  VCMPE.F32       S2, #0.0
4C66E4:  VLDR            S0, =0.0
4C66E8:  VMRS            APSR_nzcv, FPSCR
4C66EC:  VMOV.F32        S4, #1.0
4C66F0:  IT GT
4C66F2:  VMOVGT.F32      S0, S4
4C66F6:  VMOV            R0, S0
4C66FA:  BX              LR
