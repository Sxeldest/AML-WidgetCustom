; =========================================================
; Game Engine Function: sub_135C38
; Address            : 0x135C38 - 0x135C5E
; =========================================================

135C38:  PUSH            {R7,LR}
135C3A:  MOV             R7, SP
135C3C:  LDR             R0, [R0,#4]
135C3E:  LDR             R0, [R0,#8]; lpsrc
135C40:  CBZ             R0, locret_135C5C
135C42:  LDR             R1, =(off_234BA8 - 0x135C4C)
135C44:  MOVS            R3, #0; s2d
135C46:  LDR             R2, =(_ZTI17ObjectEditorPanel - 0x135C4E); `typeinfo for'ObjectEditorPanel ...
135C48:  ADD             R1, PC; off_234BA8
135C4A:  ADD             R2, PC; lpdtype
135C4C:  LDR             R1, [R1]; lpstype
135C4E:  BLX             j___dynamic_cast
135C52:  CBZ             R0, locret_135C5C
135C54:  POP.W           {R7,LR}
135C58:  B.W             sub_134EA0
135C5C:  POP             {R7,PC}
