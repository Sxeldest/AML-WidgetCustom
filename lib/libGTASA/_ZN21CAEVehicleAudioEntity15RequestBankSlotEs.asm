; =========================================================
; Game Engine Function: _ZN21CAEVehicleAudioEntity15RequestBankSlotEs
; Address            : 0x3AC094 - 0x3AC404
; =========================================================

3AC094:  PUSH            {R4-R7,LR}
3AC096:  ADD             R7, SP, #0xC
3AC098:  PUSH.W          {R8-R11}
3AC09C:  SUB             SP, SP, #4
3AC09E:  MOV             R4, R0
3AC0A0:  LDR             R0, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC0A8)
3AC0A2:  UXTH            R5, R4
3AC0A4:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC0A6:  LDR             R2, [R0]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC0A8:  MOV             R0, R2
3AC0AA:  LDRH            R2, [R2]; CAEVehicleAudioEntity::s_DummyEngineSlots
3AC0AC:  LDRSH.W         R1, [R0,#(word_94EAF2 - 0x94EAF0)]!
3AC0B0:  CMP             R2, R5
3AC0B2:  BNE             loc_3AC0B8
3AC0B4:  MOVS            R6, #7
3AC0B6:  B               loc_3AC190
3AC0B8:  LDR             R0, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC0BE)
3AC0BA:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC0BC:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC0BE:  LDRSH.W         R2, [R0,#(word_94EAF6 - 0x94EAF0)]!
3AC0C2:  LDRH.W          R3, [R0,#(word_94EAF4 - 0x94EAF6)]
3AC0C6:  CMP             R3, R5
3AC0C8:  BNE             loc_3AC0D0
3AC0CA:  MOVS            R6, #8
3AC0CC:  MOV             R1, R2
3AC0CE:  B               loc_3AC190
3AC0D0:  LDR             R0, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC0D6)
3AC0D2:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC0D4:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC0D6:  LDRSH.W         R3, [R0,#(word_94EAFA - 0x94EAF0)]!
3AC0DA:  LDRH.W          R6, [R0,#(word_94EAF8 - 0x94EAFA)]
3AC0DE:  CMP             R6, R5
3AC0E0:  BNE             loc_3AC0E8
3AC0E2:  MOVS            R6, #9
3AC0E4:  MOV             R1, R3
3AC0E6:  B               loc_3AC190
3AC0E8:  LDR             R0, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC0EE)
3AC0EA:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC0EC:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC0EE:  LDRSH.W         R12, [R0,#(word_94EAFE - 0x94EAF0)]!
3AC0F2:  LDRH.W          R6, [R0,#(word_94EAFC - 0x94EAFE)]
3AC0F6:  CMP             R6, R5
3AC0F8:  BNE             loc_3AC100
3AC0FA:  MOVS            R6, #0xA
3AC0FC:  MOV             R1, R12
3AC0FE:  B               loc_3AC190
3AC100:  LDR             R0, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC106)
3AC102:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC104:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC106:  LDRSH.W         LR, [R0,#(word_94EB02 - 0x94EAF0)]!
3AC10A:  LDRH.W          R6, [R0,#(word_94EB00 - 0x94EB02)]
3AC10E:  CMP             R6, R5
3AC110:  BNE             loc_3AC118
3AC112:  MOVS            R6, #0xB
3AC114:  MOV             R1, LR
3AC116:  B               loc_3AC190
3AC118:  LDR             R0, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC11E)
3AC11A:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC11C:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC11E:  LDRSH.W         R8, [R0,#(word_94EB06 - 0x94EAF0)]!
3AC122:  LDRH.W          R6, [R0,#(word_94EB04 - 0x94EB06)]
3AC126:  CMP             R6, R5
3AC128:  BNE             loc_3AC130
3AC12A:  MOVS            R6, #0xC
3AC12C:  MOV             R1, R8
3AC12E:  B               loc_3AC190
3AC130:  LDR             R0, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC136)
3AC132:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC134:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC136:  LDRSH.W         R9, [R0,#(word_94EB0A - 0x94EAF0)]!
3AC13A:  LDRH.W          R6, [R0,#(word_94EB08 - 0x94EB0A)]
3AC13E:  CMP             R6, R5
3AC140:  BNE             loc_3AC148
3AC142:  MOVS            R6, #0xD
3AC144:  MOV             R1, R9
3AC146:  B               loc_3AC190
3AC148:  LDR             R0, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC14E)
3AC14A:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC14C:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC14E:  LDRSH.W         R10, [R0,#(word_94EB0E - 0x94EAF0)]!
3AC152:  LDRH.W          R6, [R0,#(word_94EB0C - 0x94EB0E)]
3AC156:  CMP             R6, R5
3AC158:  BNE             loc_3AC160
3AC15A:  MOVS            R6, #0xE
3AC15C:  MOV             R1, R10
3AC15E:  B               loc_3AC190
3AC160:  LDR             R0, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC166)
3AC162:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC164:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC166:  LDRSH.W         R11, [R0,#(dword_94EB10+2 - 0x94EAF0)]!
3AC16A:  LDRH.W          R6, [R0,#(dword_94EB10 - 0x94EB12)]
3AC16E:  CMP             R6, R5
3AC170:  BNE             loc_3AC178
3AC172:  MOVS            R6, #0xF
3AC174:  MOV             R1, R11
3AC176:  B               loc_3AC190
3AC178:  LDR             R0, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC17E)
3AC17A:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC17C:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC17E:  LDRSH.W         R6, [R0,#(dword_94EB14+2 - 0x94EAF0)]!
3AC182:  STR             R6, [SP,#0x20+var_20]
3AC184:  LDRH.W          R6, [R0,#(dword_94EB14 - 0x94EB16)]
3AC188:  CMP             R6, R5
3AC18A:  BNE             loc_3AC19E
3AC18C:  MOVS            R6, #0x10
3AC18E:  LDR             R1, [SP,#0x20+var_20]
3AC190:  ADDS            R1, #1
3AC192:  STRH            R1, [R0]
3AC194:  SXTH            R0, R6
3AC196:  ADD             SP, SP, #4
3AC198:  POP.W           {R8-R11}
3AC19C:  POP             {R4-R7,PC}
3AC19E:  MOVS            R0, #0
3AC1A0:  CMP             R1, #0
3AC1A2:  IT GT
3AC1A4:  MOVGT.W         R0, #0xFFFFFFFF
3AC1A8:  CMP             R2, #1
3AC1AA:  IT LT
3AC1AC:  MOVLT           R0, #1
3AC1AE:  CMP             R3, #1
3AC1B0:  IT LT
3AC1B2:  MOVLT           R0, #2
3AC1B4:  CMP.W           R12, #1
3AC1B8:  IT LT
3AC1BA:  MOVLT           R0, #3
3AC1BC:  CMP.W           LR, #1
3AC1C0:  IT LT
3AC1C2:  MOVLT           R0, #4
3AC1C4:  CMP.W           R8, #1
3AC1C8:  IT LT
3AC1CA:  MOVLT           R0, #5
3AC1CC:  CMP.W           R9, #1
3AC1D0:  IT LT
3AC1D2:  MOVLT           R0, #6
3AC1D4:  CMP.W           R10, #1
3AC1D8:  IT LT
3AC1DA:  MOVLT           R0, #7
3AC1DC:  CMP.W           R11, #1
3AC1E0:  IT LT
3AC1E2:  MOVLT           R0, #8
3AC1E4:  LDR             R1, [SP,#0x20+var_20]
3AC1E6:  MOVW            R6, #0xFFFF
3AC1EA:  CMP             R1, #1
3AC1EC:  IT LT
3AC1EE:  MOVLT           R0, #9
3AC1F0:  UXTH            R1, R0
3AC1F2:  CMP             R1, R6
3AC1F4:  BEQ             loc_3AC194
3AC1F6:  LDR             R1, =(_ZN21CAEVehicleAudioEntity21s_NextDummyEngineSlotE_ptr - 0x3AC206)
3AC1F8:  MOV             R12, #0x66666667
3AC200:  LDR             R3, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC208)
3AC202:  ADD             R1, PC; _ZN21CAEVehicleAudioEntity21s_NextDummyEngineSlotE_ptr
3AC204:  ADD             R3, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC206:  LDR             R1, [R1]; CAEVehicleAudioEntity::s_NextDummyEngineSlot ...
3AC208:  LDR             R3, [R3]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC20A:  LDRSH.W         LR, [R1]; CAEVehicleAudioEntity::s_NextDummyEngineSlot
3AC20E:  SMMUL.W         R1, LR, R12
3AC212:  ASRS            R6, R1, #2
3AC214:  ADD.W           R1, R6, R1,LSR#31
3AC218:  ADD.W           R1, R1, R1,LSL#2
3AC21C:  SUB.W           R1, LR, R1,LSL#1
3AC220:  ADD.W           R3, R3, R1,LSL#2
3AC224:  LDRSH.W         R6, [R3,#2]!
3AC228:  CMP             R6, #1
3AC22A:  BLT.W           loc_3AC39E
3AC22E:  ADD.W           R1, LR, #1
3AC232:  LDR             R6, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC23C)
3AC234:  SMMUL.W         R3, R1, R12
3AC238:  ADD             R6, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC23A:  LDR             R6, [R6]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC23C:  ASRS            R2, R3, #2
3AC23E:  ADD.W           R2, R2, R3,LSR#31
3AC242:  ADD.W           R2, R2, R2,LSL#2
3AC246:  SUB.W           R1, R1, R2,LSL#1
3AC24A:  ADD.W           R3, R6, R1,LSL#2
3AC24E:  LDRSH.W         R6, [R3,#2]!
3AC252:  CMP             R6, #0
3AC254:  BLE.W           loc_3AC39E
3AC258:  ADD.W           R1, LR, #2
3AC25C:  LDR             R3, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC266)
3AC25E:  SMMUL.W         R2, R1, R12
3AC262:  ADD             R3, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC264:  LDR             R3, [R3]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC266:  ASRS            R6, R2, #2
3AC268:  ADD.W           R2, R6, R2,LSR#31
3AC26C:  ADD.W           R2, R2, R2,LSL#2
3AC270:  SUB.W           R1, R1, R2,LSL#1
3AC274:  ADD.W           R3, R3, R1,LSL#2
3AC278:  LDRSH.W         R6, [R3,#2]!
3AC27C:  CMP             R6, #1
3AC27E:  BLT.W           loc_3AC39E
3AC282:  ADD.W           R1, LR, #3
3AC286:  LDR             R3, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC290)
3AC288:  SMMUL.W         R2, R1, R12
3AC28C:  ADD             R3, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC28E:  LDR             R3, [R3]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC290:  ASRS            R6, R2, #2
3AC292:  ADD.W           R2, R6, R2,LSR#31
3AC296:  ADD.W           R2, R2, R2,LSL#2
3AC29A:  SUB.W           R1, R1, R2,LSL#1
3AC29E:  ADD.W           R3, R3, R1,LSL#2
3AC2A2:  LDRSH.W         R6, [R3,#2]!
3AC2A6:  CMP             R6, #1
3AC2A8:  BLT             loc_3AC39E
3AC2AA:  ADD.W           R1, LR, #4
3AC2AE:  LDR             R3, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC2B8)
3AC2B0:  SMMUL.W         R2, R1, R12
3AC2B4:  ADD             R3, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC2B6:  LDR             R3, [R3]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC2B8:  ASRS            R6, R2, #2
3AC2BA:  ADD.W           R2, R6, R2,LSR#31
3AC2BE:  ADD.W           R2, R2, R2,LSL#2
3AC2C2:  SUB.W           R1, R1, R2,LSL#1
3AC2C6:  ADD.W           R3, R3, R1,LSL#2
3AC2CA:  LDRSH.W         R6, [R3,#2]!
3AC2CE:  CMP             R6, #1
3AC2D0:  BLT             loc_3AC39E
3AC2D2:  ADD.W           R1, LR, #5
3AC2D6:  LDR             R3, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC2E0)
3AC2D8:  SMMUL.W         R2, R1, R12
3AC2DC:  ADD             R3, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC2DE:  LDR             R3, [R3]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC2E0:  ASRS            R6, R2, #2
3AC2E2:  ADD.W           R2, R6, R2,LSR#31
3AC2E6:  ADD.W           R2, R2, R2,LSL#2
3AC2EA:  SUB.W           R1, R1, R2,LSL#1
3AC2EE:  ADD.W           R3, R3, R1,LSL#2
3AC2F2:  LDRSH.W         R6, [R3,#2]!
3AC2F6:  CMP             R6, #1
3AC2F8:  BLT             loc_3AC39E
3AC2FA:  ADD.W           R1, LR, #6
3AC2FE:  LDR             R3, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC308)
3AC300:  SMMUL.W         R2, R1, R12
3AC304:  ADD             R3, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC306:  LDR             R3, [R3]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC308:  ASRS            R6, R2, #2
3AC30A:  ADD.W           R2, R6, R2,LSR#31
3AC30E:  ADD.W           R2, R2, R2,LSL#2
3AC312:  SUB.W           R1, R1, R2,LSL#1
3AC316:  ADD.W           R3, R3, R1,LSL#2
3AC31A:  LDRSH.W         R6, [R3,#2]!
3AC31E:  CMP             R6, #1
3AC320:  BLT             loc_3AC39E
3AC322:  ADD.W           R1, LR, #7
3AC326:  LDR             R3, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC330)
3AC328:  SMMUL.W         R2, R1, R12
3AC32C:  ADD             R3, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC32E:  LDR             R3, [R3]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC330:  ASRS            R6, R2, #2
3AC332:  ADD.W           R2, R6, R2,LSR#31
3AC336:  ADD.W           R2, R2, R2,LSL#2
3AC33A:  SUB.W           R1, R1, R2,LSL#1
3AC33E:  ADD.W           R3, R3, R1,LSL#2
3AC342:  LDRSH.W         R6, [R3,#2]!
3AC346:  CMP             R6, #1
3AC348:  BLT             loc_3AC39E
3AC34A:  ADD.W           R1, LR, #8
3AC34E:  LDR             R3, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC358)
3AC350:  SMMUL.W         R2, R1, R12
3AC354:  ADD             R3, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC356:  LDR             R3, [R3]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC358:  ASRS            R6, R2, #2
3AC35A:  ADD.W           R2, R6, R2,LSR#31
3AC35E:  ADD.W           R2, R2, R2,LSL#2
3AC362:  SUB.W           R1, R1, R2,LSL#1
3AC366:  ADD.W           R3, R3, R1,LSL#2
3AC36A:  LDRSH.W         R6, [R3,#2]!
3AC36E:  CMP             R6, #1
3AC370:  BLT             loc_3AC39E
3AC372:  ADD.W           R1, LR, #9
3AC376:  LDR             R3, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC380)
3AC378:  SMMUL.W         R2, R1, R12
3AC37C:  ADD             R3, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC37E:  LDR             R3, [R3]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC380:  ASRS            R6, R2, #2
3AC382:  ADD.W           R2, R6, R2,LSR#31
3AC386:  ADD.W           R2, R2, R2,LSL#2
3AC38A:  SUB.W           R2, R1, R2,LSL#1
3AC38E:  ADD.W           R3, R3, R2,LSL#2
3AC392:  LDRSH.W         R6, [R3,#2]!
3AC396:  CMP             R6, #1
3AC398:  BGE             loc_3AC3C4
3AC39A:  MOV             R0, R2
3AC39C:  B               loc_3AC3A0
3AC39E:  MOV             R0, R1
3AC3A0:  ADDS            R1, R0, #1
3AC3A2:  ADDS            R6, #1
3AC3A4:  STRH            R6, [R3]
3AC3A6:  SMMUL.W         R2, R1, R12
3AC3AA:  LDR.W           R12, =(_ZN21CAEVehicleAudioEntity21s_NextDummyEngineSlotE_ptr - 0x3AC3B2)
3AC3AE:  ADD             R12, PC; _ZN21CAEVehicleAudioEntity21s_NextDummyEngineSlotE_ptr
3AC3B0:  LDR.W           R3, [R12]; CAEVehicleAudioEntity::s_NextDummyEngineSlot ...
3AC3B4:  ASRS            R6, R2, #2
3AC3B6:  ADD.W           R2, R6, R2,LSR#31
3AC3BA:  ADD.W           R2, R2, R2,LSL#2
3AC3BE:  SUB.W           R1, R1, R2,LSL#1
3AC3C2:  STRH            R1, [R3]; CAEVehicleAudioEntity::s_NextDummyEngineSlot
3AC3C4:  LDR             R1, =(AESoundManager_ptr - 0x3AC3D4)
3AC3C6:  SXTH.W          R9, R0
3AC3CA:  ADD.W           R6, R9, #7
3AC3CE:  MOVS            R2, #1; unsigned __int8
3AC3D0:  ADD             R1, PC; AESoundManager_ptr
3AC3D2:  MOV.W           R10, #1
3AC3D6:  SXTH.W          R8, R6
3AC3DA:  LDR             R0, [R1]; AESoundManager ; this
3AC3DC:  MOV             R1, R8; __int16
3AC3DE:  BLX             j__ZN15CAESoundManager22CancelSoundsInBankSlotEsh; CAESoundManager::CancelSoundsInBankSlot(short,uchar)
3AC3E2:  LDR             R0, =(AEAudioHardware_ptr - 0x3AC3EC)
3AC3E4:  MOV             R1, R5; unsigned __int16
3AC3E6:  MOV             R2, R8; __int16
3AC3E8:  ADD             R0, PC; AEAudioHardware_ptr
3AC3EA:  LDR             R0, [R0]; AEAudioHardware ; this
3AC3EC:  BLX             j__ZN16CAEAudioHardware13LoadSoundBankEts; CAEAudioHardware::LoadSoundBank(ushort,short)
3AC3F0:  LDR             R0, =(_ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr - 0x3AC3F6)
3AC3F2:  ADD             R0, PC; _ZN21CAEVehicleAudioEntity18s_DummyEngineSlotsE_ptr
3AC3F4:  LDR             R0, [R0]; CAEVehicleAudioEntity::s_DummyEngineSlots ...
3AC3F6:  STRH.W          R4, [R0,R9,LSL#2]
3AC3FA:  ADD.W           R0, R0, R9,LSL#2
3AC3FE:  STRH.W          R10, [R0,#2]
3AC402:  B               loc_3AC194
