; =========================================================
; Game Engine Function: sub_135B00
; Address            : 0x135B00 - 0x135B26
; =========================================================

135B00:  PUSH            {R7,LR}
135B02:  MOV             R7, SP
135B04:  LDR             R0, [R0,#4]
135B06:  LDR             R0, [R0,#8]; lpsrc
135B08:  CBZ             R0, locret_135B24
135B0A:  LDR             R1, =(off_234BA8 - 0x135B14)
135B0C:  MOVS            R3, #0; s2d
135B0E:  LDR             R2, =(_ZTI17ObjectEditorPanel - 0x135B16); `typeinfo for'ObjectEditorPanel ...
135B10:  ADD             R1, PC; off_234BA8
135B12:  ADD             R2, PC; lpdtype
135B14:  LDR             R1, [R1]; lpstype
135B16:  BLX             j___dynamic_cast
135B1A:  CBZ             R0, locret_135B24
135B1C:  POP.W           {R7,LR}
135B20:  B.W             sub_134E70
135B24:  POP             {R7,PC}
