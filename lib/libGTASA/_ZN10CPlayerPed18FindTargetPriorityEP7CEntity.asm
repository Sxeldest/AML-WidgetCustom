; =========================================================
; Game Engine Function: _ZN10CPlayerPed18FindTargetPriorityEP7CEntity
; Address            : 0x4C7BD8 - 0x4C7CBA
; =========================================================

4C7BD8:  PUSH            {R4-R7,LR}
4C7BDA:  ADD             R7, SP, #0xC
4C7BDC:  PUSH.W          {R11}
4C7BE0:  VPUSH           {D8}
4C7BE4:  MOV             R4, R1
4C7BE6:  LDRB.W          R1, [R4,#0x3A]
4C7BEA:  AND.W           R1, R1, #7
4C7BEE:  CMP             R1, #2
4C7BF0:  BEQ             loc_4C7C42
4C7BF2:  VLDR            S0, =0.1
4C7BF6:  CMP             R1, #4
4C7BF8:  BEQ             loc_4C7C48
4C7BFA:  CMP             R1, #3
4C7BFC:  BNE             loc_4C7CAC
4C7BFE:  VMOV.F32        S0, #0.25
4C7C02:  LDRB.W          R1, [R4,#0x448]
4C7C06:  VLDR            S16, =0.1
4C7C0A:  ADDW            R6, R4, #0x484
4C7C0E:  CMP             R1, #2
4C7C10:  LDRB.W          R2, [R4,#0x485]; CPed *
4C7C14:  IT EQ
4C7C16:  VMOVEQ.F32      S16, S0
4C7C1A:  LDR.W           R1, [R4,#0x59C]
4C7C1E:  VLDR            S0, =0.06
4C7C22:  CMP             R1, #8
4C7C24:  IT EQ
4C7C26:  VMOVEQ.F32      S16, S0
4C7C2A:  LSLS            R1, R2, #0x1F
4C7C2C:  BEQ             loc_4C7C5E
4C7C2E:  LDR.W           R1, [R4,#0x590]
4C7C32:  CBZ             R1, loc_4C7C5A
4C7C34:  LDR.W           R1, [R1,#0x5A4]
4C7C38:  CMP             R1, #6
4C7C3A:  BNE             loc_4C7C5A
4C7C3C:  VLDR            S16, =0.01
4C7C40:  B               loc_4C7C5E
4C7C42:  VLDR            S0, =0.03
4C7C46:  B               loc_4C7CAC
4C7C48:  LDRB.W          R0, [R4,#0x140]
4C7C4C:  ORR.W           R0, R0, #4; this
4C7C50:  CMP             R0, #6
4C7C52:  IT NE
4C7C54:  VLDRNE          S0, =0.03
4C7C58:  B               loc_4C7CAC
4C7C5A:  VLDR            S16, =0.03
4C7C5E:  MOV             R1, R4; CPed *
4C7C60:  BLX             j__ZN10CPedGroups14AreInSameGroupEPK4CPedS2_; CPedGroups::AreInSameGroup(CPed const*,CPed const*)
4C7C64:  MOV             R5, R0
4C7C66:  LDR.W           R0, [R4,#0x440]
4C7C6A:  MOV.W           R1, #0x3E8; int
4C7C6E:  ADDS            R0, #4; this
4C7C70:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4C7C74:  CBZ             R0, loc_4C7C7C
4C7C76:  VLDR            S16, =0.8
4C7C7A:  B               loc_4C7C9E
4C7C7C:  VLDR            S0, =0.0
4C7C80:  CMP             R5, #0
4C7C82:  MOVW            R1, #0x44D; int
4C7C86:  IT NE
4C7C88:  VMOVNE.F32      S16, S0
4C7C8C:  LDR.W           R0, [R4,#0x440]
4C7C90:  ADDS            R0, #4; this
4C7C92:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
4C7C96:  CMP             R0, #0
4C7C98:  IT NE
4C7C9A:  VLDRNE          S16, =0.8
4C7C9E:  LDRB            R0, [R6,#7]
4C7CA0:  VMOV.F32        S0, #1.0
4C7CA4:  LSLS            R0, R0, #0x1A
4C7CA6:  IT PL
4C7CA8:  VMOVPL.F32      S0, S16
4C7CAC:  VMOV            R0, S0
4C7CB0:  VPOP            {D8}
4C7CB4:  POP.W           {R11}
4C7CB8:  POP             {R4-R7,PC}
