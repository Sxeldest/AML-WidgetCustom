; =========================================================
; Game Engine Function: sub_117584
; Address            : 0x117584 - 0x1175C0
; =========================================================

117584:  PUSH            {R4-R7,LR}
117586:  ADD             R7, SP, #0xC
117588:  PUSH.W          {R11}
11758C:  MOV             R4, R0
11758E:  LDR             R0, =(_ZTV6IBgHud - 0x117596); `vtable for'IBgHud ...
117590:  MOV             R5, R4
117592:  ADD             R0, PC; `vtable for'IBgHud
117594:  ADDS            R0, #8
117596:  STR.W           R0, [R5],#0x1C
11759A:  MOV             R0, R5
11759C:  BL              sub_1630A8
1175A0:  MOV             R0, R5
1175A2:  BL              sub_1630A8
1175A6:  LDRB            R0, [R4,#0x10]
1175A8:  LSLS            R0, R0, #0x1F
1175AA:  ITT NE
1175AC:  LDRNE           R0, [R4,#0x18]; void *
1175AE:  BLXNE           j__ZdlPv; operator delete(void *)
1175B2:  MOV             R0, R4
1175B4:  POP.W           {R11}
1175B8:  POP.W           {R4-R7,LR}
1175BC:  B.W             sub_1177F8
