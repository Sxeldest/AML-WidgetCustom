; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity20GetFlyingMetalVolumeEP9CPhysical
; Address            : 0x3ABD54 - 0x3ABDBA
; =========================================================

3ABD54:  VLDR            S0, [R1,#0x54]
3ABD58:  VLDR            S2, [R1,#0x58]
3ABD5C:  VMUL.F32        S0, S0, S0
3ABD60:  VLDR            S4, [R1,#0x5C]
3ABD64:  VMUL.F32        S2, S2, S2
3ABD68:  VMUL.F32        S4, S4, S4
3ABD6C:  VADD.F32        S0, S0, S2
3ABD70:  VMOV.F32        S2, #0.5625
3ABD74:  VADD.F32        S0, S0, S4
3ABD78:  VMIN.F32        D0, D0, D1
3ABD7C:  VDIV.F32        S0, S0, S2
3ABD80:  VLDR            S2, =1.0e-10
3ABD84:  VCMPE.F32       S0, S2
3ABD88:  VMRS            APSR_nzcv, FPSCR
3ABD8C:  ITTT LT
3ABD8E:  VLDRLT          S0, =-100.0
3ABD92:  VMOVLT          R0, S0
3ABD96:  BXLT            LR
3ABD98:  PUSH            {R7,LR}
3ABD9A:  MOV             R7, SP
3ABD9C:  VMOV            R0, S0; this
3ABDA0:  BLX             j__ZN15CAEAudioUtility10AudioLog10Ef; CAEAudioUtility::AudioLog10(float)
3ABDA4:  VMOV.F32        S0, #10.0
3ABDA8:  VMOV            S2, R0
3ABDAC:  VMUL.F32        S0, S2, S0
3ABDB0:  POP.W           {R7,LR}
3ABDB4:  VMOV            R0, S0
3ABDB8:  BX              LR
