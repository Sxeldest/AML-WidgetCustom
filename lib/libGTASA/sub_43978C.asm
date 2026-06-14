; =========================================================
; Game Engine Function: sub_43978C
; Address            : 0x43978C - 0x43979C
; =========================================================

43978C:  LDRB            R1, [R0,#7]
43978E:  LDR             R0, [R0,#8]
439790:  PUSH            {R0,R2,R3,LR}
439792:  MOV             R0, R11; this
439794:  BLX             j__ZN4CHud23DrawBustedWastedMessageEv; CHud::DrawBustedWastedMessage(void)
439798:  MOV             R1, R0
43979A:  POP             {R0,R2,R3,PC}
