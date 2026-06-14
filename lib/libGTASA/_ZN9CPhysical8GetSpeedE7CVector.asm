; =========================================================
; Game Engine Function: _ZN9CPhysical8GetSpeedE7CVector
; Address            : 0x3FD724 - 0x3FD816
; =========================================================

3FD724:  PUSH            {R4-R7,LR}
3FD726:  ADD             R7, SP, #0xC
3FD728:  PUSH.W          {R8,R9,R11}
3FD72C:  SUB             SP, SP, #0x28
3FD72E:  MOV             R5, R1
3FD730:  MOV             R4, R0
3FD732:  LDRB.W          R0, [R5,#0x44]
3FD736:  MOV             R6, R3
3FD738:  LDR.W           R9, [R7,#arg_0]
3FD73C:  MOV             R8, R2
3FD73E:  LSLS            R0, R0, #0x19
3FD740:  BMI             loc_3FD75C
3FD742:  LDR             R1, [R5,#0x14]; CVector *
3FD744:  ADD.W           R2, R5, #0xA8
3FD748:  ADD             R0, SP, #0x40+var_24; CMatrix *
3FD74A:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
3FD74E:  VLDR            S0, [SP,#0x40+var_24]
3FD752:  VLDR            S2, [SP,#0x40+var_20]
3FD756:  VLDR            S4, [SP,#0x40+var_1C]
3FD75A:  B               loc_3FD768
3FD75C:  VLDR            S0, =0.0
3FD760:  VMOV.F32        S2, S0
3FD764:  VMOV.F32        S4, S0
3FD768:  VLDR            S6, [R5,#0x54]
3FD76C:  VMOV            S3, R6
3FD770:  VLDR            S12, [R5,#0x6C]
3FD774:  ADD             R0, SP, #0x40+var_24; CVector *
3FD776:  VLDR            S8, [R5,#0x58]
3FD77A:  VSUB.F32        S2, S3, S2
3FD77E:  VLDR            S14, [R5,#0x70]
3FD782:  VADD.F32        S6, S6, S12
3FD786:  VMOV            S12, R8
3FD78A:  VLDR            S10, [R5,#0x5C]
3FD78E:  VLDR            S1, [R5,#0x74]
3FD792:  VADD.F32        S8, S8, S14
3FD796:  VMOV            S14, R9
3FD79A:  ADD             R1, SP, #0x40+var_30; CVector *
3FD79C:  VADD.F32        S10, S10, S1
3FD7A0:  ADD             R2, SP, #0x40+var_3C
3FD7A2:  VSUB.F32        S0, S12, S0
3FD7A6:  VSUB.F32        S4, S14, S4
3FD7AA:  VSTR            S2, [SP,#0x40+var_38]
3FD7AE:  VSTR            S8, [SP,#0x40+var_2C]
3FD7B2:  VSTR            S6, [SP,#0x40+var_30]
3FD7B6:  VSTR            S10, [SP,#0x40+var_28]
3FD7BA:  VSTR            S0, [SP,#0x40+var_3C]
3FD7BE:  VSTR            S4, [SP,#0x40+var_34]
3FD7C2:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
3FD7C6:  VLDR            S0, [R5,#0x48]
3FD7CA:  VLDR            S12, [SP,#0x40+var_24]
3FD7CE:  VLDR            S2, [R5,#0x4C]
3FD7D2:  VLDR            S14, [SP,#0x40+var_20]
3FD7D6:  VADD.F32        S0, S12, S0
3FD7DA:  VLDR            S4, [R5,#0x50]
3FD7DE:  VLDR            S1, [SP,#0x40+var_1C]
3FD7E2:  VADD.F32        S2, S14, S2
3FD7E6:  VLDR            S6, [R5,#0x60]
3FD7EA:  VADD.F32        S4, S1, S4
3FD7EE:  VLDR            S8, [R5,#0x64]
3FD7F2:  VLDR            S10, [R5,#0x68]
3FD7F6:  VADD.F32        S0, S0, S6
3FD7FA:  VADD.F32        S2, S2, S8
3FD7FE:  VADD.F32        S4, S4, S10
3FD802:  VSTR            S0, [R4]
3FD806:  VSTR            S2, [R4,#4]
3FD80A:  VSTR            S4, [R4,#8]
3FD80E:  ADD             SP, SP, #0x28 ; '('
3FD810:  POP.W           {R8,R9,R11}
3FD814:  POP             {R4-R7,PC}
