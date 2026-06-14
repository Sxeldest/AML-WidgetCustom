; =========================================================
; Game Engine Function: sub_106AB0
; Address            : 0x106AB0 - 0x106AF8
; =========================================================

106AB0:  PUSH            {R4,R6,R7,LR}
106AB2:  ADD             R7, SP, #8
106AB4:  MOV             R4, R0
106AB6:  LDR             R0, [R0,#8]
106AB8:  BL              sub_1082F4
106ABC:  CBZ             R0, loc_106AF4
106ABE:  LDR             R0, [R4,#0x5C]
106AC0:  CBZ             R0, loc_106AF4
106AC2:  LDR.W           R0, [R0,#0x440]
106AC6:  CBZ             R0, loc_106AF4
106AC8:  LDR             R0, [R0,#0x10]
106ACA:  CBZ             R0, loc_106AF4
106ACC:  BL              sub_10944E
106AD0:  MOV             R1, R0
106AD2:  MOVS            R0, #2
106AD4:  CMP.W           R1, #0x2C8
106AD8:  BGE             loc_106AE6
106ADA:  CMP.W           R1, #0x2BC
106ADE:  BEQ             locret_106AF6
106AE0:  MOVW            R0, #0x2BD
106AE4:  B               loc_106AEC
106AE6:  BEQ             locret_106AF6
106AE8:  MOVW            R0, #0x2C9
106AEC:  CMP             R1, R0
106AEE:  ITT EQ
106AF0:  MOVEQ           R0, #1
106AF2:  POPEQ           {R4,R6,R7,PC}
106AF4:  MOVS            R0, #0
106AF6:  POP             {R4,R6,R7,PC}
