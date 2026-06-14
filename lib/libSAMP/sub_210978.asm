; =========================================================
; Game Engine Function: sub_210978
; Address            : 0x210978 - 0x2109C8
; =========================================================

210978:  PUSH            {R4-R7,LR}
21097A:  ADD             R7, SP, #0xC
21097C:  PUSH.W          {R11}
210980:  CMP             R3, R1
210982:  BCS             loc_2109B0
210984:  LDR.W           R12, [R7,#arg_0]
210988:  CMP.W           R12, #0
21098C:  BEQ             loc_2109B0
21098E:  ADD.W           LR, R0, R1
210992:  ADD             R3, R0
210994:  CMP             R3, LR
210996:  BEQ             loc_2109B6
210998:  MOV             R5, R12
21099A:  MOV             R6, R2
21099C:  CBZ             R5, loc_2109AC
21099E:  LDRB.W          R4, [R6],#1
2109A2:  SUBS            R5, #1
2109A4:  LDRB            R1, [R3]
2109A6:  CMP             R1, R4
2109A8:  BNE             loc_21099C
2109AA:  B               loc_2109B8
2109AC:  ADDS            R3, #1
2109AE:  B               loc_210994
2109B0:  MOV.W           R0, #0xFFFFFFFF
2109B4:  B               loc_2109C2
2109B6:  MOV             R3, LR
2109B8:  SUBS            R0, R3, R0
2109BA:  CMP             R3, LR
2109BC:  IT EQ
2109BE:  MOVEQ.W         R0, #0xFFFFFFFF
2109C2:  POP.W           {R11}
2109C6:  POP             {R4-R7,PC}
