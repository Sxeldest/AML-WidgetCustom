; =========================================================
; Game Engine Function: _Z28RtAnimAnimationStreamGetSizePK15RtAnimAnimation
; Address            : 0x1EB264 - 0x1EB272
; =========================================================

1EB264:  PUSH            {R7,LR}
1EB266:  MOV             R7, SP
1EB268:  LDR             R1, [R0]
1EB26A:  LDR             R1, [R1,#0x28]
1EB26C:  BLX             R1
1EB26E:  ADDS            R0, #0x14
1EB270:  POP             {R7,PC}
