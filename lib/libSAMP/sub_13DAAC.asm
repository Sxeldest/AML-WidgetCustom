; =========================================================
; Game Engine Function: sub_13DAAC
; Address            : 0x13DAAC - 0x13DACA
; =========================================================

13DAAC:  PUSH            {R4,R6,R7,LR}
13DAAE:  ADD             R7, SP, #8
13DAB0:  MOV             R4, R1
13DAB2:  BL              sub_12BC78
13DAB6:  LDR             R1, =(_ZTV11ListBoxItem - 0x13DAC4); `vtable for'ListBoxItem ...
13DAB8:  MOV.W           R2, #0xFFFFFFFF
13DABC:  STRB.W          R4, [R0,#0x58]
13DAC0:  ADD             R1, PC; `vtable for'ListBoxItem
13DAC2:  STR             R2, [R0,#0x54]
13DAC4:  ADDS            R1, #8
13DAC6:  STR             R1, [R0]
13DAC8:  POP             {R4,R6,R7,PC}
