; =========================================================
; Game Engine Function: _Z13PhonePickUpCBP21CAnimBlendAssociationPv
; Address            : 0x31C474 - 0x31C5C0
; =========================================================

31C474:  PUSH            {R4-R7,LR}
31C476:  ADD             R7, SP, #0xC
31C478:  PUSH.W          {R8}
31C47C:  SUB             SP, SP, #8
31C47E:  MOV             R5, R1
31C480:  MOV             R8, R0
31C482:  LDR             R1, [R5,#0xC]; char *
31C484:  CBZ             R1, loc_31C49E
31C486:  LDR             R0, =(byte_61CD7E - 0x31C494)
31C488:  MOVS            R2, #1
31C48A:  STR             R2, [SP,#0x18+var_18]; unsigned __int16
31C48C:  MOVW            R2, #(elf_hash_bucket+0xABC); unsigned __int16 *
31C490:  ADD             R0, PC; byte_61CD7E ; this
31C492:  MOVS            R3, #0; unsigned int
31C494:  MOVW            R6, #0xBB8
31C498:  BLX             j__ZN9CMessages10AddMessageEPKcPtjtb; CMessages::AddMessage(char const*,ushort *,uint,ushort,bool)
31C49C:  B               loc_31C4A0
31C49E:  MOVS            R6, #0
31C4A0:  LDR             R1, [R5,#0x10]; char *
31C4A2:  CBZ             R1, loc_31C4BA
31C4A4:  LDR             R0, =(byte_61CD7E - 0x31C4B2)
31C4A6:  MOVS            R2, #1
31C4A8:  STR             R2, [SP,#0x18+var_18]; unsigned __int16
31C4AA:  MOVW            R2, #(elf_hash_bucket+0xABC); unsigned __int16 *
31C4AE:  ADD             R0, PC; byte_61CD7E ; this
31C4B0:  MOVS            R3, #0; unsigned int
31C4B2:  BLX             j__ZN9CMessages10AddMessageEPKcPtjtb; CMessages::AddMessage(char const*,ushort *,uint,ushort,bool)
31C4B6:  ADDW            R6, R6, #0xBB8
31C4BA:  LDR             R1, [R5,#0x14]; char *
31C4BC:  CBZ             R1, loc_31C4D8
31C4BE:  LDR             R0, =(byte_61CD7E - 0x31C4CC)
31C4C0:  MOVS            R2, #1
31C4C2:  STR             R2, [SP,#0x18+var_18]; unsigned __int16
31C4C4:  MOVW            R2, #(elf_hash_bucket+0xABC); unsigned __int16 *
31C4C8:  ADD             R0, PC; byte_61CD7E ; this
31C4CA:  MOVS            R3, #0; unsigned int
31C4CC:  MOVW            R4, #0xBB8
31C4D0:  BLX             j__ZN9CMessages10AddMessageEPKcPtjtb; CMessages::AddMessage(char const*,ushort *,uint,ushort,bool)
31C4D4:  UXTAH.W         R6, R4, R6
31C4D8:  LDR             R1, [R5,#0x18]; char *
31C4DA:  CBZ             R1, loc_31C4F6
31C4DC:  LDR             R0, =(byte_61CD7E - 0x31C4EA)
31C4DE:  MOVS            R2, #1
31C4E0:  STR             R2, [SP,#0x18+var_18]; unsigned __int16
31C4E2:  MOVW            R2, #(elf_hash_bucket+0xABC); unsigned __int16 *
31C4E6:  ADD             R0, PC; byte_61CD7E ; this
31C4E8:  MOVS            R3, #0; unsigned int
31C4EA:  MOVW            R4, #0xBB8
31C4EE:  BLX             j__ZN9CMessages10AddMessageEPKcPtjtb; CMessages::AddMessage(char const*,ushort *,uint,ushort,bool)
31C4F2:  UXTAH.W         R6, R4, R6
31C4F6:  LDR             R1, [R5,#0x1C]; char *
31C4F8:  CBZ             R1, loc_31C514
31C4FA:  LDR             R0, =(byte_61CD7E - 0x31C508)
31C4FC:  MOVS            R2, #1
31C4FE:  STR             R2, [SP,#0x18+var_18]; unsigned __int16
31C500:  MOVW            R2, #(elf_hash_bucket+0xABC); unsigned __int16 *
31C504:  ADD             R0, PC; byte_61CD7E ; this
31C506:  MOVS            R3, #0; unsigned int
31C508:  MOVW            R4, #0xBB8
31C50C:  BLX             j__ZN9CMessages10AddMessageEPKcPtjtb; CMessages::AddMessage(char const*,ushort *,uint,ushort,bool)
31C510:  UXTAH.W         R6, R4, R6
31C514:  LDR             R1, [R5,#0x20]; char *
31C516:  CBZ             R1, loc_31C532
31C518:  LDR             R0, =(byte_61CD7E - 0x31C526)
31C51A:  MOVS            R2, #1
31C51C:  STR             R2, [SP,#0x18+var_18]; unsigned __int16
31C51E:  MOVW            R2, #(elf_hash_bucket+0xABC); unsigned __int16 *
31C522:  ADD             R0, PC; byte_61CD7E ; this
31C524:  MOVS            R3, #0; unsigned int
31C526:  MOVW            R4, #0xBB8
31C52A:  BLX             j__ZN9CMessages10AddMessageEPKcPtjtb; CMessages::AddMessage(char const*,ushort *,uint,ushort,bool)
31C52E:  UXTAH.W         R6, R4, R6
31C532:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x31C53C)
31C534:  MOVS            R4, #1
31C536:  LDR             R1, =(byte_7AF320 - 0x31C542)
31C538:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
31C53A:  LDR             R2, =(dword_7AF324 - 0x31C546)
31C53C:  LDR             R3, =(byte_7AF328 - 0x31C54C)
31C53E:  ADD             R1, PC; byte_7AF320
31C540:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
31C542:  ADD             R2, PC; dword_7AF324
31C544:  LDR.W           R12, =(dword_7AF31C - 0x31C552)
31C548:  ADD             R3, PC; byte_7AF328
31C54A:  STRB            R4, [R1]
31C54C:  MOVS            R1, #0
31C54E:  ADD             R12, PC; dword_7AF31C
31C550:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
31C552:  STRB            R1, [R3]
31C554:  UXTAH.W         R1, R0, R6
31C558:  STR             R5, [R2]
31C55A:  STR.W           R1, [R12]
31C55E:  LDR             R1, [R5,#0x2C]
31C560:  CMP             R1, #4
31C562:  MOV.W           R1, #1
31C566:  ITEE EQ
31C568:  MOVEQ           R0, #7
31C56A:  STRNE           R0, [R5,#0x24]
31C56C:  MOVNE           R0, #8
31C56E:  STR             R0, [R5,#0x2C]
31C570:  LDR             R5, =(dword_7AF32C - 0x31C576)
31C572:  ADD             R5, PC; dword_7AF32C
31C574:  LDR             R0, [R5]
31C576:  BLX             j__ZN4CPed12SetMoveStateE10eMoveState; CPed::SetMoveState(eMoveState)
31C57A:  LDR             R0, [R5]
31C57C:  MOVS            R2, #3; unsigned int
31C57E:  MOV.W           R3, #0x41000000
31C582:  LDR.W           R1, [R0,#0x4E0]; int
31C586:  LDR             R0, [R0,#0x18]; int
31C588:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
31C58C:  VMOV.F32        S0, #0.5
31C590:  VLDR            S2, [R8,#0x18]
31C594:  VCMPE.F32       S2, S0
31C598:  VMRS            APSR_nzcv, FPSCR
31C59C:  BLE             loc_31C5B0
31C59E:  LDR             R0, [R5]
31C5A0:  CBZ             R0, loc_31C5B0
31C5A2:  LDR             R0, [R0,#0x18]; int
31C5A4:  MOVS            R1, #0; int
31C5A6:  MOVS            R2, #0x93; unsigned int
31C5A8:  MOV.W           R3, #0x41000000
31C5AC:  BLX             j__ZN12CAnimManager14BlendAnimationEP7RpClump12AssocGroupId11AnimationIdf; CAnimManager::BlendAnimation(RpClump *,AssocGroupId,AnimationId,float)
31C5B0:  LDR             R0, =(dword_7AF32C - 0x31C5B8)
31C5B2:  MOVS            R1, #0
31C5B4:  ADD             R0, PC; dword_7AF32C
31C5B6:  STR             R1, [R0]
31C5B8:  ADD             SP, SP, #8
31C5BA:  POP.W           {R8}
31C5BE:  POP             {R4-R7,PC}
