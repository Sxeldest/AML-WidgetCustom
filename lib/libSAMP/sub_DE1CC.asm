; =========================================================
; Game Engine Function: sub_DE1CC
; Address            : 0xDE1CC - 0xDE22E
; =========================================================

DE1CC:  PUSH            {R4-R7,LR}
DE1CE:  ADD             R7, SP, #0xC
DE1D0:  PUSH.W          {R8}
DE1D4:  MOV             R2, R1
DE1D6:  MOV             R4, R0
DE1D8:  LDR             R0, =(unk_91D40 - 0xDE1E6)
DE1DA:  ADD.W           R8, R2, #0xB
DE1DE:  LDRH.W          R1, [R1,#9]
DE1E2:  ADD             R0, PC; unk_91D40
DE1E4:  LDR             R5, [R2]
DE1E6:  AND.W           R1, R1, #0xF
DE1EA:  LDR             R6, [R7,#arg_0]
DE1EC:  SUBS            R3, R5, R3
DE1EE:  LDRB            R0, [R0,R1]
DE1F0:  IT CC
DE1F2:  MOVCC           R3, #0
DE1F4:  LSRS.W          R1, R3, R0
DE1F8:  SUB.W           R5, R3, R1
DE1FC:  BEQ             loc_DE208
DE1FE:  MOV             R0, R4
DE200:  MOV             R2, R8
DE202:  BL              sub_DD992
DE206:  MOV             R4, R0
DE208:  LDRD.W          R1, R0, [R6]
DE20C:  ADDS            R2, R1, R0
DE20E:  MOV             R0, R4
DE210:  BL              sub_DCF30
DE214:  MOV             R0, R4
DE216:  CBZ             R5, loc_DE228
DE218:  MOV             R1, R5
DE21A:  MOV             R2, R8
DE21C:  POP.W           {R8}
DE220:  POP.W           {R4-R7,LR}
DE224:  B.W             sub_DD992
DE228:  POP.W           {R8}
DE22C:  POP             {R4-R7,PC}
