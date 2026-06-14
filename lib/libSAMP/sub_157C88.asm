; =========================================================
; Game Engine Function: sub_157C88
; Address            : 0x157C88 - 0x157CB6
; =========================================================

157C88:  PUSH            {R4,R5,R7,LR}
157C8A:  ADD             R7, SP, #8
157C8C:  MOV             R4, R0
157C8E:  LDR             R0, [R0]
157C90:  MOVS            R5, #0
157C92:  STRD.W          R5, R5, [R4,#8]
157C96:  STRB            R5, [R4,#0x10]
157C98:  STR             R5, [R4]
157C9A:  CBZ             R0, loc_157CA2
157C9C:  LDR             R1, [R0]
157C9E:  LDR             R1, [R1,#4]
157CA0:  BLX             R1
157CA2:  LDR.W           R1, [R4,#4]!
157CA6:  STR             R5, [R4]
157CA8:  CBZ             R1, locret_157CB4
157CAA:  MOV             R0, R4
157CAC:  POP.W           {R4,R5,R7,LR}
157CB0:  B.W             sub_15614C
157CB4:  POP             {R4,R5,R7,PC}
