; =========================================================
; Game Engine Function: sub_EC880
; Address            : 0xEC880 - 0xEC8D0
; =========================================================

EC880:  SUB             SP, SP, #0xC
EC882:  STR             R0, [SP,#0xC+var_8]
EC884:  LDR             R0, [SP,#0xC+var_8]
EC886:  LDRB            R1, [R0,#8]
EC888:  LSLS            R1, R1, #0x1F
EC88A:  CBZ             R1, loc_EC894
EC88C:  B               loc_EC88E
EC88E:  LDR             R0, [R0]
EC890:  STR             R0, [SP,#0xC+var_4]
EC892:  B               loc_EC8CA
EC894:  MOVS            R1, #0
EC896:  STR             R1, [SP,#0xC+var_C]
EC898:  B               loc_EC89A
EC89A:  LDR             R1, [SP,#0xC+var_C]
EC89C:  LDR             R2, [R0,#4]
EC89E:  CMP             R1, R2
EC8A0:  BCC             loc_EC8A6
EC8A2:  B               loc_EC8A4
EC8A4:  B               loc_EC8C0
EC8A6:  LDRB.W          R12, [R0,#9]
EC8AA:  LDR             R2, [R0]
EC8AC:  LDR             R3, [SP,#0xC+var_C]
EC8AE:  LDRB            R1, [R2,R3]
EC8B0:  EOR.W           R1, R1, R12
EC8B4:  STRB            R1, [R2,R3]
EC8B6:  B               loc_EC8B8
EC8B8:  LDR             R1, [SP,#0xC+var_C]
EC8BA:  ADDS            R1, #1
EC8BC:  STR             R1, [SP,#0xC+var_C]
EC8BE:  B               loc_EC89A
EC8C0:  MOVS            R1, #1
EC8C2:  STRB            R1, [R0,#8]
EC8C4:  LDR             R0, [R0]
EC8C6:  STR             R0, [SP,#0xC+var_4]
EC8C8:  B               loc_EC8CA
EC8CA:  LDR             R0, [SP,#0xC+var_4]
EC8CC:  ADD             SP, SP, #0xC
EC8CE:  BX              LR
