; =========================================================
; Game Engine Function: sub_1381B4
; Address            : 0x1381B4 - 0x13823A
; =========================================================

1381B4:  PUSH            {R4-R7,LR}
1381B6:  ADD             R7, SP, #0xC
1381B8:  PUSH.W          {R11}
1381BC:  SUB             SP, SP, #0x28
1381BE:  LDR             R3, =(unk_B9357 - 0x1381D2)
1381C0:  MOV             R5, R0
1381C2:  ADD             R0, SP, #0x38+var_20
1381C4:  MOV             R4, R1
1381C6:  STR             R1, [SP,#0x38+var_1C]
1381C8:  ADD             R1, SP, #0x38+var_1C
1381CA:  STRD.W          R1, R0, [SP,#0x38+var_38]
1381CE:  ADD             R3, PC; unk_B9357
1381D0:  ADD.W           R1, R5, #0x88
1381D4:  ADD             R0, SP, #0x38+var_18
1381D6:  MOV             R6, R2
1381D8:  MOV             R2, R4
1381DA:  BL              sub_138B9C
1381DE:  VLDR            S0, =100.0
1381E2:  VMOV            S2, R6
1381E6:  LDR             R0, [SP,#0x38+var_18]
1381E8:  VDIV.F32        S0, S2, S0
1381EC:  STR             R6, [R0,#0x20]
1381EE:  MOVS            R0, #0
1381F0:  STRD.W          R0, R0, [SP,#0x38+var_28]
1381F4:  STRB.W          R0, [SP,#0x38+var_30]
1381F8:  ADD             R0, SP, #0x38+var_30
1381FA:  VCVT.F64.F32    D16, S0
1381FE:  VMOV            R2, R3, D16
138202:  BL              sub_EA660
138206:  ADD.W           R0, R5, #0x60 ; '`'
13820A:  MOV             R1, R4
13820C:  BL              sub_138D5C
138210:  LDRB.W          R1, [SP,#0x38+var_30]
138214:  LDRB            R2, [R0]
138216:  STRB            R1, [R0]
138218:  LDRD.W          R1, R5, [SP,#0x38+var_28]
13821C:  LDRD.W          R3, R6, [R0,#8]
138220:  STRD.W          R1, R5, [R0,#8]
138224:  ADD             R0, SP, #0x38+var_30
138226:  STRB.W          R2, [SP,#0x38+var_30]
13822A:  STRD.W          R3, R6, [SP,#0x38+var_28]
13822E:  BL              sub_E3F7A
138232:  ADD             SP, SP, #0x28 ; '('
138234:  POP.W           {R11}
138238:  POP             {R4-R7,PC}
