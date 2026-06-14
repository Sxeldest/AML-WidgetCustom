; =========================================================
; Game Engine Function: sub_121944
; Address            : 0x121944 - 0x1219E4
; =========================================================

121944:  PUSH            {R4-R7,LR}
121946:  ADD             R7, SP, #0xC
121948:  PUSH.W          {R11}
12194C:  SUB             SP, SP, #0x10
12194E:  CMP             R1, R0
121950:  BEQ             loc_1219DC
121952:  MOV             R5, R0
121954:  LDR             R0, [R0,#0x10]
121956:  MOV             R4, R1
121958:  CMP             R0, R5
12195A:  BEQ             loc_121968
12195C:  LDR             R1, [R4,#0x10]
12195E:  CMP             R4, R1
121960:  BEQ             loc_121984
121962:  STR             R1, [R5,#0x10]
121964:  STR             R0, [R4,#0x10]
121966:  B               loc_1219DC
121968:  LDR             R1, [R4,#0x10]
12196A:  CMP             R1, R4
12196C:  BEQ             loc_12199E
12196E:  LDR             R1, [R0]
121970:  LDR             R2, [R1,#0xC]
121972:  MOV             R1, R4
121974:  BLX             R2
121976:  LDR             R0, [R5,#0x10]
121978:  LDR             R1, [R0]
12197A:  LDR             R1, [R1,#0x10]
12197C:  BLX             R1
12197E:  LDR             R0, [R4,#0x10]
121980:  STR             R0, [R5,#0x10]
121982:  B               loc_1219DA
121984:  LDR             R0, [R1]
121986:  LDR             R2, [R0,#0xC]
121988:  MOV             R0, R1
12198A:  MOV             R1, R5
12198C:  BLX             R2
12198E:  LDR             R0, [R4,#0x10]
121990:  LDR             R1, [R0]
121992:  LDR             R1, [R1,#0x10]
121994:  BLX             R1
121996:  LDR             R0, [R5,#0x10]
121998:  STR             R0, [R4,#0x10]
12199A:  STR             R5, [R5,#0x10]
12199C:  B               loc_1219DC
12199E:  LDR             R1, [R0]
1219A0:  LDR             R2, [R1,#0xC]
1219A2:  MOV             R1, SP
1219A4:  BLX             R2
1219A6:  LDR             R0, [R5,#0x10]
1219A8:  LDR             R1, [R0]
1219AA:  LDR             R1, [R1,#0x10]
1219AC:  BLX             R1
1219AE:  MOVS            R6, #0
1219B0:  STR             R6, [R5,#0x10]
1219B2:  LDR             R0, [R4,#0x10]
1219B4:  LDR             R1, [R0]
1219B6:  LDR             R2, [R1,#0xC]
1219B8:  MOV             R1, R5
1219BA:  BLX             R2
1219BC:  LDR             R0, [R4,#0x10]
1219BE:  LDR             R1, [R0]
1219C0:  LDR             R1, [R1,#0x10]
1219C2:  BLX             R1
1219C4:  LDR             R0, [SP,#0x20+var_20]
1219C6:  STR             R6, [R4,#0x10]
1219C8:  STR             R5, [R5,#0x10]
1219CA:  LDR             R2, [R0,#0xC]
1219CC:  MOV             R0, SP
1219CE:  MOV             R1, R4
1219D0:  BLX             R2
1219D2:  LDR             R0, [SP,#0x20+var_20]
1219D4:  LDR             R1, [R0,#0x10]
1219D6:  MOV             R0, SP
1219D8:  BLX             R1
1219DA:  STR             R4, [R4,#0x10]
1219DC:  ADD             SP, SP, #0x10
1219DE:  POP.W           {R11}
1219E2:  POP             {R4-R7,PC}
