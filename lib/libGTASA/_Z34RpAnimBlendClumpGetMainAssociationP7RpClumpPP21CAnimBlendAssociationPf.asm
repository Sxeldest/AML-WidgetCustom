; =========================================================
; Game Engine Function: _Z34RpAnimBlendClumpGetMainAssociationP7RpClumpPP21CAnimBlendAssociationPf
; Address            : 0x390A4C - 0x390AEA
; =========================================================

390A4C:  PUSH            {R4,R6,R7,LR}
390A4E:  ADD             R7, SP, #8
390A50:  LDR             R3, =(ClumpOffset_ptr - 0x390A56)
390A52:  ADD             R3, PC; ClumpOffset_ptr
390A54:  LDR             R3, [R3]; ClumpOffset
390A56:  LDR             R3, [R3]
390A58:  LDR             R0, [R0,R3]
390A5A:  LDR             R3, [R0]
390A5C:  CBZ             R3, loc_390AC4
390A5E:  VLDR            S2, =0.0
390A62:  MOV.W           LR, #0
390A66:  MOVS            R4, #0
390A68:  VMOV.F32        S0, S2
390A6C:  VMOV.F32        S4, S0
390A70:  MOV             R12, R4
390A72:  VMOV.F32        S0, S2
390A76:  LDRB.W          R0, [R3,#0x2A]
390A7A:  LSLS            R0, R0, #0x1B
390A7C:  BMI             loc_390A98
390A7E:  SUBS            R4, R3, #4
390A80:  VLDR            S2, [R4,#0x18]
390A84:  VCMPE.F32       S2, S0
390A88:  VMRS            APSR_nzcv, FPSCR
390A8C:  BGT             loc_390AAE
390A8E:  VCMPE.F32       S2, S4
390A92:  VMRS            APSR_nzcv, FPSCR
390A96:  BGT             loc_390AA0
390A98:  LDR             R3, [R3]
390A9A:  CMP             R3, #0
390A9C:  BNE             loc_390A76
390A9E:  B               loc_390ABA
390AA0:  VMOV.F32        S4, S2
390AA4:  LDR             R3, [R3]
390AA6:  MOV             LR, R4
390AA8:  CMP             R3, #0
390AAA:  BNE             loc_390A76
390AAC:  B               loc_390AE0
390AAE:  LDR             R3, [R3]
390AB0:  MOV             LR, R12
390AB2:  MOV             R0, R4
390AB4:  CMP             R3, #0
390AB6:  BNE             loc_390A6C
390AB8:  B               loc_390ACE
390ABA:  MOV             R0, R12
390ABC:  VMOV.F32        S0, S4
390AC0:  MOV             R12, LR
390AC2:  B               loc_390ACE
390AC4:  VLDR            S0, =0.0
390AC8:  MOVS            R0, #0
390ACA:  MOV.W           R12, #0
390ACE:  CMP             R1, #0
390AD0:  IT NE
390AD2:  STRNE.W         R12, [R1]
390AD6:  CMP             R2, #0
390AD8:  IT NE
390ADA:  VSTRNE          S0, [R2]
390ADE:  POP             {R4,R6,R7,PC}
390AE0:  VMOV.F32        S0, S2
390AE4:  MOV             R0, R12
390AE6:  MOV             R12, R4
390AE8:  B               loc_390ACE
