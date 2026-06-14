; =========================================================
; Game Engine Function: _ZN20CEventHandlerHistory14ClearAllEventsEv
; Address            : 0x37B22E - 0x37B254
; =========================================================

37B22E:  PUSH            {R4,R5,R7,LR}
37B230:  ADD             R7, SP, #8
37B232:  MOV             R4, R0
37B234:  LDR             R0, [R4,#8]
37B236:  CMP             R0, #0
37B238:  ITTT NE
37B23A:  LDRNE           R1, [R0]
37B23C:  LDRNE           R1, [R1,#4]
37B23E:  BLXNE           R1
37B240:  LDR             R0, [R4,#4]
37B242:  MOVS            R5, #0
37B244:  STR             R5, [R4,#8]
37B246:  CMP             R0, #0
37B248:  ITTT NE
37B24A:  LDRNE           R1, [R0]
37B24C:  LDRNE           R1, [R1,#4]
37B24E:  BLXNE           R1
37B250:  STR             R5, [R4,#4]
37B252:  POP             {R4,R5,R7,PC}
