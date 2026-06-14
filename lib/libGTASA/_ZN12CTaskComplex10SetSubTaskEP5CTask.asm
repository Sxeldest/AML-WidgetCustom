; =========================================================
; Game Engine Function: _ZN12CTaskComplex10SetSubTaskEP5CTask
; Address            : 0x4D6AE2 - 0x4D6B06
; =========================================================

4D6AE2:  PUSH            {R4,R5,R7,LR}
4D6AE4:  ADD             R7, SP, #8
4D6AE6:  MOV             R5, R0
4D6AE8:  MOV             R4, R1
4D6AEA:  LDR             R0, [R5,#8]
4D6AEC:  CMP             R0, R4
4D6AEE:  IT EQ
4D6AF0:  POPEQ           {R4,R5,R7,PC}
4D6AF2:  CMP             R0, #0
4D6AF4:  ITTT NE
4D6AF6:  LDRNE           R1, [R0]
4D6AF8:  LDRNE           R1, [R1,#4]
4D6AFA:  BLXNE           R1
4D6AFC:  CMP             R4, #0
4D6AFE:  STR             R4, [R5,#8]
4D6B00:  IT NE
4D6B02:  STRNE           R5, [R4,#4]
4D6B04:  POP             {R4,R5,R7,PC}
