; =========================================================
; Game Engine Function: _ZN7CWanted21WorkOutPolicePresenceE7CVectorf
; Address            : 0x42190C - 0x421AE4
; =========================================================

42190C:  PUSH            {R4-R7,LR}
42190E:  ADD             R7, SP, #0xC
421910:  PUSH.W          {R8-R11}
421914:  SUB             SP, SP, #4
421916:  VPUSH           {D8-D11}
42191A:  SUB             SP, SP, #8
42191C:  MOV             R10, R0
42191E:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x42192A)
421920:  VMOV            S16, R3
421924:  MOV             R9, R2
421926:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
421928:  LDR             R0, [R0]; CPools::ms_pPedPool ...
42192A:  LDR             R4, [R0]; CPools::ms_pPedPool
42192C:  LDR             R5, [R4,#8]
42192E:  CMP             R5, #0
421930:  BEQ             loc_4219EA
421932:  VMOV            S18, R9
421936:  MOVS            R0, #0
421938:  VMOV            S20, R1
42193C:  MOVW            R11, #0x59C
421940:  VMOV            S22, R10
421944:  STR             R0, [SP,#0x48+var_44]
421946:  STR             R1, [SP,#0x48+var_48]
421948:  MOVW            R0, #0x7CC
42194C:  MULS            R0, R5
42194E:  SUBS            R5, #1
421950:  SUB.W           R8, R0, #0x230
421954:  LDR             R0, [R4,#4]
421956:  LDRSB           R0, [R0,R5]
421958:  CMP             R0, #0
42195A:  BLT             loc_4219CA
42195C:  LDR             R0, [R4]
42195E:  ADD.W           R6, R0, R8
421962:  CMP             R6, R11
421964:  BEQ             loc_4219CA
421966:  LDR.W           R0, [R0,R8]
42196A:  CMP             R0, #6
42196C:  BNE             loc_4219CA
42196E:  SUBW            R0, R6, #0x59C; this
421972:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
421976:  CMP             R0, #1
421978:  BNE             loc_4219CA
42197A:  MOV             R0, #0xFFFFFA78
421982:  LDR             R0, [R6,R0]
421984:  ADD.W           R1, R0, #0x30 ; '0'
421988:  CMP             R0, #0
42198A:  IT EQ
42198C:  SUBEQ.W         R1, R6, #0x598
421990:  VLDR            S0, [R1]
421994:  VLDR            S2, [R1,#4]
421998:  VSUB.F32        S0, S22, S0
42199C:  VLDR            S4, [R1,#8]
4219A0:  VSUB.F32        S2, S20, S2
4219A4:  VSUB.F32        S4, S18, S4
4219A8:  VMUL.F32        S0, S0, S0
4219AC:  VMUL.F32        S2, S2, S2
4219B0:  VMUL.F32        S4, S4, S4
4219B4:  VADD.F32        S0, S0, S2
4219B8:  VADD.F32        S0, S0, S4
4219BC:  VSQRT.F32       S0, S0
4219C0:  VCMPE.F32       S0, S16
4219C4:  VMRS            APSR_nzcv, FPSCR
4219C8:  BLT             loc_4219D6
4219CA:  SUBS            R5, #1
4219CC:  SUBW            R8, R8, #0x7CC
4219D0:  ADDS            R0, R5, #1
4219D2:  BNE             loc_421954
4219D4:  B               loc_4219E6
4219D6:  LDR             R1, [SP,#0x48+var_48]
4219D8:  CMP             R5, #0
4219DA:  LDR             R0, [SP,#0x48+var_44]
4219DC:  ADD.W           R0, R0, #1
4219E0:  STR             R0, [SP,#0x48+var_44]
4219E2:  BNE             loc_421948
4219E4:  B               loc_4219EE
4219E6:  LDR             R1, [SP,#0x48+var_48]
4219E8:  B               loc_4219EE
4219EA:  MOVS            R0, #0
4219EC:  STR             R0, [SP,#0x48+var_44]
4219EE:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x4219F4)
4219F0:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
4219F2:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
4219F4:  LDR             R4, [R0]; CPools::ms_pVehiclePool
4219F6:  LDR             R5, [R4,#8]
4219F8:  CMP             R5, #0
4219FA:  BEQ             loc_421AD4
4219FC:  MOVW            R8, #0xFA00
421A00:  VMOV            S22, R10
421A04:  MOVW            R10, #0xF5D8
421A08:  VMOV            S18, R9
421A0C:  VMOV            S20, R1
421A10:  MOVW            R0, #0xA2C
421A14:  MOVT            R8, #0xFFFF
421A18:  MOVT            R10, #0xFFFF
421A1C:  MUL.W           R6, R5, R0
421A20:  SUBS            R5, #1
421A22:  LDR             R0, [R4,#4]
421A24:  LDRSB           R0, [R0,R5]
421A26:  CMP             R0, #0
421A28:  BLT             loc_421AB8
421A2A:  LDR.W           R9, [R4]
421A2E:  ADD.W           R0, R9, R6
421A32:  SUBW            R11, R0, #0xA2C
421A36:  CMP.W           R11, #0
421A3A:  BEQ             loc_421AB8
421A3C:  LDRB.W          R0, [R0,R8]
421A40:  LSLS            R0, R0, #0x1F
421A42:  BNE             loc_421A54
421A44:  ADD.W           R0, R9, R10
421A48:  MOVW            R1, #0x1F1
421A4C:  ADD             R0, R6
421A4E:  LDRH            R0, [R0,#0x22]
421A50:  CMP             R0, R1
421A52:  BNE             loc_421AB8
421A54:  MOV.W           R0, #0xFFFFFFFF; int
421A58:  MOVS            R1, #0; bool
421A5A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
421A5E:  CMP             R11, R0
421A60:  BEQ             loc_421AB8
421A62:  ADD.W           R0, R9, R10
421A66:  ADD             R0, R6
421A68:  LDRB.W          R1, [R0,#0x36]
421A6C:  AND.W           R1, R1, #0xF0
421A70:  CMP             R1, #0x20 ; ' '
421A72:  BEQ             loc_421AB8
421A74:  LDR             R1, [R0,#0x10]
421A76:  CMP             R1, #0
421A78:  IT NE
421A7A:  ADDNE.W         R0, R1, #0x30 ; '0'
421A7E:  VLDR            S0, [R0]
421A82:  VLDR            S2, [R0,#4]
421A86:  VSUB.F32        S0, S22, S0
421A8A:  VLDR            S4, [R0,#8]
421A8E:  VSUB.F32        S2, S20, S2
421A92:  VSUB.F32        S4, S18, S4
421A96:  VMUL.F32        S0, S0, S0
421A9A:  VMUL.F32        S2, S2, S2
421A9E:  VMUL.F32        S4, S4, S4
421AA2:  VADD.F32        S0, S0, S2
421AA6:  VADD.F32        S0, S0, S4
421AAA:  VSQRT.F32       S0, S0
421AAE:  VCMPE.F32       S0, S16
421AB2:  VMRS            APSR_nzcv, FPSCR
421AB6:  BLT             loc_421AC4
421AB8:  SUBS            R5, #1
421ABA:  SUBW            R6, R6, #0xA2C
421ABE:  ADDS            R0, R5, #1
421AC0:  BNE             loc_421A22
421AC2:  B               loc_421AD4
421AC4:  LDR             R0, [SP,#0x48+var_44]
421AC6:  CMP             R5, #0
421AC8:  ADD.W           R0, R0, #1
421ACC:  STR             R0, [SP,#0x48+var_44]
421ACE:  MOVW            R0, #0xA2C
421AD2:  BNE             loc_421A1C
421AD4:  LDR             R0, [SP,#0x48+var_44]
421AD6:  ADD             SP, SP, #8
421AD8:  VPOP            {D8-D11}
421ADC:  ADD             SP, SP, #4
421ADE:  POP.W           {R8-R11}
421AE2:  POP             {R4-R7,PC}
