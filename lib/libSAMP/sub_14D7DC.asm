; =========================================================
; Game Engine Function: sub_14D7DC
; Address            : 0x14D7DC - 0x14D81A
; =========================================================

14D7DC:  PUSH            {R7,LR}
14D7DE:  MOV             R7, SP
14D7E0:  SUB             SP, SP, #0x118
14D7E2:  LDRD.W          R1, R0, [R0]; src
14D7E6:  MOVS            R3, #0
14D7E8:  ASRS            R2, R0, #0x1F
14D7EA:  ADD.W           R0, R0, R2,LSR#29
14D7EE:  MOVS            R2, #1
14D7F0:  ADD.W           R2, R2, R0,ASR#3; size
14D7F4:  MOV             R0, SP; int
14D7F6:  BL              sub_17D4F2
14D7FA:  SUBS            R1, R7, #1; int
14D7FC:  MOVS            R2, #8
14D7FE:  MOVS            R3, #1
14D800:  BL              sub_17D786
14D804:  LDRB.W          R1, [R7,#-1]
14D808:  LDR             R0, =(unk_B958C - 0x14D80E)
14D80A:  ADD             R0, PC; unk_B958C
14D80C:  BL              sub_107188
14D810:  MOV             R0, SP
14D812:  BL              sub_17D542
14D816:  ADD             SP, SP, #0x118
14D818:  POP             {R7,PC}
