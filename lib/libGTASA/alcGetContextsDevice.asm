; =========================================================
; Game Engine Function: alcGetContextsDevice
; Address            : 0x24BC94 - 0x24BCCA
; =========================================================

24BC94:  PUSH            {R4,R6,R7,LR}
24BC96:  ADD             R7, SP, #8
24BC98:  BL              loc_24BED4
24BC9C:  CBZ             R0, loc_24BCAA
24BC9E:  LDR.W           R4, [R0,#0x88]
24BCA2:  BLX             j_ALCcontext_DecRef
24BCA6:  MOV             R0, R4
24BCA8:  POP             {R4,R6,R7,PC}
24BCAA:  LDR             R0, =(byte_6D684C - 0x24BCB0)
24BCAC:  ADD             R0, PC; byte_6D684C
24BCAE:  LDRB            R0, [R0]
24BCB0:  CMP             R0, #0
24BCB2:  ITT NE
24BCB4:  MOVNE           R0, #5; sig
24BCB6:  BLXNE           raise
24BCBA:  LDR             R0, =(dword_6D633C - 0x24BCC6)
24BCBC:  MOVW            R1, #0xA002
24BCC0:  MOVS            R4, #0
24BCC2:  ADD             R0, PC; dword_6D633C
24BCC4:  STR             R1, [R0]
24BCC6:  MOV             R0, R4
24BCC8:  POP             {R4,R6,R7,PC}
