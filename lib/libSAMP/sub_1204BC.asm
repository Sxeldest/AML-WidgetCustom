; =========================================================
; Game Engine Function: sub_1204BC
; Address            : 0x1204BC - 0x120522
; =========================================================

1204BC:  PUSH            {R4-R7,LR}
1204BE:  ADD             R7, SP, #0xC
1204C0:  PUSH.W          {R8-R11}
1204C4:  SUB             SP, SP, #0xC
1204C6:  MOVW            R9, #:lower16:unk_27044D
1204CA:  MOV             R8, R3
1204CC:  MOV             R11, R2
1204CE:  MOV             R6, R1
1204D0:  MOV             R10, R0
1204D2:  MOVT            R9, #:upper16:unk_27044D
1204D6:  BL              sub_1082E4
1204DA:  LDR             R5, =(off_23494C - 0x1204E2)
1204DC:  CMP             R0, R6
1204DE:  ADD             R5, PC; off_23494C
1204E0:  BEQ             loc_1204EE
1204E2:  LDR             R0, [R5]; dword_23DF24
1204E4:  LDR             R0, [R0]
1204E6:  ADD             R0, R9
1204E8:  BLX             R0
1204EA:  MOVS            R1, #1
1204EC:  STRB            R1, [R0,#5]
1204EE:  LDR             R0, =(off_2638EC - 0x1204FA)
1204F0:  MOV             R1, R6
1204F2:  MOV             R2, R11
1204F4:  MOV             R3, R8
1204F6:  ADD             R0, PC; off_2638EC
1204F8:  LDR             R4, [R0]
1204FA:  LDR             R0, [R7,#arg_0]
1204FC:  STR             R0, [SP,#0x28+var_28]
1204FE:  LDR             R0, [R7,#arg_4]
120500:  STR             R0, [SP,#0x28+var_24]
120502:  LDR             R0, [R7,#arg_8]
120504:  STR             R0, [SP,#0x28+var_20]
120506:  MOV             R0, R10
120508:  BLX             R4
12050A:  MOV             R4, R0
12050C:  LDR             R0, [R5]; dword_23DF24
12050E:  LDR             R0, [R0]
120510:  ADD             R0, R9
120512:  BLX             R0
120514:  MOVS            R1, #0
120516:  STRB            R1, [R0,#5]
120518:  MOV             R0, R4
12051A:  ADD             SP, SP, #0xC
12051C:  POP.W           {R8-R11}
120520:  POP             {R4-R7,PC}
