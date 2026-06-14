; =========================================================
; Game Engine Function: sub_FC3E8
; Address            : 0xFC3E8 - 0xFC432
; =========================================================

FC3E8:  PUSH            {R4,R5,R7,LR}
FC3EA:  ADD             R7, SP, #8
FC3EC:  MOV             R4, R0
FC3EE:  LDR             R0, =(off_23496C - 0xFC3F4)
FC3F0:  ADD             R0, PC; off_23496C
FC3F2:  LDR             R5, [R0]; dword_23DEF4
FC3F4:  LDR             R0, [R5]
FC3F6:  CBZ             R0, locret_FC430
FC3F8:  LDR             R1, =(off_234970 - 0xFC3FE)
FC3FA:  ADD             R1, PC; off_234970
FC3FC:  LDR             R1, [R1]; dword_23DEF0
FC3FE:  LDR             R1, [R1]
FC400:  CBZ             R1, locret_FC430
FC402:  LDR             R1, =(off_23494C - 0xFC410)
FC404:  MOV             R2, #0x991FD8
FC40C:  ADD             R1, PC; off_23494C
FC40E:  LDR             R1, [R1]; dword_23DF24
FC410:  LDR             R1, [R1]
FC412:  LDRB            R1, [R1,R2]
FC414:  CBZ             R1, loc_FC41E
FC416:  BL              sub_F9B64
FC41A:  CBZ             R0, locret_FC430
FC41C:  LDR             R0, [R5]
FC41E:  LDR.W           R0, [R0,#0x3B0]
FC422:  LDR             R0, [R0,#8]
FC424:  CBZ             R0, locret_FC430
FC426:  MOV             R1, R4
FC428:  POP.W           {R4,R5,R7,LR}
FC42C:  B.W             sub_13E808
FC430:  POP             {R4,R5,R7,PC}
