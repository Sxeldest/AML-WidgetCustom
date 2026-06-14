; =========================================================
; Game Engine Function: _Z21_rpMTEffectSystemInitv
; Address            : 0x1C52AC - 0x1C52BE
; =========================================================

1C52AC:  PUSH            {R7,LR}
1C52AE:  MOV             R7, SP
1C52B0:  LDR             R0, =(unk_6B7180 - 0x1C52B8)
1C52B2:  MOVS            R1, #0xB4
1C52B4:  ADD             R0, PC; unk_6B7180
1C52B6:  BLX             j___aeabi_memclr8
1C52BA:  MOVS            R0, #1
1C52BC:  POP             {R7,PC}
