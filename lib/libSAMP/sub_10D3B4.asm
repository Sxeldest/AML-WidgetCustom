; =========================================================
; Game Engine Function: sub_10D3B4
; Address            : 0x10D3B4 - 0x10D3D6
; =========================================================

10D3B4:  PUSH            {R4,R6,R7,LR}
10D3B6:  ADD             R7, SP, #8
10D3B8:  LDR             R4, =(unk_263224 - 0x10D3C0)
10D3BA:  MOVS            R1, #0
10D3BC:  ADD             R4, PC; unk_263224
10D3BE:  MOV             R0, R4
10D3C0:  BL              sub_10CE80
10D3C4:  LDR             R0, =(sub_10CEA8+1 - 0x10D3CE)
10D3C6:  MOV             R1, R4
10D3C8:  LDR             R2, =(off_22A540 - 0x10D3D0)
10D3CA:  ADD             R0, PC; sub_10CEA8
10D3CC:  ADD             R2, PC; off_22A540
10D3CE:  POP.W           {R4,R6,R7,LR}
10D3D2:  B.W             sub_224250
