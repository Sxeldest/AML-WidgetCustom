; =========================================================
; Game Engine Function: _ZN8CPickups12RemovePickUpEi
; Address            : 0x31F49C - 0x31F4FE
; =========================================================

31F49C:  PUSH            {R4,R5,R7,LR}
31F49E:  ADD             R7, SP, #8
31F4A0:  MOV             R1, R0
31F4A2:  ADDS            R0, R1, #1
31F4A4:  BEQ             locret_31F4FC
31F4A6:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x31F4AE)
31F4A8:  UXTH            R4, R1
31F4AA:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
31F4AC:  LDR             R0, [R0]; CPickups::aPickUps ...
31F4AE:  ADD.W           R0, R0, R4,LSL#5
31F4B2:  LDRH            R0, [R0,#0x1A]
31F4B4:  CMP.W           R0, R1,LSR#16
31F4B8:  IT NE
31F4BA:  POPNE           {R4,R5,R7,PC}
31F4BC:  MOVS            R0, #7
31F4BE:  BLX             j__ZN6CRadar18ClearBlipForEntityE9eBlipTypei; CRadar::ClearBlipForEntity(eBlipType,int)
31F4C2:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x31F4C8)
31F4C4:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
31F4C6:  LDR             R0, [R0]; CPickups::aPickUps ...
31F4C8:  ADD.W           R5, R0, R4,LSL#5
31F4CC:  LDR.W           R0, [R5,#4]!; this
31F4D0:  CBZ             R0, loc_31F4E6
31F4D2:  BLX             j__ZN6CWorld6RemoveEP7CEntity; CWorld::Remove(CEntity *)
31F4D6:  LDR             R0, [R5]
31F4D8:  CMP             R0, #0
31F4DA:  ITTT NE
31F4DC:  LDRNE           R1, [R0]
31F4DE:  LDRNE           R1, [R1,#4]
31F4E0:  BLXNE           R1
31F4E2:  MOVS            R0, #0
31F4E4:  STR             R0, [R5]
31F4E6:  LDR             R0, =(_ZN8CPickups8aPickUpsE_ptr - 0x31F4EE)
31F4E8:  MOVS            R2, #0
31F4EA:  ADD             R0, PC; _ZN8CPickups8aPickUpsE_ptr
31F4EC:  LDR             R0, [R0]; CPickups::aPickUps ...
31F4EE:  ADD.W           R0, R0, R4,LSL#5
31F4F2:  LDRB            R1, [R0,#0x1D]
31F4F4:  STRB            R2, [R0,#0x1C]
31F4F6:  ORR.W           R1, R1, #1
31F4FA:  STRB            R1, [R0,#0x1D]
31F4FC:  POP             {R4,R5,R7,PC}
