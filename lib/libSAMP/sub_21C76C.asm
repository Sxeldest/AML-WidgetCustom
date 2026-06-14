; =========================================================
; Game Engine Function: sub_21C76C
; Address            : 0x21C76C - 0x21C780
; =========================================================

21C76C:  PUSH            {R7,LR}
21C76E:  MOV             R7, SP
21C770:  LDR             R1, [R1,#8]
21C772:  LDR             R2, =(off_233EE4 - 0x21C778); "allocator" ...
21C774:  ADD             R2, PC; off_233EE4
21C776:  LDR.W           R1, [R2,R1,LSL#2]; s
21C77A:  BL              sub_21563C
21C77E:  POP             {R7,PC}
