; =========================================================
; Game Engine Function: _ZN19CTaskSimpleIKLookAt16UpdateLookAtInfoEPcP4CPedP7CEntityii5RwV3dhfii
; Address            : 0x4F03CC - 0x4F04A2
; =========================================================

4F03CC:  PUSH            {R4-R7,LR}
4F03CE:  ADD             R7, SP, #0xC
4F03D0:  PUSH.W          {R8-R11}
4F03D4:  SUB             SP, SP, #4
4F03D6:  VPUSH           {D8}
4F03DA:  SUB             SP, SP, #0x10
4F03DC:  MOV             R4, R0
4F03DE:  LDR             R0, [R7,#arg_10]
4F03E0:  STR             R0, [SP,#0x38+var_2C]
4F03E2:  MOV             R6, R4
4F03E4:  LDR             R0, [R7,#arg_C]
4F03E6:  MOV             R5, R3
4F03E8:  STR             R0, [SP,#0x38+var_30]
4F03EA:  LDR             R0, [R7,#arg_8]
4F03EC:  STR             R0, [SP,#0x38+var_34]
4F03EE:  LDR.W           R0, [R6,#0x28]!; this
4F03F2:  LDR.W           R8, [R7,#arg_1C]
4F03F6:  CMP             R0, #0
4F03F8:  VLDR            S16, [R7,#arg_18]
4F03FC:  LDR.W           R11, [R7,#arg_14]
4F0400:  LDRD.W          R10, R9, [R7,#arg_0]
4F0404:  ITT NE
4F0406:  MOVNE           R1, R6; CEntity **
4F0408:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4F040C:  MOVS            R2, #0
4F040E:  CMP             R5, #0
4F0410:  STR             R5, [R6]
4F0412:  BEQ             loc_4F0422
4F0414:  MOV             R0, R5; this
4F0416:  MOV             R1, R6; CEntity **
4F0418:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
4F041C:  MOVS            R2, #0
4F041E:  MOVS            R0, #1
4F0420:  B               loc_4F0424
4F0422:  MOVS            R0, #0
4F0424:  STRB.W          R0, [R4,#0x40]
4F0428:  MOV.W           R6, #0x3F800000
4F042C:  STR.W           R9, [R4,#0x2C]
4F0430:  LDR             R1, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x4F043A)
4F0432:  LDR             R0, [SP,#0x38+var_34]
4F0434:  STR             R0, [R4,#0x30]
4F0436:  ADD             R1, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
4F0438:  LDR             R0, [SP,#0x38+var_30]
4F043A:  STR             R0, [R4,#0x34]
4F043C:  LDR             R0, [SP,#0x38+var_2C]
4F043E:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds ...
4F0440:  STR             R0, [R4,#0x38]
4F0442:  STRB.W          R11, [R4,#0x58]
4F0446:  VSTR            S16, [R4,#0x3C]
4F044A:  STR.W           R10, [R4,#8]
4F044E:  STR.W           R8, [R4,#0xC]
4F0452:  LDR             R0, [R4,#0x10]; this
4F0454:  LDR             R1, [R1]; CTimer::m_snTimeInMilliseconds
4F0456:  CMP             R0, #0
4F0458:  ADD.W           R3, R1, R10
4F045C:  ADD             R1, R8
4F045E:  STRD.W          R3, R6, [R4,#0x48]
4F0462:  STRD.W          R1, R2, [R4,#0x50]
4F0466:  BEQ             loc_4F0494
4F0468:  LDR             R1, [R4,#0x28]; CEntity *
4F046A:  BLX             j__ZN9IKChain_c12UpdateEntityEP7CEntity; IKChain_c::UpdateEntity(CEntity *)
4F046E:  ADD.W           R6, R4, #0x2C ; ','
4F0472:  LDR             R0, [R4,#0x10]
4F0474:  LDM             R6, {R1-R3,R6}
4F0476:  STR             R6, [SP,#0x38+var_38]
4F0478:  BLX             j__ZN9IKChain_c12UpdateOffsetEi5RwV3d; IKChain_c::UpdateOffset(int,RwV3d)
4F047C:  LDR             R0, [R4,#0x10]; this
4F047E:  MOVS            R1, #1; unsigned __int8
4F0480:  ADD             SP, SP, #0x10
4F0482:  VPOP            {D8}
4F0486:  ADD             SP, SP, #4
4F0488:  POP.W           {R8-R11}
4F048C:  POP.W           {R4-R7,LR}
4F0490:  B.W             sub_197C00
4F0494:  ADD             SP, SP, #0x10
4F0496:  VPOP            {D8}
4F049A:  ADD             SP, SP, #4
4F049C:  POP.W           {R8-R11}
4F04A0:  POP             {R4-R7,PC}
