; =========================================================
; Game Engine Function: _ZN24CTaskComplexKillCriminal12ChangeTargetEP4CPed
; Address            : 0x53E168 - 0x53E29A
; =========================================================

53E168:  PUSH            {R4-R7,LR}
53E16A:  ADD             R7, SP, #0xC
53E16C:  PUSH.W          {R8,R9,R11}
53E170:  MOV             R8, R0
53E172:  MOV             R5, R1
53E174:  MOV             R6, R8
53E176:  LDR.W           R0, [R6,#0xC]!
53E17A:  CMP             R0, R5
53E17C:  BEQ.W           loc_53E28C
53E180:  CMP             R5, #0
53E182:  BEQ.W           loc_53E290
53E186:  ADDW            R9, R5, #0x544
53E18A:  VLDR            S0, [R9]
53E18E:  VCMPE.F32       S0, #0.0
53E192:  VMRS            APSR_nzcv, FPSCR
53E196:  BLE             loc_53E290
53E198:  CMP             R0, #0
53E19A:  ITT NE
53E19C:  LDRBNE.W        R0, [R0,#0x485]
53E1A0:  MOVSNE.W        R0, R0,LSL#31
53E1A4:  BNE             loc_53E290
53E1A6:  LDR.W           R0, [R8,#8]
53E1AA:  CBZ             R0, loc_53E1D0
53E1AC:  LDR             R1, [R0]
53E1AE:  LDR             R1, [R1,#0x14]
53E1B0:  BLX             R1
53E1B2:  CMP.W           R0, #0x3E8
53E1B6:  BNE             loc_53E1D0
53E1B8:  LDR.W           R0, [R8,#8]
53E1BC:  MOVS            R2, #1
53E1BE:  MOVS            R3, #0
53E1C0:  MOVS            R4, #0
53E1C2:  LDR             R1, [R0]
53E1C4:  LDR.W           R12, [R1,#0x1C]
53E1C8:  MOV             R1, R5
53E1CA:  BLX             R12
53E1CC:  CMP             R0, #1
53E1CE:  BNE             loc_53E292
53E1D0:  LDR.W           R0, [R8,#0x10]
53E1D4:  LDR.W           R1, [R0,#0x7B4]
53E1D8:  CMP             R1, R5
53E1DA:  BNE             loc_53E1EA
53E1DC:  VLDR            S0, [R9]
53E1E0:  VCMPE.F32       S0, #0.0
53E1E4:  VMRS            APSR_nzcv, FPSCR
53E1E8:  BGT             loc_53E242
53E1EA:  LDR.W           R1, [R0,#0x7B8]
53E1EE:  CMP             R1, R5
53E1F0:  BNE             loc_53E200
53E1F2:  VLDR            S0, [R9]
53E1F6:  VCMPE.F32       S0, #0.0
53E1FA:  VMRS            APSR_nzcv, FPSCR
53E1FE:  BGT             loc_53E242
53E200:  LDR.W           R1, [R0,#0x7BC]
53E204:  CMP             R1, R5
53E206:  BNE             loc_53E216
53E208:  VLDR            S0, [R9]
53E20C:  VCMPE.F32       S0, #0.0
53E210:  VMRS            APSR_nzcv, FPSCR
53E214:  BGT             loc_53E242
53E216:  LDR.W           R1, [R0,#0x7C0]
53E21A:  CMP             R1, R5
53E21C:  BNE             loc_53E22C
53E21E:  VLDR            S0, [R9]
53E222:  VCMPE.F32       S0, #0.0
53E226:  VMRS            APSR_nzcv, FPSCR
53E22A:  BGT             loc_53E242
53E22C:  LDR.W           R0, [R0,#0x7C4]
53E230:  CMP             R0, R5
53E232:  BNE             loc_53E290
53E234:  VLDR            S0, [R9]
53E238:  VCMPE.F32       S0, #0.0
53E23C:  VMRS            APSR_nzcv, FPSCR
53E240:  BLE             loc_53E290
53E242:  LDR             R0, [R6]; this
53E244:  CMP             R0, #0
53E246:  ITT NE
53E248:  MOVNE           R1, R6; CEntity **
53E24A:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
53E24E:  MOV             R0, R5; this
53E250:  MOV             R1, R6; CEntity **
53E252:  STR.W           R5, [R8,#0xC]
53E256:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
53E25A:  LDR.W           R0, [R8,#0x10]
53E25E:  LDR.W           R0, [R0,#0x7B0]
53E262:  CMP             R0, #0
53E264:  ITT NE
53E266:  LDRBNE.W        R1, [R0,#0x485]
53E26A:  MOVSNE.W        R1, R1,LSL#31
53E26E:  BEQ             loc_53E286
53E270:  LDR.W           R0, [R0,#0x440]; this
53E274:  MOVW            R1, #0x451; int
53E278:  BLX             j__ZNK16CPedIntelligence14FindTaskByTypeEi; CPedIntelligence::FindTaskByType(int)
53E27C:  CMP             R0, #0
53E27E:  ITT NE
53E280:  MOVNE           R1, R5; CPed *
53E282:  BLXNE           j__ZN24CTaskComplexKillCriminal12ChangeTargetEP4CPed; CTaskComplexKillCriminal::ChangeTarget(CPed *)
53E286:  MOVS            R0, #0
53E288:  STRB.W          R0, [R8,#0x19]
53E28C:  MOVS            R4, #1
53E28E:  B               loc_53E292
53E290:  MOVS            R4, #0
53E292:  MOV             R0, R4
53E294:  POP.W           {R8,R9,R11}
53E298:  POP             {R4-R7,PC}
