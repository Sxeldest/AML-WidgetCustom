; =========================================================
; Game Engine Function: sub_FA944
; Address            : 0xFA944 - 0xFA9D6
; =========================================================

FA944:  PUSH            {R4-R7,LR}
FA946:  ADD             R7, SP, #0xC
FA948:  PUSH.W          {R8-R10}
FA94C:  SUB             SP, SP, #0x20
FA94E:  MOV             R6, R0
FA950:  LDRB            R0, [R0]
FA952:  MOV             R9, R3
FA954:  MOV             R5, R2
FA956:  MOV             R8, R1
FA958:  CBZ             R0, loc_FA998
FA95A:  ADD.W           R12, R7, #0x10
FA95E:  LDRD.W          R3, R4, [R7,#arg_0]
FA962:  LDR             R6, [R6,#0x10]
FA964:  LDM.W           R12, {R0,R10,R12}
FA968:  LDRD.W          R2, R1, [R7,#arg_18]
FA96C:  VLDR            S0, [R7,#arg_14]
FA970:  STRD.W          R2, R1, [SP,#0x38+var_24]
FA974:  MOV             R1, R5
FA976:  LDR.W           LR, [R7,#arg_20]
FA97A:  MOV             R2, R9
FA97C:  STRD.W          R4, R0, [SP,#0x38+var_38]
FA980:  MOV             R0, R8
FA982:  STR.W           LR, [SP,#0x38+var_1C]
FA986:  VSTR            S0, [SP,#0x38+var_28]
FA98A:  STRD.W          R10, R12, [SP,#0x38+var_30]
FA98E:  BLX             R6
FA990:  ADD             SP, SP, #0x20 ; ' '
FA992:  POP.W           {R8-R10}
FA996:  POP             {R4-R7,PC}
FA998:  LDR             R1, =(aFollowpedsa - 0xFA9A0); "FollowPedSA" ...
FA99A:  MOV             R0, R5; s1
FA99C:  ADD             R1, PC; "FollowPedSA"
FA99E:  BLX             strcmp
FA9A2:  CMP             R0, #0
FA9A4:  BNE             loc_FA95A
FA9A6:  LDR             R0, =(off_234970 - 0xFA9AC)
FA9A8:  ADD             R0, PC; off_234970
FA9AA:  LDR             R0, [R0]; dword_23DEF0
FA9AC:  LDR             R0, [R0]
FA9AE:  CMP             R0, #0
FA9B0:  BEQ             loc_FA95A
FA9B2:  LDR             R0, =(off_23496C - 0xFA9BC)
FA9B4:  MOVW            R1, #0x13BC
FA9B8:  ADD             R0, PC; off_23496C
FA9BA:  LDR             R0, [R0]; dword_23DEF4
FA9BC:  LDR             R0, [R0]
FA9BE:  LDR.W           R0, [R0,#0x3B0]
FA9C2:  LDR             R0, [R0]
FA9C4:  LDR             R0, [R0,R1]
FA9C6:  CMP             R0, #0
FA9C8:  BEQ             loc_FA95A
FA9CA:  LDR             R0, [R0,#0x1C]
FA9CC:  LDR             R0, [R0,#4]
FA9CE:  CMP             R0, R9
FA9D0:  BNE             loc_FA95A
FA9D2:  MOVS            R0, #0
FA9D4:  B               loc_FA990
