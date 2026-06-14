; =========================================================
; Game Engine Function: _ZN8CPickups21TryToMerge_WeaponTypeE7CVector11eWeaponTypehjb
; Address            : 0x31F1E0 - 0x31F2B0
; =========================================================

31F1E0:  PUSH            {R4-R7,LR}
31F1E2:  ADD             R7, SP, #0xC
31F1E4:  PUSH.W          {R11}
31F1E8:  MOV             R5, R1
31F1EA:  MOV             R6, R0
31F1EC:  MOV             R0, R3
31F1EE:  MOVS            R1, #1
31F1F0:  MOV             R4, R2
31F1F2:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
31F1F6:  LDR             R3, =(_ZN8CPickups8aPickUpsE_ptr - 0x31F208)
31F1F8:  VMOV.F32        S6, #0.125
31F1FC:  VMOV.F32        S8, #5.5
31F200:  LDRD.W          LR, R12, [R7,#arg_0]
31F204:  ADD             R3, PC; _ZN8CPickups8aPickUpsE_ptr
31F206:  VMOV            S2, R5
31F20A:  VMOV            S4, R6
31F20E:  MOV.W           R6, #0xFFFFFFFF
31F212:  LDR             R5, [R3]; CPickups::aPickUps ...
31F214:  VMOV            S0, R4
31F218:  LDR             R3, [R0,#0xC]
31F21A:  ADD.W           R0, R5, #0x1C
31F21E:  MOVW            R5, #0x26B
31F222:  LDRB            R4, [R0]
31F224:  CMP             R4, LR
31F226:  ITT EQ
31F228:  LDRHEQ.W        R4, [R0,#-4]
31F22C:  CMPEQ           R3, R4
31F22E:  BNE             loc_31F28E
31F230:  LDRSH.W         R4, [R0,#-0xC]
31F234:  LDRSH.W         R1, [R0,#-0xA]
31F238:  LDRSH.W         R2, [R0,#-8]
31F23C:  VMOV            S12, R4
31F240:  VMOV            S10, R1
31F244:  VMOV            S14, R2
31F248:  VCVT.F32.S32    S10, S10
31F24C:  VCVT.F32.S32    S12, S12
31F250:  VCVT.F32.S32    S14, S14
31F254:  VMUL.F32        S10, S10, S6
31F258:  VMUL.F32        S12, S12, S6
31F25C:  VMUL.F32        S14, S14, S6
31F260:  VSUB.F32        S10, S10, S2
31F264:  VSUB.F32        S12, S12, S4
31F268:  VSUB.F32        S14, S14, S0
31F26C:  VMUL.F32        S10, S10, S10
31F270:  VMUL.F32        S12, S12, S12
31F274:  VMUL.F32        S14, S14, S14
31F278:  VADD.F32        S10, S12, S10
31F27C:  VADD.F32        S10, S10, S14
31F280:  VSQRT.F32       S10, S10
31F284:  VCMPE.F32       S10, S8
31F288:  VMRS            APSR_nzcv, FPSCR
31F28C:  BLT             loc_31F29E
31F28E:  ADDS            R6, #1
31F290:  ADDS            R0, #0x20 ; ' '
31F292:  CMP             R6, R5
31F294:  BLT             loc_31F222
31F296:  MOVS            R0, #0
31F298:  POP.W           {R11}
31F29C:  POP             {R4-R7,PC}
31F29E:  LDR.W           R1, [R0,#-0x14]
31F2A2:  ADD             R1, R12
31F2A4:  STR.W           R1, [R0,#-0x14]
31F2A8:  MOVS            R0, #1
31F2AA:  POP.W           {R11}
31F2AE:  POP             {R4-R7,PC}
