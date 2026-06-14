; =========================================================
; Game Engine Function: _ZNK33CEventAcquaintancePedHateBadlyLit10AffectsPedEP4CPed
; Address            : 0x3751F8 - 0x3752B8
; =========================================================

3751F8:  PUSH            {R4-R7,LR}
3751FA:  ADD             R7, SP, #0xC
3751FC:  PUSH.W          {R11}
375200:  MOV             R4, R0
375202:  MOV             R5, R1
375204:  LDR             R0, [R4,#0x10]
375206:  CBZ             R0, loc_37522C
375208:  LDR.W           R0, [R5,#0x738]
37520C:  CBNZ            R0, loc_37522C
37520E:  MOV             R0, R5; this
375210:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
375214:  CMP             R0, #1
375216:  BNE             loc_37522C
375218:  LDR             R0, [R4,#0x10]; this
37521A:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
37521E:  CMP             R0, #1
375220:  BNE             loc_37522C
375222:  LDR             R1, [R4,#0x10]; CPed *
375224:  MOV             R0, R5; this
375226:  BLX             j__ZN10CPedGroups14AreInSameGroupEPK4CPedS2_; CPedGroups::AreInSameGroup(CPed const*,CPed const*)
37522A:  CBZ             R0, loc_375234
37522C:  MOVS            R0, #0
37522E:  POP.W           {R11}
375232:  POP             {R4-R7,PC}
375234:  LDR.W           R0, [R5,#0x440]
375238:  ADDS            R0, #0x38 ; '8'; this
37523A:  BLX             j__ZNK20CEventHandlerHistory15GetCurrentEventEv; CEventHandlerHistory::GetCurrentEvent(void)
37523E:  MOV             R5, R0
375240:  CBZ             R5, loc_375264
375242:  LDR             R0, [R5]
375244:  LDR             R1, [R0,#8]
375246:  MOV             R0, R5
375248:  BLX             R1
37524A:  CMP             R0, #0x3F ; '?'
37524C:  BNE             loc_375264
37524E:  LDR             R0, [R5]
375250:  LDR             R1, [R0,#0x2C]
375252:  MOV             R0, R5
375254:  BLX             R1
375256:  MOV             R6, R0
375258:  LDR             R0, [R4]
37525A:  LDR             R1, [R0,#0x2C]
37525C:  MOV             R0, R4
37525E:  BLX             R1
375260:  CMP             R6, R0
375262:  BEQ             loc_37526C
375264:  MOVS            R0, #1
375266:  POP.W           {R11}
37526A:  POP             {R4-R7,PC}
37526C:  LDR             R0, [R5,#0x14]
37526E:  LDR             R1, [R4,#0x14]
375270:  SUBS            R1, R1, R0
375272:  MOVS            R0, #0
375274:  CMP.W           R1, #0x7D0
375278:  BLT             loc_375266
37527A:  VLDR            S0, [R5,#0x18]
37527E:  VLDR            S2, [R4,#0x18]
375282:  VLDR            D16, [R5,#0x1C]
375286:  VSUB.F32        S0, S2, S0
37528A:  VLDR            D17, [R4,#0x1C]
37528E:  VSUB.F32        D16, D17, D16
375292:  VMUL.F32        D1, D16, D16
375296:  VMUL.F32        S0, S0, S0
37529A:  VADD.F32        S0, S0, S2
37529E:  VADD.F32        S0, S0, S3
3752A2:  VMOV.F32        S2, #1.0
3752A6:  VCMPE.F32       S0, S2
3752AA:  VMRS            APSR_nzcv, FPSCR
3752AE:  IT GE
3752B0:  MOVGE           R0, #1
3752B2:  POP.W           {R11}
3752B6:  POP             {R4-R7,PC}
