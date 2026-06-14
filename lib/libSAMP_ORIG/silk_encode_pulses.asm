; =========================================================
; Game Engine Function: silk_encode_pulses
; Address            : 0xCB080 - 0xCB9F0
; =========================================================

CB080:  PUSH            {R4-R7,LR}
CB082:  ADD             R7, SP, #0xC
CB084:  PUSH.W          {R8-R11}
CB088:  SUB             SP, SP, #0x5C
CB08A:  MOV             R11, R0
CB08C:  LDR.W           R0, =(__stack_chk_guard_ptr - 0xCB09A)
CB090:  STR.W           R2, [R7,#var_70]
CB094:  MOV             R10, R1
CB096:  ADD             R0, PC; __stack_chk_guard_ptr
CB098:  LDR             R2, [R7,#arg_0]
CB09A:  MOV             R9, R3
CB09C:  LDR             R0, [R0]; __stack_chk_guard
CB09E:  BIC.W           R1, R2, #0xF
CB0A2:  ASRS            R3, R2, #4
CB0A4:  CMP             R1, R2
CB0A6:  LDR             R0, [R0]
CB0A8:  STR.W           R0, [R7,#var_24]
CB0AC:  MOV.W           R0, #0
CB0B0:  STRD.W          R0, R0, [R7,#var_30]
CB0B4:  STRD.W          R0, R0, [R7,#var_38]
CB0B8:  STRD.W          R0, R0, [R7,#var_40]
CB0BC:  STRD.W          R0, R0, [R7,#var_48]
CB0C0:  BGE             loc_CB0D2
CB0C2:  LDR             R1, [R7,#arg_0]
CB0C4:  ADDS            R3, #1
CB0C6:  STR.W           R0, [R9,R1]
CB0CA:  ADD             R1, R9
CB0CC:  STR             R0, [R1,#0xC]
CB0CE:  STR             R0, [R1,#8]
CB0D0:  STR             R0, [R1,#4]
CB0D2:  SUB.W           R4, SP, R3,LSL#6
CB0D6:  MOV             SP, R4
CB0D8:  CMP             R3, #1
CB0DA:  BLT.W           loc_CB906
CB0DE:  ADD.W           R1, R4, #0xC
CB0E2:  LSLS            R0, R3, #4
CB0E4:  MOVS            R2, #0
CB0E6:  STR.W           R3, [R7,#var_68]
CB0EA:  LDRSB.W         R3, [R9,R2]
CB0EE:  ADD.W           R6, R9, R2
CB0F2:  CMP             R3, #0
CB0F4:  IT MI
CB0F6:  NEGMI           R3, R3
CB0F8:  STR.W           R3, [R1,#-0xC]
CB0FC:  ADD.W           R3, R4, R2,LSL#2
CB100:  LDRSB.W         R5, [R6,#1]
CB104:  ADDS            R2, #4
CB106:  CMP             R5, #0
CB108:  IT MI
CB10A:  NEGMI           R5, R5
CB10C:  STR             R5, [R3,#4]
CB10E:  LDRSB.W         R5, [R6,#2]
CB112:  CMP             R5, #0
CB114:  IT MI
CB116:  NEGMI           R5, R5
CB118:  STR             R5, [R3,#8]
CB11A:  LDRSB.W         R3, [R6,#3]
CB11E:  CMP             R3, #0
CB120:  IT MI
CB122:  NEGMI           R3, R3
CB124:  CMP             R2, R0
CB126:  STR             R3, [R1]
CB128:  ADD.W           R1, R1, #0x10
CB12C:  BLT             loc_CB0EA
CB12E:  LDR.W           R1, [R7,#var_68]
CB132:  MOVS            R0, #7
CB134:  ADD.W           R0, R0, R1,LSL#2
CB138:  BIC.W           R0, R0, #7
CB13C:  SUB.W           R2, SP, R0
CB140:  STR.W           R2, [R7,#var_60]
CB144:  MOV             SP, R2
CB146:  SUB.W           R0, SP, R0
CB14A:  STR.W           R0, [R7,#var_50]
CB14E:  MOV             SP, R0
CB150:  CMP             R1, #1
CB152:  BLT.W           loc_CB91A
CB156:  LDR.W           R0, =(silk_max_pulses_table_ptr - 0xCB16A)
CB15A:  MOV.W           R8, #0
CB15E:  STR.W           R11, [R7,#var_64]
CB162:  MOV.W           LR, #0
CB166:  ADD             R0, PC; silk_max_pulses_table_ptr
CB168:  STR.W           R9, [R7,#var_6C]
CB16C:  LDR.W           R1, [R7,#var_44]
CB170:  MOV.W           R9, #0
CB174:  LDR             R0, [R0]; silk_max_pulses_table
CB176:  STR.W           R10, [R7,#var_74]
CB17A:  STR.W           R1, [R7,#var_4C]
CB17E:  LDRB.W          R11, [R0]
CB182:  LDRB            R5, [R0,#(byte_58A14 - 0x58A13)]
CB184:  LDRB.W          R12, [R0,#(byte_58A15 - 0x58A13)]
CB188:  LDRB            R0, [R0,#(byte_58A16 - 0x58A13)]
CB18A:  STR.W           R0, [R7,#var_5C]
CB18E:  MOV             R0, R4
CB190:  STR.W           R4, [R7,#var_78]
CB194:  STRD.W          R12, R5, [R7,#var_58]
CB198:  LDR.W           R1, [R7,#var_50]
CB19C:  MOVS            R2, #0
CB19E:  STR.W           R2, [R1,LR,LSL#2]
CB1A2:  LDRD.W          R3, R10, [R0]
CB1A6:  B               loc_CB21A
CB1A8:  LDR.W           R2, [R7,#var_50]
CB1AC:  LDR.W           R1, [R2,LR,LSL#2]
CB1B0:  ADDS            R1, #1
CB1B2:  STR.W           R1, [R2,LR,LSL#2]
CB1B6:  LDRD.W          R12, R2, [R0]
CB1BA:  LDRD.W          R3, R6, [R0,#8]
CB1BE:  MOV.W           R10, R2,ASR#1
CB1C2:  LDRD.W          R5, R4, [R0,#0x10]
CB1C6:  LDR             R1, [R0,#0x18]
CB1C8:  ASRS            R4, R4, #1
CB1CA:  ASRS            R3, R3, #1
CB1CC:  STR             R3, [R0,#8]
CB1CE:  ASRS            R3, R6, #1
CB1D0:  LDR             R6, [R0,#0x1C]
CB1D2:  ASRS            R1, R1, #1
CB1D4:  STR             R3, [R0,#0xC]
CB1D6:  ASRS            R3, R5, #1
CB1D8:  LDR             R5, [R0,#0x20]
CB1DA:  STR             R3, [R0,#0x10]
CB1DC:  MOV.W           R3, R12,ASR#1
CB1E0:  LDR             R2, [R0,#0x24]
CB1E2:  STRD.W          R3, R10, [R0]
CB1E6:  STR             R4, [R0,#0x14]
CB1E8:  STR             R1, [R0,#0x18]
CB1EA:  ASRS            R1, R6, #1
CB1EC:  STR             R1, [R0,#0x1C]
CB1EE:  ASRS            R1, R5, #1
CB1F0:  STR             R1, [R0,#0x20]
CB1F2:  ASRS            R1, R2, #1
CB1F4:  STR             R1, [R0,#0x24]
CB1F6:  LDR             R1, [R0,#0x28]
CB1F8:  ASRS            R1, R1, #1
CB1FA:  STR             R1, [R0,#0x28]
CB1FC:  LDR             R1, [R0,#0x2C]
CB1FE:  ASRS            R1, R1, #1
CB200:  STR             R1, [R0,#0x2C]
CB202:  LDR             R1, [R0,#0x30]
CB204:  ASRS            R1, R1, #1
CB206:  STR             R1, [R0,#0x30]
CB208:  LDR             R1, [R0,#0x34]
CB20A:  ASRS            R1, R1, #1
CB20C:  STR             R1, [R0,#0x34]
CB20E:  LDR             R1, [R0,#0x38]
CB210:  ASRS            R1, R1, #1
CB212:  STR             R1, [R0,#0x38]
CB214:  LDR             R1, [R0,#0x3C]
CB216:  ASRS            R1, R1, #1
CB218:  STR             R1, [R0,#0x3C]
CB21A:  ADD.W           R12, R10, R3
CB21E:  CMP             R12, R11
CB220:  BLE             loc_CB228
CB222:  MOV.W           R10, #1
CB226:  B               loc_CB29A
CB228:  STR.W           R12, [R7,#var_48]
CB22C:  LDRD.W          R1, R2, [R0,#8]
CB230:  ADDS            R6, R2, R1
CB232:  CMP             R6, R11
CB234:  BLE             loc_CB23C
CB236:  MOV.W           R10, #1
CB23A:  B               loc_CB298
CB23C:  LDRD.W          R1, R2, [R0,#0x10]
CB240:  ADD             R1, R2
CB242:  CMP             R1, R11
CB244:  BGT             loc_CB28C
CB246:  STR.W           R1, [R7,#var_40]
CB24A:  LDRD.W          R1, R2, [R0,#0x18]
CB24E:  ADD             R1, R2
CB250:  CMP             R1, R11
CB252:  BGT             loc_CB28C
CB254:  STR.W           R1, [R7,#var_3C]
CB258:  LDRD.W          R1, R2, [R0,#0x20]
CB25C:  ADD             R1, R2
CB25E:  CMP             R1, R11
CB260:  BGT             loc_CB28C
CB262:  STR.W           R1, [R7,#var_38]
CB266:  LDRD.W          R1, R2, [R0,#0x28]
CB26A:  ADD             R1, R2
CB26C:  CMP             R1, R11
CB26E:  BGT             loc_CB28C
CB270:  STR.W           R1, [R7,#var_34]
CB274:  LDRD.W          R1, R2, [R0,#0x30]
CB278:  ADD             R1, R2
CB27A:  CMP             R1, R11
CB27C:  BGT             loc_CB28C
CB27E:  STR.W           R1, [R7,#var_30]
CB282:  LDRD.W          R1, R2, [R0,#0x38]
CB286:  ADD             R1, R2
CB288:  CMP             R1, R11
CB28A:  BLE             loc_CB348
CB28C:  MOV.W           R10, #1
CB290:  MOV             R1, R6
CB292:  MOV             R8, R6
CB294:  STR.W           R1, [R7,#var_4C]
CB298:  MOV             R9, R12
CB29A:  LDR.W           R5, [R7,#var_54]
CB29E:  ADD.W           R3, R8, R9
CB2A2:  LDR.W           R12, [R7,#var_58]
CB2A6:  CMP             R3, R5
CB2A8:  BLE             loc_CB2AE
CB2AA:  MOVS            R6, #1
CB2AC:  B               loc_CB2EC
CB2AE:  LDRD.W          R1, R2, [R7,#var_40]
CB2B2:  STR.W           R3, [R7,#var_48]
CB2B6:  ADD             R2, R1
CB2B8:  CMP             R2, R5
CB2BA:  BLE             loc_CB2C0
CB2BC:  MOVS            R6, #1
CB2BE:  B               loc_CB2EA
CB2C0:  LDRD.W          R1, R6, [R7,#var_38]
CB2C4:  ADD             R1, R6
CB2C6:  CMP             R1, R5
CB2C8:  BGT             loc_CB2D8
CB2CA:  LDRD.W          R6, R4, [R7,#var_30]
CB2CE:  STR.W           R1, [R7,#var_40]
CB2D2:  ADDS            R1, R4, R6
CB2D4:  CMP             R1, R5
CB2D6:  BLE             loc_CB2DC
CB2D8:  MOVS            R6, #1
CB2DA:  B               loc_CB2E2
CB2DC:  STR.W           R1, [R7,#var_3C]
CB2E0:  MOVS            R6, #0
CB2E2:  MOV             R1, R2
CB2E4:  MOV             R8, R2
CB2E6:  STR.W           R1, [R7,#var_4C]
CB2EA:  MOV             R9, R3
CB2EC:  ADD.W           R1, R8, R9
CB2F0:  ADD.W           R3, R6, R10
CB2F4:  CMP             R1, R12
CB2F6:  BLE             loc_CB2FC
CB2F8:  MOVS            R2, #1
CB2FA:  B               loc_CB31E
CB2FC:  LDRD.W          R2, R6, [R7,#var_40]
CB300:  MOV             R9, R1
CB302:  STR.W           R1, [R7,#var_48]
CB306:  ADD             R6, R2
CB308:  MOVS            R2, #0
CB30A:  CMP             R6, R12
CB30C:  ITE GT
CB30E:  MOVGT           R2, #1
CB310:  MOVLE           R8, R6
CB312:  LDR.W           R4, [R7,#var_4C]
CB316:  IT LE
CB318:  MOVLE           R4, R6
CB31A:  STR.W           R4, [R7,#var_4C]
CB31E:  ADDS            R1, R3, R2
CB320:  LDR.W           R2, [R7,#var_5C]
CB324:  ADD.W           R6, R8, R9
CB328:  CMP             R6, R2
CB32A:  BLE             loc_CB336
CB32C:  MOVS            R2, #1
CB32E:  CMN             R1, R2
CB330:  BNE.W           loc_CB1A8
CB334:  B               loc_CB352
CB336:  LDR.W           R2, [R7,#var_60]
CB33A:  STR.W           R6, [R2,LR,LSL#2]
CB33E:  MOVS            R2, #0
CB340:  CMN             R1, R2
CB342:  BNE.W           loc_CB1A8
CB346:  B               loc_CB352
CB348:  STR.W           R1, [R7,#var_2C]
CB34C:  MOV.W           R10, #0
CB350:  B               loc_CB290
CB352:  LDR.W           R1, [R7,#var_68]
CB356:  ADD.W           LR, LR, #1
CB35A:  ADDS            R0, #0x40 ; '@'
CB35C:  CMP             LR, R1
CB35E:  BNE.W           loc_CB198
CB362:  LDR.W           R10, [R7,#var_74]
CB366:  LDR.W           R4, [R7,#var_68]
CB36A:  LDR.W           R0, [R7,#var_4C]
CB36E:  STR.W           R0, [R7,#var_44]
CB372:  MOV.W           R0, R10,ASR#1
CB376:  CMP             R4, #0
CB378:  BLE.W           loc_CB9DA
CB37C:  LDR.W           R1, =(silk_rate_levels_BITS_Q5_ptr - 0xCB38E)
CB380:  ADD.W           R0, R0, R0,LSL#3
CB384:  LDR.W           R3, =(silk_pulses_per_block_BITS_Q5_ptr - 0xCB394)
CB388:  MOVS            R2, #0
CB38A:  ADD             R1, PC; silk_rate_levels_BITS_Q5_ptr
CB38C:  LDR.W           R11, [R7,#var_64]
CB390:  ADD             R3, PC; silk_pulses_per_block_BITS_Q5_ptr
CB392:  LDR             R1, [R1]; silk_rate_levels_BITS_Q5
CB394:  LDR             R3, [R3]; silk_pulses_per_block_BITS_Q5
CB396:  LDRB            R1, [R1,R0]
CB398:  LDR.W           R6, [R7,#var_50]
CB39C:  LDR.W           R6, [R6,R2,LSL#2]
CB3A0:  CMP             R6, #0
CB3A2:  ITTE LE
CB3A4:  LDRLE.W         R6, [R7,#var_60]
CB3A8:  LDRLE.W         R6, [R6,R2,LSL#2]
CB3AC:  MOVGT           R6, #(byte_58ADC - 0x58ACB)
CB3AE:  ADDS            R2, #1
CB3B0:  CMP             R4, R2
CB3B2:  LDRB            R6, [R3,R6]
CB3B4:  ADD             R1, R6
CB3B6:  BNE             loc_CB398
CB3B8:  LDR.W           R2, =(silk_rate_levels_BITS_Q5_ptr - 0xCB3C6)
CB3BC:  MOVS            R3, #0
CB3BE:  LDR.W           R6, =(silk_pulses_per_block_BITS_Q5_ptr - 0xCB3C8)
CB3C2:  ADD             R2, PC; silk_rate_levels_BITS_Q5_ptr
CB3C4:  ADD             R6, PC; silk_pulses_per_block_BITS_Q5_ptr
CB3C6:  LDR             R2, [R2]; silk_rate_levels_BITS_Q5
CB3C8:  LDR             R6, [R6]; silk_pulses_per_block_BITS_Q5
CB3CA:  ADD             R2, R0
CB3CC:  LDRB            R2, [R2,#1]
CB3CE:  LDR.W           R5, [R7,#var_50]
CB3D2:  LDR.W           R5, [R5,R3,LSL#2]
CB3D6:  CMP             R5, #0
CB3D8:  ITTE LE
CB3DA:  LDRLE.W         R5, [R7,#var_60]
CB3DE:  LDRLE.W         R5, [R5,R3,LSL#2]
CB3E2:  MOVGT           R5, #0x11
CB3E4:  ADDS            R3, #1
CB3E6:  CMP             R4, R3
CB3E8:  ADD             R5, R6
CB3EA:  LDRB            R5, [R5,#(byte_58AEE - 0x58ADC)]
CB3EC:  ADD             R2, R5
CB3EE:  BNE             loc_CB3CE
CB3F0:  LDR.W           R3, =(silk_rate_levels_BITS_Q5_ptr - 0xCB402)
CB3F4:  CMP             R2, R1
CB3F6:  MOV.W           R8, #0
CB3FA:  MOV.W           R6, #0
CB3FE:  ADD             R3, PC; silk_rate_levels_BITS_Q5_ptr
CB400:  IT LT
CB402:  MOVLT.W         R8, #1
CB406:  IT LT
CB408:  MOVLT           R1, R2
CB40A:  LDR.W           R2, =(silk_pulses_per_block_BITS_Q5_ptr - 0xCB414)
CB40E:  LDR             R3, [R3]; silk_rate_levels_BITS_Q5
CB410:  ADD             R2, PC; silk_pulses_per_block_BITS_Q5_ptr
CB412:  ADD             R3, R0
CB414:  LDR             R2, [R2]; silk_pulses_per_block_BITS_Q5
CB416:  LDRB            R3, [R3,#2]
CB418:  LDR.W           R5, [R7,#var_50]
CB41C:  LDR.W           R5, [R5,R6,LSL#2]
CB420:  CMP             R5, #0
CB422:  ITTE LE
CB424:  LDRLE.W         R5, [R7,#var_60]
CB428:  LDRLE.W         R5, [R5,R6,LSL#2]
CB42C:  MOVGT           R5, #0x11
CB42E:  ADDS            R6, #1
CB430:  CMP             R4, R6
CB432:  ADD             R5, R2
CB434:  LDRB.W          R5, [R5,#(byte_58B00 - 0x58ADC)]
CB438:  ADD             R3, R5
CB43A:  BNE             loc_CB418
CB43C:  LDR.W           R2, =(silk_rate_levels_BITS_Q5_ptr - 0xCB452)
CB440:  CMP             R3, R1
CB442:  LDR.W           R6, =(silk_pulses_per_block_BITS_Q5_ptr - 0xCB456)
CB446:  ITT LT
CB448:  MOVLT.W         R8, #2
CB44C:  MOVLT           R1, R3
CB44E:  ADD             R2, PC; silk_rate_levels_BITS_Q5_ptr
CB450:  MOVS            R3, #0
CB452:  ADD             R6, PC; silk_pulses_per_block_BITS_Q5_ptr
CB454:  LDR             R2, [R2]; silk_rate_levels_BITS_Q5
CB456:  LDR             R6, [R6]; silk_pulses_per_block_BITS_Q5
CB458:  ADD             R2, R0
CB45A:  LDRB            R2, [R2,#3]
CB45C:  LDR.W           R5, [R7,#var_50]
CB460:  LDR.W           R5, [R5,R3,LSL#2]
CB464:  CMP             R5, #0
CB466:  ITTE LE
CB468:  LDRLE.W         R5, [R7,#var_60]
CB46C:  LDRLE.W         R5, [R5,R3,LSL#2]
CB470:  MOVGT           R5, #0x11
CB472:  ADDS            R3, #1
CB474:  CMP             R4, R3
CB476:  ADD             R5, R6
CB478:  LDRB.W          R5, [R5,#(byte_58B12 - 0x58ADC)]
CB47C:  ADD             R2, R5
CB47E:  BNE             loc_CB45C
CB480:  LDR.W           R3, =(silk_rate_levels_BITS_Q5_ptr - 0xCB496)
CB484:  CMP             R2, R1
CB486:  LDR.W           R6, =(silk_pulses_per_block_BITS_Q5_ptr - 0xCB498)
CB48A:  ITT LT
CB48C:  MOVLT.W         R8, #3
CB490:  MOVLT           R1, R2
CB492:  ADD             R3, PC; silk_rate_levels_BITS_Q5_ptr
CB494:  ADD             R6, PC; silk_pulses_per_block_BITS_Q5_ptr
CB496:  LDR             R2, [R3]; silk_rate_levels_BITS_Q5
CB498:  MOVS            R3, #0
CB49A:  LDR             R6, [R6]; silk_pulses_per_block_BITS_Q5
CB49C:  ADD             R2, R0
CB49E:  LDRB            R2, [R2,#4]
CB4A0:  LDR.W           R5, [R7,#var_50]
CB4A4:  LDR.W           R5, [R5,R3,LSL#2]
CB4A8:  CMP             R5, #0
CB4AA:  ITTE LE
CB4AC:  LDRLE.W         R5, [R7,#var_60]
CB4B0:  LDRLE.W         R5, [R5,R3,LSL#2]
CB4B4:  MOVGT           R5, #0x11
CB4B6:  ADDS            R3, #1
CB4B8:  CMP             R4, R3
CB4BA:  ADD             R5, R6
CB4BC:  LDRB.W          R5, [R5,#(byte_58B24 - 0x58ADC)]
CB4C0:  ADD             R2, R5
CB4C2:  BNE             loc_CB4A0
CB4C4:  LDR.W           R3, =(silk_rate_levels_BITS_Q5_ptr - 0xCB4DA)
CB4C8:  CMP             R2, R1
CB4CA:  LDR.W           R6, =(silk_pulses_per_block_BITS_Q5_ptr - 0xCB4DC)
CB4CE:  ITT LT
CB4D0:  MOVLT.W         R8, #4
CB4D4:  MOVLT           R1, R2
CB4D6:  ADD             R3, PC; silk_rate_levels_BITS_Q5_ptr
CB4D8:  ADD             R6, PC; silk_pulses_per_block_BITS_Q5_ptr
CB4DA:  LDR             R2, [R3]; silk_rate_levels_BITS_Q5
CB4DC:  MOVS            R3, #0
CB4DE:  LDR             R6, [R6]; silk_pulses_per_block_BITS_Q5
CB4E0:  ADD             R2, R0
CB4E2:  LDRB            R2, [R2,#5]
CB4E4:  LDR.W           R5, [R7,#var_50]
CB4E8:  LDR.W           R5, [R5,R3,LSL#2]
CB4EC:  CMP             R5, #0
CB4EE:  ITTE LE
CB4F0:  LDRLE.W         R5, [R7,#var_60]
CB4F4:  LDRLE.W         R5, [R5,R3,LSL#2]
CB4F8:  MOVGT           R5, #0x11
CB4FA:  ADDS            R3, #1
CB4FC:  CMP             R4, R3
CB4FE:  ADD             R5, R6
CB500:  LDRB.W          R5, [R5,#(byte_58B36 - 0x58ADC)]
CB504:  ADD             R2, R5
CB506:  BNE             loc_CB4E4
CB508:  LDR.W           R3, =(silk_rate_levels_BITS_Q5_ptr - 0xCB51E)
CB50C:  CMP             R2, R1
CB50E:  LDR.W           R6, =(silk_pulses_per_block_BITS_Q5_ptr - 0xCB520)
CB512:  ITT LT
CB514:  MOVLT.W         R8, #5
CB518:  MOVLT           R1, R2
CB51A:  ADD             R3, PC; silk_rate_levels_BITS_Q5_ptr
CB51C:  ADD             R6, PC; silk_pulses_per_block_BITS_Q5_ptr
CB51E:  LDR             R2, [R3]; silk_rate_levels_BITS_Q5
CB520:  MOVS            R3, #0
CB522:  LDR             R6, [R6]; silk_pulses_per_block_BITS_Q5
CB524:  ADD             R2, R0
CB526:  LDRB            R2, [R2,#6]
CB528:  LDR.W           R5, [R7,#var_50]
CB52C:  LDR.W           R5, [R5,R3,LSL#2]
CB530:  CMP             R5, #0
CB532:  ITTE LE
CB534:  LDRLE.W         R5, [R7,#var_60]
CB538:  LDRLE.W         R5, [R5,R3,LSL#2]
CB53C:  MOVGT           R5, #0x11
CB53E:  ADDS            R3, #1
CB540:  CMP             R4, R3
CB542:  ADD             R5, R6
CB544:  LDRB.W          R5, [R5,#(byte_58B48 - 0x58ADC)]
CB548:  ADD             R2, R5
CB54A:  BNE             loc_CB528
CB54C:  LDR.W           R3, =(silk_rate_levels_BITS_Q5_ptr - 0xCB562)
CB550:  CMP             R2, R1
CB552:  LDR.W           R6, =(silk_pulses_per_block_BITS_Q5_ptr - 0xCB564)
CB556:  ITT LT
CB558:  MOVLT.W         R8, #6
CB55C:  MOVLT           R1, R2
CB55E:  ADD             R3, PC; silk_rate_levels_BITS_Q5_ptr
CB560:  ADD             R6, PC; silk_pulses_per_block_BITS_Q5_ptr
CB562:  LDR             R2, [R3]; silk_rate_levels_BITS_Q5
CB564:  MOVS            R3, #0
CB566:  LDR             R6, [R6]; silk_pulses_per_block_BITS_Q5
CB568:  ADD             R2, R0
CB56A:  LDRB            R2, [R2,#7]
CB56C:  LDR.W           R5, [R7,#var_50]
CB570:  LDR.W           R5, [R5,R3,LSL#2]
CB574:  CMP             R5, #0
CB576:  ITTE LE
CB578:  LDRLE.W         R5, [R7,#var_60]
CB57C:  LDRLE.W         R5, [R5,R3,LSL#2]
CB580:  MOVGT           R5, #0x11
CB582:  ADDS            R3, #1
CB584:  CMP             R4, R3
CB586:  ADD             R5, R6
CB588:  LDRB.W          R5, [R5,#(byte_58B5A - 0x58ADC)]
CB58C:  ADD             R2, R5
CB58E:  BNE             loc_CB56C
CB590:  LDR.W           R3, =(silk_rate_levels_BITS_Q5_ptr - 0xCB5A6)
CB594:  CMP             R2, R1
CB596:  LDR.W           R6, =(silk_pulses_per_block_BITS_Q5_ptr - 0xCB5A8)
CB59A:  ITT LT
CB59C:  MOVLT.W         R8, #7
CB5A0:  MOVLT           R1, R2
CB5A2:  ADD             R3, PC; silk_rate_levels_BITS_Q5_ptr
CB5A4:  ADD             R6, PC; silk_pulses_per_block_BITS_Q5_ptr
CB5A6:  LDR             R2, [R3]; silk_rate_levels_BITS_Q5
CB5A8:  MOVS            R3, #0
CB5AA:  LDR             R6, [R6]; silk_pulses_per_block_BITS_Q5
CB5AC:  ADD             R2, R0
CB5AE:  LDRB            R2, [R2,#8]
CB5B0:  LDR.W           R5, [R7,#var_50]
CB5B4:  LDR.W           R5, [R5,R3,LSL#2]
CB5B8:  CMP             R5, #0
CB5BA:  ITTE LE
CB5BC:  LDRLE.W         R5, [R7,#var_60]
CB5C0:  LDRLE.W         R5, [R5,R3,LSL#2]
CB5C4:  MOVGT           R5, #0x11
CB5C6:  ADDS            R3, #1
CB5C8:  CMP             R4, R3
CB5CA:  ADD             R5, R6
CB5CC:  LDRB.W          R5, [R5,#(byte_58B6C - 0x58ADC)]
CB5D0:  ADD             R2, R5
CB5D2:  BNE             loc_CB5B0
CB5D4:  LDR.W           R3, =(silk_rate_levels_iCDF_ptr - 0xCB5E4)
CB5D8:  CMP             R2, R1
CB5DA:  IT LT
CB5DC:  MOVLT.W         R8, #8
CB5E0:  ADD             R3, PC; silk_rate_levels_iCDF_ptr
CB5E2:  LDR             R1, [R3]; silk_rate_levels_iCDF
CB5E4:  MOVS            R3, #8
CB5E6:  ADDS            R2, R1, R0
CB5E8:  MOV             R0, R11
CB5EA:  MOV             R1, R8
CB5EC:  BLX             j_ec_enc_icdf
CB5F0:  CMP             R4, #1
CB5F2:  BLT.W           loc_CB9E4
CB5F6:  LDR.W           R0, =(silk_pulses_per_block_iCDF_ptr - 0xCB606)
CB5FA:  ADD.W           R1, R8, R8,LSL#3
CB5FE:  MOV.W           R9, #0
CB602:  ADD             R0, PC; silk_pulses_per_block_iCDF_ptr
CB604:  LDR             R0, [R0]; silk_pulses_per_block_iCDF
CB606:  ADD.W           R8, R0, R1,LSL#1
CB60A:  LDR.W           R0, =(silk_pulses_per_block_iCDF_ptr - 0xCB612)
CB60E:  ADD             R0, PC; silk_pulses_per_block_iCDF_ptr
CB610:  LDR             R0, [R0]; silk_pulses_per_block_iCDF
CB612:  ADD.W           R4, R0, #0xA2
CB616:  LDR.W           R0, =(silk_pulses_per_block_iCDF_ptr - 0xCB61E)
CB61A:  ADD             R0, PC; silk_pulses_per_block_iCDF_ptr
CB61C:  LDR             R0, [R0]; silk_pulses_per_block_iCDF
CB61E:  ADDS            R0, #0xA2
CB620:  STR.W           R0, [R7,#var_4C]
CB624:  LDR.W           R0, [R7,#var_50]
CB628:  LDR.W           R5, [R0,R9,LSL#2]
CB62C:  CBZ             R5, loc_CB65E
CB62E:  MOV             R0, R11
CB630:  MOVS            R1, #0x11
CB632:  MOV             R2, R8
CB634:  MOVS            R3, #8
CB636:  BLX             j_ec_enc_icdf
CB63A:  CMP             R5, #2
CB63C:  BLT             loc_CB654
CB63E:  SUBS            R5, #1
CB640:  MOVS            R6, #0
CB642:  MOV             R0, R11
CB644:  MOVS            R1, #0x11
CB646:  MOV             R2, R4
CB648:  MOVS            R3, #8
CB64A:  BLX             j_ec_enc_icdf
CB64E:  ADDS            R6, #1
CB650:  CMP             R6, R5
CB652:  BLT             loc_CB642
CB654:  LDR.W           R0, [R7,#var_60]
CB658:  LDR.W           R2, [R7,#var_4C]
CB65C:  B               loc_CB664
CB65E:  LDR.W           R0, [R7,#var_60]
CB662:  MOV             R2, R8
CB664:  LDR.W           R1, [R0,R9,LSL#2]
CB668:  MOV             R0, R11
CB66A:  MOVS            R3, #8
CB66C:  BLX             j_ec_enc_icdf
CB670:  LDR.W           R0, [R7,#var_68]
CB674:  ADD.W           R9, R9, #1
CB678:  CMP             R9, R0
CB67A:  BNE             loc_CB624
CB67C:  LDR.W           R0, [R7,#var_68]
CB680:  LDR.W           R9, [R7,#var_6C]
CB684:  CMP             R0, #1
CB686:  BLT.W           loc_CB99E
CB68A:  LDR.W           R5, [R7,#var_78]
CB68E:  MOVS            R4, #0
CB690:  LDR.W           R0, [R7,#var_60]
CB694:  LDR.W           R0, [R0,R4,LSL#2]
CB698:  CMP             R0, #1
CB69A:  ITTT GE
CB69C:  MOVGE           R0, R11
CB69E:  MOVGE           R1, R5
CB6A0:  BLXGE           j_silk_shell_encoder
CB6A4:  LDR.W           R0, [R7,#var_68]
CB6A8:  ADDS            R4, #1
CB6AA:  ADDS            R5, #0x40 ; '@'
CB6AC:  CMP             R0, R4
CB6AE:  BNE             loc_CB690
CB6B0:  LDR.W           R0, [R7,#var_68]
CB6B4:  CMP             R0, #1
CB6B6:  BLT.W           loc_CB9EA
CB6BA:  LDR             R0, =(silk_lsb_iCDF_ptr - 0xCB6C6)
CB6BC:  MOVS            R1, #0
CB6BE:  LDR.W           R8, [R7,#var_64]
CB6C2:  ADD             R0, PC; silk_lsb_iCDF_ptr
CB6C4:  LDR             R0, [R0]; silk_lsb_iCDF
CB6C6:  STR.W           R0, [R7,#var_58]
CB6CA:  LDR             R0, =(silk_lsb_iCDF_ptr - 0xCB6D0)
CB6CC:  ADD             R0, PC; silk_lsb_iCDF_ptr
CB6CE:  LDR.W           R11, [R0]; silk_lsb_iCDF
CB6D2:  LDR             R0, =(silk_lsb_iCDF_ptr - 0xCB6D8)
CB6D4:  ADD             R0, PC; silk_lsb_iCDF_ptr
CB6D6:  LDR             R0, [R0]; silk_lsb_iCDF
CB6D8:  STR.W           R0, [R7,#var_4C]
CB6DC:  LDR.W           R0, [R7,#var_50]
CB6E0:  STR.W           R1, [R7,#var_54]
CB6E4:  LDR.W           R0, [R0,R1,LSL#2]
CB6E8:  CMP             R0, #1
CB6EA:  BLT.W           loc_CB8E8
CB6EE:  LDR.W           R2, [R7,#var_54]
CB6F2:  LDR.W           R1, [R7,#var_6C]
CB6F6:  ADD.W           R9, R1, R2,LSL#4
CB6FA:  BNE.W           loc_CB8A4
CB6FE:  LDRSB.W         R0, [R9]
CB702:  MOVS            R3, #8
CB704:  CMP             R0, #0
CB706:  IT MI
CB708:  NEGMI           R0, R0
CB70A:  LDR.W           R4, [R7,#var_58]
CB70E:  AND.W           R1, R0, #1
CB712:  LDR.W           R0, [R7,#var_64]
CB716:  MOV             R2, R4
CB718:  BLX             j_ec_enc_icdf
CB71C:  LDRSB.W         R0, [R9,#1]
CB720:  MOV             R2, R4
CB722:  MOVS            R3, #8
CB724:  CMP             R0, #0
CB726:  IT MI
CB728:  NEGMI           R0, R0
CB72A:  AND.W           R1, R0, #1
CB72E:  LDR.W           R0, [R7,#var_64]
CB732:  BLX             j_ec_enc_icdf
CB736:  LDRSB.W         R0, [R9,#2]
CB73A:  MOV             R2, R4
CB73C:  MOVS            R3, #8
CB73E:  CMP             R0, #0
CB740:  IT MI
CB742:  NEGMI           R0, R0
CB744:  AND.W           R1, R0, #1
CB748:  LDR.W           R0, [R7,#var_64]
CB74C:  BLX             j_ec_enc_icdf
CB750:  LDRSB.W         R0, [R9,#3]
CB754:  MOV             R2, R4
CB756:  MOVS            R3, #8
CB758:  CMP             R0, #0
CB75A:  IT MI
CB75C:  NEGMI           R0, R0
CB75E:  AND.W           R1, R0, #1
CB762:  LDR.W           R0, [R7,#var_64]
CB766:  BLX             j_ec_enc_icdf
CB76A:  LDRSB.W         R0, [R9,#4]
CB76E:  MOV             R2, R4
CB770:  MOVS            R3, #8
CB772:  CMP             R0, #0
CB774:  IT MI
CB776:  NEGMI           R0, R0
CB778:  AND.W           R1, R0, #1
CB77C:  LDR.W           R0, [R7,#var_64]
CB780:  BLX             j_ec_enc_icdf
CB784:  LDRSB.W         R0, [R9,#5]
CB788:  MOV             R2, R4
CB78A:  MOVS            R3, #8
CB78C:  CMP             R0, #0
CB78E:  IT MI
CB790:  NEGMI           R0, R0
CB792:  AND.W           R1, R0, #1
CB796:  LDR.W           R0, [R7,#var_64]
CB79A:  BLX             j_ec_enc_icdf
CB79E:  LDRSB.W         R0, [R9,#6]
CB7A2:  MOV             R2, R4
CB7A4:  MOVS            R3, #8
CB7A6:  CMP             R0, #0
CB7A8:  IT MI
CB7AA:  NEGMI           R0, R0
CB7AC:  AND.W           R1, R0, #1
CB7B0:  LDR.W           R0, [R7,#var_64]
CB7B4:  BLX             j_ec_enc_icdf
CB7B8:  LDRSB.W         R0, [R9,#7]
CB7BC:  MOV             R2, R4
CB7BE:  MOVS            R3, #8
CB7C0:  CMP             R0, #0
CB7C2:  IT MI
CB7C4:  NEGMI           R0, R0
CB7C6:  AND.W           R1, R0, #1
CB7CA:  LDR.W           R0, [R7,#var_64]
CB7CE:  BLX             j_ec_enc_icdf
CB7D2:  LDRSB.W         R0, [R9,#8]
CB7D6:  MOV             R2, R4
CB7D8:  MOVS            R3, #8
CB7DA:  CMP             R0, #0
CB7DC:  IT MI
CB7DE:  NEGMI           R0, R0
CB7E0:  AND.W           R1, R0, #1
CB7E4:  LDR.W           R0, [R7,#var_64]
CB7E8:  BLX             j_ec_enc_icdf
CB7EC:  LDRSB.W         R0, [R9,#9]
CB7F0:  MOV             R2, R4
CB7F2:  MOVS            R3, #8
CB7F4:  CMP             R0, #0
CB7F6:  IT MI
CB7F8:  NEGMI           R0, R0
CB7FA:  AND.W           R1, R0, #1
CB7FE:  LDR.W           R0, [R7,#var_64]
CB802:  BLX             j_ec_enc_icdf
CB806:  LDRSB.W         R0, [R9,#0xA]
CB80A:  MOV             R2, R4
CB80C:  MOVS            R3, #8
CB80E:  CMP             R0, #0
CB810:  IT MI
CB812:  NEGMI           R0, R0
CB814:  AND.W           R1, R0, #1
CB818:  LDR.W           R0, [R7,#var_64]
CB81C:  BLX             j_ec_enc_icdf
CB820:  LDRSB.W         R0, [R9,#0xB]
CB824:  MOV             R2, R4
CB826:  MOVS            R3, #8
CB828:  CMP             R0, #0
CB82A:  IT MI
CB82C:  NEGMI           R0, R0
CB82E:  AND.W           R1, R0, #1
CB832:  LDR.W           R0, [R7,#var_64]
CB836:  BLX             j_ec_enc_icdf
CB83A:  LDRSB.W         R0, [R9,#0xC]
CB83E:  MOV             R2, R4
CB840:  MOVS            R3, #8
CB842:  CMP             R0, #0
CB844:  IT MI
CB846:  NEGMI           R0, R0
CB848:  AND.W           R1, R0, #1
CB84C:  LDR.W           R0, [R7,#var_64]
CB850:  BLX             j_ec_enc_icdf
CB854:  LDRSB.W         R0, [R9,#0xD]
CB858:  MOV             R2, R4
CB85A:  MOVS            R3, #8
CB85C:  CMP             R0, #0
CB85E:  IT MI
CB860:  NEGMI           R0, R0
CB862:  AND.W           R1, R0, #1
CB866:  LDR.W           R0, [R7,#var_64]
CB86A:  BLX             j_ec_enc_icdf
CB86E:  LDRSB.W         R0, [R9,#0xE]
CB872:  MOV             R2, R4
CB874:  MOVS            R3, #8
CB876:  CMP             R0, #0
CB878:  IT MI
CB87A:  NEGMI           R0, R0
CB87C:  AND.W           R1, R0, #1
CB880:  LDR.W           R0, [R7,#var_64]
CB884:  BLX             j_ec_enc_icdf
CB888:  LDRSB.W         R0, [R9,#0xF]
CB88C:  MOV             R2, R4
CB88E:  MOVS            R3, #8
CB890:  CMP             R0, #0
CB892:  IT MI
CB894:  NEGMI           R0, R0
CB896:  AND.W           R1, R0, #1
CB89A:  LDR.W           R0, [R7,#var_64]
CB89E:  BLX             j_ec_enc_icdf
CB8A2:  B               loc_CB8E8
CB8A4:  ADD.W           R10, R0, #1
CB8A8:  MOVS            R5, #0
CB8AA:  LDRSB.W         R0, [R9,R5]
CB8AE:  MOV             R4, R10
CB8B0:  CMP             R0, #0
CB8B2:  IT MI
CB8B4:  NEGMI           R0, R0
CB8B6:  SXTB            R6, R0
CB8B8:  SUBS            R0, R4, #2
CB8BA:  MOV             R2, R11
CB8BC:  MOVS            R3, #8
CB8BE:  LSR.W           R0, R6, R0
CB8C2:  AND.W           R1, R0, #1
CB8C6:  MOV             R0, R8
CB8C8:  BLX             j_ec_enc_icdf
CB8CC:  SUBS            R4, #1
CB8CE:  CMP             R4, #2
CB8D0:  BGT             loc_CB8B8
CB8D2:  LDR.W           R2, [R7,#var_4C]
CB8D6:  AND.W           R1, R6, #1
CB8DA:  MOV             R0, R8
CB8DC:  MOVS            R3, #8
CB8DE:  BLX             j_ec_enc_icdf
CB8E2:  ADDS            R5, #1
CB8E4:  CMP             R5, #0x10
CB8E6:  BNE             loc_CB8AA
CB8E8:  LDR.W           R1, [R7,#var_54]
CB8EC:  LDR.W           R0, [R7,#var_68]
CB8F0:  ADDS            R1, #1
CB8F2:  CMP             R1, R0
CB8F4:  BNE.W           loc_CB6DC
CB8F8:  LDR.W           R10, [R7,#var_74]
CB8FC:  LDR.W           R9, [R7,#var_6C]
CB900:  LDR.W           R11, [R7,#var_64]
CB904:  B               loc_CB99E
CB906:  MOVS            R0, #7
CB908:  ADD.W           R0, R0, R3,LSL#2
CB90C:  BIC.W           R0, R0, #7
CB910:  SUB.W           R0, SP, R0
CB914:  STR.W           R0, [R7,#var_60]
CB918:  MOV             SP, R0
CB91A:  MOV.W           R0, R10,ASR#1
CB91E:  LDR             R1, =(silk_rate_levels_BITS_Q5_ptr - 0xCB928)
CB920:  ADD.W           LR, R0, R0,LSL#3
CB924:  ADD             R1, PC; silk_rate_levels_BITS_Q5_ptr
CB926:  LDR             R1, [R1]; silk_rate_levels_BITS_Q5
CB928:  ADD.W           R5, R1, LR
CB92C:  LDRB.W          R2, [R1,LR]
CB930:  MOVS            R1, #0
CB932:  LDRB            R4, [R5,#1]
CB934:  LDRB            R3, [R5,#2]
CB936:  CMP             R2, R4
CB938:  LDRB            R0, [R5,#3]
CB93A:  LDRB            R6, [R5,#4]
CB93C:  ITT HI
CB93E:  MOVHI           R1, #1
CB940:  MOVHI           R2, R4
CB942:  LDRB.W          R8, [R5,#6]
CB946:  LDRB.W          R12, [R5,#7]
CB94A:  CMP             R2, R3
CB94C:  LDR             R4, =(silk_rate_levels_iCDF_ptr - 0xCB95A)
CB94E:  ITT HI
CB950:  MOVHI           R1, #2
CB952:  MOVHI           R2, R3
CB954:  LDRB            R3, [R5,#5]
CB956:  ADD             R4, PC; silk_rate_levels_iCDF_ptr
CB958:  CMP             R2, R0
CB95A:  ITT HI
CB95C:  MOVHI           R1, #3
CB95E:  MOVHI           R2, R0
CB960:  LDRB            R0, [R5,#8]
CB962:  LDR             R4, [R4]; silk_rate_levels_iCDF
CB964:  CMP             R2, R6
CB966:  IT HI
CB968:  MOVHI           R1, #4
CB96A:  IT HI
CB96C:  MOVHI           R2, R6
CB96E:  CMP             R2, R3
CB970:  IT HI
CB972:  MOVHI           R1, #5
CB974:  IT HI
CB976:  MOVHI           R2, R3
CB978:  CMP             R2, R8
CB97A:  ITT HI
CB97C:  MOVHI           R1, #6
CB97E:  MOVHI           R2, R8
CB980:  UXTB            R3, R2
CB982:  CMP             R3, R12
CB984:  ITT HI
CB986:  MOVHI           R1, #7
CB988:  MOVHI           R2, R12
CB98A:  MOVS            R3, #8
CB98C:  UXTB            R2, R2
CB98E:  CMP             R2, R0
CB990:  ADD.W           R2, R4, LR
CB994:  IT HI
CB996:  MOVHI           R1, #8
CB998:  MOV             R0, R11
CB99A:  BLX             j_ec_enc_icdf
CB99E:  SUB             SP, SP, #8
CB9A0:  LDR.W           R0, [R7,#var_70]
CB9A4:  MOV             R1, R9
CB9A6:  LDR             R2, [R7,#arg_0]
CB9A8:  MOV             R3, R10
CB9AA:  STR             R0, [SP,#0x80+var_80]
CB9AC:  LDR.W           R0, [R7,#var_60]
CB9B0:  STR             R0, [SP,#0x80+var_7C]
CB9B2:  MOV             R0, R11
CB9B4:  BLX             j_silk_encode_signs
CB9B8:  ADD             SP, SP, #8
CB9BA:  LDR             R0, =(__stack_chk_guard_ptr - 0xCB9C4)
CB9BC:  LDR.W           R1, [R7,#var_24]
CB9C0:  ADD             R0, PC; __stack_chk_guard_ptr
CB9C2:  LDR             R0, [R0]; __stack_chk_guard
CB9C4:  LDR             R0, [R0]
CB9C6:  SUBS            R0, R0, R1
CB9C8:  ITTTT EQ
CB9CA:  SUBEQ.W         R4, R7, #-var_1C
CB9CE:  MOVEQ           SP, R4
CB9D0:  POPEQ.W         {R8-R11}
CB9D4:  POPEQ           {R4-R7,PC}
CB9D6:  BLX             __stack_chk_fail
CB9DA:  LDR.W           R9, [R7,#var_6C]
CB9DE:  LDR.W           R11, [R7,#var_64]
CB9E2:  B               loc_CB91E
CB9E4:  LDR.W           R9, [R7,#var_6C]
CB9E8:  B               loc_CB99E
CB9EA:  LDR.W           R10, [R7,#var_74]
CB9EE:  B               loc_CB99E
