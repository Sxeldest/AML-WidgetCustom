; =========================================================
; Game Engine Function: sub_13DD5C
; Address            : 0x13DD5C - 0x13DD7C
; =========================================================

13DD5C:  PUSH            {R7,LR}
13DD5E:  MOV             R7, SP
13DD60:  BL              sub_12BC78
13DD64:  LDR             R1, =(_ZTV11ScrollPanel - 0x13DD74); `vtable for'ScrollPanel ...
13DD66:  MOVS            R2, #0
13DD68:  STRD.W          R2, R2, [R0,#0x54]
13DD6C:  MOVW            R2, #0x101
13DD70:  ADD             R1, PC; `vtable for'ScrollPanel
13DD72:  STRH.W          R2, [R0,#0x5C]
13DD76:  ADDS            R1, #8
13DD78:  STR             R1, [R0]
13DD7A:  POP             {R7,PC}
