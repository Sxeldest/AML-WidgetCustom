; =========================================================
; Game Engine Function: _ZN21CPedGroupIntelligence10FlushTasksEP12CPedTaskPairP4CPed
; Address            : 0x4B410C - 0x4B41EE
; =========================================================

4B410C:  PUSH            {R4,R5,R7,LR}
4B410E:  ADD             R7, SP, #8
4B4110:  MOV             R5, R2
4B4112:  MOV             R4, R1
4B4114:  CMP             R5, #0
4B4116:  ITT NE
4B4118:  LDRNE           R0, [R4]
4B411A:  CMPNE           R0, R5
4B411C:  BNE             loc_4B4132
4B411E:  LDR             R0, [R4,#4]
4B4120:  CMP             R0, #0
4B4122:  ITTT NE
4B4124:  LDRNE           R1, [R0]
4B4126:  LDRNE           R1, [R1,#4]
4B4128:  BLXNE           R1
4B412A:  MOVS            R0, #0
4B412C:  CMP             R5, #0
4B412E:  STR             R0, [R4,#4]
4B4130:  BEQ             loc_4B4138
4B4132:  LDR             R0, [R4,#0x14]
4B4134:  CMP             R0, R5
4B4136:  BNE             loc_4B414C
4B4138:  LDR             R0, [R4,#0x18]
4B413A:  CMP             R0, #0
4B413C:  ITTT NE
4B413E:  LDRNE           R1, [R0]
4B4140:  LDRNE           R1, [R1,#4]
4B4142:  BLXNE           R1
4B4144:  MOVS            R0, #0
4B4146:  CMP             R5, #0
4B4148:  STR             R0, [R4,#0x18]
4B414A:  BEQ             loc_4B4152
4B414C:  LDR             R0, [R4,#0x28]
4B414E:  CMP             R0, R5
4B4150:  BNE             loc_4B4166
4B4152:  LDR             R0, [R4,#0x2C]
4B4154:  CMP             R0, #0
4B4156:  ITTT NE
4B4158:  LDRNE           R1, [R0]
4B415A:  LDRNE           R1, [R1,#4]
4B415C:  BLXNE           R1
4B415E:  MOVS            R0, #0
4B4160:  CMP             R5, #0
4B4162:  STR             R0, [R4,#0x2C]
4B4164:  BEQ             loc_4B416C
4B4166:  LDR             R0, [R4,#0x3C]
4B4168:  CMP             R0, R5
4B416A:  BNE             loc_4B4180
4B416C:  LDR             R0, [R4,#0x40]
4B416E:  CMP             R0, #0
4B4170:  ITTT NE
4B4172:  LDRNE           R1, [R0]
4B4174:  LDRNE           R1, [R1,#4]
4B4176:  BLXNE           R1
4B4178:  MOVS            R0, #0
4B417A:  CMP             R5, #0
4B417C:  STR             R0, [R4,#0x40]
4B417E:  BEQ             loc_4B4186
4B4180:  LDR             R0, [R4,#0x50]
4B4182:  CMP             R0, R5
4B4184:  BNE             loc_4B419A
4B4186:  LDR             R0, [R4,#0x54]
4B4188:  CMP             R0, #0
4B418A:  ITTT NE
4B418C:  LDRNE           R1, [R0]
4B418E:  LDRNE           R1, [R1,#4]
4B4190:  BLXNE           R1
4B4192:  MOVS            R0, #0
4B4194:  CMP             R5, #0
4B4196:  STR             R0, [R4,#0x54]
4B4198:  BEQ             loc_4B41A0
4B419A:  LDR             R0, [R4,#0x64]
4B419C:  CMP             R0, R5
4B419E:  BNE             loc_4B41B4
4B41A0:  LDR             R0, [R4,#0x68]
4B41A2:  CMP             R0, #0
4B41A4:  ITTT NE
4B41A6:  LDRNE           R1, [R0]
4B41A8:  LDRNE           R1, [R1,#4]
4B41AA:  BLXNE           R1
4B41AC:  MOVS            R0, #0
4B41AE:  CMP             R5, #0
4B41B0:  STR             R0, [R4,#0x68]
4B41B2:  BEQ             loc_4B41BA
4B41B4:  LDR             R0, [R4,#0x78]
4B41B6:  CMP             R0, R5
4B41B8:  BNE             loc_4B41CE
4B41BA:  LDR             R0, [R4,#0x7C]
4B41BC:  CMP             R0, #0
4B41BE:  ITTT NE
4B41C0:  LDRNE           R1, [R0]
4B41C2:  LDRNE           R1, [R1,#4]
4B41C4:  BLXNE           R1
4B41C6:  MOVS            R0, #0
4B41C8:  CMP             R5, #0
4B41CA:  STR             R0, [R4,#0x7C]
4B41CC:  BEQ             loc_4B41D8
4B41CE:  LDR.W           R0, [R4,#0x8C]
4B41D2:  CMP             R0, R5
4B41D4:  IT NE
4B41D6:  POPNE           {R4,R5,R7,PC}
4B41D8:  LDR.W           R0, [R4,#0x90]
4B41DC:  CMP             R0, #0
4B41DE:  ITTT NE
4B41E0:  LDRNE           R1, [R0]
4B41E2:  LDRNE           R1, [R1,#4]
4B41E4:  BLXNE           R1
4B41E6:  MOVS            R0, #0
4B41E8:  STR.W           R0, [R4,#0x90]
4B41EC:  POP             {R4,R5,R7,PC}
