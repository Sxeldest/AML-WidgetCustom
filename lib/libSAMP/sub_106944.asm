; =========================================================
; Game Engine Function: sub_106944
; Address            : 0x106944 - 0x106A2C
; =========================================================

106944:  PUSH            {R4-R7,LR}
106946:  ADD             R7, SP, #0xC
106948:  PUSH.W          {R8}
10694C:  SUB             SP, SP, #0x48
10694E:  MOV             R4, R0
106950:  LDRB.W          R0, [R0,#0x40]
106954:  CMP             R0, #0
106956:  BNE             loc_106A24
106958:  LDR             R0, [R4,#0x5C]
10695A:  CMP             R0, #0
10695C:  BEQ             loc_106A24
10695E:  LDR             R0, [R4,#8]
106960:  BL              sub_1082F4
106964:  CMP             R0, #0
106966:  BEQ             loc_106A24
106968:  LDRB.W          R0, [R4,#0x60]
10696C:  CBNZ            R0, loc_1069C2
10696E:  MOVS            R0, #0
106970:  MOVS            R3, #1
106972:  MOVT            R0, #0x4010
106976:  LDR             R1, =(aPissLoop - 0x106998); "PISS_LOOP" ...
106978:  LDR             R2, =(aPaulnmac - 0x10699E); "PAULNMAC" ...
10697A:  ADD.W           LR, SP, #0x58+var_1C
10697E:  STR             R0, [SP,#0x58+var_14]
106980:  MOVS            R0, #0
106982:  STRB.W          R3, [R7,#var_19]
106986:  SUB.W           R3, R7, #-var_1A
10698A:  STR             R0, [SP,#0x58+var_18]
10698C:  SUB.W           R5, R7, #-var_19
106990:  STRB.W          R0, [R7,#var_1A]
106994:  ADD             R1, PC; "PISS_LOOP"
106996:  STRB.W          R0, [R7,#var_1B]
10699A:  ADD             R2, PC; "PAULNMAC"
10699C:  STRB.W          R0, [SP,#0x58+var_1C]
1069A0:  MOV.W           R0, #0xFFFFFFFF
1069A4:  STR             R0, [SP,#0x58+var_20]
1069A6:  SUB.W           R0, R7, #-var_1B
1069AA:  STRD.W          R5, R3, [SP,#0x58+var_58]
1069AE:  ADD             R3, SP, #0x58+var_18
1069B0:  STRD.W          R0, LR, [SP,#0x58+var_50]
1069B4:  MOV             R0, R4
1069B6:  ADD.W           R12, SP, #0x58+var_20
1069BA:  STR.W           R12, [SP,#0x58+var_48]
1069BE:  BL              sub_104F28
1069C2:  LDR             R0, =(unk_B38F2 - 0x1069E4)
1069C4:  MOVW            R12, #0x8F5C
1069C8:  LDR             R2, [R4,#8]
1069CA:  MOVT            R12, #0x3FE2
1069CE:  LDR             R1, =(aPetrolcan - 0x1069E6); "PETROLCAN" ...
1069D0:  MOV.W           R5, #0x20000000
1069D4:  MOVW            LR, #0x7AE1
1069D8:  STRD.W          R5, R12, [SP,#0x58+var_50]
1069DC:  MOVW            R12, #0x7AE1
1069E0:  ADD             R0, PC; unk_B38F2
1069E2:  ADD             R1, PC; "PETROLCAN"
1069E4:  ADD.W           R5, R4, #0x50 ; 'P'
1069E8:  MOVS            R3, #0
1069EA:  MOV.W           R8, #1
1069EE:  MOVT            LR, #0xBFB4
1069F2:  MOV.W           R6, #0x40000000
1069F6:  MOVT            R12, #0x3F84
1069FA:  STRD.W          R3, R3, [SP,#0x58+var_58]
1069FE:  STRD.W          R6, LR, [SP,#0x58+var_48]
106A02:  STRD.W          R3, R3, [SP,#0x58+var_40]
106A06:  STRD.W          R6, R12, [SP,#0x58+var_38]
106A0A:  STRD.W          R3, R3, [SP,#0x58+var_30]
106A0E:  STRD.W          R8, R5, [SP,#0x58+var_28]
106A12:  BL              sub_107188
106A16:  LDR             R0, =(unk_B3906 - 0x106A1E)
106A18:  LDR             R1, [R4,#0x50]
106A1A:  ADD             R0, PC; unk_B3906
106A1C:  BL              sub_107188
106A20:  STRB.W          R8, [R4,#0x40]
106A24:  ADD             SP, SP, #0x48 ; 'H'
106A26:  POP.W           {R8}
106A2A:  POP             {R4-R7,PC}
