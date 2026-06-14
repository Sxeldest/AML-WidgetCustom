; =========================================================
; Game Engine Function: _ZN10CPlayerPed23GetWeaponRadiusOnScreenEv
; Address            : 0x4C6978 - 0x4C6A08
; =========================================================

4C6978:  PUSH            {R4,R5,R7,LR}
4C697A:  ADD             R7, SP, #8
4C697C:  MOV             R4, R0
4C697E:  LDRSB.W         R0, [R4,#0x71C]
4C6982:  RSB.W           R0, R0, R0,LSL#3
4C6986:  ADD.W           R0, R4, R0,LSL#2
4C698A:  LDR.W           R5, [R0,#0x5A4]
4C698E:  MOV             R0, R4; this
4C6990:  BLX             j__ZN4CPed14GetWeaponSkillEv; CPed::GetWeaponSkill(void)
4C6994:  MOV             R1, R0
4C6996:  MOV             R0, R5
4C6998:  BLX             j__ZN11CWeaponInfo13GetWeaponInfoE11eWeaponTypea; CWeaponInfo::GetWeaponInfo(eWeaponType,signed char)
4C699C:  LDR             R1, [R0]
4C699E:  CBZ             R1, loc_4C69FE
4C69A0:  VMOV.F32        S2, #0.5
4C69A4:  VLDR            S0, [R0,#0x38]
4C69A8:  SUB.W           R1, R5, #0x19
4C69AC:  CMP             R1, #3
4C69AE:  VDIV.F32        S0, S2, S0
4C69B2:  BCC             loc_4C69F0
4C69B4:  VMOV.F32        S4, #15.0
4C69B8:  VLDR            S6, [R0,#8]
4C69BC:  LDR.W           R0, [R4,#0x444]
4C69C0:  VMOV.F32        S8, #1.0
4C69C4:  VDIV.F32        S4, S4, S6
4C69C8:  VLDR            S6, [R0,#0x2C]
4C69CC:  VMIN.F32        D2, D2, D4
4C69D0:  LDRB.W          R0, [R4,#0x487]
4C69D4:  VMUL.F32        S6, S6, S2
4C69D8:  LSLS            R0, R0, #0x1D
4C69DA:  VMUL.F32        S0, S0, S4
4C69DE:  VADD.F32        S6, S6, S8
4C69E2:  VMUL.F32        S4, S0, S6
4C69E6:  VMUL.F32        S0, S4, S2
4C69EA:  IT PL
4C69EC:  VMOVPL.F32      S0, S4
4C69F0:  VLDR            S2, =0.2
4C69F4:  VMAX.F32        D0, D0, D1
4C69F8:  VMOV            R0, S0
4C69FC:  POP             {R4,R5,R7,PC}
4C69FE:  VLDR            S0, =0.0
4C6A02:  VMOV            R0, S0
4C6A06:  POP             {R4,R5,R7,PC}
