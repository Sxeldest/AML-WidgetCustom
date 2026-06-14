; =========================================================
; Game Engine Function: sub_123AF0
; Address            : 0x123AF0 - 0x123B24
; =========================================================

123AF0:  PUSH            {R4-R7,LR}
123AF2:  ADD             R7, SP, #0xC
123AF4:  PUSH.W          {R11}
123AF8:  MOV             R4, R0
123AFA:  BL              sub_163768
123AFE:  LDRH            R6, [R4,#4]
123B00:  MOV             R5, R0
123B02:  BL              sub_163768
123B06:  LDR.W           R1, [R5,R6,LSL#2]
123B0A:  LDR.W           R2, [R0,#0x774]
123B0E:  STR.W           R2, [R5,R6,LSL#2]
123B12:  STR.W           R1, [R0,#0x774]
123B16:  LDR             R0, [R4]
123B18:  LDRH            R1, [R4,#4]
123B1A:  STRH            R1, [R0]
123B1C:  MOV             R0, R4
123B1E:  POP.W           {R11}
123B22:  POP             {R4-R7,PC}
