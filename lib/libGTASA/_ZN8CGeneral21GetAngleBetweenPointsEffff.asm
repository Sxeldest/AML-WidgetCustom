; =========================================================
; Game Engine Function: _ZN8CGeneral21GetAngleBetweenPointsEffff
; Address            : 0x3F4870 - 0x3F4914
; =========================================================

3F4870:  PUSH            {R7,LR}
3F4872:  MOV             R7, SP
3F4874:  VPUSH           {D8-D9}
3F4878:  VMOV            S0, R1
3F487C:  VLDR            S4, =0.0001
3F4880:  VMOV            S2, R3
3F4884:  VSUB.F32        S16, S2, S0
3F4888:  VMOV            S0, R0
3F488C:  VMOV            S2, R2
3F4890:  VSUB.F32        S18, S2, S0
3F4894:  VCMP.F32        S16, #0.0
3F4898:  VMRS            APSR_nzcv, FPSCR
3F489C:  IT EQ
3F489E:  VMOVEQ.F32      S16, S4
3F48A2:  VDIV.F32        S0, S18, S16
3F48A6:  VMOV            R0, S0; x
3F48AA:  BLX             atanf
3F48AE:  VCMPE.F32       S18, #0.0
3F48B2:  VMOV            S0, R0
3F48B6:  VMRS            APSR_nzcv, FPSCR
3F48BA:  BLE             loc_3F48D0
3F48BC:  VCMPE.F32       S16, #0.0
3F48C0:  VLDR            S2, =1.5708
3F48C4:  VMRS            APSR_nzcv, FPSCR
3F48C8:  BLE             loc_3F48EC
3F48CA:  VSUB.F32        S0, S2, S0
3F48CE:  B               loc_3F48FE
3F48D0:  VCMPE.F32       S16, #0.0
3F48D4:  VLDR            S2, =1.5708
3F48D8:  VMRS            APSR_nzcv, FPSCR
3F48DC:  BLE             loc_3F48F6
3F48DE:  VADD.F32        S0, S0, S2
3F48E2:  VLDR            S2, =-1.5708
3F48E6:  VSUB.F32        S0, S2, S0
3F48EA:  B               loc_3F4902
3F48EC:  VADD.F32        S0, S0, S2
3F48F0:  VSUB.F32        S0, S2, S0
3F48F4:  B               loc_3F4902
3F48F6:  VSUB.F32        S0, S2, S0
3F48FA:  VLDR            S2, =-1.5708
3F48FE:  VADD.F32        S0, S0, S2
3F4902:  VLDR            S2, =57.296
3F4906:  VMUL.F32        S0, S0, S2
3F490A:  VMOV            R0, S0
3F490E:  VPOP            {D8-D9}
3F4912:  POP             {R7,PC}
