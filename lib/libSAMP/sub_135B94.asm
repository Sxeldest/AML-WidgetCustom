; =========================================================
; Game Engine Function: sub_135B94
; Address            : 0x135B94 - 0x135BC6
; =========================================================

135B94:  PUSH            {R4,R6,R7,LR}
135B96:  ADD             R7, SP, #8
135B98:  LDR             R0, [R0,#4]
135B9A:  LDR             R0, [R0,#8]; lpsrc
135B9C:  CBZ             R0, locret_135BBC
135B9E:  LDRB            R4, [R1]
135BA0:  MOVS            R3, #0; s2d
135BA2:  LDR             R1, =(off_234BA8 - 0x135BAA)
135BA4:  LDR             R2, =(_ZTI17ObjectEditorPanel - 0x135BAC); `typeinfo for'ObjectEditorPanel ...
135BA6:  ADD             R1, PC; off_234BA8
135BA8:  ADD             R2, PC; lpdtype
135BAA:  LDR             R1, [R1]; lpstype
135BAC:  BLX             j___dynamic_cast
135BB0:  CBZ             R0, locret_135BBC
135BB2:  CBZ             R4, loc_135BBE
135BB4:  POP.W           {R4,R6,R7,LR}
135BB8:  B.W             sub_134DE0
135BBC:  POP             {R4,R6,R7,PC}
135BBE:  POP.W           {R4,R6,R7,LR}
135BC2:  B.W             sub_134E26
