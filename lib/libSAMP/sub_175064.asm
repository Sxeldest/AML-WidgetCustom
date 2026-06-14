; =========================================================
; Game Engine Function: sub_175064
; Address            : 0x175064 - 0x1750AA
; =========================================================

175064:  PUSH            {R4-R7,LR}
175066:  ADD             R7, SP, #0xC
175068:  PUSH.W          {R8}
17506C:  MOV             R5, R0
17506E:  LDR             R0, [R0,#0x14]
175070:  MOV             R4, R3
175072:  MOV             R6, R2
175074:  MOV             R8, R1
175076:  CBNZ            R0, loc_17508C
175078:  LDR             R0, [R5,#0x4C]
17507A:  CBNZ            R0, loc_175084
17507C:  MOV             R0, R5
17507E:  MOVS            R1, #0
175080:  BL              sub_1750AC
175084:  MOV             R0, R5
175086:  BL              sub_17598C
17508A:  LDR             R0, [R5,#0x14]
17508C:  STR.W           R0, [R8]
175090:  CBZ             R6, loc_175096
175092:  LDR             R0, [R5,#0x1C]
175094:  STR             R0, [R6]
175096:  LDR             R0, [R7,#arg_0]
175098:  CBZ             R4, loc_17509E
17509A:  LDR             R1, [R5,#0x20]
17509C:  STR             R1, [R4]
17509E:  CBZ             R0, loc_1750A4
1750A0:  MOVS            R1, #1
1750A2:  STR             R1, [R0]
1750A4:  POP.W           {R8}
1750A8:  POP             {R4-R7,PC}
