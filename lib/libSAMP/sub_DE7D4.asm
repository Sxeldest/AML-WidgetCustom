; =========================================================
; Game Engine Function: sub_DE7D4
; Address            : 0xDE7D4 - 0xDE82E
; =========================================================

DE7D4:  PUSH            {R4-R7,LR}
DE7D6:  ADD             R7, SP, #0xC
DE7D8:  PUSH.W          {R11}
DE7DC:  MOV             R2, R0
DE7DE:  LDR             R0, =(unk_91CE0 - 0xDE7EA)
DE7E0:  MOV             R5, R1
DE7E2:  LDRH.W          R1, [R1,#9]
DE7E6:  ADD             R0, PC; unk_91CE0
DE7E8:  LDR.W           R4, [R5],#0xB
DE7EC:  AND.W           R1, R1, #0xF
DE7F0:  LDR             R6, [R7,#arg_0]
DE7F2:  SUBS            R3, R4, R3
DE7F4:  LDRB            R0, [R0,R1]
DE7F6:  IT CC
DE7F8:  MOVCC           R3, #0
DE7FA:  LSRS.W          R1, R3, R0
DE7FE:  SUB.W           R4, R3, R1
DE802:  BEQ             loc_DE80E
DE804:  MOV             R0, R2
DE806:  MOV             R2, R5
DE808:  BL              sub_DD992
DE80C:  MOV             R2, R0
DE80E:  MOV             R0, R6
DE810:  MOV             R1, R2
DE812:  BL              sub_DE69C
DE816:  CBZ             R4, loc_DE828
DE818:  MOV             R1, R4
DE81A:  MOV             R2, R5
DE81C:  POP.W           {R11}
DE820:  POP.W           {R4-R7,LR}
DE824:  B.W             sub_DD992
DE828:  POP.W           {R11}
DE82C:  POP             {R4-R7,PC}
