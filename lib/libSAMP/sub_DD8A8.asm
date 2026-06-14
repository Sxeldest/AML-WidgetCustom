; =========================================================
; Game Engine Function: sub_DD8A8
; Address            : 0xDD8A8 - 0xDD936
; =========================================================

DD8A8:  PUSH            {R4-R7,LR}
DD8AA:  ADD             R7, SP, #0xC
DD8AC:  PUSH.W          {R8-R10}
DD8B0:  MOV             R5, R0
DD8B2:  LDR             R0, =(unk_91CE0 - 0xDD8C0)
DD8B4:  LDRH.W          R2, [R1,#9]
DD8B8:  ADD.W           R8, R1, #0xB
DD8BC:  ADD             R0, PC; unk_91CE0
DD8BE:  LDR             R6, [R1]
DD8C0:  AND.W           R2, R2, #0xF
DD8C4:  LDR.W           R10, [R7,#arg_0]
DD8C8:  SUBS            R4, R6, R3
DD8CA:  LDRB            R0, [R0,R2]
DD8CC:  IT CC
DD8CE:  MOVCC           R4, #0
DD8D0:  LSRS.W          R6, R4, R0
DD8D4:  BEQ             loc_DD8E2
DD8D6:  MOV             R0, R5
DD8D8:  MOV             R1, R6
DD8DA:  MOV             R2, R8
DD8DC:  BL              sub_DD992
DD8E0:  MOV             R5, R0
DD8E2:  LDR.W           R0, [R10]
DD8E6:  SUB.W           R9, R4, R6
DD8EA:  LDR             R6, [R0]
DD8EC:  CBZ             R6, loc_DD90A
DD8EE:  LDRD.W          R0, R2, [R5,#8]
DD8F2:  ADDS            R1, R0, #1
DD8F4:  CMP             R2, R1
DD8F6:  BCS             loc_DD904
DD8F8:  LDR             R0, [R5]
DD8FA:  LDR             R2, [R0]
DD8FC:  MOV             R0, R5
DD8FE:  BLX             R2
DD900:  LDR             R0, [R5,#8]
DD902:  ADDS            R1, R0, #1
DD904:  LDR             R2, [R5,#4]
DD906:  STR             R1, [R5,#8]
DD908:  STRB            R6, [R2,R0]
DD90A:  LDR.W           R1, [R10,#0xC]
DD90E:  LDRD.W          R0, R2, [R10,#4]
DD912:  LDR             R3, [R1]
DD914:  MOV             R1, R5
DD916:  BL              sub_DDA0C
DD91A:  CMP.W           R9, #0
DD91E:  BEQ             loc_DD930
DD920:  MOV             R1, R9
DD922:  MOV             R2, R8
DD924:  POP.W           {R8-R10}
DD928:  POP.W           {R4-R7,LR}
DD92C:  B.W             sub_DD992
DD930:  POP.W           {R8-R10}
DD934:  POP             {R4-R7,PC}
