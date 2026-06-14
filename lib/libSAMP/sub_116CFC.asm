; =========================================================
; Game Engine Function: sub_116CFC
; Address            : 0x116CFC - 0x116D4A
; =========================================================

116CFC:  PUSH            {R4,R6,R7,LR}
116CFE:  ADD             R7, SP, #8
116D00:  MOV             R4, R0
116D02:  BL              sub_1175E4
116D06:  ADD.W           R0, R4, #0x24 ; '$'
116D0A:  BL              sub_1630A8
116D0E:  ADD.W           R0, R4, #0x28 ; '('
116D12:  BL              sub_1630A8
116D16:  ADD.W           R0, R4, #0x2C ; ','
116D1A:  BL              sub_1630A8
116D1E:  ADD.W           R0, R4, #0x30 ; '0'
116D22:  BL              sub_1630A8
116D26:  ADD.W           R0, R4, #0x34 ; '4'
116D2A:  BL              sub_1630A8
116D2E:  ADD.W           R0, R4, #0x38 ; '8'
116D32:  BL              sub_1630A8
116D36:  ADD.W           R0, R4, #0x3C ; '<'
116D3A:  BL              sub_1630A8
116D3E:  ADD.W           R0, R4, #0x40 ; '@'
116D42:  POP.W           {R4,R6,R7,LR}
116D46:  B.W             sub_1630A8
