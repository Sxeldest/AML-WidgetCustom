; =========================================================
; Game Engine Function: _Z15QueueImmCPUDatav
; Address            : 0x1B514C - 0x1B5294
; =========================================================

1B514C:  PUSH            {R4-R7,LR}
1B514E:  ADD             R7, SP, #0xC
1B5150:  PUSH.W          {R11}
1B5154:  LDR             R0, =(renderQueue_ptr - 0x1B515C)
1B5156:  LDR             R1, =(Imm_ptr - 0x1B515E)
1B5158:  ADD             R0, PC; renderQueue_ptr
1B515A:  ADD             R1, PC; Imm_ptr
1B515C:  LDR             R0, [R0]; renderQueue
1B515E:  LDR             R1, [R1]; Imm
1B5160:  LDR             R6, [R0]
1B5162:  LDR.W           R0, [R6,#0x274]
1B5166:  ADDS            R0, #3
1B5168:  BIC.W           R4, R0, #3
1B516C:  STR.W           R4, [R6,#0x274]
1B5170:  LDR             R1, [R1,#(dword_6B32B4 - 0x6B32A4)]
1B5172:  CBZ             R1, loc_1B51A6
1B5174:  LDR             R0, =(Imm_ptr - 0x1B517A)
1B5176:  ADD             R0, PC; Imm_ptr
1B5178:  LDR             R0, [R0]; Imm
1B517A:  LDR             R5, [R0,#(dword_6B32AC - 0x6B32A4)]
1B517C:  MOV             R0, R5
1B517E:  BLX             __aeabi_idiv
1B5182:  CMP             R0, #1
1B5184:  BLT             loc_1B51A6
1B5186:  LDR             R0, =(Imm_ptr - 0x1B518E)
1B5188:  MOV             R2, R5; size_t
1B518A:  ADD             R0, PC; Imm_ptr
1B518C:  LDR             R0, [R0]; Imm
1B518E:  LDR             R1, [R0]; void *
1B5190:  MOV             R0, R4; void *
1B5192:  BLX             memcpy_1
1B5196:  ADDS            R1, R5, #3
1B5198:  LDR.W           R0, [R6,#0x274]
1B519C:  BIC.W           R1, R1, #3
1B51A0:  ADD             R0, R1
1B51A2:  STR.W           R0, [R6,#0x274]
1B51A6:  LDR             R0, =(Imm_ptr - 0x1B51AC)
1B51A8:  ADD             R0, PC; Imm_ptr
1B51AA:  LDR             R0, [R0]; Imm
1B51AC:  LDR             R1, [R0,#(dword_6B32CC - 0x6B32A4)]
1B51AE:  CBZ             R1, loc_1B51EC
1B51B0:  LDR             R0, =(Imm_ptr - 0x1B51B6)
1B51B2:  ADD             R0, PC; Imm_ptr
1B51B4:  LDR             R0, [R0]; Imm
1B51B6:  LDR             R4, [R0,#(dword_6B32C4 - 0x6B32A4)]
1B51B8:  MOV             R0, R4
1B51BA:  BLX             __aeabi_idiv
1B51BE:  CMP             R0, #1
1B51C0:  BLT             loc_1B51EC
1B51C2:  LDR             R0, =(renderQueue_ptr - 0x1B51CC)
1B51C4:  MOV             R2, R4; size_t
1B51C6:  LDR             R1, =(Imm_ptr - 0x1B51CE)
1B51C8:  ADD             R0, PC; renderQueue_ptr
1B51CA:  ADD             R1, PC; Imm_ptr
1B51CC:  LDR             R0, [R0]; renderQueue
1B51CE:  LDR             R1, [R1]; Imm
1B51D0:  LDR             R5, [R0]
1B51D2:  LDR             R1, [R1,#(dword_6B32BC - 0x6B32A4)]; void *
1B51D4:  LDR.W           R0, [R5,#0x274]; void *
1B51D8:  BLX             memcpy_1
1B51DC:  ADDS            R1, R4, #3
1B51DE:  LDR.W           R0, [R5,#0x274]
1B51E2:  BIC.W           R1, R1, #3
1B51E6:  ADD             R0, R1
1B51E8:  STR.W           R0, [R5,#0x274]
1B51EC:  LDR             R0, =(Imm_ptr - 0x1B51F2)
1B51EE:  ADD             R0, PC; Imm_ptr
1B51F0:  LDR             R0, [R0]; Imm
1B51F2:  LDR             R1, [R0,#(dword_6B32E4 - 0x6B32A4)]
1B51F4:  CBZ             R1, loc_1B5232
1B51F6:  LDR             R0, =(Imm_ptr - 0x1B51FC)
1B51F8:  ADD             R0, PC; Imm_ptr
1B51FA:  LDR             R0, [R0]; Imm
1B51FC:  LDR             R4, [R0,#(dword_6B32DC - 0x6B32A4)]
1B51FE:  MOV             R0, R4
1B5200:  BLX             __aeabi_idiv
1B5204:  CMP             R0, #1
1B5206:  BLT             loc_1B5232
1B5208:  LDR             R0, =(renderQueue_ptr - 0x1B5212)
1B520A:  MOV             R2, R4; size_t
1B520C:  LDR             R1, =(Imm_ptr - 0x1B5214)
1B520E:  ADD             R0, PC; renderQueue_ptr
1B5210:  ADD             R1, PC; Imm_ptr
1B5212:  LDR             R0, [R0]; renderQueue
1B5214:  LDR             R1, [R1]; Imm
1B5216:  LDR             R5, [R0]
1B5218:  LDR             R1, [R1,#(dword_6B32D4 - 0x6B32A4)]; void *
1B521A:  LDR.W           R0, [R5,#0x274]; void *
1B521E:  BLX             memcpy_1
1B5222:  ADDS            R1, R4, #3
1B5224:  LDR.W           R0, [R5,#0x274]
1B5228:  BIC.W           R1, R1, #3
1B522C:  ADD             R0, R1
1B522E:  STR.W           R0, [R5,#0x274]
1B5232:  LDR             R0, =(Imm_ptr - 0x1B5238)
1B5234:  ADD             R0, PC; Imm_ptr
1B5236:  LDR             R0, [R0]; Imm
1B5238:  LDR             R1, [R0,#(dword_6B32FC - 0x6B32A4)]
1B523A:  CBZ             R1, loc_1B5278
1B523C:  LDR             R0, =(Imm_ptr - 0x1B5242)
1B523E:  ADD             R0, PC; Imm_ptr
1B5240:  LDR             R0, [R0]; Imm
1B5242:  LDR             R4, [R0,#(dword_6B32F4 - 0x6B32A4)]
1B5244:  MOV             R0, R4
1B5246:  BLX             __aeabi_idiv
1B524A:  CMP             R0, #1
1B524C:  BLT             loc_1B5278
1B524E:  LDR             R0, =(renderQueue_ptr - 0x1B5258)
1B5250:  MOV             R2, R4; size_t
1B5252:  LDR             R1, =(Imm_ptr - 0x1B525A)
1B5254:  ADD             R0, PC; renderQueue_ptr
1B5256:  ADD             R1, PC; Imm_ptr
1B5258:  LDR             R0, [R0]; renderQueue
1B525A:  LDR             R1, [R1]; Imm
1B525C:  LDR             R5, [R0]
1B525E:  LDR             R1, [R1,#(dword_6B32EC - 0x6B32A4)]; void *
1B5260:  LDR.W           R0, [R5,#0x274]; void *
1B5264:  BLX             memcpy_1
1B5268:  ADDS            R1, R4, #3
1B526A:  LDR.W           R0, [R5,#0x274]
1B526E:  BIC.W           R1, R1, #3
1B5272:  ADD             R0, R1
1B5274:  STR.W           R0, [R5,#0x274]
1B5278:  LDR             R0, =(renderQueue_ptr - 0x1B527E)
1B527A:  ADD             R0, PC; renderQueue_ptr
1B527C:  LDR             R0, [R0]; renderQueue
1B527E:  LDR             R0, [R0]
1B5280:  LDR.W           R1, [R0,#0x274]
1B5284:  ADDS            R1, #3
1B5286:  BIC.W           R1, R1, #3
1B528A:  STR.W           R1, [R0,#0x274]
1B528E:  POP.W           {R11}
1B5292:  POP             {R4-R7,PC}
