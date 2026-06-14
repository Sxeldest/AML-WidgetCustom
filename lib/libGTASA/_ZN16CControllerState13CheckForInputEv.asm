; =========================================================
; Game Engine Function: _ZN16CControllerState13CheckForInputEv
; Address            : 0x3F8256 - 0x3F82D4
; =========================================================

3F8256:  LDRH            R1, [R0,#4]
3F8258:  CBNZ            R1, loc_3F8266
3F825A:  LDRH            R1, [R0,#6]
3F825C:  CMP             R1, #0
3F825E:  ITT EQ
3F8260:  LDRHEQ          R1, [R0]
3F8262:  CMPEQ           R1, #0
3F8264:  BEQ             loc_3F826A
3F8266:  MOVS            R0, #1
3F8268:  BX              LR
3F826A:  LDRH            R1, [R0,#2]
3F826C:  CMP             R1, #0
3F826E:  ITT EQ
3F8270:  LDRHEQ          R1, [R0,#0x10]
3F8272:  CMPEQ           R1, #0
3F8274:  BNE             loc_3F8266
3F8276:  LDRH            R1, [R0,#0x12]
3F8278:  CMP             R1, #0
3F827A:  ITT EQ
3F827C:  LDRHEQ          R1, [R0,#0x14]
3F827E:  CMPEQ           R1, #0
3F8280:  BNE             loc_3F8266
3F8282:  LDRH            R1, [R0,#0x16]
3F8284:  CMP             R1, #0
3F8286:  ITT EQ
3F8288:  LDRHEQ          R1, [R0,#0x1E]
3F828A:  CMPEQ           R1, #0
3F828C:  BNE             loc_3F8266
3F828E:  LDRH            R1, [R0,#0x20]
3F8290:  CMP             R1, #0
3F8292:  ITT EQ
3F8294:  LDRHEQ          R1, [R0,#0x22]
3F8296:  CMPEQ           R1, #0
3F8298:  BNE             loc_3F8266
3F829A:  LDRH            R1, [R0,#0x1C]
3F829C:  CMP             R1, #0
3F829E:  ITT EQ
3F82A0:  LDRHEQ          R1, [R0,#0x18]
3F82A2:  CMPEQ           R1, #0
3F82A4:  BNE             loc_3F8266
3F82A6:  LDRH            R1, [R0,#0x1A]
3F82A8:  CMP             R1, #0
3F82AA:  ITT EQ
3F82AC:  LDRHEQ          R1, [R0,#8]
3F82AE:  CMPEQ           R1, #0
3F82B0:  BNE             loc_3F8266
3F82B2:  LDRH            R1, [R0,#0xA]
3F82B4:  CMP             R1, #0
3F82B6:  ITT EQ
3F82B8:  LDRHEQ          R1, [R0,#0xC]
3F82BA:  CMPEQ           R1, #0
3F82BC:  BNE             loc_3F8266
3F82BE:  LDRH            R1, [R0,#0xE]
3F82C0:  CMP             R1, #0
3F82C2:  ITT EQ
3F82C4:  LDRHEQ          R1, [R0,#0x24]
3F82C6:  CMPEQ           R1, #0
3F82C8:  BNE             loc_3F8266
3F82CA:  LDRH            R0, [R0,#0x26]
3F82CC:  CMP             R0, #0
3F82CE:  IT NE
3F82D0:  MOVNE           R0, #1
3F82D2:  BX              LR
