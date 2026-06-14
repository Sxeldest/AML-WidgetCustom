; =========================================================
; Game Engine Function: _Z23_rwOpenGLSetRenderState13RwRenderStatePv
; Address            : 0x1AF024 - 0x1AF6B4
; =========================================================

1AF024:  PUSH            {R4-R7,LR}
1AF026:  ADD             R7, SP, #0xC
1AF028:  PUSH.W          {R8}
1AF02C:  SUB             SP, SP, #8; float
1AF02E:  MOV             R4, R1
1AF030:  SUBS            R1, R0, #1; switch 30 cases
1AF032:  MOVS            R0, #0
1AF034:  CMP             R1, #0x1D
1AF036:  BHI.W           def_1AF03A; jumptable 001AF03A default case, cases 3,4,13,16-19,21-28
1AF03A:  TBH.W           [PC,R1,LSL#1]; switch jump
1AF03E:  DCW 0x1E; jump table for switch statement
1AF040:  DCW 0x67
1AF042:  DCW 0x320
1AF044:  DCW 0x320
1AF046:  DCW 0x72
1AF048:  DCW 0x77
1AF04A:  DCW 0x31F
1AF04C:  DCW 0xBC
1AF04E:  DCW 0x117
1AF050:  DCW 0x13A
1AF052:  DCW 0x194
1AF054:  DCW 0x1E4
1AF056:  DCW 0x320
1AF058:  DCW 0x1FC
1AF05A:  DCW 0x23B
1AF05C:  DCW 0x320
1AF05E:  DCW 0x320
1AF060:  DCW 0x320
1AF062:  DCW 0x320
1AF064:  DCW 0x23F
1AF066:  DCW 0x320
1AF068:  DCW 0x320
1AF06A:  DCW 0x320
1AF06C:  DCW 0x320
1AF06E:  DCW 0x320
1AF070:  DCW 0x320
1AF072:  DCW 0x320
1AF074:  DCW 0x320
1AF076:  DCW 0x31F
1AF078:  DCW 0x31F
1AF07A:  LDR.W           R1, =(dword_6B3208 - 0x1AF084); jumptable 001AF03A case 1
1AF07E:  CMP             R4, #0
1AF080:  ADD             R1, PC; dword_6B3208
1AF082:  LDRB            R0, [R1,#(byte_6B320C - 0x6B3208)]
1AF084:  LDR             R1, [R1,#(dword_6B3210 - 0x6B3208)]
1AF086:  LDR.W           R2, [R1,R0,LSL#2]
1AF08A:  BEQ.W           loc_1AF56E
1AF08E:  CBNZ            R2, loc_1AF0A6
1AF090:  MOVW            R0, #0xDE1; unsigned int
1AF094:  BLX             j__Z12emu_glEnablej; emu_glEnable(uint)
1AF098:  LDR.W           R1, =(dword_6B3208 - 0x1AF0A0)
1AF09C:  ADD             R1, PC; dword_6B3208
1AF09E:  LDRB            R0, [R1,#(byte_6B320C - 0x6B3208)]
1AF0A0:  LDR             R1, [R1,#(dword_6B3210 - 0x6B3208)]
1AF0A2:  LDR.W           R2, [R1,R0,LSL#2]
1AF0A6:  CMP             R2, R4
1AF0A8:  BEQ.W           loc_1AF67C; jumptable 001AF03A cases 7,29,30
1AF0AC:  LDR.W           R2, =(RasterExtOffset_ptr - 0x1AF0B4)
1AF0B0:  ADD             R2, PC; RasterExtOffset_ptr
1AF0B2:  LDR             R2, [R2]; RasterExtOffset
1AF0B4:  LDR             R6, [R2]
1AF0B6:  STR.W           R4, [R1,R0,LSL#2]
1AF0BA:  MOV             R0, R4
1AF0BC:  BLX             j__Z16_rwGLHandleBlendP8RwRaster; _rwGLHandleBlend(RwRaster *)
1AF0C0:  LDR             R0, [R4,R6]
1AF0C2:  CBZ             R0, loc_1AF104
1AF0C4:  LDR             R0, [R4,#0x2C]
1AF0C6:  CBZ             R0, loc_1AF0D6
1AF0C8:  BLX             j__Z26emu_ArraysGetShareResourcev; emu_ArraysGetShareResource(void)
1AF0CC:  CMP             R0, #0
1AF0CE:  ITT EQ
1AF0D0:  LDREQ           R0, [R4,#0x2C]
1AF0D2:  BLXEQ           j__ZN22TextureDatabaseRuntime21RenderingTextureEntryEP20TextureDatabaseEntry; TextureDatabaseRuntime::RenderingTextureEntry(TextureDatabaseEntry *)
1AF0D6:  LDR.W           R1, =(dword_6B3208 - 0x1AF0E2)
1AF0DA:  MOVS            R5, #0
1AF0DC:  LDR             R0, [R4,R6]
1AF0DE:  ADD             R1, PC; dword_6B3208
1AF0E0:  LDRB            R2, [R1,#(byte_6B320C - 0x6B3208)]
1AF0E2:  LDR             R1, [R1,#(dword_6B3218 - 0x6B3208)]
1AF0E4:  LDR             R3, [R0]
1AF0E6:  LDR.W           R8, [R1,R2,LSL#2]
1AF0EA:  MOVS            R1, #0
1AF0EC:  LDR             R2, [R3,#0x18]
1AF0EE:  BLX             R2
1AF0F0:  LDR             R0, [R4,R6]
1AF0F2:  CMP.W           R8, #3
1AF0F6:  LDR             R1, [R0]
1AF0F8:  LDR             R3, [R1,#0xC]
1AF0FA:  IT EQ
1AF0FC:  MOVEQ           R5, #1
1AF0FE:  MOV             R1, R5
1AF100:  MOV             R2, R5
1AF102:  BLX             R3
1AF104:  MOV             R0, R4
1AF106:  BLX             j__Z25HandleTextureEnhancementsP8RwRaster; HandleTextureEnhancements(RwRaster *)
1AF10A:  B               loc_1AF67C; jumptable 001AF03A cases 7,29,30
1AF10C:  LDR.W           R0, =(dword_6B3208 - 0x1AF114); jumptable 001AF03A case 2
1AF110:  ADD             R0, PC; dword_6B3208
1AF112:  LDRB            R1, [R0,#(byte_6B320C - 0x6B3208)]
1AF114:  LDR             R2, [R0,#(dword_6B3218 - 0x6B3208)]
1AF116:  STR.W           R4, [R2,R1,LSL#2]
1AF11A:  LDR             R0, [R0,#(dword_6B321C - 0x6B3208)]
1AF11C:  STR.W           R4, [R0,R1,LSL#2]
1AF120:  B               loc_1AF67C; jumptable 001AF03A cases 7,29,30
1AF122:  CMP             R4, #0; jumptable 001AF03A case 5
1AF124:  IT NE
1AF126:  MOVNE           R4, #1
1AF128:  MOV             R0, R4
1AF12A:  B               def_1AF03A; jumptable 001AF03A default case, cases 3,4,13,16-19,21-28
1AF12C:  LDR.W           R0, =(dword_6B3208 - 0x1AF134); jumptable 001AF03A case 6
1AF130:  ADD             R0, PC; dword_6B3208
1AF132:  LDR             R0, [R0,#(dword_6B3224 - 0x6B3208)]
1AF134:  CMP             R0, R4
1AF136:  BEQ.W           loc_1AF67C; jumptable 001AF03A cases 7,29,30
1AF13A:  LDR.W           R0, =(renderQueue_ptr - 0x1AF14A)
1AF13E:  MOVS            R3, #0x24 ; '$'
1AF140:  LDR.W           R1, =(dword_6B3208 - 0x1AF14C)
1AF144:  CMP             R4, #0
1AF146:  ADD             R0, PC; renderQueue_ptr
1AF148:  ADD             R1, PC; dword_6B3208
1AF14A:  LDR             R0, [R0]; renderQueue
1AF14C:  STR             R4, [R1,#(dword_6B3224 - 0x6B3208)]
1AF14E:  LDR             R2, [R0]
1AF150:  LDR.W           R1, [R2,#0x274]
1AF154:  STR.W           R3, [R2,#0x278]
1AF158:  STR             R3, [R1]
1AF15A:  LDR.W           R1, [R2,#0x274]
1AF15E:  ADD.W           R1, R1, #4
1AF162:  STR.W           R1, [R2,#0x274]
1AF166:  LDR             R0, [R0]
1AF168:  LDR.W           R1, [R0,#0x274]
1AF16C:  BEQ.W           loc_1AF5F4
1AF170:  LDR.W           R2, =(renderQueue_ptr - 0x1AF17C)
1AF174:  MOVS            R3, #3
1AF176:  STR             R3, [R1]
1AF178:  ADD             R2, PC; renderQueue_ptr
1AF17A:  LDR.W           R1, [R0,#0x274]
1AF17E:  LDR             R2, [R2]; renderQueue
1AF180:  ADDS            R1, #4
1AF182:  STR.W           R1, [R0,#0x274]
1AF186:  LDR             R4, [R2]
1AF188:  LDRB.W          R0, [R4,#0x259]
1AF18C:  CMP             R0, #0
1AF18E:  ITT NE
1AF190:  LDRNE.W         R0, [R4,#0x25C]; mutex
1AF194:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1AF198:  LDRD.W          R1, R2, [R4,#0x270]
1AF19C:  ADD.W           R0, R4, #0x270
1AF1A0:  DMB.W           ISH
1AF1A4:  SUBS            R1, R2, R1
1AF1A6:  LDREX.W         R2, [R0]
1AF1AA:  ADD             R2, R1
1AF1AC:  STREX.W         R3, R2, [R0]
1AF1B0:  CMP             R3, #0
1AF1B2:  BNE             loc_1AF1A6
1AF1B4:  B               loc_1AF636
1AF1B6:  LDR.W           R0, =(dword_6B3208 - 0x1AF1BE); jumptable 001AF03A case 8
1AF1BA:  ADD             R0, PC; dword_6B3208
1AF1BC:  LDR             R0, [R0,#(dword_6B3228 - 0x6B3208)]
1AF1BE:  CMP             R0, R4
1AF1C0:  BEQ.W           loc_1AF67C; jumptable 001AF03A cases 7,29,30
1AF1C4:  LDR.W           R0, =(renderQueue_ptr - 0x1AF1D2)
1AF1C8:  MOVS            R3, #0x21 ; '!'
1AF1CA:  LDR.W           R1, =(dword_6B3208 - 0x1AF1D4)
1AF1CE:  ADD             R0, PC; renderQueue_ptr
1AF1D0:  ADD             R1, PC; dword_6B3208
1AF1D2:  LDR             R0, [R0]; renderQueue
1AF1D4:  STR             R4, [R1,#(dword_6B3228 - 0x6B3208)]
1AF1D6:  LDR             R2, [R0]
1AF1D8:  LDR.W           R1, [R2,#0x274]
1AF1DC:  STR.W           R3, [R2,#0x278]
1AF1E0:  STR             R3, [R1]
1AF1E2:  LDR.W           R1, [R2,#0x274]
1AF1E6:  ADDS            R1, #4
1AF1E8:  STR.W           R1, [R2,#0x274]
1AF1EC:  LDR             R1, [R0]
1AF1EE:  LDR.W           R2, [R1,#0x274]
1AF1F2:  STR             R4, [R2]
1AF1F4:  LDR.W           R2, [R1,#0x274]
1AF1F8:  ADDS            R2, #4
1AF1FA:  STR.W           R2, [R1,#0x274]
1AF1FE:  LDR             R4, [R0]
1AF200:  LDRB.W          R0, [R4,#0x259]
1AF204:  CMP             R0, #0
1AF206:  ITT NE
1AF208:  LDRNE.W         R0, [R4,#0x25C]; mutex
1AF20C:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1AF210:  LDRD.W          R1, R2, [R4,#0x270]
1AF214:  ADD.W           R0, R4, #0x270
1AF218:  DMB.W           ISH
1AF21C:  SUBS            R1, R2, R1
1AF21E:  LDREX.W         R2, [R0]
1AF222:  ADD             R2, R1
1AF224:  STREX.W         R3, R2, [R0]
1AF228:  CMP             R3, #0
1AF22A:  BNE             loc_1AF21E
1AF22C:  DMB.W           ISH
1AF230:  LDRB.W          R0, [R4,#0x259]
1AF234:  CMP             R0, #0
1AF236:  ITT NE
1AF238:  LDRNE.W         R0, [R4,#0x25C]; mutex
1AF23C:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1AF240:  LDRB.W          R0, [R4,#0x258]
1AF244:  CMP             R0, #0
1AF246:  ITT EQ
1AF248:  MOVEQ           R0, R4; this
1AF24A:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1AF24E:  LDR.W           R1, [R4,#0x270]
1AF252:  LDR.W           R0, [R4,#0x264]
1AF256:  ADD.W           R1, R1, #0x400
1AF25A:  CMP             R1, R0
1AF25C:  ITT HI
1AF25E:  MOVHI           R0, R4; this
1AF260:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1AF264:  LDR.W           R2, =(dword_6B3208 - 0x1AF26C)
1AF268:  ADD             R2, PC; dword_6B3208
1AF26A:  B               loc_1AF672
1AF26C:  LDR.W           R0, =(dword_6B3208 - 0x1AF274); jumptable 001AF03A case 9
1AF270:  ADD             R0, PC; dword_6B3208
1AF272:  LDRB            R1, [R0,#(byte_6B320C - 0x6B3208)]
1AF274:  LDR             R0, [R0,#(dword_6B3210 - 0x6B3208)]
1AF276:  LDR.W           R1, [R0,R1,LSL#2]
1AF27A:  CMP             R1, #0
1AF27C:  BEQ.W           loc_1AF67C; jumptable 001AF03A cases 7,29,30
1AF280:  LDR.W           R0, =(RasterExtOffset_ptr - 0x1AF288)
1AF284:  ADD             R0, PC; RasterExtOffset_ptr
1AF286:  LDR             R0, [R0]; RasterExtOffset
1AF288:  LDR             R2, [R0]
1AF28A:  LDR             R0, [R1,R2]
1AF28C:  LDRB            R3, [R0,#0xC]
1AF28E:  CMP             R3, #0
1AF290:  ITTT NE
1AF292:  ADDNE           R5, R1, R2
1AF294:  LDRNE           R2, [R5,#0xC]
1AF296:  CMPNE           R2, R4
1AF298:  BEQ.W           loc_1AF67C; jumptable 001AF03A cases 7,29,30
1AF29C:  LDRSB.W         R1, [R1,#0x22]
1AF2A0:  CMP             R1, #0
1AF2A2:  BLT.W           loc_1AF68E
1AF2A6:  SUBS            R1, R4, #3
1AF2A8:  CMP             R1, #2
1AF2AA:  BCS.W           loc_1AF686
1AF2AE:  MOVS            R4, #1
1AF2B0:  B               loc_1AF698
1AF2B2:  MOVS            R0, #0; jumptable 001AF03A case 10
1AF2B4:  CMP             R4, #1
1AF2B6:  BLT.W           def_1AF03A; jumptable 001AF03A default case, cases 3,4,13,16-19,21-28
1AF2BA:  CMP             R4, #0xB
1AF2BC:  BGT.W           def_1AF03A; jumptable 001AF03A default case, cases 3,4,13,16-19,21-28
1AF2C0:  MOVS            R0, #0x19
1AF2C2:  LSRS            R0, R4
1AF2C4:  LSLS            R0, R0, #0x1F
1AF2C6:  BNE.W           loc_1AF694
1AF2CA:  LDR.W           R0, =(dword_6B3208 - 0x1AF2D2)
1AF2CE:  ADD             R0, PC; dword_6B3208
1AF2D0:  LDR             R0, [R0,#(dword_6B322C - 0x6B3208)]
1AF2D2:  CMP             R0, R4
1AF2D4:  BEQ.W           loc_1AF67C; jumptable 001AF03A cases 7,29,30
1AF2D8:  LDR.W           R0, =(renderQueue_ptr - 0x1AF2E6)
1AF2DC:  MOVS            R6, #0x23 ; '#'
1AF2DE:  LDR.W           R1, =(dword_6B3208 - 0x1AF2E8)
1AF2E2:  ADD             R0, PC; renderQueue_ptr
1AF2E4:  ADD             R1, PC; dword_6B3208
1AF2E6:  LDR             R0, [R0]; renderQueue
1AF2E8:  STR             R4, [R1,#(dword_6B322C - 0x6B3208)]
1AF2EA:  LDR             R2, [R0]
1AF2EC:  LDR.W           R3, [R2,#0x274]
1AF2F0:  STR.W           R6, [R2,#0x278]
1AF2F4:  STR             R6, [R3]
1AF2F6:  ADR.W           R6, dword_1AF720
1AF2FA:  LDR.W           R3, [R2,#0x274]
1AF2FE:  LDR.W           R6, [R6,R4,LSL#2]
1AF302:  ADDS            R3, #4
1AF304:  STR.W           R3, [R2,#0x274]
1AF308:  LDR             R2, [R0]
1AF30A:  LDR.W           R3, [R2,#0x274]
1AF30E:  STR             R6, [R3]
1AF310:  ADR.W           R6, dword_1AF750
1AF314:  LDR.W           R3, [R2,#0x274]
1AF318:  ADDS            R3, #4
1AF31A:  STR.W           R3, [R2,#0x274]
1AF31E:  LDR             R2, [R0]
1AF320:  LDR             R1, [R1,#(dword_6B3230 - 0x6B3208)]
1AF322:  LDR.W           R3, [R2,#0x274]
1AF326:  LDR.W           R1, [R6,R1,LSL#2]
1AF32A:  STR             R1, [R3]
1AF32C:  LDR.W           R1, [R2,#0x274]
1AF330:  ADDS            R1, #4
1AF332:  STR.W           R1, [R2,#0x274]
1AF336:  LDR             R4, [R0]
1AF338:  LDRB.W          R0, [R4,#0x259]
1AF33C:  CMP             R0, #0
1AF33E:  ITT NE
1AF340:  LDRNE.W         R0, [R4,#0x25C]; mutex
1AF344:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1AF348:  LDRD.W          R1, R2, [R4,#0x270]
1AF34C:  ADD.W           R0, R4, #0x270
1AF350:  DMB.W           ISH
1AF354:  SUBS            R1, R2, R1
1AF356:  LDREX.W         R2, [R0]
1AF35A:  ADD             R2, R1
1AF35C:  STREX.W         R3, R2, [R0]
1AF360:  CMP             R3, #0
1AF362:  BNE             loc_1AF356
1AF364:  B               loc_1AF534
1AF366:  MOVS            R0, #0; jumptable 001AF03A case 11
1AF368:  CMP             R4, #1
1AF36A:  BLT.W           def_1AF03A; jumptable 001AF03A default case, cases 3,4,13,16-19,21-28
1AF36E:  CMP             R4, #8
1AF370:  BGT.W           def_1AF03A; jumptable 001AF03A default case, cases 3,4,13,16-19,21-28
1AF374:  LDR             R0, =(dword_6B3208 - 0x1AF37A)
1AF376:  ADD             R0, PC; dword_6B3208
1AF378:  LDR             R0, [R0,#(dword_6B3230 - 0x6B3208)]
1AF37A:  CMP             R0, R4
1AF37C:  BEQ.W           loc_1AF67C; jumptable 001AF03A cases 7,29,30
1AF380:  LDR             R0, =(renderQueue_ptr - 0x1AF38A)
1AF382:  MOVS            R6, #0x23 ; '#'
1AF384:  LDR             R1, =(dword_6B3208 - 0x1AF38C)
1AF386:  ADD             R0, PC; renderQueue_ptr
1AF388:  ADD             R1, PC; dword_6B3208
1AF38A:  LDR             R0, [R0]; renderQueue
1AF38C:  STR             R4, [R1,#(dword_6B3230 - 0x6B3208)]
1AF38E:  LDR             R2, [R0]
1AF390:  LDR.W           R3, [R2,#0x274]
1AF394:  STR.W           R6, [R2,#0x278]
1AF398:  STR             R6, [R3]
1AF39A:  ADR             R6, dword_1AF720
1AF39C:  LDR.W           R3, [R2,#0x274]
1AF3A0:  ADDS            R3, #4
1AF3A2:  STR.W           R3, [R2,#0x274]
1AF3A6:  LDR             R2, [R0]
1AF3A8:  LDR             R1, [R1,#(dword_6B322C - 0x6B3208)]
1AF3AA:  LDR.W           R3, [R2,#0x274]
1AF3AE:  LDR.W           R1, [R6,R1,LSL#2]
1AF3B2:  STR             R1, [R3]
1AF3B4:  ADR             R3, dword_1AF750
1AF3B6:  LDR.W           R1, [R2,#0x274]
1AF3BA:  LDR.W           R3, [R3,R4,LSL#2]
1AF3BE:  ADDS            R1, #4
1AF3C0:  STR.W           R1, [R2,#0x274]
1AF3C4:  LDR             R1, [R0]
1AF3C6:  LDR.W           R2, [R1,#0x274]
1AF3CA:  STR             R3, [R2]
1AF3CC:  LDR.W           R2, [R1,#0x274]
1AF3D0:  ADDS            R2, #4
1AF3D2:  STR.W           R2, [R1,#0x274]
1AF3D6:  LDR             R4, [R0]
1AF3D8:  LDRB.W          R0, [R4,#0x259]
1AF3DC:  CMP             R0, #0
1AF3DE:  ITT NE
1AF3E0:  LDRNE.W         R0, [R4,#0x25C]; mutex
1AF3E4:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1AF3E8:  LDRD.W          R1, R2, [R4,#0x270]
1AF3EC:  ADD.W           R0, R4, #0x270
1AF3F0:  DMB.W           ISH
1AF3F4:  SUBS            R1, R2, R1
1AF3F6:  LDREX.W         R2, [R0]
1AF3FA:  ADD             R2, R1
1AF3FC:  STREX.W         R3, R2, [R0]
1AF400:  CMP             R3, #0
1AF402:  BNE             loc_1AF3F6
1AF404:  B               loc_1AF534
1AF406:  LDR             R0, =(dword_6B3208 - 0x1AF40E); jumptable 001AF03A case 12
1AF408:  CMP             R4, #0
1AF40A:  ADD             R0, PC; dword_6B3208
1AF40C:  LDR             R0, [R0,#(dword_6B3234 - 0x6B3208)]
1AF40E:  BEQ.W           loc_1AF5B8
1AF412:  CMP             R0, #0
1AF414:  BNE.W           loc_1AF67C; jumptable 001AF03A cases 7,29,30
1AF418:  LDR             R0, =(dword_6B3208 - 0x1AF420)
1AF41A:  MOVS            R2, #1
1AF41C:  ADD             R0, PC; dword_6B3208
1AF41E:  LDR             R1, [R0,#(dword_6B3220 - 0x6B3208)]
1AF420:  STR             R2, [R0,#(dword_6B3234 - 0x6B3208)]
1AF422:  CMP             R1, #0
1AF424:  ITT EQ
1AF426:  MOVWEQ          R0, #0xBE2; unsigned int
1AF42A:  BLXEQ           j__Z12emu_glEnablej; emu_glEnable(uint)
1AF42E:  LDR             R1, =(dword_6B3208 - 0x1AF436)
1AF430:  MOVS            R2, #1
1AF432:  ADD             R1, PC; dword_6B3208
1AF434:  B               loc_1AF5E6
1AF436:  LDR             R0, =(dword_6B3208 - 0x1AF43C); jumptable 001AF03A case 14
1AF438:  ADD             R0, PC; dword_6B3208
1AF43A:  LDR             R0, [R0,#(dword_6B3238 - 0x6B3208)]
1AF43C:  CMP             R0, R4
1AF43E:  BEQ.W           loc_1AF67C; jumptable 001AF03A cases 7,29,30
1AF442:  LDR             R0, =(dword_6B3208 - 0x1AF44A)
1AF444:  CMP             R4, #0
1AF446:  ADD             R0, PC; dword_6B3208
1AF448:  STR             R4, [R0,#(dword_6B3238 - 0x6B3208)]
1AF44A:  BEQ.W           loc_1AF5EC
1AF44E:  BLX             j__Z16AllowDistanceFogv; AllowDistanceFog(void)
1AF452:  CMP             R0, #1
1AF454:  BNE.W           loc_1AF5EC
1AF458:  MOVS            R0, #1; unsigned __int8
1AF45A:  BLX             j__Z25emu_DistanceFogSetEnabledh; emu_DistanceFogSetEnabled(uchar)
1AF45E:  LDR             R0, =(dword_6B3208 - 0x1AF468)
1AF460:  VLDR            S2, =255.0
1AF464:  ADD             R0, PC; dword_6B3208
1AF466:  LDRB.W          R1, [R0,#(dword_6B323C - 0x6B3208)]
1AF46A:  LDRB.W          R2, [R0,#(dword_6B323C+1 - 0x6B3208)]
1AF46E:  LDRB.W          R0, [R0,#(dword_6B323C+2 - 0x6B3208)]
1AF472:  VMOV            S6, R1
1AF476:  VMOV            S4, R2
1AF47A:  VMOV            S0, R0
1AF47E:  LDR             R0, =(dgGGlobals_ptr - 0x1AF488)
1AF480:  VCVT.F32.U32    S0, S0
1AF484:  ADD             R0, PC; dgGGlobals_ptr
1AF486:  VCVT.F32.U32    S4, S4
1AF48A:  VCVT.F32.U32    S6, S6
1AF48E:  LDR             R0, [R0]; dgGGlobals
1AF490:  LDR             R0, [R0]
1AF492:  VDIV.F32        S0, S0, S2
1AF496:  LDRD.W          R1, R0, [R0,#0x84]; float
1AF49A:  VDIV.F32        S4, S4, S2
1AF49E:  VDIV.F32        S2, S6, S2
1AF4A2:  VMOV            R2, S0; float
1AF4A6:  VSTR            S2, [SP,#0x18+var_18]
1AF4AA:  VMOV            R3, S4; float
1AF4AE:  BLX             j__Z20emu_DistanceFogSetupfffff; emu_DistanceFogSetup(float,float,float,float,float)
1AF4B2:  B               loc_1AF67C; jumptable 001AF03A cases 7,29,30
1AF4B4:  LDR             R0, =(dword_6B3208 - 0x1AF4BA); jumptable 001AF03A case 15
1AF4B6:  ADD             R0, PC; dword_6B3208
1AF4B8:  STR             R4, [R0,#(dword_6B323C - 0x6B3208)]
1AF4BA:  B               loc_1AF67C; jumptable 001AF03A cases 7,29,30
1AF4BC:  LDR             R0, =(dword_6B3208 - 0x1AF4C2); jumptable 001AF03A case 20
1AF4BE:  ADD             R0, PC; dword_6B3208
1AF4C0:  LDR             R0, [R0,#(dword_6B3274 - 0x6B3208)]
1AF4C2:  CMP             R0, R4
1AF4C4:  BEQ.W           loc_1AF67C; jumptable 001AF03A cases 7,29,30
1AF4C8:  LDR             R0, =(renderQueue_ptr - 0x1AF4D2)
1AF4CA:  MOVS            R3, #0x25 ; '%'
1AF4CC:  LDR             R1, =(dword_6B3208 - 0x1AF4D4)
1AF4CE:  ADD             R0, PC; renderQueue_ptr
1AF4D0:  ADD             R1, PC; dword_6B3208
1AF4D2:  LDR             R0, [R0]; renderQueue
1AF4D4:  STR             R4, [R1,#(dword_6B3274 - 0x6B3208)]
1AF4D6:  LDR             R2, [R0]
1AF4D8:  LDR.W           R1, [R2,#0x274]
1AF4DC:  STR.W           R3, [R2,#0x278]
1AF4E0:  STR             R3, [R1]
1AF4E2:  LDR.W           R1, [R2,#0x274]
1AF4E6:  ADDS            R1, #4
1AF4E8:  STR.W           R1, [R2,#0x274]
1AF4EC:  LDR             R1, [R0]
1AF4EE:  LDR             R2, =(unk_5E87C8 - 0x1AF4F4)
1AF4F0:  ADD             R2, PC; unk_5E87C8
1AF4F2:  LDR.W           R3, [R1,#0x274]
1AF4F6:  LDR.W           R2, [R2,R4,LSL#2]
1AF4FA:  STR             R2, [R3]
1AF4FC:  LDR.W           R2, [R1,#0x274]
1AF500:  ADDS            R2, #4
1AF502:  STR.W           R2, [R1,#0x274]
1AF506:  LDR             R4, [R0]
1AF508:  LDRB.W          R0, [R4,#0x259]
1AF50C:  CMP             R0, #0
1AF50E:  ITT NE
1AF510:  LDRNE.W         R0, [R4,#0x25C]; mutex
1AF514:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1AF518:  LDRD.W          R1, R2, [R4,#0x270]
1AF51C:  ADD.W           R0, R4, #0x270
1AF520:  DMB.W           ISH
1AF524:  SUBS            R1, R2, R1
1AF526:  LDREX.W         R2, [R0]
1AF52A:  ADD             R2, R1
1AF52C:  STREX.W         R3, R2, [R0]
1AF530:  CMP             R3, #0
1AF532:  BNE             loc_1AF526
1AF534:  DMB.W           ISH
1AF538:  LDRB.W          R0, [R4,#0x259]
1AF53C:  CMP             R0, #0
1AF53E:  ITT NE
1AF540:  LDRNE.W         R0, [R4,#0x25C]; mutex
1AF544:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1AF548:  LDRB.W          R0, [R4,#0x258]
1AF54C:  CMP             R0, #0
1AF54E:  ITT EQ
1AF550:  MOVEQ           R0, R4; this
1AF552:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1AF556:  LDR.W           R1, [R4,#0x270]
1AF55A:  LDR.W           R0, [R4,#0x264]
1AF55E:  ADD.W           R1, R1, #0x400
1AF562:  CMP             R1, R0
1AF564:  ITT HI
1AF566:  MOVHI           R0, R4; this
1AF568:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1AF56C:  B               loc_1AF67C; jumptable 001AF03A cases 7,29,30
1AF56E:  CMP             R2, #0
1AF570:  BEQ.W           loc_1AF67C; jumptable 001AF03A cases 7,29,30
1AF574:  MOVW            R0, #0xDE1; unsigned int
1AF578:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
1AF57C:  MOV.W           R0, #0xBC0; unsigned int
1AF580:  BLX             j__Z13emu_glDisablej; emu_glDisable(uint)
1AF584:  LDR             R0, =(dword_6B3208 - 0x1AF58A)
1AF586:  ADD             R0, PC; dword_6B3208
1AF588:  LDR             R0, [R0,#(dword_6B3220 - 0x6B3208)]
1AF58A:  CBZ             R0, loc_1AF5A2
1AF58C:  LDR             R0, =(dword_6B3208 - 0x1AF594)
1AF58E:  MOVS            R2, #0
1AF590:  ADD             R0, PC; dword_6B3208
1AF592:  LDR             R1, [R0,#(dword_6B3234 - 0x6B3208)]
1AF594:  STR             R2, [R0,#(dword_6B3220 - 0x6B3208)]
1AF596:  CMP             R1, #0
1AF598:  ITT EQ
1AF59A:  MOVWEQ          R0, #0xBE2; unsigned int
1AF59E:  BLXEQ           j__Z13emu_glDisablej; emu_glDisable(uint)
1AF5A2:  LDR             R0, =(dword_6B3208 - 0x1AF5AA)
1AF5A4:  MOVS            R2, #0
1AF5A6:  ADD             R0, PC; dword_6B3208
1AF5A8:  LDRB            R1, [R0,#(byte_6B320C - 0x6B3208)]
1AF5AA:  LDR             R0, [R0,#(dword_6B3210 - 0x6B3208)]
1AF5AC:  STR.W           R2, [R0,R1,LSL#2]
1AF5B0:  MOVS            R0, #0
1AF5B2:  BLX             j__Z25HandleTextureEnhancementsP8RwRaster; HandleTextureEnhancements(RwRaster *)
1AF5B6:  B               loc_1AF67C; jumptable 001AF03A cases 7,29,30
1AF5B8:  CMP             R0, #0
1AF5BA:  BEQ             loc_1AF67C; jumptable 001AF03A cases 7,29,30
1AF5BC:  MOVS            R0, #0; float
1AF5BE:  MOVS            R1, #0; float
1AF5C0:  MOVS            R2, #0; float
1AF5C2:  MOV.W           R3, #0x3F800000; float
1AF5C6:  MOVS            R4, #0
1AF5C8:  BLX             j__Z13emu_glColor4fffff; emu_glColor4f(float,float,float,float)
1AF5CC:  LDR             R0, =(dword_6B3208 - 0x1AF5D2)
1AF5CE:  ADD             R0, PC; dword_6B3208
1AF5D0:  LDR             R1, [R0,#(dword_6B3220 - 0x6B3208)]
1AF5D2:  STR             R4, [R0,#(dword_6B3234 - 0x6B3208)]
1AF5D4:  CMP             R1, #0
1AF5D6:  ITT EQ
1AF5D8:  MOVWEQ          R0, #0xBE2; unsigned int
1AF5DC:  BLXEQ           j__Z13emu_glDisablej; emu_glDisable(uint)
1AF5E0:  LDR             R1, =(dword_6B3208 - 0x1AF5E8)
1AF5E2:  MOVS            R2, #0
1AF5E4:  ADD             R1, PC; dword_6B3208
1AF5E6:  LDRD.W          R0, R1, [R1,#(dword_6B3224 - 0x6B3208)]
1AF5EA:  B               loc_1AF678
1AF5EC:  MOVS            R0, #0; unsigned __int8
1AF5EE:  BLX             j__Z25emu_DistanceFogSetEnabledh; emu_DistanceFogSetEnabled(uchar)
1AF5F2:  B               loc_1AF67C; jumptable 001AF03A cases 7,29,30
1AF5F4:  LDR             R2, =(renderQueue_ptr - 0x1AF5FE)
1AF5F6:  MOVS            R3, #7
1AF5F8:  STR             R3, [R1]
1AF5FA:  ADD             R2, PC; renderQueue_ptr
1AF5FC:  LDR.W           R1, [R0,#0x274]
1AF600:  LDR             R2, [R2]; renderQueue
1AF602:  ADDS            R1, #4
1AF604:  STR.W           R1, [R0,#0x274]
1AF608:  LDR             R4, [R2]
1AF60A:  LDRB.W          R0, [R4,#0x259]
1AF60E:  CMP             R0, #0
1AF610:  ITT NE
1AF612:  LDRNE.W         R0, [R4,#0x25C]; mutex
1AF616:  BLXNE           j__Z14OS_MutexObtainPv; OS_MutexObtain(void *)
1AF61A:  LDRD.W          R1, R2, [R4,#0x270]
1AF61E:  ADD.W           R0, R4, #0x270
1AF622:  DMB.W           ISH
1AF626:  SUBS            R1, R2, R1
1AF628:  LDREX.W         R2, [R0]
1AF62C:  ADD             R2, R1
1AF62E:  STREX.W         R3, R2, [R0]
1AF632:  CMP             R3, #0
1AF634:  BNE             loc_1AF628
1AF636:  DMB.W           ISH
1AF63A:  LDRB.W          R0, [R4,#0x259]
1AF63E:  CMP             R0, #0
1AF640:  ITT NE
1AF642:  LDRNE.W         R0, [R4,#0x25C]; mutex
1AF646:  BLXNE           j__Z15OS_MutexReleasePv; OS_MutexRelease(void *)
1AF64A:  LDRB.W          R0, [R4,#0x258]
1AF64E:  CMP             R0, #0
1AF650:  ITT EQ
1AF652:  MOVEQ           R0, R4; this
1AF654:  BLXEQ           j__ZN11RenderQueue7ProcessEv; RenderQueue::Process(void)
1AF658:  LDR.W           R1, [R4,#0x270]
1AF65C:  LDR.W           R0, [R4,#0x264]
1AF660:  ADD.W           R1, R1, #0x400
1AF664:  CMP             R1, R0
1AF666:  ITT HI
1AF668:  MOVHI           R0, R4; this
1AF66A:  BLXHI           j__ZN11RenderQueue5FlushEv; RenderQueue::Flush(void)
1AF66E:  LDR             R2, =(dword_6B3208 - 0x1AF674)
1AF670:  ADD             R2, PC; dword_6B3208
1AF672:  LDRD.W          R0, R1, [R2,#(dword_6B3224 - 0x6B3208)]; int
1AF676:  LDR             R2, [R2,#(dword_6B3234 - 0x6B3208)]; int
1AF678:  BLX             j__Z27_rwOpenGLIm2DSetVertexFuncsiii; _rwOpenGLIm2DSetVertexFuncs(int,int,int)
1AF67C:  MOVS            R0, #1; jumptable 001AF03A cases 7,29,30
1AF67E:  ADD             SP, SP, #8; jumptable 001AF03A default case, cases 3,4,13,16-19,21-28
1AF680:  POP.W           {R8}
1AF684:  POP             {R4-R7,PC}
1AF686:  SUBS            R1, R4, #5
1AF688:  CMP             R1, #2
1AF68A:  IT CC
1AF68C:  MOVCC           R4, #2
1AF68E:  SUBS            R1, R4, #1
1AF690:  CMP             R1, #5
1AF692:  BLS             loc_1AF698
1AF694:  MOVS            R0, #0
1AF696:  B               def_1AF03A; jumptable 001AF03A default case, cases 3,4,13,16-19,21-28
1AF698:  LDR             R2, [R0]
1AF69A:  ADR             R1, dword_1AF6CC
1AF69C:  LDR.W           R1, [R1,R4,LSL#2]
1AF6A0:  LDR             R2, [R2,#0x10]
1AF6A2:  BLX             R2
1AF6A4:  LDR             R0, =(dword_6B3208 - 0x1AF6AC)
1AF6A6:  STR             R4, [R5,#0xC]
1AF6A8:  ADD             R0, PC; dword_6B3208
1AF6AA:  LDRB            R1, [R0,#(byte_6B320C - 0x6B3208)]
1AF6AC:  LDR             R0, [R0,#(dword_6B3214 - 0x6B3208)]
1AF6AE:  STR.W           R4, [R0,R1,LSL#2]
1AF6B2:  B               loc_1AF67C; jumptable 001AF03A cases 7,29,30
