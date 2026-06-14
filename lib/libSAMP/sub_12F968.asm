; =========================================================
; Game Engine Function: sub_12F968
; Address            : 0x12F968 - 0x12F986
; =========================================================

12F968:  PUSH            {R4,R6,R7,LR}
12F96A:  ADD             R7, SP, #8
12F96C:  MOV             R4, R0
12F96E:  LDR.W           R0, [R0,#0x88]
12F972:  CBZ             R0, locret_12F984
12F974:  LDR             R2, [R0]
12F976:  LDR             R2, [R2,#0x20]
12F978:  BLX             R2
12F97A:  MOV             R0, R4
12F97C:  POP.W           {R4,R6,R7,LR}
12F980:  B.W             sub_12F5E0
12F984:  POP             {R4,R6,R7,PC}
