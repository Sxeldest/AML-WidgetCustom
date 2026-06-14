; =========================================================
; Game Engine Function: sub_DD9D2
; Address            : 0xDD9D2 - 0xDDA0C
; =========================================================

DD9D2:  PUSH            {R4-R7,LR}
DD9D4:  ADD             R7, SP, #0xC
DD9D6:  PUSH.W          {R11}
DD9DA:  MOV             R5, R0
DD9DC:  CBZ             R1, loc_DDA04
DD9DE:  MOV             R4, R2
DD9E0:  MOV             R6, R1
DD9E2:  LDRD.W          R0, R2, [R5,#8]
DD9E6:  ADDS            R1, R0, #1
DD9E8:  CMP             R2, R1
DD9EA:  BCS             loc_DD9F8
DD9EC:  LDR             R0, [R5]
DD9EE:  LDR             R2, [R0]
DD9F0:  MOV             R0, R5
DD9F2:  BLX             R2
DD9F4:  LDR             R0, [R5,#8]
DD9F6:  ADDS            R1, R0, #1
DD9F8:  LDR             R2, [R5,#4]
DD9FA:  SUBS            R6, #1
DD9FC:  LDRB            R3, [R4]
DD9FE:  STR             R1, [R5,#8]
DDA00:  STRB            R3, [R2,R0]
DDA02:  BNE             loc_DD9E2
DDA04:  MOV             R0, R5
DDA06:  POP.W           {R11}
DDA0A:  POP             {R4-R7,PC}
