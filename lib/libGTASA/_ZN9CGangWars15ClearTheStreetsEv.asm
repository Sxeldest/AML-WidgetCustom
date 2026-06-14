; =========================================================
; Game Engine Function: _ZN9CGangWars15ClearTheStreetsEv
; Address            : 0x30AB28 - 0x30ABA6
; =========================================================

30AB28:  PUSH            {R4-R7,LR}
30AB2A:  ADD             R7, SP, #0xC
30AB2C:  PUSH.W          {R8-R10}
30AB30:  LDR             R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x30AB36)
30AB32:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
30AB34:  LDR             R0, [R0]; CPools::ms_pPedPool ...
30AB36:  LDR.W           R9, [R0]; CPools::ms_pPedPool
30AB3A:  LDR.W           R0, [R9,#8]
30AB3E:  CBZ             R0, loc_30ABA0
30AB40:  MOVW            R1, #0x7CC
30AB44:  SUBS            R6, R0, #1
30AB46:  MULS            R1, R0
30AB48:  MOV.W           R8, #7
30AB4C:  SUB.W           R5, R1, #0x38C
30AB50:  LDR.W           R0, [R9,#4]
30AB54:  LDRSB           R0, [R0,R6]
30AB56:  CMP             R0, #0
30AB58:  BLT             loc_30AB96
30AB5A:  LDR.W           R10, [R9]
30AB5E:  ADD.W           R4, R10, R5
30AB62:  CMP.W           R4, #0x440
30AB66:  BEQ             loc_30AB96
30AB68:  SUB.W           R0, R4, #0x440; this
30AB6C:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
30AB70:  CMP             R0, #1
30AB72:  BEQ             loc_30AB96
30AB74:  LDR.W           R0, [R4,#0x15C]
30AB78:  BIC.W           R0, R0, #1
30AB7C:  CMP             R0, #4
30AB7E:  BNE             loc_30AB96
30AB80:  LDR.W           R0, [R10,R5]
30AB84:  MOV.W           R1, #0x390; int
30AB88:  ADDS            R0, #4; this
30AB8A:  BLX             j__ZNK12CTaskManager20FindActiveTaskByTypeEi; CTaskManager::FindActiveTaskByType(int)
30AB8E:  CMP             R0, #0
30AB90:  IT NE
30AB92:  STRNE.W         R8, [R0,#0xC]
30AB96:  SUBS            R6, #1
30AB98:  SUBW            R5, R5, #0x7CC
30AB9C:  ADDS            R0, R6, #1
30AB9E:  BNE             loc_30AB50
30ABA0:  POP.W           {R8-R10}
30ABA4:  POP             {R4-R7,PC}
