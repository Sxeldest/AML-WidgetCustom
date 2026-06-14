; =========================================================
; Game Engine Function: _ZNK19CEventVehicleOnFire10AffectsPedEP4CPed
; Address            : 0x376A3C - 0x376AEC
; =========================================================

376A3C:  PUSH            {R4,R5,R7,LR}
376A3E:  ADD             R7, SP, #8
376A40:  MOV             R5, R0
376A42:  MOV             R4, R1
376A44:  LDR             R0, [R5,#0x10]
376A46:  CMP             R0, #0
376A48:  BEQ             loc_376AE4
376A4A:  LDR.W           R1, [R4,#0x590]
376A4E:  CMP             R1, #0
376A50:  IT NE
376A52:  CMPNE           R1, R0
376A54:  BEQ             loc_376A60
376A56:  LDR.W           R0, [R4,#0x484]
376A5A:  ANDS.W          R0, R0, #0x100
376A5E:  BNE             loc_376AE4
376A60:  MOV             R0, R4; this
376A62:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
376A66:  CBNZ            R0, loc_376AE4
376A68:  MOV             R0, R4; this
376A6A:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
376A6E:  CMP             R0, #1
376A70:  BNE             loc_376AE4
376A72:  MOV             R0, R4; this
376A74:  BLX             j__ZN10CPedGroups12GetPedsGroupEPK4CPed; CPedGroups::GetPedsGroup(CPed const*)
376A78:  CBZ             R0, loc_376A8C
376A7A:  ADDS            R0, #8; this
376A7C:  MOV             R1, R4; CPed *
376A7E:  BLX             j__ZNK19CPedGroupMembership8IsLeaderEPK4CPed; CPedGroupMembership::IsLeader(CPed const*)
376A82:  CBNZ            R0, loc_376A8C
376A84:  LDRB.W          R0, [R4,#0x485]
376A88:  LSLS            R0, R0, #0x1F
376A8A:  BNE             loc_376AE4
376A8C:  LDRB.W          R0, [R4,#0x485]
376A90:  LSLS            R0, R0, #0x1F
376A92:  BNE             loc_376AE8
376A94:  LDR             R0, [R5,#0x10]
376A96:  LDR             R1, [R4,#0x14]
376A98:  LDR             R2, [R0,#0x14]
376A9A:  ADD.W           R3, R1, #0x30 ; '0'
376A9E:  CMP             R1, #0
376AA0:  IT EQ
376AA2:  ADDEQ           R3, R4, #4
376AA4:  ADD.W           R1, R2, #0x30 ; '0'
376AA8:  CMP             R2, #0
376AAA:  VLDR            S0, [R3]
376AAE:  IT EQ
376AB0:  ADDEQ           R1, R0, #4
376AB2:  VLDR            D16, [R3,#4]
376AB6:  VLDR            S2, [R1]
376ABA:  VLDR            D17, [R1,#4]
376ABE:  VSUB.F32        S0, S0, S2
376AC2:  VSUB.F32        D16, D16, D17
376AC6:  VMUL.F32        D1, D16, D16
376ACA:  VMUL.F32        S0, S0, S0
376ACE:  VADD.F32        S0, S0, S2
376AD2:  VADD.F32        S0, S0, S3
376AD6:  VLDR            S2, =100.0
376ADA:  VCMPE.F32       S0, S2
376ADE:  VMRS            APSR_nzcv, FPSCR
376AE2:  BLE             loc_376AE8
376AE4:  MOVS            R0, #0
376AE6:  POP             {R4,R5,R7,PC}
376AE8:  MOVS            R0, #1
376AEA:  POP             {R4,R5,R7,PC}
