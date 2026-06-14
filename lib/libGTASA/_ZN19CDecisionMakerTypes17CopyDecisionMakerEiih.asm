; =========================================================
; Game Engine Function: _ZN19CDecisionMakerTypes17CopyDecisionMakerEiih
; Address            : 0x4BE2C8 - 0x4BE364
; =========================================================

4BE2C8:  PUSH            {R4-R7,LR}
4BE2CA:  ADD             R7, SP, #0xC
4BE2CC:  PUSH.W          {R8,R9,R11}
4BE2D0:  MOV             R8, R0
4BE2D2:  MOV             R4, R3
4BE2D4:  ADDS            R0, R1, #1
4BE2D6:  BEQ             loc_4BE2E6
4BE2D8:  MOVW            R0, #0x99C
4BE2DC:  MLA.W           R0, R1, R0, R8
4BE2E0:  ADD.W           R9, R0, #4
4BE2E4:  B               loc_4BE2F6
4BE2E6:  CMP             R2, #0
4BE2E8:  ITE NE
4BE2EA:  MOVWNE          R0, #0xE824
4BE2EE:  MOVWEQ          R0, #0xCB50
4BE2F2:  ADD.W           R9, R8, R0
4BE2F6:  MOVS            R0, #0x14
4BE2F8:  CMP             R4, #0
4BE2FA:  ITE EQ
4BE2FC:  MOVEQ           R0, #0xF
4BE2FE:  MOVNE           R4, #0xF
4BE300:  CMP             R4, R0
4BE302:  BCS             loc_4BE322
4BE304:  MOVW            R1, #0x99C
4BE308:  SMLABB.W        R1, R4, R1, R8
4BE30C:  ADDS            R6, R1, #4
4BE30E:  LDR             R1, =(_ZN19CDecisionMakerTypes11m_bIsActiveE_ptr - 0x4BE314)
4BE310:  ADD             R1, PC; _ZN19CDecisionMakerTypes11m_bIsActiveE_ptr
4BE312:  LDR             R1, [R1]; CDecisionMakerTypes::m_bIsActive ...
4BE314:  LDRB            R3, [R1,R4]
4BE316:  CBZ             R3, loc_4BE328
4BE318:  ADDS            R4, #1
4BE31A:  ADDW            R6, R6, #0x99C
4BE31E:  CMP             R4, R0
4BE320:  BLT             loc_4BE314
4BE322:  MOV.W           R4, #0xFFFFFFFF
4BE326:  B               loc_4BE35C
4BE328:  LDR             R0, =(_ZN19CDecisionMakerTypes11m_bIsActiveE_ptr - 0x4BE334)
4BE32A:  MOVS            R5, #4
4BE32C:  LDR             R1, =(_ZN19CDecisionMakerTypes7m_typesE_ptr - 0x4BE336)
4BE32E:  MOVS            R3, #1
4BE330:  ADD             R0, PC; _ZN19CDecisionMakerTypes11m_bIsActiveE_ptr
4BE332:  ADD             R1, PC; _ZN19CDecisionMakerTypes7m_typesE_ptr
4BE334:  LDR             R0, [R0]; CDecisionMakerTypes::m_bIsActive ...
4BE336:  LDR             R1, [R1]; CDecisionMakerTypes::m_types ...
4BE338:  STRB            R3, [R0,R4]
4BE33A:  STRB            R2, [R1,R4]
4BE33C:  ADD.W           R0, R9, R5
4BE340:  SUBS            R1, R0, #4
4BE342:  MOV             R0, R6
4BE344:  BLX             j__ZN9CDecisionaSERKS_; CDecision::operator=(CDecision const&)
4BE348:  ADDS            R5, #0x3C ; '<'
4BE34A:  ADDS            R6, #0x3C ; '<'
4BE34C:  CMP.W           R5, #0x9A0
4BE350:  BNE             loc_4BE33C
4BE352:  LDR.W           R0, [R8]
4BE356:  ADDS            R0, #1
4BE358:  STR.W           R0, [R8]
4BE35C:  MOV             R0, R4
4BE35E:  POP.W           {R8,R9,R11}
4BE362:  POP             {R4-R7,PC}
