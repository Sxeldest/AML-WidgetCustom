; =========================================================
; Game Engine Function: sub_2233D0
; Address            : 0x2233D0 - 0x223430
; =========================================================

2233D0:  PUSH            {R4,R10,R11,LR}
2233D4:  ADD             R11, SP, #8
2233D8:  MOV             R4, R0
2233DC:  LDRB            R0, [R0,#0x4D]
2233E0:  CMP             R0, #0
2233E4:  BEQ             loc_2233FC
2233E8:  LDRB            R1, [R4,#0x4C]
2233EC:  ADD             R0, R4, #0x50 ; 'P'
2233F0:  CMP             R1, #0
2233F4:  BEQ             loc_22341C
2233F8:  BL              sub_224210
2233FC:  LDRB            R0, [R4,#0x4E]
223400:  CMP             R0, #0
223404:  BEQ             loc_223410
223408:  ADD             R0, R4, #0xD8
22340C:  BL              sub_224218
223410:  ADD             R0, R4, #8
223414:  POP             {R4,R10,R11,LR}
223418:  B               sub_2241F4
22341C:  BL              sub_224208
223420:  LDRB            R0, [R4,#0x4E]
223424:  CMP             R0, #0
223428:  BNE             loc_223408
22342C:  B               loc_223410
