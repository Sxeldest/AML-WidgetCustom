; =========================================================
; Game Engine Function: _ZNK13CEventDeadPed10AffectsPedEP4CPed
; Address            : 0x373BA4 - 0x373CA0
; =========================================================

373BA4:  PUSH            {R4,R5,R7,LR}
373BA6:  ADD             R7, SP, #8
373BA8:  MOV             R5, R0
373BAA:  MOV             R4, R1
373BAC:  LDR             R1, [R5,#0x10]
373BAE:  MOVS            R0, #0
373BB0:  CMP             R1, #0
373BB2:  IT NE
373BB4:  CMPNE           R1, R4
373BB6:  BEQ             locret_373C9E
373BB8:  MOV             R0, R4; this
373BBA:  BLX             j__ZNK4CPed7IsAliveEv; CPed::IsAlive(void)
373BBE:  CMP             R0, #1
373BC0:  ITT NE
373BC2:  MOVNE           R0, #0
373BC4:  POPNE           {R4,R5,R7,PC}
373BC6:  LDR             R0, =(g_ikChainMan_ptr - 0x373BCE)
373BC8:  MOV             R1, R4; CPed *
373BCA:  ADD             R0, PC; g_ikChainMan_ptr
373BCC:  LDR             R0, [R0]; g_ikChainMan ; this
373BCE:  BLX             j__ZN16IKChainManager_c9IsLookingEP4CPed; IKChainManager_c::IsLooking(CPed *)
373BD2:  CBZ             R0, loc_373BEA
373BD4:  LDR             R0, =(g_ikChainMan_ptr - 0x373BDC)
373BD6:  MOV             R1, R4; CPed *
373BD8:  ADD             R0, PC; g_ikChainMan_ptr
373BDA:  LDR             R0, [R0]; g_ikChainMan ; this
373BDC:  BLX             j__ZN16IKChainManager_c15GetLookAtEntityEP4CPed; IKChainManager_c::GetLookAtEntity(CPed *)
373BE0:  LDR             R1, [R5,#0x10]
373BE2:  CMP             R0, R1
373BE4:  BNE             loc_373BEC
373BE6:  MOVS            R0, #0
373BE8:  POP             {R4,R5,R7,PC}
373BEA:  LDR             R1, [R5,#0x10]
373BEC:  LDRB.W          R0, [R1,#0x45]
373BF0:  LSLS            R0, R0, #0x1F
373BF2:  ITT NE
373BF4:  MOVNE           R0, #0
373BF6:  POPNE           {R4,R5,R7,PC}
373BF8:  LDR             R2, [R4,#0x14]
373BFA:  LDR             R0, [R1,#0x14]
373BFC:  ADD.W           R3, R2, #0x30 ; '0'
373C00:  CMP             R2, #0
373C02:  IT EQ
373C04:  ADDEQ           R3, R4, #4
373C06:  ADD.W           R5, R0, #0x30 ; '0'
373C0A:  CMP             R0, #0
373C0C:  VLDR            S0, [R3]
373C10:  VLDR            S2, [R3,#4]
373C14:  VLDR            S6, [R3,#8]
373C18:  IT EQ
373C1A:  ADDEQ           R5, R1, #4
373C1C:  VLDR            S4, [R5,#4]
373C20:  VLDR            S8, [R5]
373C24:  VSUB.F32        S4, S4, S2
373C28:  VLDR            S10, [R5,#8]
373C2C:  VSUB.F32        S2, S8, S0
373C30:  LDRB.W          R0, [R1,#0x48D]
373C34:  VSUB.F32        S6, S10, S6
373C38:  LSLS            R0, R0, #0x1F
373C3A:  VMUL.F32        S0, S4, S4
373C3E:  VMUL.F32        S8, S2, S2
373C42:  VMUL.F32        S10, S6, S6
373C46:  VADD.F32        S0, S8, S0
373C4A:  VADD.F32        S0, S0, S10
373C4E:  BEQ             loc_373C8C
373C50:  VLDR            S8, =64.0
373C54:  MOVS            R0, #0
373C56:  VCMPE.F32       S0, S8
373C5A:  VMRS            APSR_nzcv, FPSCR
373C5E:  BGT             locret_373C9E
373C60:  VLDR            S8, [R2,#0x10]
373C64:  VLDR            S10, [R2,#0x14]
373C68:  VMUL.F32        S2, S2, S8
373C6C:  VLDR            S12, [R2,#0x18]
373C70:  VMUL.F32        S4, S4, S10
373C74:  VMUL.F32        S6, S6, S12
373C78:  VADD.F32        S2, S2, S4
373C7C:  VADD.F32        S2, S2, S6
373C80:  VCMPE.F32       S2, #0.0
373C84:  VMRS            APSR_nzcv, FPSCR
373C88:  IT LT
373C8A:  POPLT           {R4,R5,R7,PC}
373C8C:  VLDR            S2, =400.0
373C90:  MOVS            R0, #0
373C92:  VCMPE.F32       S0, S2
373C96:  VMRS            APSR_nzcv, FPSCR
373C9A:  IT LT
373C9C:  MOVLT           R0, #1
373C9E:  POP             {R4,R5,R7,PC}
