; =========================================================
; Game Engine Function: _ZN28CPedDamageResponseCalculator24AccountForPedDamageStatsEP4CPedR18CPedDamageResponse
; Address            : 0x371DF4 - 0x371EDC
; =========================================================

371DF4:  PUSH            {R4,R5,R7,LR}
371DF6:  ADD             R7, SP, #8
371DF8:  VPUSH           {D8-D9}
371DFC:  MOV             R4, R0
371DFE:  LDR             R0, =(_ZN28CPedDamageResponseCalculator21ms_fStealthKillDamageE_ptr - 0x371E0A)
371E00:  MOV             R5, R1
371E02:  VLDR            S16, [R4,#4]
371E06:  ADD             R0, PC; _ZN28CPedDamageResponseCalculator21ms_fStealthKillDamageE_ptr
371E08:  LDR             R0, [R0]; CPedDamageResponseCalculator::ms_fStealthKillDamage ...
371E0A:  VLDR            S18, [R0]
371E0E:  MOV             R0, R5; this
371E10:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
371E14:  CMP             R0, #0
371E16:  ITTE EQ
371E18:  LDREQ.W         R0, [R5,#0x5A0]
371E1C:  VLDREQ          S0, [R0,#0x2C]
371E20:  VLDRNE          S0, =0.33
371E24:  VLDR            S2, [R4,#4]
371E28:  LDR             R0, [R4]; this
371E2A:  VMUL.F32        S0, S0, S2
371E2E:  CMP             R0, #0
371E30:  VSTR            S0, [R4,#4]
371E34:  BEQ             loc_371E6C
371E36:  LDRB.W          R1, [R0,#0x3A]
371E3A:  AND.W           R1, R1, #7
371E3E:  CMP             R1, #3
371E40:  BNE             loc_371E6C
371E42:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
371E46:  CMP             R0, #1
371E48:  BNE             loc_371E6C
371E4A:  LDR             R1, [R4]; CPed *
371E4C:  MOV             R0, R5; this
371E4E:  BLX             j__ZN10CPedGroups14AreInSameGroupEPK4CPedS2_; CPedGroups::AreInSameGroup(CPed const*,CPed const*)
371E52:  CMP             R0, #1
371E54:  BNE             loc_371ED6
371E56:  LDR             R0, [R4,#0xC]
371E58:  CMP             R0, #0x25 ; '%'
371E5A:  IT NE
371E5C:  CMPNE           R0, #0x33 ; '3'
371E5E:  BEQ             loc_371ED6
371E60:  VCMP.F32        S16, S18
371E64:  VMRS            APSR_nzcv, FPSCR
371E68:  BEQ             loc_371ED6
371E6A:  B               loc_371EBE
371E6C:  CBZ             R5, loc_371E92
371E6E:  MOV             R0, R5; this
371E70:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
371E74:  CMP             R0, #1
371E76:  BNE             loc_371E92
371E78:  LDR             R1, [R4]; CPed *
371E7A:  CBZ             R1, loc_371ED6
371E7C:  LDRB.W          R0, [R1,#0x3A]
371E80:  AND.W           R0, R0, #7
371E84:  CMP             R0, #3
371E86:  BNE             loc_371E92
371E88:  MOV             R0, R5; this
371E8A:  BLX             j__ZN16CPedIntelligence10AreFriendsERK4CPedS2_; CPedIntelligence::AreFriends(CPed const&,CPed const&)
371E8E:  CMP             R0, #1
371E90:  BEQ             loc_371EBE
371E92:  LDR             R1, [R4]; CPed *
371E94:  CBZ             R1, loc_371ED6
371E96:  LDRB.W          R0, [R1,#0x3A]
371E9A:  AND.W           R0, R0, #7
371E9E:  CMP             R0, #3
371EA0:  ITT EQ
371EA2:  LDRBEQ.W        R0, [R5,#0x448]
371EA6:  CMPEQ           R0, #2
371EA8:  BNE             loc_371ED6
371EAA:  MOV             R0, R5; this
371EAC:  BLX             j__ZN10CPedGroups14AreInSameGroupEPK4CPedS2_; CPedGroups::AreInSameGroup(CPed const*,CPed const*)
371EB0:  CMP             R0, #1
371EB2:  BNE             loc_371ED6
371EB4:  LDR             R0, [R4,#0xC]
371EB6:  CMP             R0, #0x25 ; '%'
371EB8:  IT NE
371EBA:  CMPNE           R0, #0x33 ; '3'
371EBC:  BEQ             loc_371ED6
371EBE:  VLDR            S0, =0.1
371EC2:  VMOV.F32        S4, #12.5
371EC6:  VLDR            S2, [R4,#4]
371ECA:  VMUL.F32        S0, S2, S0
371ECE:  VMIN.F32        D0, D0, D2
371ED2:  VSTR            S0, [R4,#4]
371ED6:  VPOP            {D8-D9}
371EDA:  POP             {R4,R5,R7,PC}
