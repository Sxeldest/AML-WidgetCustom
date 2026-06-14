; =========================================================
; Game Engine Function: _ZN13CEventHandlerD2Ev
; Address            : 0x37B5BE - 0x37B5F4
; =========================================================

37B5BE:  PUSH            {R4,R5,R7,LR}
37B5C0:  ADD             R7, SP, #8
37B5C2:  MOV             R4, R0
37B5C4:  LDR             R0, [R4,#0xC]
37B5C6:  CMP             R0, #0
37B5C8:  ITTT NE
37B5CA:  LDRNE           R1, [R0]
37B5CC:  LDRNE           R1, [R1,#4]
37B5CE:  BLXNE           R1
37B5D0:  LDR             R0, [R4,#8]
37B5D2:  MOVS            R5, #0
37B5D4:  STR             R5, [R4,#0xC]
37B5D6:  CMP             R0, #0
37B5D8:  ITTT NE
37B5DA:  LDRNE           R1, [R0]
37B5DC:  LDRNE           R1, [R1,#4]
37B5DE:  BLXNE           R1
37B5E0:  LDR             R0, [R4,#0x10]
37B5E2:  STR             R5, [R4,#8]
37B5E4:  CBZ             R0, loc_37B5F0
37B5E6:  LDR             R1, [R0]
37B5E8:  LDR             R1, [R1,#4]
37B5EA:  BLX             R1
37B5EC:  MOVS            R0, #0
37B5EE:  STR             R0, [R4,#0x10]
37B5F0:  MOV             R0, R4
37B5F2:  POP             {R4,R5,R7,PC}
