; =========================================================
; Game Engine Function: _Z26_rwStringStreamFindAndReadPcP8RwStream
; Address            : 0x1D5008 - 0x1D5214
; =========================================================

1D5008:  PUSH            {R4-R7,LR}
1D500A:  ADD             R7, SP, #0xC
1D500C:  PUSH.W          {R8-R11}
1D5010:  SUB             SP, SP, #0x9C
1D5012:  MOV             R8, R0
1D5014:  LDR             R0, =(__stack_chk_guard_ptr - 0x1D5022)
1D5016:  MOVW            R10, #0x13
1D501A:  ADD.W           R11, SP, #0xB8+var_A4
1D501E:  ADD             R0, PC; __stack_chk_guard_ptr
1D5020:  ADD             R5, SP, #0xB8+var_A8
1D5022:  ADD             R6, SP, #0xB8+var_AC
1D5024:  MOV             R9, R1
1D5026:  LDR             R0, [R0]; __stack_chk_guard
1D5028:  MOVT            R10, #0x8000
1D502C:  MOVS            R4, #0
1D502E:  LDR             R0, [R0]
1D5030:  STR             R0, [SP,#0xB8+var_20]
1D5032:  MOV             R0, R9
1D5034:  MOV             R1, R11
1D5036:  MOV             R2, R5
1D5038:  MOV             R3, R6
1D503A:  STR             R4, [SP,#0xB8+var_B8]
1D503C:  BLX             j__Z24_rwStreamReadChunkHeaderP8RwStreamPjS1_S1_S1_; _rwStreamReadChunkHeader(RwStream *,uint *,uint *,uint *,uint *)
1D5040:  CMP             R0, #0
1D5042:  BEQ.W           loc_1D51D8
1D5046:  LDR             R0, [SP,#0xB8+var_A4]
1D5048:  CMP             R0, #0x13
1D504A:  BEQ             loc_1D5060
1D504C:  CMP             R0, #2
1D504E:  BEQ             loc_1D5070
1D5050:  LDR             R1, [SP,#0xB8+var_A8]
1D5052:  MOV             R0, R9
1D5054:  BLX             j__Z12RwStreamSkipP8RwStreamj; RwStreamSkip(RwStream *,uint)
1D5058:  CMP             R0, #0
1D505A:  BNE             loc_1D5032
1D505C:  MOVS            R4, #0
1D505E:  B               loc_1D51D8
1D5060:  LDR             R6, [SP,#0xB8+var_A8]
1D5062:  CMP.W           R8, #0
1D5066:  BEQ             loc_1D511E
1D5068:  MOVS            R0, #0
1D506A:  CMP             R6, #0
1D506C:  BNE             loc_1D513C
1D506E:  B               loc_1D51D6
1D5070:  LDR.W           R11, [SP,#0xB8+var_A8]
1D5074:  CMP.W           R8, #0
1D5078:  BNE             loc_1D5094
1D507A:  LDR             R0, =(RwEngineInstance_ptr - 0x1D5080)
1D507C:  ADD             R0, PC; RwEngineInstance_ptr
1D507E:  LDR             R0, [R0]; RwEngineInstance
1D5080:  LDR             R0, [R0]
1D5082:  LDR.W           R1, [R0,#0x12C]
1D5086:  MOV             R0, R11
1D5088:  BLX             R1
1D508A:  MOV             R8, R0
1D508C:  CMP.W           R8, #0
1D5090:  BEQ.W           loc_1D51F4
1D5094:  CMP.W           R11, #0
1D5098:  BEQ.W           loc_1D51D6
1D509C:  ADD.W           R10, SP, #0xB8+var_A0
1D50A0:  MOV             R5, R8
1D50A2:  CMP.W           R11, #0x40 ; '@'
1D50A6:  MOV             R4, R11
1D50A8:  IT CS
1D50AA:  MOVCS           R4, #0x40 ; '@'
1D50AC:  MOV             R0, R9; int
1D50AE:  MOV             R1, R10; void *
1D50B0:  MOV             R2, R4; size_t
1D50B2:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1D50B6:  CMP             R0, R4
1D50B8:  BNE             loc_1D505C
1D50BA:  CMP             R4, #1
1D50BC:  MOV.W           R1, #1
1D50C0:  IT HI
1D50C2:  MOVHI           R1, R4
1D50C4:  CMP             R1, #0x10
1D50C6:  BCS             loc_1D50CC
1D50C8:  MOVS            R0, #0
1D50CA:  B               loc_1D5108
1D50CC:  ANDS.W          R0, R1, #0x70 ; 'p'
1D50D0:  BEQ             loc_1D50EE
1D50D2:  CMP             R4, #1
1D50D4:  MOV.W           R2, #1
1D50D8:  IT HI
1D50DA:  MOVHI           R2, R4
1D50DC:  ADD.W           R3, R10, R2
1D50E0:  CMP             R5, R3
1D50E2:  ITT CC
1D50E4:  ADDCC           R2, R5
1D50E6:  CMPCC           R10, R2
1D50E8:  BCS             loc_1D50F2
1D50EA:  MOVS            R0, #0
1D50EC:  B               loc_1D5108
1D50EE:  MOVS            R0, #0
1D50F0:  B               loc_1D5108
1D50F2:  ADD             R2, SP, #0xB8+var_A0
1D50F4:  MOV             R3, R0
1D50F6:  MOV             R6, R5
1D50F8:  VLD1.8          {D16-D17}, [R2]!
1D50FC:  SUBS            R3, #0x10
1D50FE:  VST1.8          {D16-D17}, [R6]!
1D5102:  BNE             loc_1D50F8
1D5104:  CMP             R1, R0
1D5106:  BEQ             loc_1D5114
1D5108:  LDRB.W          R1, [R10,R0]
1D510C:  STRB            R1, [R5,R0]
1D510E:  ADDS            R0, #1
1D5110:  CMP             R0, R4
1D5112:  BCC             loc_1D5108
1D5114:  ADD             R5, R4
1D5116:  SUBS.W          R11, R11, R4
1D511A:  BNE             loc_1D50A2
1D511C:  B               loc_1D51D6
1D511E:  LDR             R0, =(RwEngineInstance_ptr - 0x1D5124)
1D5120:  ADD             R0, PC; RwEngineInstance_ptr
1D5122:  LDR             R0, [R0]; RwEngineInstance
1D5124:  LDR             R0, [R0]
1D5126:  LDR.W           R1, [R0,#0x12C]
1D512A:  MOV             R0, R6
1D512C:  BLX             R1
1D512E:  MOV             R8, R0
1D5130:  CMP.W           R8, #0
1D5134:  BEQ             loc_1D51FE
1D5136:  MOVS            R0, #1
1D5138:  CMP             R6, #0
1D513A:  BEQ             loc_1D51D6
1D513C:  ADD             R5, SP, #0xB8+var_A0
1D513E:  MOV.W           R11, #0
1D5142:  MOV             R10, R8
1D5144:  STR             R0, [SP,#0xB8+var_B0]
1D5146:  B               loc_1D51A6
1D5148:  SUBS            R6, R6, R4
1D514A:  LSRS            R0, R4, #1
1D514C:  CMP.W           R11, R4,LSR#1
1D5150:  BEQ             loc_1D5184
1D5152:  CMP             R4, #0x10
1D5154:  BCC             loc_1D516C
1D5156:  ANDS.W          R1, R0, #0x78 ; 'x'
1D515A:  BEQ             loc_1D516C
1D515C:  ADD.W           R2, R5, R0,LSL#1
1D5160:  CMP             R10, R2
1D5162:  BCS             loc_1D518A
1D5164:  ADD.W           R2, R10, R0
1D5168:  CMP             R2, R5
1D516A:  BLS             loc_1D518A
1D516C:  MOVS            R1, #0
1D516E:  ADD.W           R2, R5, R1,LSL#1
1D5172:  ADD.W           R3, R10, R1
1D5176:  SUBS            R1, R0, R1
1D5178:  LDRB.W          R4, [R2],#2
1D517C:  SUBS            R1, #1
1D517E:  STRB.W          R4, [R3],#1
1D5182:  BNE             loc_1D5178
1D5184:  ADD             R10, R0
1D5186:  CBNZ            R6, loc_1D51A6
1D5188:  B               loc_1D51D6
1D518A:  ADD             R2, SP, #0xB8+var_A0
1D518C:  MOV             R3, R1
1D518E:  MOV             R4, R10
1D5190:  VLD1.16         {D16-D17}, [R2]!
1D5194:  SUBS            R3, #8
1D5196:  VMOVN.I16       D16, Q8
1D519A:  VST1.8          {D16}, [R4]!
1D519E:  BNE             loc_1D5190
1D51A0:  CMP             R0, R1
1D51A2:  BEQ             loc_1D5184
1D51A4:  B               loc_1D516E
1D51A6:  CMP             R6, #0x80
1D51A8:  MOV             R4, R6
1D51AA:  IT CS
1D51AC:  MOVCS           R4, #0x80
1D51AE:  MOV             R0, R9; int
1D51B0:  MOV             R1, R5; void *
1D51B2:  MOV             R2, R4; size_t
1D51B4:  BLX             j__Z12RwStreamReadP8RwStreamPvj; RwStreamRead(RwStream *,void *,uint)
1D51B8:  CMP             R0, R4
1D51BA:  BEQ             loc_1D5148
1D51BC:  LDR             R0, [SP,#0xB8+var_B0]
1D51BE:  CMP             R0, #0
1D51C0:  BEQ.W           loc_1D505C
1D51C4:  LDR             R0, =(RwEngineInstance_ptr - 0x1D51CA)
1D51C6:  ADD             R0, PC; RwEngineInstance_ptr
1D51C8:  LDR             R0, [R0]; RwEngineInstance
1D51CA:  LDR             R0, [R0]
1D51CC:  LDR.W           R1, [R0,#0x130]
1D51D0:  MOV             R0, R8
1D51D2:  BLX             R1
1D51D4:  B               loc_1D505C
1D51D6:  MOV             R4, R8
1D51D8:  LDR             R0, =(__stack_chk_guard_ptr - 0x1D51E0)
1D51DA:  LDR             R1, [SP,#0xB8+var_20]
1D51DC:  ADD             R0, PC; __stack_chk_guard_ptr
1D51DE:  LDR             R0, [R0]; __stack_chk_guard
1D51E0:  LDR             R0, [R0]
1D51E2:  SUBS            R0, R0, R1
1D51E4:  ITTTT EQ
1D51E6:  MOVEQ           R0, R4
1D51E8:  ADDEQ           SP, SP, #0x9C
1D51EA:  POPEQ.W         {R8-R11}
1D51EE:  POPEQ           {R4-R7,PC}
1D51F0:  BLX             __stack_chk_fail
1D51F4:  MOVS            R4, #0
1D51F6:  MOV             R0, R10
1D51F8:  MOV             R1, R11
1D51FA:  STR             R4, [SP,#0xB8+var_A0]
1D51FC:  B               loc_1D5206
1D51FE:  MOVS            R4, #0
1D5200:  MOV             R0, R10; int
1D5202:  STR             R4, [SP,#0xB8+var_A0]
1D5204:  MOV             R1, R6
1D5206:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1D520A:  STR             R0, [SP,#0xB8+var_9C]
1D520C:  ADD             R0, SP, #0xB8+var_A0
1D520E:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1D5212:  B               loc_1D51D8
