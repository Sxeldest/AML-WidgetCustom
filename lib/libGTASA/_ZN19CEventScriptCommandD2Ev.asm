; =========================================================
; Game Engine Function: _ZN19CEventScriptCommandD2Ev
; Address            : 0x376440 - 0x376460
; =========================================================

376440:  PUSH            {R4,R6,R7,LR}
376442:  ADD             R7, SP, #8
376444:  MOV             R4, R0
376446:  LDR             R0, =(_ZTV19CEventScriptCommand_ptr - 0x37644C)
376448:  ADD             R0, PC; _ZTV19CEventScriptCommand_ptr
37644A:  LDR             R1, [R0]; `vtable for'CEventScriptCommand ...
37644C:  LDR             R0, [R4,#0x10]
37644E:  ADDS            R1, #8
376450:  STR             R1, [R4]
376452:  CMP             R0, #0
376454:  ITTT NE
376456:  LDRNE           R1, [R0]
376458:  LDRNE           R1, [R1,#4]
37645A:  BLXNE           R1
37645C:  MOV             R0, R4
37645E:  POP             {R4,R6,R7,PC}
