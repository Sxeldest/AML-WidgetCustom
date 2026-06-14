; =========================================================
; Game Engine Function: _ZN23CAECollisionAudioEntity30GetSurfaceHardnessVolumeOffsetEh
; Address            : 0x394F20 - 0x394F5A
; =========================================================

394F20:  PUSH            {R7,LR}
394F22:  MOV             R7, SP
394F24:  LDR             R1, =(gCollisionLookup_ptr - 0x394F2E)
394F26:  VLDR            S2, =100.0
394F2A:  ADD             R1, PC; gCollisionLookup_ptr
394F2C:  LDR             R1, [R1]; gCollisionLookup
394F2E:  ADD.W           R0, R1, R0,LSL#4
394F32:  LDR             R0, [R0,#0xC]
394F34:  VMOV            S0, R0
394F38:  VCVT.F32.S32    S0, S0
394F3C:  VDIV.F32        S0, S0, S2
394F40:  VMOV            R0, S0; x
394F44:  BLX             log10f
394F48:  VMOV.F32        S0, #20.0
394F4C:  VMOV            S2, R0
394F50:  VMUL.F32        S0, S2, S0
394F54:  VMOV            R0, S0
394F58:  POP             {R7,PC}
