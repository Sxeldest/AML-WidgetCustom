; =========================================================
; Game Engine Function: _ZN18CVisibilityPlugins26InsertAtomicIntoSortedListEP8RpAtomicf
; Address            : 0x5D5434 - 0x5D54BE
; =========================================================

5D5434:  LDR             R2, =(_ZN18CVisibilityPlugins11m_alphaListE_ptr - 0x5D543E)
5D5436:  VMOV            S0, R1
5D543A:  ADD             R2, PC; _ZN18CVisibilityPlugins11m_alphaListE_ptr
5D543C:  LDR             R2, [R2]; CVisibilityPlugins::m_alphaList ...
5D543E:  LDR             R1, [R2,#(dword_A83F84 - 0xA83F74)]
5D5440:  ADDS            R2, #0x14
5D5442:  CMP             R1, R2
5D5444:  BEQ             loc_5D5468
5D5446:  LDR             R2, =(_ZN18CVisibilityPlugins11m_alphaListE_ptr - 0x5D544C)
5D5448:  ADD             R2, PC; _ZN18CVisibilityPlugins11m_alphaListE_ptr
5D544A:  LDR             R3, [R2]; CVisibilityPlugins::m_alphaList ...
5D544C:  VLDR            S2, [R1,#8]
5D5450:  VCMPE.F32       S2, S0
5D5454:  VMRS            APSR_nzcv, FPSCR
5D5458:  BGE             loc_5D5466
5D545A:  LDR             R1, [R1,#0x10]
5D545C:  ADD.W           R2, R3, #0x14
5D5460:  CMP             R1, R2
5D5462:  BNE             loc_5D544C
5D5464:  B               loc_5D5468
5D5466:  MOV             R2, R1
5D5468:  LDR             R1, =(_ZN18CVisibilityPlugins11m_alphaListE_ptr - 0x5D546E)
5D546A:  ADD             R1, PC; _ZN18CVisibilityPlugins11m_alphaListE_ptr
5D546C:  LDR             R1, [R1]; CVisibilityPlugins::m_alphaList ...
5D546E:  ADD.W           R3, R1, #0x3C ; '<'
5D5472:  LDR             R1, [R1,#(dword_A83FAC - 0xA83F74)]
5D5474:  CMP             R1, R3
5D5476:  ITTT EQ
5D5478:  MOVEQ           R1, #0
5D547A:  MOVEQ           R0, R1
5D547C:  BXEQ            LR
5D547E:  PUSH            {R4,R6,R7,LR}
5D5480:  ADD             R7, SP, #0x10+var_8
5D5482:  LDR.W           R12, =(_ZN18CVisibilityPlugins12RenderAtomicEPvf_ptr - 0x5D5490)
5D5486:  CMP             R1, #0
5D5488:  LDRD.W          LR, R4, [R1,#0xC]
5D548C:  ADD             R12, PC; _ZN18CVisibilityPlugins12RenderAtomicEPvf_ptr
5D548E:  VSTR            S0, [R1,#8]
5D5492:  LDR.W           R3, [R12]; CVisibilityPlugins::RenderAtomic(void *,float)
5D5496:  STRD.W          R0, R3, [R1]
5D549A:  STR.W           LR, [R4,#0xC]
5D549E:  LDRD.W          R0, R3, [R1,#0xC]
5D54A2:  STR             R3, [R0,#0x10]
5D54A4:  LDR             R0, [R2,#0xC]
5D54A6:  LDR             R2, [R0,#0x10]
5D54A8:  STR             R2, [R1,#0x10]
5D54AA:  LDR             R2, [R0,#0x10]
5D54AC:  STR             R1, [R2,#0xC]
5D54AE:  STR             R0, [R1,#0xC]
5D54B0:  STR             R1, [R0,#0x10]
5D54B2:  IT NE
5D54B4:  MOVNE           R1, #1
5D54B6:  POP.W           {R4,R6,R7,LR}
5D54BA:  MOV             R0, R1
5D54BC:  BX              LR
