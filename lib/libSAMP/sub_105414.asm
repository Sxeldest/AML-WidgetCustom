; =========================================================
; Game Engine Function: sub_105414
; Address            : 0x105414 - 0x10545E
; =========================================================

105414:  PUSH            {R4,R5,R7,LR}
105416:  ADD             R7, SP, #8
105418:  MOV             R4, R0
10541A:  LDR             R0, [R0,#0x5C]
10541C:  CBZ             R0, locret_10545C
10541E:  LDR             R0, [R4,#8]
105420:  BL              sub_1082F4
105424:  CBZ             R0, locret_10545C
105426:  LDR             R0, [R4,#0x5C]
105428:  LDRB.W          R1, [R0,#0x485]
10542C:  LSLS            R1, R1, #0x1F
10542E:  BEQ             locret_10545C
105430:  LDR.W           R0, [R0,#0x590]
105434:  BL              sub_10833C
105438:  CBZ             R0, locret_10545C
10543A:  MOV             R5, R0
10543C:  BL              sub_108354
105440:  CBZ             R0, locret_10545C
105442:  LDRH            R0, [R0,#0x26]
105444:  MOVW            R1, #0x21A
105448:  BIC.W           R0, R0, #0x20 ; ' '
10544C:  CMP             R0, R1
10544E:  BEQ             locret_10545C
105450:  LDR             R0, =(unk_B388E - 0x10545A)
105452:  MOV             R2, R5
105454:  LDR             R1, [R4,#8]
105456:  ADD             R0, PC; unk_B388E
105458:  BL              sub_107188
10545C:  POP             {R4,R5,R7,PC}
