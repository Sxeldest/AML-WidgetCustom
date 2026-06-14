; =========================================================
; Game Engine Function: sub_43977A
; Address            : 0x43977A - 0x43978C
; =========================================================

43977A:  LDRB            R3, [R1,#7]
43977C:  LDR             R1, [R1,#8]
43977E:  PUSH            {R0-R2,LR}
439780:  MOV             R0, R6; this
439782:  MOV             R1, R3
439784:  BLX             j__ZN4CHud23DrawBustedWastedMessageEv; CHud::DrawBustedWastedMessage(void)
439788:  MOV             R3, R0
43978A:  POP             {R0-R2,PC}
