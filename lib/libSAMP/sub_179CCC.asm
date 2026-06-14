; =========================================================
; Game Engine Function: sub_179CCC
; Address            : 0x179CCC - 0x179D36
; =========================================================

179CCC:  PUSH            {R4-R7,LR}
179CCE:  ADD             R7, SP, #0xC
179CD0:  PUSH.W          {R8-R10}
179CD4:  MOV             R4, R0
179CD6:  LDR             R0, [R0]
179CD8:  LDRD.W          R9, R8, [R7,#arg_8]
179CDC:  MOV             R5, R1
179CDE:  LDRD.W          R6, R10, [R7,#arg_0]
179CE2:  CBZ             R0, loc_179D08
179CE4:  MOV             R1, R2
179CE6:  MOV             R0, R4
179CE8:  MOV             R2, R3
179CEA:  BL              sub_179D36
179CEE:  CMP             R5, #4
179CF0:  BNE             loc_179D2A
179CF2:  MOV             R0, R4
179CF4:  MOV             R1, R6
179CF6:  MOV             R2, R10
179CF8:  BL              sub_179D36
179CFC:  MOV             R0, R4
179CFE:  MOV             R1, R9
179D00:  MOV             R2, R8
179D02:  BL              sub_179D36
179D06:  B               loc_179D2A
179D08:  LDRD.W          R0, R1, [R4,#0x28]
179D0C:  RSB.W           R1, R1, R1,LSL#3
179D10:  STRH.W          R2, [R0,R1,LSL#1]
179D14:  ADD.W           R0, R0, R1,LSL#1
179D18:  STRB            R5, [R0,#0xC]
179D1A:  STRH.W          R8, [R0,#0xA]
179D1E:  STRH.W          R9, [R0,#8]
179D22:  STRH.W          R10, [R0,#6]
179D26:  STRH            R6, [R0,#4]
179D28:  STRH            R3, [R0,#2]
179D2A:  LDR             R0, [R4,#0x2C]
179D2C:  ADDS            R0, #1
179D2E:  STR             R0, [R4,#0x2C]
179D30:  POP.W           {R8-R10}
179D34:  POP             {R4-R7,PC}
