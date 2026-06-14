; =========================================================
; Game Engine Function: _ZN11CPlayerInfo19EvaluateCarPositionEP7CEntityP4CPedfPfPP8CVehicle
; Address            : 0x40B954 - 0x40BA58
; =========================================================

40B954:  PUSH            {R4-R7,LR}
40B956:  ADD             R7, SP, #0xC
40B958:  PUSH.W          {R8}
40B95C:  VPUSH           {D8}
40B960:  SUB             SP, SP, #0x10; int *
40B962:  MOV             R5, R2
40B964:  MOV             R4, R1
40B966:  LDR             R1, [R5,#0x14]
40B968:  MOV             R8, R3
40B96A:  LDRD.W          R0, R1, [R1,#0x10]; float
40B96E:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
40B972:  MOV             R6, R0
40B974:  LDR             R0, [R5,#0x14]
40B976:  LDR             R1, [R4,#0x14]
40B978:  ADD.W           R2, R0, #0x30 ; '0'
40B97C:  CMP             R0, #0
40B97E:  IT EQ
40B980:  ADDEQ           R2, R5, #4; float
40B982:  ADD.W           R0, R1, #0x30 ; '0'
40B986:  CMP             R1, #0
40B988:  VLDR            S0, [R2]
40B98C:  VLDR            S2, [R2,#4]
40B990:  IT EQ
40B992:  ADDEQ           R0, R4, #4
40B994:  VLDR            S4, [R0]
40B998:  VLDR            S6, [R0,#4]
40B99C:  VSUB.F32        S0, S4, S0
40B9A0:  VSUB.F32        S2, S6, S2
40B9A4:  VMOV            R0, S0; this
40B9A8:  VMOV            R1, S2; float
40B9AC:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
40B9B0:  VMOV            S0, R6
40B9B4:  VMOV            S2, R0
40B9B8:  VSUB.F32        S0, S0, S2
40B9BC:  VLDR            S2, =3.1416
40B9C0:  VCMPE.F32       S0, S2
40B9C4:  VMRS            APSR_nzcv, FPSCR
40B9C8:  BLE             loc_40B9DC
40B9CA:  VLDR            S4, =-6.2832
40B9CE:  VADD.F32        S0, S0, S4
40B9D2:  VCMPE.F32       S0, S2
40B9D6:  VMRS            APSR_nzcv, FPSCR
40B9DA:  BGT             loc_40B9CE
40B9DC:  VLDR            S4, =-3.1416
40B9E0:  VMOV            S2, R8
40B9E4:  LDR             R6, [R7,#arg_0]
40B9E6:  VCMPE.F32       S0, S4
40B9EA:  VMRS            APSR_nzcv, FPSCR
40B9EE:  BGE             loc_40BA02
40B9F0:  VLDR            S6, =6.2832
40B9F4:  VADD.F32        S0, S0, S6
40B9F8:  VCMPE.F32       S0, S4
40B9FC:  VMRS            APSR_nzcv, FPSCR
40BA00:  BLT             loc_40B9F4
40BA02:  VABS.F32        S0, S0
40BA06:  VLDR            S4, =-6.2832
40BA0A:  VMOV.F32        S6, #1.0
40BA0E:  VDIV.F32        S0, S0, S4
40BA12:  VMOV.F32        S4, #10.0
40BA16:  VADD.F32        S0, S0, S6
40BA1A:  VSUB.F32        S2, S4, S2
40BA1E:  VMUL.F32        S16, S2, S0
40BA22:  VLDR            S0, [R6]
40BA26:  VCMPE.F32       S16, S0
40BA2A:  VMRS            APSR_nzcv, FPSCR
40BA2E:  BLT             loc_40BA4C
40BA30:  MOVS            R0, #0
40BA32:  ADD             R3, SP, #0x28+var_1C; CVector *
40BA34:  STR             R0, [SP,#0x28+var_1C]
40BA36:  MOV             R2, SP; CVehicle *
40BA38:  MOV             R0, R5; this
40BA3A:  MOV             R1, R4; CPed *
40BA3C:  BLX             j__ZN13CCarEnterExit17GetNearestCarDoorERK4CPedRK8CVehicleR7CVectorRi; CCarEnterExit::GetNearestCarDoor(CPed const&,CVehicle const&,CVector &,int &)
40BA40:  CMP             R0, #1
40BA42:  ITTT EQ
40BA44:  LDREQ           R0, [R7,#arg_4]
40BA46:  VSTREQ          S16, [R6]
40BA4A:  STREQ           R4, [R0]
40BA4C:  ADD             SP, SP, #0x10
40BA4E:  VPOP            {D8}
40BA52:  POP.W           {R8}
40BA56:  POP             {R4-R7,PC}
