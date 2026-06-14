; =========================================================
; Game Engine Function: sub_A40F8
; Address            : 0xA40F8 - 0xA41EC
; =========================================================

A40F8:  PUSH            {R4,R6,R7,LR}
A40FA:  ADD             R7, SP, #8
A40FC:  LDRD.W          R1, R3, [R0,#4]
A4100:  CMP             R1, R3
A4102:  BGE             loc_A4188
A4104:  LDR.W           R12, [R0]
A4108:  ADD.W           LR, R1, #1
A410C:  STR.W           LR, [R0,#4]
A4110:  LDRB.W          R2, [R12,R1]
A4114:  SUB.W           R4, R2, #0x20 ; ' '
A4118:  UXTB            R4, R4
A411A:  CMP             R4, #0xD6
A411C:  BHI             loc_A4124
A411E:  SUB.W           R0, R2, #0x8B
A4122:  POP             {R4,R6,R7,PC}
A4124:  ADD.W           R4, R2, #9
A4128:  UXTB            R4, R4
A412A:  CMP             R4, #3
A412C:  BHI             loc_A413E
A412E:  LSLS            R2, R2, #8
A4130:  CMP             LR, R3
A4132:  BGE             loc_A4162
A4134:  ADDS            R1, #2
A4136:  STR             R1, [R0,#4]
A4138:  LDRB.W          R0, [R12,LR]
A413C:  B               loc_A4164
A413E:  ADDS            R4, R2, #5
A4140:  UXTB            R4, R4
A4142:  CMP             R4, #3
A4144:  BHI             loc_A416E
A4146:  MOVS            R4, #0
A4148:  SUB.W           R2, R4, R2,LSL#8
A414C:  CMP             LR, R3
A414E:  ITTT LT
A4150:  ADDLT           R1, #2
A4152:  STRLT           R1, [R0,#4]
A4154:  LDRBLT.W        R4, [R12,LR]
A4158:  SUBS            R0, R2, R4
A415A:  MOVW            R1, #0xFA94
A415E:  ADD             R0, R1
A4160:  POP             {R4,R6,R7,PC}
A4162:  MOVS            R0, #0
A4164:  ADD             R0, R2
A4166:  MOVW            R1, #0xF694
A416A:  SUBS            R0, R0, R1
A416C:  POP             {R4,R6,R7,PC}
A416E:  CMP             R2, #0x1D
A4170:  BEQ             loc_A418C
A4172:  CMP             R2, #0x1C
A4174:  BNE             loc_A4188
A4176:  CMP             LR, R3
A4178:  BGE             loc_A419E
A417A:  ADDS            R2, R1, #2
A417C:  STR             R2, [R0,#4]
A417E:  LDRB.W          R1, [R12,LR]
A4182:  MOV             LR, R2
A4184:  LSLS            R1, R1, #8
A4186:  B               loc_A41D4
A4188:  MOVS            R0, #0
A418A:  POP             {R4,R6,R7,PC}
A418C:  CMP             LR, R3
A418E:  BGE             loc_A41A2
A4190:  ADDS            R2, R1, #2
A4192:  STR             R2, [R0,#4]
A4194:  LDRB.W          R1, [R12,LR]
A4198:  MOV             LR, R2
A419A:  LSLS            R1, R1, #8
A419C:  B               loc_A41A4
A419E:  MOVS            R1, #0
A41A0:  B               loc_A41D4
A41A2:  MOVS            R1, #0
A41A4:  CMP             LR, R3
A41A6:  BGE             loc_A41B6
A41A8:  ADD.W           R4, LR, #1
A41AC:  STR             R4, [R0,#4]
A41AE:  LDRB.W          R2, [R12,LR]
A41B2:  MOV             LR, R4
A41B4:  B               loc_A41B8
A41B6:  MOVS            R2, #0
A41B8:  ORRS            R1, R2
A41BA:  CMP             LR, R3
A41BC:  BGE             loc_A41CE
A41BE:  ADD.W           R4, LR, #1
A41C2:  STR             R4, [R0,#4]
A41C4:  LDRB.W          R2, [R12,LR]
A41C8:  MOV             LR, R4
A41CA:  LSLS            R2, R2, #8
A41CC:  B               loc_A41D0
A41CE:  MOVS            R2, #0
A41D0:  ORR.W           R1, R2, R1,LSL#16
A41D4:  CMP             LR, R3
A41D6:  BGE             loc_A41E6
A41D8:  ADD.W           R2, LR, #1
A41DC:  STR             R2, [R0,#4]
A41DE:  LDRB.W          R0, [R12,LR]
A41E2:  ORRS            R0, R1
A41E4:  POP             {R4,R6,R7,PC}
A41E6:  MOVS            R0, #0
A41E8:  ORRS            R0, R1
A41EA:  POP             {R4,R6,R7,PC}
