; =========================================================
; Game Engine Function: sub_439768
; Address            : 0x439768 - 0x43977A
; =========================================================

439768:  LDRB            R2, [R1,#7]
43976A:  LDR             R1, [R1,#8]
43976C:  PUSH            {R0,R1,R3,LR}
43976E:  MOV             R0, R6; this
439770:  MOV             R1, R2
439772:  BLX             j__ZN4CHud23DrawBustedWastedMessageEv; CHud::DrawBustedWastedMessage(void)
439776:  MOV             R2, R0
439778:  POP             {R0,R1,R3,PC}
