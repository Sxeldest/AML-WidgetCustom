; =========================================================
; Game Engine Function: _ZN11CAutomobile14NitrousControlEa
; Address            : 0x5568E0 - 0x556AC0
; =========================================================

5568E0:  PUSH            {R4-R7,LR}
5568E2:  ADD             R7, SP, #0xC
5568E4:  PUSH.W          {R11}
5568E8:  MOV             R4, R0
5568EA:  MOV             R6, R1
5568EC:  LDRB.W          R0, [R4,#0x3A]
5568F0:  CMP             R0, #7
5568F2:  BHI             loc_55695A
5568F4:  LDR.W           R0, [R4,#0x464]; this
5568F8:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
5568FC:  CMP             R0, #1
5568FE:  BNE             loc_55695A
556900:  LDR.W           R0, [R4,#0x464]; this
556904:  BLX             j__ZN10CPlayerPed16GetPadFromPlayerEv; CPlayerPed::GetPadFromPlayer(void)
556908:  MOV             R5, R0
55690A:  CMP             R6, #1
55690C:  BGE             loc_556960
55690E:  CMP.W           R6, #0xFFFFFFFF
556912:  BLE.W           loc_556A1E
556916:  VMOV.F32        S0, #1.0
55691A:  ADDW            R6, R4, #0x8B8
55691E:  VLDR            S2, [R6]
556922:  VCMP.F32        S2, S0
556926:  VMRS            APSR_nzcv, FPSCR
55692A:  BNE             loc_55699E
55692C:  LDRSB.W         R0, [R4,#0x48E]
556930:  CMP             R0, #1
556932:  BLT             loc_55699E
556934:  LDRB.W          R1, [R4,#0x3A]
556938:  AND.W           R1, R1, #0xF8
55693C:  CMP             R1, #0x18
55693E:  BNE.W           loc_556A6E
556942:  MOV             R1, #0xB58637BD
55694A:  STR             R1, [R6]
55694C:  SXTB            R1, R0
55694E:  CMP             R1, #0x64 ; 'd'
556950:  ITT LE
556952:  SUBLE           R0, #1
556954:  STRBLE.W        R0, [R4,#0x48E]
556958:  B               loc_556978
55695A:  MOVS            R5, #0
55695C:  CMP             R6, #1
55695E:  BLT             loc_55690E
556960:  MOV.W           R0, #0x3F800000
556964:  STR.W           R0, [R4,#0x8B8]
556968:  LDR.W           R0, [R4,#0x390]
55696C:  STRB.W          R6, [R4,#0x48E]
556970:  ORR.W           R0, R0, #0x80000
556974:  STR.W           R0, [R4,#0x390]
556978:  LDR.W           R0, [R4,#0x98C]; this
55697C:  CBZ             R0, loc_556988
55697E:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
556982:  MOVS            R0, #0
556984:  STR.W           R0, [R4,#0x98C]
556988:  LDR.W           R0, [R4,#0x990]; this
55698C:  CBZ             R0, loc_556998
55698E:  BLX             j__ZN10FxSystem_c4KillEv; FxSystem_c::Kill(void)
556992:  MOVS            R0, #0
556994:  STR.W           R0, [R4,#0x990]
556998:  POP.W           {R11}
55699C:  POP             {R4-R7,PC}
55699E:  LDR             R0, =(_ZN6CTimer12ms_fTimeStepE_ptr - 0x5569AC)
5569A0:  VCMPE.F32       S2, #0.0
5569A4:  VLDR            S4, =0.001
5569A8:  ADD             R0, PC; _ZN6CTimer12ms_fTimeStepE_ptr
5569AA:  VMRS            APSR_nzcv, FPSCR
5569AE:  LDR             R0, [R0]; CTimer::ms_fTimeStep ...
5569B0:  VLDR            S6, [R0]
5569B4:  VMUL.F32        S4, S6, S4
5569B8:  BGE             loc_556A36
5569BA:  VSUB.F32        S0, S2, S4
5569BE:  VMOV.F32        S2, #-1.0
5569C2:  VSTR            S0, [R6]
5569C6:  VCMPE.F32       S0, S2
5569CA:  VMRS            APSR_nzcv, FPSCR
5569CE:  BGE             loc_5569FA
5569D0:  MOV             R0, #0x358637BD
5569D8:  STR             R0, [R6]
5569DA:  LDRB.W          R0, [R4,#0x48E]
5569DE:  CBNZ            R0, loc_5569FA
5569E0:  LDR.W           R0, [R4,#0x390]
5569E4:  MOVS            R1, #0xF; int
5569E6:  BIC.W           R0, R0, #0x80000
5569EA:  STR.W           R0, [R4,#0x390]
5569EE:  MOV             R0, R4; this
5569F0:  BLX             j__ZN8CVehicle13RemoveUpgradeEi; CVehicle::RemoveUpgrade(int)
5569F4:  MOV.W           R0, #0x3F800000
5569F8:  STR             R0, [R6]
5569FA:  ADD.W           R0, R4, #0x4A0
5569FE:  VLDR            S0, [R0]
556A02:  VCMPE.F32       S0, #0.0
556A06:  VMRS            APSR_nzcv, FPSCR
556A0A:  BLE             loc_556AAE
556A0C:  VMOV.F32        S2, #0.5
556A10:  VABS.F32        S0, S0
556A14:  VMUL.F32        S0, S0, S2
556A18:  VADD.F32        S0, S0, S2
556A1C:  B               loc_556A66
556A1E:  MOV.W           R0, #0x3F800000
556A22:  MOVS            R1, #0
556A24:  STR.W           R0, [R4,#0x8B8]
556A28:  LDR.W           R0, [R4,#0x390]
556A2C:  STRB.W          R1, [R4,#0x48E]
556A30:  BIC.W           R0, R0, #0x80000
556A34:  B               loc_556974
556A36:  ADD.W           R0, R4, #0x4A0
556A3A:  VMOV.F32        S8, #0.25
556A3E:  VLDR            S6, [R0]
556A42:  VSUB.F32        S6, S0, S6
556A46:  VMAX.F32        D3, D3, D4
556A4A:  VMUL.F32        S4, S4, S6
556A4E:  VADD.F32        S2, S2, S4
556A52:  VMOV.F32        S4, #0.5
556A56:  VMIN.F32        D1, D1, D0
556A5A:  VSUB.F32        S0, S0, S2
556A5E:  VSTR            S2, [R6]
556A62:  VMUL.F32        S0, S0, S4
556A66:  VMOV            R1, S0
556A6A:  MOV             R0, R4
556A6C:  B               loc_556AB4
556A6E:  CMP             R5, #0
556A70:  BEQ.W           loc_556978
556A74:  MOV             R0, R5; this
556A76:  BLX             j__ZN4CPad13GetNitroFiredEv; CPad::GetNitroFired(void)
556A7A:  CMP             R0, #0
556A7C:  BEQ.W           loc_556978
556A80:  MOV             R0, R5; this
556A82:  MOVS            R1, #1; bool
556A84:  BLX             j__ZN4CPad11GetLookLeftEb; CPad::GetLookLeft(bool)
556A88:  CMP             R0, #0
556A8A:  BNE.W           loc_556978
556A8E:  MOV             R0, R5; this
556A90:  MOVS            R1, #1; bool
556A92:  BLX             j__ZN4CPad12GetLookRightEb; CPad::GetLookRight(bool)
556A96:  CMP             R0, #0
556A98:  BNE.W           loc_556978
556A9C:  MOV             R0, R5; this
556A9E:  BLX             j__ZN4CPad19GetLookBehindForCarEv; CPad::GetLookBehindForCar(void)
556AA2:  CMP             R0, #0
556AA4:  BNE.W           loc_556978
556AA8:  LDRB.W          R0, [R4,#0x48E]
556AAC:  B               loc_556942
556AAE:  MOV             R0, R4; this
556AB0:  MOV.W           R1, #0x3F000000; float
556AB4:  POP.W           {R11}
556AB8:  POP.W           {R4-R7,LR}
556ABC:  B.W             _ZN11CAutomobile13DoNitroEffectEf; CAutomobile::DoNitroEffect(float)
