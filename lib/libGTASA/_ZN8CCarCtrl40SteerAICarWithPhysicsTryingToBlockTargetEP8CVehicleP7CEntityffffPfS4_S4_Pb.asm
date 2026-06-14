; =========================================================
; Game Engine Function: _ZN8CCarCtrl40SteerAICarWithPhysicsTryingToBlockTargetEP8CVehicleP7CEntityffffPfS4_S4_Pb
; Address            : 0x2F3708 - 0x2F37D6
; =========================================================

2F3708:  PUSH            {R4,R5,R7,LR}
2F370A:  ADD             R7, SP, #8
2F370C:  VPUSH           {D8-D9}; bool *
2F3710:  SUB             SP, SP, #0x10
2F3712:  VLDR            S0, [R7,#arg_4]
2F3716:  MOV             R4, R0
2F3718:  VLDR            S2, [R7,#arg_0]
2F371C:  VMUL.F32        S4, S0, S0
2F3720:  VLDR            S10, =0.13
2F3724:  VMUL.F32        S6, S2, S2
2F3728:  LDRD.W          LR, R12, [R7,#arg_10]
2F372C:  LDRD.W          R1, R0, [R7,#arg_8]
2F3730:  VADD.F32        S4, S6, S4
2F3734:  VMOV            S6, R2
2F3738:  VSQRT.F32       S8, S4
2F373C:  VCMPE.F32       S8, S10
2F3740:  VMOV            S4, R3
2F3744:  VMRS            APSR_nzcv, FPSCR
2F3748:  BLE             loc_2F3756
2F374A:  VDIV.F32        S8, S10, S8
2F374E:  VMUL.F32        S0, S8, S0
2F3752:  VMUL.F32        S2, S8, S2
2F3756:  VLDR            S8, =60.0
2F375A:  MOVS            R5, #2
2F375C:  STRB.W          R5, [R4,#0x3BD]
2F3760:  VMUL.F32        S2, S2, S8
2F3764:  STRD.W          R1, R0, [SP,#0x28+var_28]; float
2F3768:  VMUL.F32        S0, S0, S8
2F376C:  MOV             R0, R4; this
2F376E:  MOVS            R1, #0; CVehicle *
2F3770:  STRD.W          LR, R12, [SP,#0x28+var_20]; float *
2F3774:  VADD.F32        S16, S2, S6
2F3778:  VADD.F32        S18, S0, S4
2F377C:  VMOV            R2, S16; CPhysical *
2F3780:  VMOV            R3, S18; float
2F3784:  BLX             j__ZN8CCarCtrl37SteerAICarWithPhysicsHeadingForTargetEP8CVehicleP9CPhysicalffPfS4_S4_Pb; CCarCtrl::SteerAICarWithPhysicsHeadingForTarget(CVehicle *,CPhysical *,float,float,float *,float *,float *,bool *)
2F3788:  LDR             R0, [R4,#0x14]
2F378A:  VMOV.F32        S4, #25.0
2F378E:  ADD.W           R1, R0, #0x30 ; '0'
2F3792:  CMP             R0, #0
2F3794:  IT EQ
2F3796:  ADDEQ           R1, R4, #4
2F3798:  VLDR            S0, [R1]
2F379C:  VLDR            S2, [R1,#4]
2F37A0:  VSUB.F32        S0, S16, S0
2F37A4:  VSUB.F32        S2, S18, S2
2F37A8:  VMUL.F32        S0, S0, S0
2F37AC:  VMUL.F32        S2, S2, S2
2F37B0:  VADD.F32        S0, S0, S2
2F37B4:  VCMPE.F32       S0, S4
2F37B8:  VMRS            APSR_nzcv, FPSCR
2F37BC:  BGE             loc_2F37CE
2F37BE:  LDRB.W          R0, [R4,#0x3BE]
2F37C2:  MOVS            R1, #6
2F37C4:  CMP             R0, #0x12
2F37C6:  IT EQ
2F37C8:  MOVEQ           R1, #0x13
2F37CA:  STRB.W          R1, [R4,#0x3BE]
2F37CE:  ADD             SP, SP, #0x10
2F37D0:  VPOP            {D8-D9}
2F37D4:  POP             {R4,R5,R7,PC}
