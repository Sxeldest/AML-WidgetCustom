; =========================================================
; Game Engine Function: _ZN11CTheScripts33AddToVehicleModelsBlockedByScriptEi
; Address            : 0x32F0E8 - 0x32F1B0
; =========================================================

32F0E8:  LDR             R1, =(_ZN11CTheScripts28VehicleModelsBlockedByScriptE_ptr - 0x32F0EE)
32F0EA:  ADD             R1, PC; _ZN11CTheScripts28VehicleModelsBlockedByScriptE_ptr
32F0EC:  LDR             R2, [R1]; CTheScripts::VehicleModelsBlockedByScript ...
32F0EE:  LDR             R1, [R2]; CTheScripts::VehicleModelsBlockedByScript
32F0F0:  CMP             R1, R0
32F0F2:  ITT NE
32F0F4:  LDRNE           R3, [R2,#(dword_8198FC - 0x8198F8)]
32F0F6:  CMPNE           R3, R0
32F0F8:  BEQ             locret_32F1AE
32F0FA:  LDR             R3, [R2,#(dword_819900 - 0x8198F8)]
32F0FC:  CMP             R3, R0
32F0FE:  ITT NE
32F100:  LDRNE           R3, [R2,#(dword_819904 - 0x8198F8)]
32F102:  CMPNE           R3, R0
32F104:  BEQ             locret_32F1AE
32F106:  LDR             R3, [R2,#(dword_819908 - 0x8198F8)]
32F108:  CMP             R3, R0
32F10A:  ITT NE
32F10C:  LDRNE           R3, [R2,#(dword_81990C - 0x8198F8)]
32F10E:  CMPNE           R3, R0
32F110:  BEQ             locret_32F1AE
32F112:  LDR             R3, [R2,#(dword_819910 - 0x8198F8)]
32F114:  CMP             R3, R0
32F116:  ITT NE
32F118:  LDRNE           R3, [R2,#(dword_819914 - 0x8198F8)]
32F11A:  CMPNE           R3, R0
32F11C:  BEQ             locret_32F1AE
32F11E:  LDR             R3, [R2,#(dword_819918 - 0x8198F8)]
32F120:  CMP             R3, R0
32F122:  ITT NE
32F124:  LDRNE           R3, [R2,#(dword_81991C - 0x8198F8)]
32F126:  CMPNE           R3, R0
32F128:  BEQ             locret_32F1AE
32F12A:  LDR             R3, [R2,#(dword_819920 - 0x8198F8)]
32F12C:  CMP             R3, R0
32F12E:  ITT NE
32F130:  LDRNE           R3, [R2,#(dword_819924 - 0x8198F8)]
32F132:  CMPNE           R3, R0
32F134:  BEQ             locret_32F1AE
32F136:  LDR             R3, [R2,#(dword_819928 - 0x8198F8)]
32F138:  CMP             R3, R0
32F13A:  ITT NE
32F13C:  LDRNE           R3, [R2,#(dword_81992C - 0x8198F8)]
32F13E:  CMPNE           R3, R0
32F140:  BEQ             locret_32F1AE
32F142:  LDR             R3, [R2,#(dword_819930 - 0x8198F8)]
32F144:  CMP             R3, R0
32F146:  ITT NE
32F148:  LDRNE           R3, [R2,#(dword_819934 - 0x8198F8)]
32F14A:  CMPNE           R3, R0
32F14C:  BEQ             locret_32F1AE
32F14E:  LDR             R3, [R2,#(dword_819938 - 0x8198F8)]
32F150:  CMP             R3, R0
32F152:  ITT NE
32F154:  LDRNE           R3, [R2,#(dword_81993C - 0x8198F8)]
32F156:  CMPNE           R3, R0
32F158:  BEQ             locret_32F1AE
32F15A:  LDR             R3, [R2,#(dword_819940 - 0x8198F8)]
32F15C:  CMP             R3, R0
32F15E:  ITT NE
32F160:  LDRNE           R2, [R2,#(dword_819944 - 0x8198F8)]
32F162:  CMPNE           R2, R0
32F164:  BEQ             locret_32F1AE
32F166:  PUSH            {R7,LR}
32F168:  MOV             R7, SP
32F16A:  LDR             R2, =(_ZN11CTheScripts28VehicleModelsBlockedByScriptE_ptr - 0x32F176)
32F16C:  ADDS            R1, #1
32F16E:  MOV.W           R1, #0
32F172:  ADD             R2, PC; _ZN11CTheScripts28VehicleModelsBlockedByScriptE_ptr
32F174:  IT NE
32F176:  MOVNE           R1, #1
32F178:  LDR             R2, [R2]; CTheScripts::VehicleModelsBlockedByScript ...
32F17A:  ADD.W           LR, R2, R1,LSL#2
32F17E:  BEQ             loc_32F1A6
32F180:  LDR             R3, =(_ZN11CTheScripts28VehicleModelsBlockedByScriptE_ptr - 0x32F186)
32F182:  ADD             R3, PC; _ZN11CTheScripts28VehicleModelsBlockedByScriptE_ptr
32F184:  LDR.W           R12, [R3]; CTheScripts::VehicleModelsBlockedByScript ...
32F188:  LDR.W           R2, [LR]
32F18C:  ADDS            R3, R2, #1
32F18E:  MOV.W           R2, #0
32F192:  IT NE
32F194:  MOVNE           R2, #1
32F196:  ADD             R1, R2
32F198:  UXTB            R2, R1
32F19A:  CMP             R2, #0x13
32F19C:  ADD.W           LR, R12, R2,LSL#2
32F1A0:  BHI             loc_32F1A6
32F1A2:  CMP             R3, #0
32F1A4:  BNE             loc_32F188
32F1A6:  STR.W           R0, [LR]
32F1AA:  POP.W           {R7,LR}
32F1AE:  BX              LR
