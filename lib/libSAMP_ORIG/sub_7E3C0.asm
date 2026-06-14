; =========================================================
; Game Engine Function: sub_7E3C0
; Address            : 0x7E3C0 - 0x7E406
; =========================================================

7E3C0:  PUSH            {R7,LR}
7E3C2:  MOV             R7, SP
7E3C4:  LDR             R0, =(byte_1A45F0 - 0x7E3CA)
7E3C6:  ADD             R0, PC; byte_1A45F0
7E3C8:  LDRB            R0, [R0]
7E3CA:  CMP             R0, #0
7E3CC:  IT EQ
7E3CE:  POPEQ           {R7,PC}
7E3D0:  LDR             R0, =(off_114B10 - 0x7E3DA)
7E3D2:  MOVS            R3, #1
7E3D4:  LDR             R1, =(byte_1A45F2 - 0x7E3DE)
7E3D6:  ADD             R0, PC; off_114B10
7E3D8:  LDR             R2, =(byte_1A45F1 - 0x7E3E2)
7E3DA:  ADD             R1, PC; byte_1A45F2
7E3DC:  LDR             R0, [R0]; dword_1A442C
7E3DE:  ADD             R2, PC; byte_1A45F1
7E3E0:  STRB            R3, [R1]
7E3E2:  STRB            R3, [R2]
7E3E4:  LDR             R0, [R0]
7E3E6:  CMP             R0, #0
7E3E8:  ITT NE
7E3EA:  LDRNE.W         R1, [R0,#0x80]
7E3EE:  CMPNE           R1, #0
7E3F0:  BEQ             locret_7E404
7E3F2:  LDR             R0, =(off_114B48 - 0x7E3FC)
7E3F4:  MOVS            R2, #1
7E3F6:  STRB            R2, [R1]
7E3F8:  ADD             R0, PC; off_114B48
7E3FA:  LDR             R0, [R0]; dword_1A41D8
7E3FC:  LDR             R0, [R0]
7E3FE:  MOVS            R1, #1
7E400:  BL              sub_690B8
7E404:  POP             {R7,PC}
