; =========================================================
; Game Engine Function: sub_EC2C0
; Address            : 0xEC2C0 - 0xEC314
; =========================================================

EC2C0:  PUSH            {R4-R7,LR}
EC2C2:  ADD             R7, SP, #0xC
EC2C4:  PUSH.W          {R8,R9,R11}
EC2C8:  MOV             R8, R0
EC2CA:  LDR.W           R6, [R8,#4]!
EC2CE:  CBZ             R6, loc_EC30A
EC2D0:  ADD.W           R4, R8, #4
EC2D4:  MOV             R9, R1
EC2D6:  MOV             R5, R8
EC2D8:  ADD.W           R1, R6, #0x10
EC2DC:  MOV             R0, R4
EC2DE:  MOV             R2, R9
EC2E0:  BL              sub_EA270
EC2E4:  CMP             R0, #0
EC2E6:  MOV             R0, R6
EC2E8:  IT NE
EC2EA:  ADDNE           R0, #4
EC2EC:  LDR             R0, [R0]
EC2EE:  IT EQ
EC2F0:  MOVEQ           R5, R6
EC2F2:  CMP             R0, #0
EC2F4:  MOV             R6, R0
EC2F6:  BNE             loc_EC2D8
EC2F8:  CMP             R5, R8
EC2FA:  BEQ             loc_EC30A
EC2FC:  ADD.W           R2, R5, #0x10
EC300:  MOV             R0, R4
EC302:  MOV             R1, R9
EC304:  BL              sub_EA270
EC308:  CBZ             R0, loc_EC30C
EC30A:  MOV             R5, R8
EC30C:  MOV             R0, R5
EC30E:  POP.W           {R8,R9,R11}
EC312:  POP             {R4-R7,PC}
