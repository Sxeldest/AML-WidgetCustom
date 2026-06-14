; =========================================================
; Game Engine Function: _ZN17CVehicleAnimGroup22ComputeAnimDoorOffsetsEi
; Address            : 0x591E1C - 0x591EEA
; =========================================================

591E1C:  PUSH            {R4-R7,LR}
591E1E:  ADD             R7, SP, #0xC
591E20:  PUSH.W          {R8}
591E24:  MOV             R4, R0
591E26:  ADD.W           R0, R2, R2,LSL#1
591E2A:  MOV             R5, R1
591E2C:  ADD.W           R0, R5, R0,LSL#2
591E30:  ADD.W           R6, R0, #0x40 ; '@'
591E34:  VLDR            S0, [R0,#0x40]
591E38:  VLDR            S2, [R0,#0x44]
591E3C:  VMUL.F32        S0, S0, S0
591E40:  VLDR            S4, [R0,#0x48]
591E44:  VMUL.F32        S2, S2, S2
591E48:  VMUL.F32        S4, S4, S4
591E4C:  VADD.F32        S0, S0, S2
591E50:  VADD.F32        S0, S0, S4
591E54:  VCMP.F32        S0, #0.0
591E58:  VMRS            APSR_nzcv, FPSCR
591E5C:  BNE             loc_591ED8
591E5E:  SUBS            R0, R2, #1
591E60:  CMP             R0, #5
591E62:  BHI             loc_591E76
591E64:  ADR             R1, dword_591EEC
591E66:  ADR             R2, dword_591F04
591E68:  LDR.W           R8, [R1,R0,LSL#2]
591E6C:  ADD.W           R0, R2, R0,LSL#2
591E70:  VLDR            S0, [R0]
591E74:  B               loc_591E7E
591E76:  VMOV.F32        S0, #3.0
591E7A:  MOVW            R8, #0x167
591E7E:  VMOV            R0, S0
591E82:  BLX             exp2f
591E86:  VMOV            S0, R0
591E8A:  LDR             R0, [R5,#4]
591E8C:  VCVT.S32.F32    S0, S0
591E90:  VMOV            R1, S0
591E94:  TST             R0, R1
591E96:  MOV             R1, R8
591E98:  IT NE
591E9A:  ADDNE           R5, #1
591E9C:  LDRSB.W         R0, [R5]
591EA0:  BLX             j__ZN12CAnimManager18GetAnimAssociationE12AssocGroupId11AnimationId; CAnimManager::GetAnimAssociation(AssocGroupId,AnimationId)
591EA4:  B.W             loc_3F67F2
591EA8:  BLX             j__ZN12CAnimManager19UncompressAnimationEP19CAnimBlendHierarchy; CAnimManager::UncompressAnimation(CAnimBlendHierarchy *)
591EAC:  LDRSH.W         R0, [R5,#6]
591EB0:  CMP             R0, #1
591EB2:  BLT             loc_591ED8
591EB4:  SUBS            R0, #1
591EB6:  LDRH            R2, [R5,#4]
591EB8:  LDR             R1, [R5,#8]
591EBA:  ADD.W           R3, R0, R0,LSL#2
591EBE:  TST.W           R2, #2
591EC2:  MOV.W           R3, R3,LSL#2
591EC6:  IT NE
591EC8:  LSLNE           R3, R0, #5
591ECA:  ADDS            R0, R1, R3
591ECC:  VLDR            D16, [R0,#0x14]
591ED0:  LDR             R0, [R0,#0x1C]
591ED2:  STR             R0, [R6,#8]
591ED4:  VSTR            D16, [R6]
591ED8:  VLDR            D16, [R6]
591EDC:  LDR             R0, [R6,#8]
591EDE:  STR             R0, [R4,#8]
591EE0:  VSTR            D16, [R4]
591EE4:  POP.W           {R8}
591EE8:  POP             {R4-R7,PC}
