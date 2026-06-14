; =========================================================
; Game Engine Function: _Z11ResetEnvMapv
; Address            : 0x2CAA74 - 0x2CAA98
; =========================================================

2CAA74:  PUSH            {R7,LR}
2CAA76:  MOV             R7, SP
2CAA78:  BLX             j__Z15emu_ResetEnvMapv; emu_ResetEnvMap(void)
2CAA7C:  LDR             R0, =(byte_70BF3C - 0x2CAA82)
2CAA7E:  ADD             R0, PC; byte_70BF3C
2CAA80:  LDRB            R0, [R0]
2CAA82:  CMP             R0, #0
2CAA84:  IT NE
2CAA86:  POPNE           {R7,PC}
2CAA88:  BLX             j__Z15emu_glPopMatrixv; emu_glPopMatrix(void)
2CAA8C:  MOV.W           R0, #0x1700; unsigned int
2CAA90:  POP.W           {R7,LR}
2CAA94:  B.W             j_j__Z16emu_glMatrixModej; j_emu_glMatrixMode(uint)
