; =========================================================
; Game Engine Function: sub_13B8BC
; Address            : 0x13B8BC - 0x13B8DC
; =========================================================

13B8BC:  PUSH            {R7,LR}
13B8BE:  MOV             R7, SP
13B8C0:  BL              sub_13D904
13B8C4:  LDR             R1, =(off_234BC8 - 0x13B8CE)
13B8C6:  MOVS            R3, #0
13B8C8:  LDR             R2, =(_ZTV10ListWidget - 0x13B8D0); `vtable for'ListWidget ...
13B8CA:  ADD             R1, PC; off_234BC8
13B8CC:  ADD             R2, PC; `vtable for'ListWidget
13B8CE:  LDR             R1, [R1]; dword_238F54
13B8D0:  ADDS            R2, #8
13B8D2:  STR             R2, [R0]
13B8D4:  LDR             R1, [R1]
13B8D6:  STRD.W          R3, R1, [R0,#0x64]
13B8DA:  POP             {R7,PC}
