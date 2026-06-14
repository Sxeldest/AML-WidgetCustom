; =========================================================
; Game Engine Function: _ZN7CObject26DeleteAllTempObjectsInAreaE7CVectorf
; Address            : 0x455C74 - 0x455D2E
; =========================================================

455C74:  PUSH            {R4-R7,LR}
455C76:  ADD             R7, SP, #0xC
455C78:  PUSH.W          {R8-R10}
455C7C:  VPUSH           {D8-D11}
455C80:  LDR             R6, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x455C86)
455C82:  ADD             R6, PC; _ZN6CPools14ms_pObjectPoolE_ptr
455C84:  LDR             R6, [R6]; CPools::ms_pObjectPool ...
455C86:  LDR.W           R9, [R6]; CPools::ms_pObjectPool
455C8A:  LDR.W           R8, [R9,#8]
455C8E:  CMP.W           R8, #1
455C92:  BLT             loc_455D24
455C94:  VMOV            S0, R3
455C98:  MOVS            R6, #0
455C9A:  VMOV            S18, R0
455C9E:  MOVS            R5, #0
455CA0:  VMUL.F32        S16, S0, S0
455CA4:  VMOV            S20, R1
455CA8:  VMOV            S22, R2
455CAC:  LDR.W           R0, [R9,#4]
455CB0:  LDRSB           R0, [R0,R5]
455CB2:  CMP             R0, #0
455CB4:  BLT             loc_455D1A
455CB6:  LDR.W           R10, [R9]
455CBA:  ADDS.W          R4, R10, R6
455CBE:  BEQ             loc_455D1A
455CC0:  LDRB.W          R0, [R4,#0x140]
455CC4:  CMP             R0, #3
455CC6:  BNE             loc_455D1A
455CC8:  LDR             R0, [R4,#0x14]
455CCA:  ADD.W           R1, R0, #0x30 ; '0'
455CCE:  CMP             R0, #0
455CD0:  IT EQ
455CD2:  ADDEQ           R1, R4, #4; CEntity *
455CD4:  VLDR            S0, [R1]
455CD8:  VLDR            S2, [R1,#4]
455CDC:  VSUB.F32        S0, S18, S0
455CE0:  VLDR            S4, [R1,#8]
455CE4:  VSUB.F32        S2, S20, S2
455CE8:  VSUB.F32        S4, S22, S4
455CEC:  VMUL.F32        S0, S0, S0
455CF0:  VMUL.F32        S2, S2, S2
455CF4:  VMUL.F32        S4, S4, S4
455CF8:  VADD.F32        S0, S0, S2
455CFC:  VADD.F32        S0, S0, S4
455D00:  VCMPE.F32       S0, S16
455D04:  VMRS            APSR_nzcv, FPSCR
455D08:  BGE             loc_455D1A
455D0A:  MOV             R0, R4; this
455D0C:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
455D10:  LDR.W           R0, [R10,R6]
455D14:  LDR             R1, [R0,#4]
455D16:  MOV             R0, R4
455D18:  BLX             R1
455D1A:  ADDS            R5, #1
455D1C:  ADD.W           R6, R6, #0x1A4
455D20:  CMP             R8, R5
455D22:  BNE             loc_455CAC
455D24:  VPOP            {D8-D11}
455D28:  POP.W           {R8-R10}
455D2C:  POP             {R4-R7,PC}
