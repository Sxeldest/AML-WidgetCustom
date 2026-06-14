; =========================================================
; Game Engine Function: sub_13DAD0
; Address            : 0x13DAD0 - 0x13DAFA
; =========================================================

13DAD0:  PUSH            {R4,R6,R7,LR}
13DAD2:  ADD             R7, SP, #8
13DAD4:  MOV             R4, R0
13DAD6:  LDRB.W          R0, [R0,#0x58]
13DADA:  CBZ             R0, locret_13DAF8
13DADC:  CBZ             R1, locret_13DAF8
13DADE:  LDR             R0, [R4,#8]; lpsrc
13DAE0:  CBZ             R0, locret_13DAF8
13DAE2:  LDR             R1, =(off_234BA8 - 0x13DAEC)
13DAE4:  MOVS            R3, #0; s2d
13DAE6:  LDR             R2, =(_ZTIN7ListBox5PanelE - 0x13DAEE); `typeinfo for'ListBox::Panel ...
13DAE8:  ADD             R1, PC; off_234BA8
13DAEA:  ADD             R2, PC; lpdtype
13DAEC:  LDR             R1, [R1]; lpstype
13DAEE:  BLX             j___dynamic_cast
13DAF2:  CBZ             R0, locret_13DAF8
13DAF4:  LDR             R1, [R4,#0x54]
13DAF6:  STR             R1, [R0,#0x5C]
13DAF8:  POP             {R4,R6,R7,PC}
