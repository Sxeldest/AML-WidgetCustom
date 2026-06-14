; =========================================================
; Game Engine Function: sub_EA660
; Address            : 0xEA660 - 0xEA688
; =========================================================

EA660:  PUSH            {R4-R7,LR}
EA662:  ADD             R7, SP, #0xC
EA664:  PUSH.W          {R11}
EA668:  MOV             R4, R0
EA66A:  LDRB.W          R1, [R0],#8
EA66E:  MOV             R5, R3
EA670:  MOV             R6, R2
EA672:  BL              sub_E57FC
EA676:  VMOV            D16, R6, R5
EA67A:  MOVS            R0, #7
EA67C:  STRB            R0, [R4]
EA67E:  VSTR            D16, [R4,#8]
EA682:  POP.W           {R11}
EA686:  POP             {R4-R7,PC}
