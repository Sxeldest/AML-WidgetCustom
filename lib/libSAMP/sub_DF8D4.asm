; =========================================================
; Game Engine Function: sub_DF8D4
; Address            : 0xDF8D4 - 0xDF92E
; =========================================================

DF8D4:  PUSH            {R4-R7,LR}
DF8D6:  ADD             R7, SP, #0xC
DF8D8:  PUSH.W          {R11}
DF8DC:  MOV             R2, R0
DF8DE:  LDR             R0, =(unk_91CE0 - 0xDF8EA)
DF8E0:  MOV             R5, R1
DF8E2:  LDRH.W          R1, [R1,#9]
DF8E6:  ADD             R0, PC; unk_91CE0
DF8E8:  LDR.W           R4, [R5],#0xB
DF8EC:  AND.W           R1, R1, #0xF
DF8F0:  LDR             R6, [R7,#arg_0]
DF8F2:  SUBS            R3, R4, R3
DF8F4:  LDRB            R0, [R0,R1]
DF8F6:  IT CC
DF8F8:  MOVCC           R3, #0
DF8FA:  LSRS.W          R1, R3, R0
DF8FE:  SUB.W           R4, R3, R1
DF902:  BEQ             loc_DF90E
DF904:  MOV             R0, R2
DF906:  MOV             R2, R5
DF908:  BL              sub_DD992
DF90C:  MOV             R2, R0
DF90E:  MOV             R0, R6
DF910:  MOV             R1, R2
DF912:  BL              sub_DF934
DF916:  CBZ             R4, loc_DF928
DF918:  MOV             R1, R4
DF91A:  MOV             R2, R5
DF91C:  POP.W           {R11}
DF920:  POP.W           {R4-R7,LR}
DF924:  B.W             sub_DD992
DF928:  POP.W           {R11}
DF92C:  POP             {R4-R7,PC}
