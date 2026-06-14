; =========================================================
; Game Engine Function: _ZN10FlowScreen17SetPreviousScreenEP10MenuScreen
; Address            : 0x29D152 - 0x29D1AC
; =========================================================

29D152:  PUSH            {R4-R7,LR}
29D154:  ADD             R7, SP, #0xC
29D156:  PUSH.W          {R11}
29D15A:  MOV             R5, R1
29D15C:  MOV             R4, R0
29D15E:  LDR             R0, [R5]
29D160:  LDR             R1, [R0,#0x18]
29D162:  MOV             R0, R5
29D164:  BLX             R1
29D166:  CMP             R0, #1
29D168:  BNE             loc_29D1A6
29D16A:  LDRD.W          R0, R6, [R4,#0x18]
29D16E:  LDR             R2, [R5,#0x18]
29D170:  STR             R2, [R4,#0x18]
29D172:  LDR             R1, [R5,#0x1C]
29D174:  CMP             R2, #0
29D176:  STR             R1, [R4,#0x1C]
29D178:  ITTTT NE
29D17A:  LDRNE           R1, [R2,#0x54]
29D17C:  ADDNE           R1, #1
29D17E:  STRNE           R1, [R2,#0x54]
29D180:  LDRNE           R1, [R4,#0x1C]
29D182:  CMP             R1, #0
29D184:  ITTT NE
29D186:  LDRNE           R2, [R1,#0x54]
29D188:  ADDNE           R2, #1
29D18A:  STRNE           R2, [R1,#0x54]
29D18C:  CMP             R0, #0
29D18E:  IT NE
29D190:  BLXNE           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
29D194:  CMP             R6, #0
29D196:  ITT NE
29D198:  MOVNE           R0, R6
29D19A:  BLXNE           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
29D19E:  LDR             R0, [R5,#0x20]
29D1A0:  STR             R0, [R4,#0x20]
29D1A2:  LDR             R0, [R5,#0x24]
29D1A4:  STR             R0, [R4,#0x24]
29D1A6:  POP.W           {R11}
29D1AA:  POP             {R4-R7,PC}
