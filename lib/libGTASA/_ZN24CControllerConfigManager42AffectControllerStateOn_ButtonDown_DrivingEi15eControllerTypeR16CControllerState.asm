; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager42AffectControllerStateOn_ButtonDown_DrivingEi15eControllerTypeR16CControllerState
; Address            : 0x3E804C - 0x3E8290
; =========================================================

3E804C:  PUSH            {R4-R7,LR}
3E804E:  ADD             R7, SP, #0xC
3E8050:  PUSH.W          {R11}
3E8054:  ADD.W           R12, R0, R2,LSL#3
3E8058:  MOVW            R5, #0x3B50
3E805C:  MOVW            LR, #0xFF80
3E8060:  LDR.W           R5, [R12,R5]
3E8064:  CMP             R5, R1
3E8066:  ITT EQ
3E8068:  MOVEQ           R5, #0xFF
3E806A:  STRHEQ          R5, [R3,#0x22]
3E806C:  MOVW            R5, #0x3B70
3E8070:  LDR.W           R5, [R12,R5]
3E8074:  CMP             R5, R1
3E8076:  ITT EQ
3E8078:  MOVEQ           R5, #0xFF
3E807A:  STRHEQ          R5, [R3,#8]
3E807C:  MOVW            R5, #0x3D90
3E8080:  LDR.W           R5, [R12,R5]
3E8084:  CMP             R5, R1
3E8086:  ITTT EQ
3E8088:  MOVEQ           R5, #0xFF
3E808A:  STRHEQ          R5, [R3,#0xE]
3E808C:  STRHEQ          R5, [R3,#0xA]
3E808E:  MOVW            R5, #0x3D50
3E8092:  LDR.W           R5, [R12,R5]
3E8096:  CMP             R5, R1
3E8098:  ITT EQ
3E809A:  MOVEQ           R5, #0xFF
3E809C:  STRHEQ          R5, [R3,#0xA]
3E809E:  MOVW            R5, #0x3D70
3E80A2:  LDR.W           R5, [R12,R5]
3E80A6:  CMP             R5, R1
3E80A8:  ITT EQ
3E80AA:  MOVEQ           R5, #0xFF
3E80AC:  STRHEQ          R5, [R3,#0xE]
3E80AE:  MOVW            R5, #0x3DB0
3E80B2:  LDR.W           R5, [R12,R5]
3E80B6:  CMP             R5, R1
3E80B8:  ITT EQ
3E80BA:  MOVEQ           R5, #0xFF
3E80BC:  STRHEQ          R5, [R3,#0x2C]
3E80BE:  MOVW            R5, #0x3CB0
3E80C2:  LDR.W           R5, [R12,R5]
3E80C6:  CMP             R5, R1
3E80C8:  ITT EQ
3E80CA:  MOVEQ           R5, #0xFF
3E80CC:  STRHEQ          R5, [R3,#0x24]
3E80CE:  MOVW            R5, #0x3CF0
3E80D2:  LDR.W           R5, [R12,R5]
3E80D6:  CMP             R5, R1
3E80D8:  ITT EQ
3E80DA:  MOVEQ           R5, #0xFF
3E80DC:  STRHEQ          R5, [R3,#0xC]
3E80DE:  MOVW            R5, #0x3C10
3E80E2:  LDR.W           R5, [R12,R5]
3E80E6:  CMP             R5, R1
3E80E8:  ITT EQ
3E80EA:  MOVEQ           R5, #0xFF
3E80EC:  STRHEQ          R5, [R3,#0x20]
3E80EE:  MOVW            R5, #0x3C30
3E80F2:  LDR.W           R5, [R12,R5]
3E80F6:  CMP             R5, R1
3E80F8:  ITT EQ
3E80FA:  MOVEQ           R5, #0xFF
3E80FC:  STRHEQ          R5, [R3,#0x1C]
3E80FE:  MOVW            R5, #0x3BD0
3E8102:  LDR.W           R4, [R12,R5]
3E8106:  CMP             R4, R1
3E8108:  BNE             loc_3E8124
3E810A:  ADDS            R4, R0, R2
3E810C:  MOVW            R5, #0x4FD4
3E8110:  LDRB            R6, [R4,R5]
3E8112:  CBZ             R6, loc_3E8120
3E8114:  ADD             R4, R5
3E8116:  MOVS            R5, #0
3E8118:  STRH            R5, [R3,#2]
3E811A:  MOVS            R5, #1
3E811C:  STRB            R5, [R4]
3E811E:  B               loc_3E8124
3E8120:  STRH.W          LR, [R3,#2]
3E8124:  MOVW            R4, #0x3BF0
3E8128:  LDR.W           R4, [R12,R4]
3E812C:  CMP             R4, R1
3E812E:  BNE             loc_3E814A
3E8130:  ADDS            R4, R0, R2
3E8132:  MOVW            R5, #0x4FD4
3E8136:  LDRB            R6, [R4,R5]
3E8138:  CBZ             R6, loc_3E8146
3E813A:  ADD             R4, R5
3E813C:  MOVS            R5, #0
3E813E:  STRH            R5, [R3,#2]
3E8140:  MOVS            R5, #1
3E8142:  STRB            R5, [R4]
3E8144:  B               loc_3E814A
3E8146:  MOVS            R4, #0x80
3E8148:  STRH            R4, [R3,#2]
3E814A:  MOVW            R4, #0x3B90
3E814E:  LDR.W           R4, [R12,R4]
3E8152:  CMP             R4, R1
3E8154:  BNE             loc_3E8170
3E8156:  ADDS            R4, R0, R2
3E8158:  MOVW            R5, #0x4FD0
3E815C:  LDRB            R6, [R4,R5]
3E815E:  CBZ             R6, loc_3E816C
3E8160:  ADD             R4, R5
3E8162:  MOVS            R5, #0
3E8164:  STRH            R5, [R3]
3E8166:  MOVS            R5, #1
3E8168:  STRB            R5, [R4]
3E816A:  B               loc_3E8170
3E816C:  STRH.W          LR, [R3]
3E8170:  MOVW            R4, #0x3BB0
3E8174:  LDR.W           R4, [R12,R4]
3E8178:  CMP             R4, R1
3E817A:  BNE             loc_3E8196
3E817C:  ADDS            R4, R0, R2
3E817E:  MOVW            R5, #0x4FD0
3E8182:  LDRB            R6, [R4,R5]
3E8184:  CBZ             R6, loc_3E8192
3E8186:  ADD             R4, R5
3E8188:  MOVS            R5, #0
3E818A:  STRH            R5, [R3]
3E818C:  MOVS            R5, #1
3E818E:  STRB            R5, [R4]
3E8190:  B               loc_3E8196
3E8192:  MOVS            R4, #0x80
3E8194:  STRH            R4, [R3]
3E8196:  MOVW            R4, #0x3C50
3E819A:  LDR.W           R4, [R12,R4]
3E819E:  CMP             R4, R1
3E81A0:  ITT EQ
3E81A2:  MOVEQ           R4, #0xFF
3E81A4:  STRHEQ          R4, [R3,#0x10]
3E81A6:  MOVW            R4, #0x3C70
3E81AA:  LDR.W           R4, [R12,R4]
3E81AE:  CMP             R4, R1
3E81B0:  ITT EQ
3E81B2:  MOVEQ           R4, #0xFF
3E81B4:  STRHEQ          R4, [R3,#0x12]
3E81B6:  MOVW            R4, #0x3C90
3E81BA:  LDR.W           R4, [R12,R4]
3E81BE:  CMP             R4, R1
3E81C0:  ITT EQ
3E81C2:  MOVEQ           R4, #0xFF
3E81C4:  STRHEQ          R4, [R3,#0x2E]
3E81C6:  MOVW            R4, #0x3CD0
3E81CA:  LDR.W           R4, [R12,R4]
3E81CE:  CMP             R4, R1
3E81D0:  ITT EQ
3E81D2:  MOVEQ           R4, #0xFF
3E81D4:  STRHEQ          R4, [R3,#0x26]
3E81D6:  MOVW            R4, #0x3DD0
3E81DA:  LDR.W           R4, [R12,R4]
3E81DE:  CMP             R4, R1
3E81E0:  BNE             loc_3E8202
3E81E2:  LDRH            R6, [R3,#4]
3E81E4:  ADDS            R4, R0, R2
3E81E6:  MOVW            R5, #0x4FD8
3E81EA:  ADD             R4, R5
3E81EC:  CMP             R6, #0x80
3E81EE:  BEQ             loc_3E81F4
3E81F0:  LDRB            R5, [R4]
3E81F2:  CBZ             R5, loc_3E81FE
3E81F4:  MOVS            R5, #0
3E81F6:  STRH            R5, [R3,#4]
3E81F8:  MOVS            R5, #1
3E81FA:  STRB            R5, [R4]
3E81FC:  B               loc_3E8202
3E81FE:  STRH.W          LR, [R3,#4]
3E8202:  MOVW            R4, #0x3DF0
3E8206:  LDR.W           R4, [R12,R4]
3E820A:  CMP             R4, R1
3E820C:  BNE             loc_3E822E
3E820E:  LDRH            R6, [R3,#4]
3E8210:  ADDS            R4, R0, R2
3E8212:  MOVW            R5, #0x4FD8
3E8216:  ADD             R4, R5
3E8218:  CMP             R6, LR
3E821A:  BEQ             loc_3E8220
3E821C:  LDRB            R5, [R4]
3E821E:  CBZ             R5, loc_3E822A
3E8220:  MOVS            R5, #0
3E8222:  STRH            R5, [R3,#4]
3E8224:  MOVS            R5, #1
3E8226:  STRB            R5, [R4]
3E8228:  B               loc_3E822E
3E822A:  MOVS            R4, #0x80
3E822C:  STRH            R4, [R3,#4]
3E822E:  MOVW            R4, #0x3E10
3E8232:  LDR.W           R4, [R12,R4]
3E8236:  CMP             R4, R1
3E8238:  BNE             loc_3E825A
3E823A:  LDRH            R6, [R3,#6]
3E823C:  ADDS            R4, R0, R2
3E823E:  MOVW            R5, #0x4FDC
3E8242:  ADD             R4, R5
3E8244:  CMP             R6, LR
3E8246:  BEQ             loc_3E824C
3E8248:  LDRB            R5, [R4]
3E824A:  CBZ             R5, loc_3E8256
3E824C:  MOVS            R5, #0
3E824E:  STRH            R5, [R3,#6]
3E8250:  MOVS            R5, #1
3E8252:  STRB            R5, [R4]
3E8254:  B               loc_3E825A
3E8256:  MOVS            R4, #0x80
3E8258:  STRH            R4, [R3,#6]
3E825A:  MOVW            R4, #0x3E30
3E825E:  LDR.W           R6, [R12,R4]
3E8262:  CMP             R6, R1
3E8264:  BNE             loc_3E828A
3E8266:  ADD             R0, R2
3E8268:  LDRH            R2, [R3,#6]
3E826A:  MOVW            R1, #0x4FDC
3E826E:  ADD             R0, R1
3E8270:  CMP             R2, #0x80
3E8272:  BEQ             loc_3E8278
3E8274:  LDRB            R1, [R0]
3E8276:  CBZ             R1, loc_3E8286
3E8278:  MOVS            R1, #0
3E827A:  STRH            R1, [R3,#6]
3E827C:  MOVS            R1, #1
3E827E:  STRB            R1, [R0]
3E8280:  POP.W           {R11}
3E8284:  POP             {R4-R7,PC}
3E8286:  STRH.W          LR, [R3,#6]
3E828A:  POP.W           {R11}
3E828E:  POP             {R4-R7,PC}
