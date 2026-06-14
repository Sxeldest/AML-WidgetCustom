; =========================================================
; Game Engine Function: alGetBufferfv
; Address            : 0x247688 - 0x247778
; =========================================================

247688:  PUSH            {R4-R7,LR}
24768A:  ADD             R7, SP, #0xC
24768C:  PUSH.W          {R11}
247690:  MOV             R6, R0
247692:  MOVW            R0, #0x200B
247696:  MOV             R5, R2
247698:  CMP             R1, R0
24769A:  BNE             loc_2476AE
24769C:  MOV             R0, R6
24769E:  MOVW            R1, #0x200B
2476A2:  MOV             R2, R5
2476A4:  POP.W           {R11}
2476A8:  POP.W           {R4-R7,LR}
2476AC:  B               alGetBufferf
2476AE:  BLX             j_GetContextRef
2476B2:  MOV             R4, R0
2476B4:  CBZ             R4, loc_2476FE
2476B6:  LDR.W           R0, [R4,#0x88]
2476BA:  MOV             R1, R6
2476BC:  ADDS            R0, #0x40 ; '@'
2476BE:  BLX             j_LookupUIntMapKey
2476C2:  CBZ             R0, loc_247704
2476C4:  LDR             R0, =(TrapALError_ptr - 0x2476CC)
2476C6:  CMP             R5, #0
2476C8:  ADD             R0, PC; TrapALError_ptr
2476CA:  LDR             R0, [R0]; TrapALError
2476CC:  LDRB            R0, [R0]
2476CE:  BEQ             loc_247738
2476D0:  CMP             R0, #0
2476D2:  ITT NE
2476D4:  MOVNE           R0, #5; sig
2476D6:  BLXNE           raise
2476DA:  LDREX.W         R0, [R4,#0x50]
2476DE:  CMP             R0, #0
2476E0:  BNE             loc_247762
2476E2:  ADD.W           R0, R4, #0x50 ; 'P'
2476E6:  MOVW            R1, #0xA002
2476EA:  DMB.W           ISH
2476EE:  STREX.W         R2, R1, [R0]
2476F2:  CBZ             R2, loc_247766
2476F4:  LDREX.W         R2, [R0]
2476F8:  CMP             R2, #0
2476FA:  BEQ             loc_2476EE
2476FC:  B               loc_247762
2476FE:  POP.W           {R11}
247702:  POP             {R4-R7,PC}
247704:  LDR             R0, =(TrapALError_ptr - 0x24770A)
247706:  ADD             R0, PC; TrapALError_ptr
247708:  LDR             R0, [R0]; TrapALError
24770A:  LDRB            R0, [R0]
24770C:  CMP             R0, #0
24770E:  ITT NE
247710:  MOVNE           R0, #5; sig
247712:  BLXNE           raise
247716:  LDREX.W         R0, [R4,#0x50]
24771A:  CBNZ            R0, loc_247762
24771C:  ADD.W           R0, R4, #0x50 ; 'P'
247720:  MOVW            R1, #0xA001
247724:  DMB.W           ISH
247728:  STREX.W         R2, R1, [R0]
24772C:  CBZ             R2, loc_247766
24772E:  LDREX.W         R2, [R0]
247732:  CMP             R2, #0
247734:  BEQ             loc_247728
247736:  B               loc_247762
247738:  CMP             R0, #0
24773A:  ITT NE
24773C:  MOVNE           R0, #5; sig
24773E:  BLXNE           raise
247742:  LDREX.W         R0, [R4,#0x50]
247746:  CBNZ            R0, loc_247762
247748:  ADD.W           R0, R4, #0x50 ; 'P'
24774C:  MOVW            R1, #0xA003
247750:  DMB.W           ISH
247754:  STREX.W         R2, R1, [R0]
247758:  CBZ             R2, loc_247766
24775A:  LDREX.W         R2, [R0]
24775E:  CMP             R2, #0
247760:  BEQ             loc_247754
247762:  CLREX.W
247766:  DMB.W           ISH
24776A:  MOV             R0, R4
24776C:  POP.W           {R11}
247770:  POP.W           {R4-R7,LR}
247774:  B.W             ALCcontext_DecRef
