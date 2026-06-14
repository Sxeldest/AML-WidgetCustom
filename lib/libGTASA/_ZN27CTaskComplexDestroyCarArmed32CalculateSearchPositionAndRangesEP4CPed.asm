; =========================================================
; Game Engine Function: _ZN27CTaskComplexDestroyCarArmed32CalculateSearchPositionAndRangesEP4CPed
; Address            : 0x4E72E0 - 0x4E73B0
; =========================================================

4E72E0:  PUSH            {R4,R5,R7,LR}
4E72E2:  ADD             R7, SP, #8
4E72E4:  MOV             R4, R0
4E72E6:  LDR             R0, [R1,#0x14]
4E72E8:  LDR             R2, [R4,#0x10]
4E72EA:  ADD.W           R3, R0, #0x30 ; '0'
4E72EE:  CMP             R0, #0
4E72F0:  IT EQ
4E72F2:  ADDEQ           R3, R1, #4
4E72F4:  VLDR            D16, [R3]
4E72F8:  LDR             R0, [R3,#8]
4E72FA:  STR             R0, [R4,#0x1C]
4E72FC:  VSTR            D16, [R4,#0x14]
4E7300:  LDR             R0, [R2,#0x14]
4E7302:  ADD.W           R3, R0, #0x30 ; '0'
4E7306:  CMP             R0, #0
4E7308:  IT EQ
4E730A:  ADDEQ           R3, R2, #4
4E730C:  VLDR            S0, [R4,#0x14]
4E7310:  VLDR            D16, [R3]
4E7314:  VLDR            S2, [R4,#0x18]
4E7318:  VSTR            D16, [R4,#0x20]
4E731C:  VLDR            S4, [R4,#0x20]
4E7320:  VLDR            S6, [R4,#0x24]
4E7324:  VSUB.F32        S0, S4, S0
4E7328:  LDR             R0, [R3,#8]
4E732A:  VSUB.F32        S2, S6, S2
4E732E:  VLDR            S4, [R4,#0x1C]
4E7332:  STR             R0, [R4,#0x28]
4E7334:  VLDR            S6, [R4,#0x28]
4E7338:  VSUB.F32        S4, S6, S4
4E733C:  VMUL.F32        S8, S0, S0
4E7340:  VSTR            S0, [R4,#0x2C]
4E7344:  VMUL.F32        S6, S2, S2
4E7348:  VSTR            S2, [R4,#0x30]
4E734C:  VMUL.F32        S10, S4, S4
4E7350:  VSTR            S4, [R4,#0x34]
4E7354:  VADD.F32        S6, S8, S6
4E7358:  VADD.F32        S6, S6, S10
4E735C:  VSQRT.F32       S6, S6
4E7360:  VSTR            S6, [R4,#0x48]
4E7364:  LDRSB.W         R0, [R1,#0x71C]
4E7368:  RSB.W           R0, R0, R0,LSL#3
4E736C:  ADD.W           R0, R1, R0,LSL#2
4E7370:  LDR.W           R5, [R0,#0x5A4]
4E7374:  MOV             R0, R1; this
4E7376:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
4E737A:  MOV             R1, R0
4E737C:  MOV             R0, R5
4E737E:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4E7382:  VMOV.F32        S0, #0.5
4E7386:  VLDR            S2, [R0,#8]
4E738A:  VLDR            S4, =0.9
4E738E:  VLDR            S6, =0.8
4E7392:  VMUL.F32        S0, S2, S0
4E7396:  VLDR            S2, =1.1
4E739A:  VMUL.F32        S2, S0, S2
4E739E:  VMUL.F32        S0, S0, S4
4E73A2:  VMAX.F32        D0, D0, D3
4E73A6:  VSTR            S0, [R4,#0x40]
4E73AA:  VSTR            S2, [R4,#0x38]
4E73AE:  POP             {R4,R5,R7,PC}
