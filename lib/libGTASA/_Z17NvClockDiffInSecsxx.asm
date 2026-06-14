; =========================================================
; Game Engine Function: _Z17NvClockDiffInSecsxx
; Address            : 0x2771A4 - 0x2771C2
; =========================================================

2771A4:  PUSH            {R7,LR}
2771A6:  MOV             R7, SP
2771A8:  SUBS            R0, R0, R2
2771AA:  SBCS            R1, R3
2771AC:  BLX             __aeabi_l2f
2771B0:  VLDR            S0, =1.0e9
2771B4:  VMOV            S2, R0
2771B8:  VDIV.F32        S0, S2, S0
2771BC:  VMOV            R0, S0
2771C0:  POP             {R7,PC}
