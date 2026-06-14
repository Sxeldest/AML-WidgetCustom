; =========================================================
; Game Engine Function: sub_20E6FC
; Address            : 0x20E6FC - 0x20E724
; =========================================================

20E6FC:  PUSH            {R4,R5,R7,LR}
20E6FE:  ADD             R7, SP, #8
20E700:  MOV             R5, R0
20E702:  LDRB            R0, [R0]
20E704:  MOV             R4, R1
20E706:  LSLS            R0, R0, #0x1F
20E708:  ITT NE
20E70A:  LDRNE           R0, [R5,#8]; void *
20E70C:  BLXNE           j__ZdlPv; operator delete(void *)
20E710:  LDR             R0, [R4,#8]
20E712:  STR             R0, [R5,#8]
20E714:  MOVS            R0, #0
20E716:  VLDR            D16, [R4]
20E71A:  VSTR            D16, [R5]
20E71E:  STR             R0, [R4,#4]
20E720:  STRB            R0, [R4]
20E722:  POP             {R4,R5,R7,PC}
