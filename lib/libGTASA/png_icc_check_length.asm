; =========================================================
; Game Engine Function: png_icc_check_length
; Address            : 0x1EFAC4 - 0x1EFAFE
; =========================================================

1EFAC4:  PUSH            {R7,LR}
1EFAC6:  MOV             R7, SP
1EFAC8:  SUB             SP, SP, #8
1EFACA:  CMP             R3, #0x83
1EFACC:  BHI             loc_1EFAD6
1EFACE:  LDR.W           R12, =(aTooShort - 0x1EFAD6); "too short"
1EFAD2:  ADD             R12, PC; "too short"
1EFAD4:  B               loc_1EFAEC
1EFAD6:  LDR.W           LR, [R0,#0x340]
1EFADA:  MOV.W           R12, #1
1EFADE:  CMP.W           LR, #0
1EFAE2:  BEQ             loc_1EFAF8
1EFAE4:  CMP             LR, R3
1EFAE6:  BCS             loc_1EFAF8
1EFAE8:  ADR.W           R12, aExceedsApplica; "exceeds application limits"
1EFAEC:  STR.W           R12, [SP,#0x10+var_10]
1EFAF0:  BL              sub_1EF844
1EFAF4:  MOV.W           R12, #0
1EFAF8:  MOV             R0, R12
1EFAFA:  ADD             SP, SP, #8
1EFAFC:  POP             {R7,PC}
