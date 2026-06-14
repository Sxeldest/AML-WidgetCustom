; =========================================================
; Game Engine Function: _ZN8CIdleCam3RunEv
; Address            : 0x3D36BC - 0x3D372A
; =========================================================

3D36BC:  PUSH            {R4,R5,R7,LR}
3D36BE:  ADD             R7, SP, #8
3D36C0:  VPUSH           {D8-D9}
3D36C4:  SUB             SP, SP, #8
3D36C6:  MOV             R4, R0
3D36C8:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3D36CE)
3D36CA:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3D36CC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3D36CE:  LDR             R5, [R0]; CTimer::m_snTimeInMilliseconds
3D36D0:  MOV             R0, R4; this
3D36D2:  BLX             j__ZN8CIdleCam22ProcessTargetSelectionEv; CIdleCam::ProcessTargetSelection(void)
3D36D6:  ADD             R1, SP, #0x20+var_1C; float *
3D36D8:  MOV             R2, SP; float *
3D36DA:  MOV             R0, R4; this
3D36DC:  VLDR            S16, [R4,#0x2C]
3D36E0:  VLDR            S18, [R4,#0x8C]
3D36E4:  BLX             j__ZN8CIdleCam12ProcessSlerpEPfS0_; CIdleCam::ProcessSlerp(float *,float *)
3D36E8:  MOV             R1, R0; float
3D36EA:  MOV             R0, R4; this
3D36EC:  STR             R1, [R4,#0x24]
3D36EE:  BLX             j__ZN8CIdleCam14ProcessFOVZoomEf; CIdleCam::ProcessFOVZoom(float)
3D36F2:  VMOV            S0, R5
3D36F6:  MOV             R0, R4; this
3D36F8:  VMOV.F32        S4, #1.0
3D36FC:  VCVT.F32.U32    S0, S0
3D3700:  VSUB.F32        S0, S0, S16
3D3704:  VCMPE.F32       S0, S18
3D3708:  VDIV.F32        S2, S0, S18
3D370C:  VMRS            APSR_nzcv, FPSCR
3D3710:  IT LT
3D3712:  VMOVLT.F32      S4, S2
3D3716:  LDRD.W          R2, R1, [SP,#0x20+var_20]; x
3D371A:  VMOV            R3, S4; float
3D371E:  BLX             j__ZN8CIdleCam18FinaliseIdleCameraEfff; CIdleCam::FinaliseIdleCamera(float,float,float)
3D3722:  ADD             SP, SP, #8
3D3724:  VPOP            {D8-D9}
3D3728:  POP             {R4,R5,R7,PC}
