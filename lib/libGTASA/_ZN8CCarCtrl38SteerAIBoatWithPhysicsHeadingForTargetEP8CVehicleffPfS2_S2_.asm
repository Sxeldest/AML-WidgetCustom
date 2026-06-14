; =========================================================
; Game Engine Function: _ZN8CCarCtrl38SteerAIBoatWithPhysicsHeadingForTargetEP8CVehicleffPfS2_S2_
; Address            : 0x2F5888 - 0x2F5A00
; =========================================================

2F5888:  PUSH            {R4,R5,R7,LR}
2F588A:  ADD             R7, SP, #8
2F588C:  VPUSH           {D8-D9}
2F5890:  MOV             R5, R0
2F5892:  MOV             R4, R3
2F5894:  LDR             R0, [R5,#0x14]
2F5896:  VLDR            S4, [R0,#0x10]
2F589A:  VLDR            S16, [R0,#0x14]
2F589E:  VMUL.F32        S2, S4, S4
2F58A2:  VMUL.F32        S0, S16, S16
2F58A6:  VADD.F32        S0, S2, S0
2F58AA:  VMOV            S2, R1
2F58AE:  VSQRT.F32       S6, S0
2F58B2:  VCMP.F32        S6, #0.0
2F58B6:  VMOV            S0, R2; float
2F58BA:  VMRS            APSR_nzcv, FPSCR
2F58BE:  BEQ             loc_2F58CA
2F58C0:  VDIV.F32        S16, S16, S6
2F58C4:  VDIV.F32        S18, S4, S6
2F58C8:  B               loc_2F58CE
2F58CA:  VMOV.F32        S18, #1.0
2F58CE:  ADD.W           R1, R0, #0x30 ; '0'
2F58D2:  CMP             R0, #0
2F58D4:  IT EQ
2F58D6:  ADDEQ           R1, R5, #4
2F58D8:  VLDR            S4, [R1]
2F58DC:  VLDR            S6, [R1,#4]
2F58E0:  VSUB.F32        S2, S2, S4
2F58E4:  VSUB.F32        S0, S0, S6
2F58E8:  VMOV            R0, S2; this
2F58EC:  VMOV            R1, S0; float
2F58F0:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2F58F4:  VMOV            R2, S18; float
2F58F8:  VMOV            R1, S16; float
2F58FC:  VMOV            S16, R0
2F5900:  MOV             R0, R2; this
2F5902:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
2F5906:  VMOV            S0, R0
2F590A:  VLDR            S2, =-3.1416
2F590E:  VSUB.F32        S0, S16, S0
2F5912:  VCMPE.F32       S0, S2
2F5916:  VMRS            APSR_nzcv, FPSCR
2F591A:  BGE             loc_2F592E
2F591C:  VLDR            S4, =6.2832
2F5920:  VADD.F32        S0, S0, S4
2F5924:  VCMPE.F32       S0, S2
2F5928:  VMRS            APSR_nzcv, FPSCR
2F592C:  BLT             loc_2F5920
2F592E:  VLDR            S2, =3.1416
2F5932:  VCMPE.F32       S0, S2
2F5936:  VMRS            APSR_nzcv, FPSCR
2F593A:  BLE             loc_2F594E
2F593C:  VLDR            S4, =-6.2832
2F5940:  VADD.F32        S0, S0, S4
2F5944:  VCMPE.F32       S0, S2
2F5948:  VMRS            APSR_nzcv, FPSCR
2F594C:  BGT             loc_2F5940
2F594E:  LDRD.W          R1, R0, [R7,#arg_0]
2F5952:  VMOV.F32        S8, #0.5
2F5956:  VLDR            S2, [R5,#0x48]
2F595A:  VLDR            S4, [R5,#0x4C]
2F595E:  VMUL.F32        S2, S2, S2
2F5962:  LDRB.W          R2, [R5,#0x3D4]
2F5966:  VMUL.F32        S4, S4, S4
2F596A:  VLDR            S6, =-60.0
2F596E:  VADD.F32        S2, S2, S4
2F5972:  VLDR            S4, =0.0
2F5976:  VADD.F32        S2, S2, S4
2F597A:  VMOV            S4, R2
2F597E:  VCVT.F32.U32    S4, S4
2F5982:  VSQRT.F32       S2, S2
2F5986:  VMUL.F32        S2, S2, S6
2F598A:  VMOV.F32        S6, #-0.5
2F598E:  VMAX.F32        D16, D0, D3
2F5992:  VADD.F32        S2, S4, S2
2F5996:  VMIN.F32        D0, D16, D4
2F599A:  VCMPE.F32       S2, #0.0
2F599E:  VMRS            APSR_nzcv, FPSCR
2F59A2:  BLE             loc_2F59BE
2F59A4:  VDIV.F32        S2, S2, S4
2F59A8:  VMOV.F32        S4, #0.25
2F59AC:  VCMPE.F32       S2, S4
2F59B0:  VMRS            APSR_nzcv, FPSCR
2F59B4:  BLE             loc_2F59DA
2F59B6:  MOV.W           R2, #0x3F800000
2F59BA:  STR             R2, [R1]
2F59BC:  B               loc_2F59F2
2F59BE:  VMOV.F32        S4, #-5.0
2F59C2:  ADR             R2, loc_2F5A18
2F59C4:  VNEG.F32        S0, S0
2F59C8:  VCMPE.F32       S2, S4
2F59CC:  VMRS            APSR_nzcv, FPSCR
2F59D0:  IT LT
2F59D2:  ADDLT           R2, #4
2F59D4:  VLDR            S2, [R2]
2F59D8:  B               loc_2F59EE
2F59DA:  VSUB.F32        S2, S4, S2
2F59DE:  VMOV.F32        S6, #-4.0
2F59E2:  VMOV.F32        S4, #1.0
2F59E6:  VMUL.F32        S2, S2, S6
2F59EA:  VADD.F32        S2, S2, S4
2F59EE:  VSTR            S2, [R1]
2F59F2:  MOVS            R1, #0
2F59F4:  STR             R1, [R0]
2F59F6:  VSTR            S0, [R4]
2F59FA:  VPOP            {D8-D9}
2F59FE:  POP             {R4,R5,R7,PC}
