; =========================================================
; Game Engine Function: sub_17C1DA
; Address            : 0x17C1DA - 0x17C21A
; =========================================================

17C1DA:  PUSH            {R7,LR}
17C1DC:  MOV             R7, SP
17C1DE:  MOVW            R12, #0xFFFD
17C1E2:  ADD.W           LR, R0, #0x68 ; 'h'
17C1E6:  MOVS            R3, #0
17C1E8:  MOVS            R2, #1
17C1EA:  MOVT            R12, #0x7FFF
17C1EE:  LDRB.W          R0, [LR,R3]
17C1F2:  CBZ             R0, loc_17C202
17C1F4:  CBZ             R1, loc_17C214
17C1F6:  CMP             R3, #0x19
17C1F8:  ITT NE
17C1FA:  ANDNE.W         R0, R3, R12
17C1FE:  CMPNE           R0, #4
17C200:  BNE             loc_17C214
17C202:  CMP             R3, #0x1B
17C204:  MOV.W           R2, #0
17C208:  ADD.W           R3, R3, #1
17C20C:  IT CC
17C20E:  MOVCC           R2, #1
17C210:  CMP             R3, #0x1C
17C212:  BNE             loc_17C1EE
17C214:  AND.W           R0, R2, #1
17C218:  POP             {R7,PC}
