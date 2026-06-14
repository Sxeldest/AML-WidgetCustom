; =========================================================
; Game Engine Function: sub_FD960
; Address            : 0xFD960 - 0xFDA06
; =========================================================

FD960:  PUSH            {R4-R7,LR}
FD962:  ADD             R7, SP, #0xC
FD964:  PUSH.W          {R8}
FD968:  SUB             SP, SP, #0x18
FD96A:  MOV             R5, R1
FD96C:  LDR             R1, =(off_23494C - 0xFD97A)
FD96E:  LDR.W           R8, [R7,#arg_10]
FD972:  MOVW            R4, #0xBBC7
FD976:  ADD             R1, PC; off_23494C
FD978:  MOVT            R4, #0x5D ; ']'
FD97C:  LDR             R1, [R1]; dword_23DF24
FD97E:  LDR             R1, [R1]
FD980:  SUB.W           R1, LR, R1
FD984:  CMP             R1, R4
FD986:  ITTT NE
FD988:  MOVWNE          R4, #0xBB6F
FD98C:  MOVTNE          R4, #0x5D ; ']'
FD990:  CMPNE           R1, R4
FD992:  BNE             loc_FD9A0
FD994:  BL              sub_1082E4
FD998:  CMP             R0, R5
FD99A:  BEQ             loc_FD9C6
FD99C:  MOV             R0, R8
FD99E:  B               loc_FD9BE
FD9A0:  LDR             R4, =(off_247548 - 0xFD9AE)
FD9A2:  ADD.W           LR, R7, #8
FD9A6:  LDR.W           R12, [R7,#arg_C]
FD9AA:  ADD             R4, PC; off_247548
FD9AC:  LDM.W           LR, {R1,R6,LR}
FD9B0:  LDR             R4, [R4]
FD9B2:  STMEA.W         SP, {R1,R6,LR}
FD9B6:  MOV             R1, R5
FD9B8:  STRD.W          R12, R8, [SP,#0x28+var_1C]
FD9BC:  BLX             R4
FD9BE:  ADD             SP, SP, #0x18
FD9C0:  POP.W           {R8}
FD9C4:  POP             {R4-R7,PC}
FD9C6:  LDR             R0, =(off_23496C - 0xFD9CC)
FD9C8:  ADD             R0, PC; off_23496C
FD9CA:  LDR             R5, [R0]; dword_23DEF4
FD9CC:  LDR             R0, [R5]
FD9CE:  CBZ             R0, loc_FD9DC
FD9D0:  LDR.W           R0, [R0,#0x3B0]
FD9D4:  LDR             R0, [R0]
FD9D6:  CBZ             R0, loc_FD9DC
FD9D8:  BL              sub_1490CE
FD9DC:  LDR             R0, =(off_234970 - 0xFD9E2)
FD9DE:  ADD             R0, PC; off_234970
FD9E0:  LDR             R0, [R0]; dword_23DEF0
FD9E2:  LDR             R0, [R0]
FD9E4:  CBZ             R0, loc_FD9F0
FD9E6:  BL              sub_E35A0
FD9EA:  CBZ             R0, loc_FD9F0
FD9EC:  BL              sub_105A58
FD9F0:  LDR             R0, [R5]
FD9F2:  CMP             R0, #0
FD9F4:  BEQ             loc_FD99C
FD9F6:  LDR.W           R0, [R0,#0x3B0]
FD9FA:  LDR             R0, [R0]
FD9FC:  CMP             R0, #0
FD9FE:  BEQ             loc_FD99C
FDA00:  BL              sub_14912C
FDA04:  B               loc_FD99C
