; =========================================================
; Game Engine Function: sub_126A34
; Address            : 0x126A34 - 0x126A68
; =========================================================

126A34:  PUSH            {R4,R5,R7,LR}
126A36:  ADD             R7, SP, #8
126A38:  MOV             R4, R0
126A3A:  LDR             R0, [R0,#4]
126A3C:  CBZ             R0, loc_126A40
126A3E:  POP             {R4,R5,R7,PC}
126A40:  MOVS            R0, #1; unsigned int
126A42:  BLX             j__Znwj; operator new(uint)
126A46:  MOV             R5, R0
126A48:  LDR             R0, =(off_23494C - 0x126A52)
126A4A:  MOVW            R2, #0xF438
126A4E:  ADD             R0, PC; off_23494C
126A50:  MOVT            R2, #0x66 ; 'f'
126A54:  LDR             R0, [R0]; dword_23DF24
126A56:  LDR             R0, [R0]
126A58:  LDR             R1, =(sub_1269A8+1 - 0x126A60)
126A5A:  ADD             R0, R2
126A5C:  ADD             R1, PC; sub_1269A8
126A5E:  MOVS            R2, #0
126A60:  BL              sub_164196
126A64:  STR             R5, [R4,#4]
126A66:  POP             {R4,R5,R7,PC}
