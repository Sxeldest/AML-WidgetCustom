; =========================================================
; Game Engine Function: sub_F80FC
; Address            : 0xF80FC - 0xF81D0
; =========================================================

F80FC:  PUSH            {R4-R7,LR}
F80FE:  ADD             R7, SP, #0xC
F8100:  PUSH.W          {R11}
F8104:  LDR             R1, =(unk_2402E8 - 0xF8110)
F8106:  VMOV.I32        Q8, #0
F810A:  LDR             R0, =(unk_240318 - 0xF8116)
F810C:  ADD             R1, PC; unk_2402E8
F810E:  VST1.64         {D16-D17}, [R1]!
F8112:  ADD             R0, PC; unk_240318 ; int
F8114:  VST1.64         {D16-D17}, [R1]!
F8118:  VST1.64         {D16-D17}, [R1]
F811C:  MOVW            R1, #0x2760; n
F8120:  BLX             sub_22178C
F8124:  LDR             R0, =(unk_242A78 - 0xF812E)
F8126:  MOVS            R1, #0xD2; n
F8128:  MOVS            R2, #4; c
F812A:  ADD             R0, PC; unk_242A78 ; int
F812C:  BLX             sub_22177C
F8130:  LDR             R0, =(unk_2431E4 - 0xF8142)
F8132:  MOVW            R2, #0xC000
F8136:  LDR             R3, =(unk_242B4C - 0xF8144)
F8138:  MOVW            LR, #0xAA9F
F813C:  LDR             R4, =(unk_242E94 - 0xF8148)
F813E:  ADD             R0, PC; unk_2431E4
F8140:  ADD             R3, PC; unk_242B4C
F8142:  MOVS            R1, #0
F8144:  ADD             R4, PC; unk_242E94
F8146:  MOVT            R2, #0x4479
F814A:  MOV.W           R12, #0x3F800000
F814E:  MOVT            LR, #0x3EAA
F8152:  MOVS            R5, #0
F8154:  STR             R2, [R0,R5]
F8156:  ADDS            R5, #4
F8158:  CMP             R5, #0x2C ; ','
F815A:  BNE             loc_F8154
F815C:  STR.W           R12, [R3,R1,LSL#2]
F8160:  ADDS            R0, #0x2C ; ','
F8162:  STR.W           LR, [R4,R1,LSL#2]
F8166:  ADDS            R1, #1
F8168:  CMP             R1, #0xD2
F816A:  BNE             loc_F8152
F816C:  LDR             R0, =(off_23494C - 0xF8174)
F816E:  LDR             R1, =(dword_2402D0 - 0xF8176)
F8170:  ADD             R0, PC; off_23494C
F8172:  ADD             R1, PC; dword_2402D0
F8174:  LDR             R0, [R0]; dword_23DF24
F8176:  LDR             R2, [R0]
F8178:  LDR             R3, =(dword_2402D8 - 0xF8182)
F817A:  LDR             R5, =(dword_2402DC - 0xF8186)
F817C:  LDR             R6, =(dword_2402E0 - 0xF8188)
F817E:  ADD             R3, PC; dword_2402D8
F8180:  LDR             R0, =(dword_2402CC - 0xF818A)
F8182:  ADD             R5, PC; dword_2402DC
F8184:  ADD             R6, PC; dword_2402E0
F8186:  ADD             R0, PC; dword_2402CC
F8188:  MOV             R12, R0
F818A:  MOV             R0, #0x952126
F8192:  ADD             R0, R2
F8194:  STR             R0, [R1]
F8196:  MOVW            R1, #0x6A90
F819A:  LDR             R4, =(dword_2402D4 - 0xF81AC)
F819C:  MOVT            R1, #0xA2
F81A0:  ADD             R1, R2
F81A2:  STR             R1, [R3]
F81A4:  MOVW            R1, #0x275C
F81A8:  ADD             R4, PC; dword_2402D4
F81AA:  MOVT            R1, #0x95
F81AE:  ADD             R1, R2
F81B0:  STR             R1, [R5]
F81B2:  MOV             R1, #0x9647E4
F81BA:  ADD             R1, R2
F81BC:  STR             R1, [R6]
F81BE:  ADD.W           R1, R0, #0x15A
F81C2:  ADDS            R0, #0x7E ; '~'
F81C4:  STR.W           R1, [R12]
F81C8:  STR             R0, [R4]
F81CA:  POP.W           {R11}
F81CE:  POP             {R4-R7,PC}
