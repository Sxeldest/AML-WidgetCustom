; =========================================================
; Game Engine Function: sub_108C20
; Address            : 0x108C20 - 0x108C3C
; =========================================================

108C20:  PUSH            {R7,LR}
108C22:  MOV             R7, SP
108C24:  LDR             R0, =(unk_262908 - 0x108C2C)
108C26:  MOVS            R1, #0xC8; n
108C28:  ADD             R0, PC; unk_262908 ; int
108C2A:  BLX             sub_22178C
108C2E:  LDR             R0, =(unk_2629D0 - 0x108C38)
108C30:  MOV.W           R1, #0x320; n
108C34:  ADD             R0, PC; unk_2629D0 ; int
108C36:  BLX             sub_22178C
108C3A:  POP             {R7,PC}
