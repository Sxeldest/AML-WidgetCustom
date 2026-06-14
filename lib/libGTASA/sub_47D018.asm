; =========================================================
; Game Engine Function: sub_47D018
; Address            : 0x47D018 - 0x47D32E
; =========================================================

47D018:  PUSH            {R4-R7,LR}
47D01A:  ADD             R7, SP, #0xC
47D01C:  PUSH.W          {R8-R11}
47D020:  SUB             SP, SP, #0x3C
47D022:  MOV             R9, R0
47D024:  MOV             R8, R1
47D026:  LDR.W           R0, [R9,#0xFC]
47D02A:  LDR.W           R11, [R9,#0x198]
47D02E:  CBZ             R0, loc_47D092
47D030:  LDR.W           R0, [R11,#0x24]
47D034:  CBNZ            R0, loc_47D092
47D036:  LDR.W           R1, [R11,#0x10]
47D03A:  MOVS            R6, #0
47D03C:  LDR.W           R0, [R9,#0x194]
47D040:  ASRS            R3, R1, #0x1F
47D042:  LDR             R2, [R0,#0x14]
47D044:  ADD.W           R1, R1, R3,LSR#29
47D048:  ADD.W           R1, R2, R1,ASR#3
47D04C:  STR             R1, [R0,#0x14]
47D04E:  STR.W           R6, [R11,#0x10]
47D052:  LDR.W           R0, [R9,#0x194]
47D056:  LDR             R1, [R0,#8]
47D058:  MOV             R0, R9
47D05A:  BLX             R1
47D05C:  CBZ             R0, loc_47D0A4
47D05E:  LDR.W           R0, [R9,#0x124]
47D062:  CMP             R0, #1
47D064:  BLT             loc_47D07C
47D066:  ADD.W           R0, R11, #0x14
47D06A:  MOVS            R1, #0
47D06C:  MOVS            R2, #0
47D06E:  STR.W           R1, [R0,R2,LSL#2]
47D072:  ADDS            R2, #1
47D074:  LDR.W           R3, [R9,#0x124]
47D078:  CMP             R2, R3
47D07A:  BLT             loc_47D06E
47D07C:  LDR.W           R0, [R9,#0xFC]
47D080:  STR.W           R0, [R11,#0x24]
47D084:  LDR.W           R0, [R9,#0x17C]
47D088:  CMP             R0, #0
47D08A:  ITT EQ
47D08C:  MOVEQ           R0, #0
47D08E:  STRBEQ.W        R0, [R11,#8]
47D092:  LDRB.W          R0, [R11,#8]
47D096:  CBZ             R0, loc_47D0AE
47D098:  LDR.W           R0, [R11,#0x24]
47D09C:  MOVS            R6, #1
47D09E:  SUBS            R0, #1
47D0A0:  STR.W           R0, [R11,#0x24]
47D0A4:  MOV             R0, R6
47D0A6:  ADD             SP, SP, #0x3C ; '<'
47D0A8:  POP.W           {R8-R11}
47D0AC:  POP             {R4-R7,PC}
47D0AE:  STR.W           R9, [SP,#0x58+var_20]
47D0B2:  ADD.W           R4, R11, #0x14
47D0B6:  LDR.W           R6, [R9,#0x18]
47D0BA:  ADD             R3, SP, #0x58+var_40
47D0BC:  LDR             R0, [R6]
47D0BE:  STR             R0, [SP,#0x58+var_30]
47D0C0:  LDR.W           R12, [R6,#4]
47D0C4:  STR.W           R12, [SP,#0x58+var_2C]
47D0C8:  LDRD.W          R1, R2, [R11,#0xC]
47D0CC:  VLD1.32         {D16-D17}, [R4]
47D0D0:  VST1.64         {D16-D17}, [R3]
47D0D4:  LDR.W           R5, [R9,#0x140]
47D0D8:  CMP             R5, #1
47D0DA:  BLT.W           loc_47D312
47D0DE:  LDR             R0, =(jpeg_natural_order_ptr - 0x47D0E8)
47D0E0:  STR             R4, [SP,#0x58+var_54]
47D0E2:  MOVS            R4, #0
47D0E4:  ADD             R0, PC; jpeg_natural_order_ptr
47D0E6:  LDR             R0, [R0]; jpeg_natural_order
47D0E8:  STRD.W          R8, R0, [SP,#0x58+var_4C]
47D0EC:  LDR.W           R0, [R8,R4,LSL#2]
47D0F0:  CMP             R2, #7
47D0F2:  STR             R0, [SP,#0x58+var_44]
47D0F4:  ADD.W           R0, R11, R4,LSL#2
47D0F8:  LDR.W           R10, [R0,#0x48]
47D0FC:  LDR.W           R8, [R0,#0x70]
47D100:  BGT             loc_47D11C
47D102:  ADD             R0, SP, #0x58+var_30
47D104:  MOVS            R3, #0
47D106:  MOVS            R6, #0
47D108:  BLX             j__Z20jpeg_fill_bit_bufferP21bitread_working_stateiii; jpeg_fill_bit_buffer(bitread_working_state *,int,int,int)
47D10C:  CMP             R0, #0
47D10E:  BEQ             loc_47D0A4
47D110:  LDRD.W          R1, R2, [SP,#0x58+var_28]
47D114:  CMP             R2, #8
47D116:  BGE             loc_47D11C
47D118:  MOVS            R0, #1
47D11A:  B               loc_47D140
47D11C:  SUB.W           R0, R2, #8
47D120:  ASR.W           R0, R1, R0
47D124:  UXTB            R3, R0
47D126:  ADD.W           R0, R10, R3,LSL#2
47D12A:  LDR.W           R0, [R0,#0x90]
47D12E:  CBZ             R0, loc_47D13E
47D130:  ADD             R3, R10
47D132:  SUBS            R2, R2, R0
47D134:  LDRB.W          R6, [R3,#0x490]
47D138:  CBNZ            R6, loc_47D15A
47D13A:  MOVS            R0, #0
47D13C:  B               loc_47D190
47D13E:  MOVS            R0, #9
47D140:  STR             R0, [SP,#0x58+var_58]
47D142:  ADD             R0, SP, #0x58+var_30
47D144:  MOV             R3, R10
47D146:  BLX             j__Z16jpeg_huff_decodeP21bitread_working_stateiiP13d_derived_tbli; jpeg_huff_decode(bitread_working_state *,int,int,d_derived_tbl *,int)
47D14A:  MOV             R6, R0
47D14C:  CMP             R6, #0
47D14E:  BLT.W           loc_47D32A
47D152:  LDRD.W          R1, R2, [SP,#0x58+var_28]
47D156:  CMP             R6, #0
47D158:  BEQ             loc_47D13A
47D15A:  CMP             R2, R6
47D15C:  BGE             loc_47D170
47D15E:  ADD             R0, SP, #0x58+var_30
47D160:  MOV             R3, R6
47D162:  BLX             j__Z20jpeg_fill_bit_bufferP21bitread_working_stateiii; jpeg_fill_bit_buffer(bitread_working_state *,int,int,int)
47D166:  CMP             R0, #0
47D168:  BEQ.W           loc_47D32A
47D16C:  LDRD.W          R1, R2, [SP,#0x58+var_28]
47D170:  MOVS            R5, #1
47D172:  ADR             R0, dword_47D330
47D174:  SUBS            R2, R2, R6
47D176:  LSLS            R5, R6
47D178:  LDR.W           R3, [R0,R6,LSL#2]
47D17C:  SUBS            R5, #1
47D17E:  ASR.W           R0, R1, R2
47D182:  ANDS            R0, R5
47D184:  CMP             R0, R3
47D186:  ITTT LT
47D188:  ADRLT           R3, dword_47D370
47D18A:  LDRLT.W         R3, [R3,R6,LSL#2]
47D18E:  ADDLT           R0, R3
47D190:  ADD.W           R3, R11, R4
47D194:  LDRB.W          R6, [R3,#0x98]
47D198:  STR             R4, [SP,#0x58+var_50]
47D19A:  CBZ             R6, loc_47D1B6
47D19C:  ADD.W           R6, R9, R4,LSL#2
47D1A0:  ADD             R5, SP, #0x58+var_40
47D1A2:  LDR.W           R6, [R6,#0x144]
47D1A6:  MOV             R4, R5
47D1A8:  LDR.W           R5, [R4,R6,LSL#2]
47D1AC:  ADD             R0, R5
47D1AE:  STR.W           R0, [R4,R6,LSL#2]
47D1B2:  LDR             R6, [SP,#0x58+var_44]
47D1B4:  STRH            R0, [R6]
47D1B6:  LDRB.W          R0, [R3,#0xA2]
47D1BA:  MOVS            R4, #1
47D1BC:  LDR.W           R10, [SP,#0x58+var_4C]
47D1C0:  CMP             R0, #0
47D1C2:  BEQ             loc_47D276
47D1C4:  CMP             R2, #7
47D1C6:  BGT             loc_47D1E4
47D1C8:  ADD             R0, SP, #0x58+var_30
47D1CA:  MOVS            R3, #0
47D1CC:  MOVS            R6, #0
47D1CE:  BLX             j__Z20jpeg_fill_bit_bufferP21bitread_working_stateiii; jpeg_fill_bit_buffer(bitread_working_state *,int,int,int)
47D1D2:  CMP             R0, #0
47D1D4:  BEQ.W           loc_47D0A4
47D1D8:  LDRD.W          R1, R2, [SP,#0x58+var_28]
47D1DC:  CMP             R2, #8
47D1DE:  BGE             loc_47D1E4
47D1E0:  MOVS            R0, #1
47D1E2:  B               loc_47D204
47D1E4:  SUB.W           R0, R2, #8
47D1E8:  ASR.W           R0, R1, R0
47D1EC:  UXTB            R0, R0
47D1EE:  ADD.W           R3, R8, R0,LSL#2
47D1F2:  LDR.W           R3, [R3,#0x90]
47D1F6:  CBZ             R3, loc_47D202
47D1F8:  ADD             R0, R8
47D1FA:  SUBS            R2, R2, R3
47D1FC:  LDRB.W          R0, [R0,#0x490]
47D200:  B               loc_47D218
47D202:  MOVS            R0, #9
47D204:  STR             R0, [SP,#0x58+var_58]
47D206:  ADD             R0, SP, #0x58+var_30
47D208:  MOV             R3, R8
47D20A:  BLX             j__Z16jpeg_huff_decodeP21bitread_working_stateiiP13d_derived_tbli; jpeg_huff_decode(bitread_working_state *,int,int,d_derived_tbl *,int)
47D20E:  CMP             R0, #0
47D210:  BLT.W           loc_47D32A
47D214:  LDRD.W          R1, R2, [SP,#0x58+var_28]
47D218:  ANDS.W          R6, R0, #0xF
47D21C:  MOV.W           R5, R0,ASR#4
47D220:  BEQ             loc_47D266
47D222:  CMP             R2, R6
47D224:  BGE             loc_47D236
47D226:  ADD             R0, SP, #0x58+var_30
47D228:  MOV             R3, R6
47D22A:  BLX             j__Z20jpeg_fill_bit_bufferP21bitread_working_stateiii; jpeg_fill_bit_buffer(bitread_working_state *,int,int,int)
47D22E:  CMP             R0, #0
47D230:  BEQ             loc_47D32A
47D232:  LDRD.W          R1, R2, [SP,#0x58+var_28]
47D236:  ADDS            R0, R5, R4
47D238:  MOVS            R4, #1
47D23A:  ADR             R3, dword_47D330
47D23C:  SUBS            R2, R2, R6
47D23E:  LSLS            R4, R6
47D240:  LDR.W           R5, [R3,R6,LSL#2]
47D244:  ASR.W           R3, R1, R2
47D248:  SUBS            R4, #1
47D24A:  ANDS            R3, R4
47D24C:  CMP             R3, R5
47D24E:  ITTT LT
47D250:  ADRLT           R5, dword_47D370
47D252:  LDRLT.W         R6, [R5,R6,LSL#2]
47D256:  ADDLT           R3, R6
47D258:  LDR             R6, [SP,#0x58+var_48]
47D25A:  LDR             R5, [SP,#0x58+var_44]
47D25C:  LDR.W           R6, [R6,R0,LSL#2]
47D260:  STRH.W          R3, [R5,R6,LSL#1]
47D264:  B               loc_47D26E
47D266:  CMP             R5, #0xF
47D268:  BNE             loc_47D2F6
47D26A:  ADD.W           R0, R4, #0xF
47D26E:  ADDS            R4, R0, #1
47D270:  CMP             R0, #0x3F ; '?'
47D272:  BLT             loc_47D1C4
47D274:  B               loc_47D2F6
47D276:  CMP             R2, #7
47D278:  BGT             loc_47D296
47D27A:  ADD             R0, SP, #0x58+var_30
47D27C:  MOVS            R3, #0
47D27E:  MOVS            R6, #0
47D280:  BLX             j__Z20jpeg_fill_bit_bufferP21bitread_working_stateiii; jpeg_fill_bit_buffer(bitread_working_state *,int,int,int)
47D284:  CMP             R0, #0
47D286:  BEQ.W           loc_47D0A4
47D28A:  LDRD.W          R1, R2, [SP,#0x58+var_28]
47D28E:  CMP             R2, #8
47D290:  BGE             loc_47D296
47D292:  MOVS            R0, #1
47D294:  B               loc_47D2B6
47D296:  SUB.W           R0, R2, #8
47D29A:  ASR.W           R0, R1, R0
47D29E:  UXTB            R0, R0
47D2A0:  ADD.W           R3, R8, R0,LSL#2
47D2A4:  LDR.W           R3, [R3,#0x90]
47D2A8:  CBZ             R3, loc_47D2B4
47D2AA:  ADD             R0, R8
47D2AC:  SUBS            R2, R2, R3
47D2AE:  LDRB.W          R0, [R0,#0x490]
47D2B2:  B               loc_47D2C8
47D2B4:  MOVS            R0, #9
47D2B6:  STR             R0, [SP,#0x58+var_58]
47D2B8:  ADD             R0, SP, #0x58+var_30
47D2BA:  MOV             R3, R8
47D2BC:  BLX             j__Z16jpeg_huff_decodeP21bitread_working_stateiiP13d_derived_tbli; jpeg_huff_decode(bitread_working_state *,int,int,d_derived_tbl *,int)
47D2C0:  CMP             R0, #0
47D2C2:  BLT             loc_47D32A
47D2C4:  LDRD.W          R1, R2, [SP,#0x58+var_28]
47D2C8:  ANDS.W          R6, R0, #0xF
47D2CC:  MOV.W           R5, R0,ASR#4
47D2D0:  BEQ             loc_47D2E8
47D2D2:  CMP             R2, R6
47D2D4:  BGE             loc_47D2E4
47D2D6:  ADD             R0, SP, #0x58+var_30
47D2D8:  MOV             R3, R6
47D2DA:  BLX             j__Z20jpeg_fill_bit_bufferP21bitread_working_stateiii; jpeg_fill_bit_buffer(bitread_working_state *,int,int,int)
47D2DE:  CBZ             R0, loc_47D32A
47D2E0:  LDRD.W          R1, R2, [SP,#0x58+var_28]
47D2E4:  SUBS            R2, R2, R6
47D2E6:  B               loc_47D2EE
47D2E8:  CMP             R5, #0xF
47D2EA:  BNE             loc_47D2F6
47D2EC:  MOVS            R5, #0xF
47D2EE:  ADDS            R0, R4, R5
47D2F0:  ADDS            R4, R0, #1
47D2F2:  CMP             R4, #0x40 ; '@'
47D2F4:  BLT             loc_47D276
47D2F6:  LDR             R4, [SP,#0x58+var_50]
47D2F8:  MOV             R8, R10
47D2FA:  LDR.W           R0, [R9,#0x140]
47D2FE:  ADDS            R4, #1
47D300:  CMP             R4, R0
47D302:  BLT.W           loc_47D0EC
47D306:  LDRD.W          R0, R12, [SP,#0x58+var_30]
47D30A:  ADD             R3, SP, #0x58+var_40
47D30C:  LDR.W           R6, [R9,#0x18]
47D310:  LDR             R4, [SP,#0x58+var_54]
47D312:  STR             R0, [R6]
47D314:  LDR.W           R0, [R9,#0x18]
47D318:  STR.W           R12, [R0,#4]
47D31C:  STRD.W          R1, R2, [R11,#0xC]
47D320:  VLD1.64         {D16-D17}, [R3]
47D324:  VST1.32         {D16-D17}, [R4]
47D328:  B               loc_47D098
47D32A:  MOVS            R6, #0
47D32C:  B               loc_47D0A4
