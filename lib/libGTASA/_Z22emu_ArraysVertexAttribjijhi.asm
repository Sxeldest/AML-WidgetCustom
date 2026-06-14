; =========================================================
; Game Engine Function: _Z22emu_ArraysVertexAttribjijhi
; Address            : 0x1BCE74 - 0x1BCEBA
; =========================================================

1BCE74:  PUSH            {R4-R7,LR}
1BCE76:  ADD             R7, SP, #0xC
1BCE78:  PUSH.W          {R11}
1BCE7C:  MOV             R6, R0
1BCE7E:  MOV             R0, R2; unsigned int
1BCE80:  MOV             R4, R3
1BCE82:  MOV             R5, R1
1BCE84:  BLX             j__Z10GLTypeToRQj; GLTypeToRQ(uint)
1BCE88:  LDR             R1, =(staticState_ptr - 0x1BCE96)
1BCE8A:  ADD.W           R3, R6, R6,LSL#2
1BCE8E:  CMP             R4, #0
1BCE90:  LDR             R2, [R7,#arg_0]
1BCE92:  ADD             R1, PC; staticState_ptr
1BCE94:  LDR             R1, [R1]; staticState
1BCE96:  ADD.W           R1, R1, R3,LSL#2
1BCE9A:  MOV.W           R3, #1
1BCE9E:  STRB.W          R3, [R1,#0x30]
1BCEA2:  IT NE
1BCEA4:  MOVNE           R4, #1
1BCEA6:  MOVS            R3, #0
1BCEA8:  STRB.W          R4, [R1,#0x31]
1BCEAC:  STRD.W          R5, R3, [R1,#0x34]
1BCEB0:  STRD.W          R2, R0, [R1,#0x3C]
1BCEB4:  POP.W           {R11}
1BCEB8:  POP             {R4-R7,PC}
