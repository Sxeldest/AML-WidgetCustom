; =========================================================
; Game Engine Function: sub_1459BC
; Address            : 0x1459BC - 0x145A36
; =========================================================

1459BC:  PUSH            {R7,LR}
1459BE:  MOV             R7, SP
1459C0:  SUB             SP, SP, #0x130
1459C2:  LDRD.W          R1, R0, [R0]; src
1459C6:  MOVS            R3, #0
1459C8:  ASRS            R2, R0, #0x1F
1459CA:  ADD.W           R0, R0, R2,LSR#29
1459CE:  MOVS            R2, #1
1459D0:  ADD.W           R2, R2, R0,ASR#3; size
1459D4:  ADD             R0, SP, #0x138+var_11C; int
1459D6:  BL              sub_17D4F2
1459DA:  ADD.W           R1, SP, #0x138+var_11E; int
1459DE:  MOVS            R2, #0x10
1459E0:  MOVS            R3, #1
1459E2:  BL              sub_17D786
1459E6:  ADD             R0, SP, #0x138+var_11C; int
1459E8:  ADD             R1, SP, #0x138+var_124; int
1459EA:  MOVS            R2, #0x20 ; ' '
1459EC:  MOVS            R3, #1
1459EE:  BL              sub_17D786
1459F2:  ADD             R0, SP, #0x138+var_11C; int
1459F4:  ADD             R1, SP, #0x138+var_128; int
1459F6:  MOVS            R2, #0x20 ; ' '
1459F8:  MOVS            R3, #1
1459FA:  BL              sub_17D786
1459FE:  ADD             R0, SP, #0x138+var_11C; int
145A00:  ADD             R1, SP, #0x138+var_12C; int
145A02:  MOVS            R2, #0x20 ; ' '
145A04:  MOVS            R3, #1
145A06:  BL              sub_17D786
145A0A:  ADD             R0, SP, #0x138+var_11C; int
145A0C:  ADD             R1, SP, #0x138+var_130; int
145A0E:  MOVS            R2, #0x20 ; ' '
145A10:  MOVS            R3, #1
145A12:  BL              sub_17D786
145A16:  LDR             R1, [SP,#0x138+var_124]
145A18:  LDRH.W          R0, [SP,#0x138+var_11E]
145A1C:  LDRD.W          R3, R2, [SP,#0x138+var_12C]
145A20:  LDR.W           R12, [SP,#0x138+var_130]
145A24:  STR.W           R12, [SP,#0x138+var_138]
145A28:  BL              sub_F9184
145A2C:  ADD             R0, SP, #0x138+var_11C
145A2E:  BL              sub_17D542
145A32:  ADD             SP, SP, #0x130
145A34:  POP             {R7,PC}
