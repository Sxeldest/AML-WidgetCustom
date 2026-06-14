; =========================================================
; Game Engine Function: _ZN19CEventScriptCommandD0Ev
; Address            : 0x376464 - 0x3764AC
; =========================================================

376464:  PUSH            {R4,R6,R7,LR}
376466:  ADD             R7, SP, #8
376468:  MOV             R4, R0
37646A:  LDR             R0, =(_ZTV19CEventScriptCommand_ptr - 0x376470)
37646C:  ADD             R0, PC; _ZTV19CEventScriptCommand_ptr
37646E:  LDR             R1, [R0]; `vtable for'CEventScriptCommand ...
376470:  LDR             R0, [R4,#0x10]
376472:  ADDS            R1, #8
376474:  STR             R1, [R4]
376476:  CMP             R0, #0
376478:  ITTT NE
37647A:  LDRNE           R1, [R0]
37647C:  LDRNE           R1, [R1,#4]
37647E:  BLXNE           R1
376480:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37648E)
376482:  MOV             R3, #0xF0F0F0F1
37648A:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
37648C:  LDR             R0, [R0]; CPools::ms_pEventPool ...
37648E:  LDR             R0, [R0]; CPools::ms_pEventPool
376490:  LDRD.W          R1, R2, [R0]
376494:  SUBS            R1, R4, R1
376496:  ASRS            R1, R1, #2
376498:  MULS            R1, R3
37649A:  LDRB            R3, [R2,R1]
37649C:  ORR.W           R3, R3, #0x80
3764A0:  STRB            R3, [R2,R1]
3764A2:  LDR             R2, [R0,#0xC]
3764A4:  CMP             R1, R2
3764A6:  IT LT
3764A8:  STRLT           R1, [R0,#0xC]
3764AA:  POP             {R4,R6,R7,PC}
