; =========================================================
; Game Engine Function: sub_1055CC
; Address            : 0x1055CC - 0x1055E0
; =========================================================

1055CC:  PUSH            {R7,LR}
1055CE:  MOV             R7, SP
1055D0:  LDR             R1, [R1,#8]
1055D2:  LDR             R2, =(off_114120 - 0x1055D8); "allocator" ...
1055D4:  ADD             R2, PC; off_114120
1055D6:  LDR.W           R1, [R2,R1,LSL#2]; s
1055DA:  BL              sub_FE1E4
1055DE:  POP             {R7,PC}
