; =========================================================
; Game Engine Function: _ZN9CPhysical12ApplyGravityEv
; Address            : 0x3FE734 - 0x3FE7BC
; =========================================================

3FE734:  PUSH            {R4,R6,R7,LR}
3FE736:  ADD             R7, SP, #8
3FE738:  VPUSH           {D8-D9}
3FE73C:  SUB             SP, SP, #0x20
3FE73E:  MOV             R4, R0
3FE740:  LDR             R0, [R4,#0x44]
3FE742:  AND.W           R1, R0, #0x22 ; '"'
3FE746:  CMP             R1, #2
3FE748:  BNE             loc_3FE7B4
3FE74A:  LSLS            R0, R0, #0x19
3FE74C:  BMI             loc_3FE774
3FE74E:  LDRB            R0, [R4,#0x1C]
3FE750:  LSLS            R0, R0, #0x1F
3FE752:  BEQ             loc_3FE7B4
3FE754:  LDR             R0, =0x278FB6
3FE756:  BL              sub_3F6624
3FE75A:  ADD             R0, PC
3FE75C:  LDR             R0, [R0]
3FE75E:  VLDR            S2, [R0]
3FE762:  VMUL.F32        S0, S2, S0
3FE766:  VLDR            S2, [R4,#0x50]
3FE76A:  VADD.F32        S0, S2, S0
3FE76E:  VSTR            S0, [R4,#0x50]
3FE772:  B               loc_3FE7B4
3FE774:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x3FE780)
3FE776:  ADD.W           R2, R4, #0xA8
3FE77A:  LDR             R1, [R4,#0x14]; CVector *
3FE77C:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
3FE77E:  VLDR            S16, [R4,#0x90]
3FE782:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
3FE784:  VLDR            S18, [R0]
3FE788:  ADD             R0, SP, #0x38+var_24; CMatrix *
3FE78A:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
3FE78E:  BL              sub_3F6624
3FE792:  ADD             R2, SP, #0x38+var_24
3FE794:  MOV.W           R12, #1
3FE798:  VMUL.F32        S0, S18, S0
3FE79C:  LDM             R2, {R0-R2}
3FE79E:  STMEA.W         SP, {R0-R2,R12}
3FE7A2:  MOV             R0, R4
3FE7A4:  MOVS            R1, #0
3FE7A6:  MOVS            R2, #0
3FE7A8:  VMUL.F32        S0, S0, S16
3FE7AC:  VMOV            R3, S0
3FE7B0:  BLX             j__ZN9CPhysical10ApplyForceE7CVectorS0_b; CPhysical::ApplyForce(CVector,CVector,bool)
3FE7B4:  ADD             SP, SP, #0x20 ; ' '
3FE7B6:  VPOP            {D8-D9}
3FE7BA:  POP             {R4,R6,R7,PC}
