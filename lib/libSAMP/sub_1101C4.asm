; =========================================================
; Game Engine Function: sub_1101C4
; Address            : 0x1101C4 - 0x110284
; =========================================================

1101C4:  PUSH            {R4-R7,LR}
1101C6:  ADD             R7, SP, #0xC
1101C8:  PUSH.W          {R8-R11}
1101CC:  SUB             SP, SP, #0x4C
1101CE:  MOV             R4, R0
1101D0:  LDR             R0, =(off_23494C - 0x1101DA)
1101D2:  LDR             R1, =(sub_1102D0+1 - 0x1101DE)
1101D4:  MOVS            R2, #0
1101D6:  ADD             R0, PC; off_23494C
1101D8:  MOV             R9, SP
1101DA:  ADD             R1, PC; sub_1102D0
1101DC:  MOV             R3, R4
1101DE:  LDR             R0, [R0]; dword_23DF24
1101E0:  LDR.W           R10, [R0]
1101E4:  MOV             R0, R9
1101E6:  STR             R2, [R4]
1101E8:  MOVS            R2, #0
1101EA:  BL              sub_11034C
1101EE:  ADD.W           R11, SP, #0x68+var_50
1101F2:  MOV             R1, R9
1101F4:  MOV             R0, R11
1101F6:  BL              sub_1104F0
1101FA:  BL              sub_110498
1101FE:  LDR             R0, =(unk_2633B0 - 0x110204)
110200:  ADD             R0, PC; unk_2633B0
110202:  LDR             R6, [R0,#(dword_2633C0 - 0x2633B0)]
110204:  CBNZ            R6, loc_110238
110206:  ADD.W           R8, SP, #0x68+var_50
11020A:  ADD             R0, SP, #0x68+var_38
11020C:  MOV             R1, R8
11020E:  BL              sub_1104F0
110212:  BL              sub_110498
110216:  LDR             R0, =(unk_2633B0 - 0x11021C)
110218:  ADD             R0, PC; unk_2633B0
11021A:  ADD             R5, SP, #0x68+var_38
11021C:  MOV             R1, R5
11021E:  BL              sub_11051C
110222:  LDR             R0, [SP,#0x68+var_28]
110224:  CMP             R5, R0
110226:  BEQ             loc_11022E
110228:  CBZ             R0, loc_110238
11022A:  MOVS            R1, #5
11022C:  B               loc_110230
11022E:  MOVS            R1, #4
110230:  LDR             R2, [R0]
110232:  LDR.W           R1, [R2,R1,LSL#2]
110236:  BLX             R1
110238:  LDR             R0, [SP,#0x68+var_40]
11023A:  CMP             R11, R0
11023C:  BEQ             loc_110244
11023E:  CBZ             R0, loc_11024E
110240:  MOVS            R1, #5
110242:  B               loc_110246
110244:  MOVS            R1, #4
110246:  LDR             R2, [R0]
110248:  LDR.W           R1, [R2,R1,LSL#2]
11024C:  BLX             R1
11024E:  CBNZ            R6, loc_110264
110250:  MOVW            R0, #0xED18
110254:  LDR             R1, =(sub_11045C+1 - 0x110260)
110256:  MOVT            R0, #0x66 ; 'f'
11025A:  ADD             R0, R10
11025C:  ADD             R1, PC; sub_11045C
11025E:  MOV             R2, R4
110260:  BL              sub_164196
110264:  LDR             R0, [SP,#0x68+var_58]
110266:  CMP             R9, R0
110268:  BEQ             loc_110270
11026A:  CBZ             R0, loc_11027A
11026C:  MOVS            R1, #5
11026E:  B               loc_110272
110270:  MOVS            R1, #4
110272:  LDR             R2, [R0]
110274:  LDR.W           R1, [R2,R1,LSL#2]
110278:  BLX             R1
11027A:  MOV             R0, R4
11027C:  ADD             SP, SP, #0x4C ; 'L'
11027E:  POP.W           {R8-R11}
110282:  POP             {R4-R7,PC}
