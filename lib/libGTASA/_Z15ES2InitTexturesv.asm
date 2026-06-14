; =========================================================
; Game Engine Function: _Z15ES2InitTexturesv
; Address            : 0x1CFF98 - 0x1CFFB6
; =========================================================

1CFF98:  PUSH            {R4,R6,R7,LR}
1CFF9A:  ADD             R7, SP, #8
1CFF9C:  LDR             R0, =(es2TexPool_ptr - 0x1CFFA2)
1CFF9E:  ADD             R0, PC; es2TexPool_ptr
1CFFA0:  LDR             R4, [R0]; es2TexPool
1CFFA2:  BLX             j__Z15IsLowSpecDevicev; IsLowSpecDevice(void)
1CFFA6:  MOV.W           R1, #0x400000
1CFFAA:  CMP             R0, #0
1CFFAC:  IT NE
1CFFAE:  MOVNE.W         R1, #0x100000
1CFFB2:  STR             R1, [R4,#(dword_6BCC10 - 0x6BCC00)]
1CFFB4:  POP             {R4,R6,R7,PC}
