; =========================================================
; Game Engine Function: sub_15143C
; Address            : 0x15143C - 0x151464
; =========================================================

15143C:  PUSH            {R4,R6,R7,LR}
15143E:  ADD             R7, SP, #8
151440:  LDRB            R0, [R0,#4]
151442:  MOV             R4, R1
151444:  CBZ             R0, loc_151456
151446:  LDR             R0, [R4,#0xC]
151448:  MOVS            R1, #0
15144A:  STR             R1, [R4,#0xC]
15144C:  CBZ             R0, loc_151458
15144E:  LDR             R1, [R0]
151450:  LDR             R1, [R1,#4]
151452:  BLX             R1
151454:  B               loc_151458
151456:  CBZ             R4, locret_151462
151458:  MOV             R0, R4; void *
15145A:  POP.W           {R4,R6,R7,LR}
15145E:  B.W             _ZdlPvRKSt9nothrow_t_0; operator delete(void *,std::nothrow_t const&)
151462:  POP             {R4,R6,R7,PC}
