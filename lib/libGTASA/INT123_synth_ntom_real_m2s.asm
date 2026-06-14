; =========================================================
; Game Engine Function: INT123_synth_ntom_real_m2s
; Address            : 0x23944A - 0x23949A
; =========================================================

23944A:  PUSH            {R4-R7,LR}
23944C:  ADD             R7, SP, #0xC
23944E:  PUSH.W          {R8}
239452:  MOV             R4, R1
239454:  MOVW            R1, #0xB2A0
239458:  LDR.W           R8, [R4,R1]
23945C:  MOVW            R6, #0xB2A8
239460:  MOVS            R1, #0
239462:  MOV             R2, R4
239464:  MOVS            R3, #1
239466:  LDR             R5, [R4,R6]
239468:  BLX             j_INT123_synth_ntom_real
23946C:  LDR             R0, [R4,R6]
23946E:  SUBS            R0, R0, R5
239470:  CMP             R0, #0x10
239472:  BCC             loc_239492
239474:  ADDS            R0, R4, R6
239476:  ADD.W           R1, R8, R5
23947A:  MOVS            R2, #0
23947C:  VLDR            D16, [R1]
239480:  ADDS            R2, #1
239482:  VSTR            D16, [R1,#8]
239486:  ADDS            R1, #0x10
239488:  LDR             R3, [R0]
23948A:  SUBS            R3, R3, R5
23948C:  CMP.W           R2, R3,LSR#4
239490:  BCC             loc_23947C
239492:  MOVS            R0, #0
239494:  POP.W           {R8}
239498:  POP             {R4-R7,PC}
