; =========================================================
; Game Engine Function: _ZN10CPlayerPed20CanIKReachThisTargetE7CVectorP7CWeaponb
; Address            : 0x4C72B0 - 0x4C732A
; =========================================================

4C72B0:  PUSH            {R4-R7,LR}
4C72B2:  ADD             R7, SP, #0xC
4C72B4:  PUSH.W          {R8,R9,R11}
4C72B8:  MOV             R4, R0
4C72BA:  LDR             R0, [R7,#arg_0]
4C72BC:  MOV             R9, R1
4C72BE:  MOV             R8, R3
4C72C0:  MOV             R6, R2
4C72C2:  LDR             R5, [R0]
4C72C4:  MOV             R0, R4
4C72C6:  MOV             R1, R5
4C72C8:  BLX             j__ZN4CPed14GetWeaponSkillE11eWeaponType; CPed::GetWeaponSkill(eWeaponType)
4C72CC:  MOV             R1, R0
4C72CE:  MOV             R0, R5
4C72D0:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4C72D4:  LDRB            R0, [R0,#0x18]
4C72D6:  LSLS            R0, R0, #0x1E
4C72D8:  BMI             loc_4C731A
4C72DA:  LDR             R0, [R4,#0x14]
4C72DC:  VMOV            S0, R6
4C72E0:  VMOV            S8, R9
4C72E4:  VLDR            S2, [R0,#0x30]
4C72E8:  VLDR            S4, [R0,#0x34]
4C72EC:  VSUB.F32        S2, S8, S2
4C72F0:  VLDR            S6, [R0,#0x38]
4C72F4:  VSUB.F32        S0, S0, S4
4C72F8:  VMUL.F32        S2, S2, S2
4C72FC:  VMUL.F32        S0, S0, S0
4C7300:  VADD.F32        S0, S2, S0
4C7304:  VMOV            S2, R8
4C7308:  VSUB.F32        S2, S6, S2
4C730C:  VSQRT.F32       S0, S0
4C7310:  VCMPE.F32       S2, S0
4C7314:  VMRS            APSR_nzcv, FPSCR
4C7318:  BGT             loc_4C7322
4C731A:  MOVS            R0, #1
4C731C:  POP.W           {R8,R9,R11}
4C7320:  POP             {R4-R7,PC}
4C7322:  MOVS            R0, #0
4C7324:  POP.W           {R8,R9,R11}
4C7328:  POP             {R4-R7,PC}
