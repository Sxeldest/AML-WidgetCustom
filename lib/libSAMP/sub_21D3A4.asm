; =========================================================
; Game Engine Function: sub_21D3A4
; Address            : 0x21D3A4 - 0x21D3E0
; =========================================================

21D3A4:  PUSH            {R4-R7,LR}
21D3A6:  ADD             R7, SP, #0xC
21D3A8:  PUSH.W          {R11}
21D3AC:  MOV             R5, R0
21D3AE:  LDR             R0, [R0,#8]
21D3B0:  MOV             R4, R1
21D3B2:  BL              sub_2154CC
21D3B6:  LDR             R1, =(unk_82C59 - 0x21D3C0)
21D3B8:  MOV             R0, R4
21D3BA:  LDR             R6, =(sub_216F98+1 - 0x21D3C4)
21D3BC:  ADD             R1, PC; unk_82C59
21D3BE:  ADDS            R2, R1, #1
21D3C0:  ADD             R6, PC; sub_216F98
21D3C2:  BLX             R6; sub_216F98
21D3C4:  LDRD.W          R1, R2, [R5,#0xC]
21D3C8:  MOV             R0, R4
21D3CA:  BLX             R6; sub_216F98
21D3CC:  LDR             R1, =(aW7+6 - 0x21D3D6); ">" ...
21D3CE:  MOV             R0, R4
21D3D0:  MOV             R3, R6
21D3D2:  ADD             R1, PC; ">"
21D3D4:  ADDS            R2, R1, #1
21D3D6:  POP.W           {R11}
21D3DA:  POP.W           {R4-R7,LR}
21D3DE:  BX              R3; sub_216F98
