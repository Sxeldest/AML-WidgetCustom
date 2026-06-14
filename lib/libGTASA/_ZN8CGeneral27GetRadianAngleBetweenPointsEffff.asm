; =========================================================
; Game Engine Function: _ZN8CGeneral27GetRadianAngleBetweenPointsEffff
; Address            : 0x3F4924 - 0x3F49C0
; =========================================================

3F4924:  PUSH            {R7,LR}
3F4926:  MOV             R7, SP
3F4928:  VPUSH           {D8-D9}
3F492C:  VMOV            S0, R1
3F4930:  VLDR            S4, =0.0001
3F4934:  VMOV            S2, R3
3F4938:  VSUB.F32        S16, S2, S0
3F493C:  VMOV            S0, R0
3F4940:  VMOV            S2, R2
3F4944:  VSUB.F32        S18, S2, S0
3F4948:  VCMP.F32        S16, #0.0
3F494C:  VMRS            APSR_nzcv, FPSCR
3F4950:  IT EQ
3F4952:  VMOVEQ.F32      S16, S4
3F4956:  VDIV.F32        S0, S18, S16
3F495A:  VMOV            R0, S0; x
3F495E:  BLX             atanf
3F4962:  VCMPE.F32       S18, #0.0
3F4966:  VMOV            S0, R0
3F496A:  VMRS            APSR_nzcv, FPSCR
3F496E:  BLE             loc_3F4984
3F4970:  VCMPE.F32       S16, #0.0
3F4974:  VLDR            S2, =1.5708
3F4978:  VMRS            APSR_nzcv, FPSCR
3F497C:  BLE             loc_3F49A0
3F497E:  VSUB.F32        S0, S2, S0
3F4982:  B               loc_3F49B2
3F4984:  VCMPE.F32       S16, #0.0
3F4988:  VLDR            S2, =1.5708
3F498C:  VMRS            APSR_nzcv, FPSCR
3F4990:  BLE             loc_3F49AA
3F4992:  VADD.F32        S0, S0, S2
3F4996:  VLDR            S2, =-1.5708
3F499A:  VSUB.F32        S0, S2, S0
3F499E:  B               loc_3F49B6
3F49A0:  VADD.F32        S0, S0, S2
3F49A4:  VSUB.F32        S0, S2, S0
3F49A8:  B               loc_3F49B6
3F49AA:  VSUB.F32        S0, S2, S0
3F49AE:  VLDR            S2, =-1.5708
3F49B2:  VADD.F32        S0, S0, S2
3F49B6:  VMOV            R0, S0
3F49BA:  VPOP            {D8-D9}
3F49BE:  POP             {R7,PC}
