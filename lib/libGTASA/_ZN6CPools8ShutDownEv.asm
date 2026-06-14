; =========================================================
; Game Engine Function: _ZN6CPools8ShutDownEv
; Address            : 0x40CFC0 - 0x40D3D0
; =========================================================

40CFC0:  PUSH            {R4,R5,R7,LR}
40CFC2:  ADD             R7, SP, #8
40CFC4:  LDR.W           R0, =(_ZN6CPools25ms_pPtrNodeSingleLinkPoolE_ptr - 0x40CFCC)
40CFC8:  ADD             R0, PC; _ZN6CPools25ms_pPtrNodeSingleLinkPoolE_ptr
40CFCA:  LDR             R0, [R0]; CPools::ms_pPtrNodeSingleLinkPool ...
40CFCC:  LDR             R4, [R0]; CPools::ms_pPtrNodeSingleLinkPool
40CFCE:  CBZ             R4, loc_40D002
40CFD0:  LDR             R0, [R4,#8]
40CFD2:  CMP             R0, #1
40CFD4:  BLT             loc_40CFFC
40CFD6:  LDRB            R0, [R4,#0x10]
40CFD8:  CBZ             R0, loc_40CFF4
40CFDA:  LDR             R0, [R4]; void *
40CFDC:  CMP             R0, #0
40CFDE:  IT NE
40CFE0:  BLXNE           _ZdaPv; operator delete[](void *)
40CFE4:  MOV             R5, R4
40CFE6:  LDR.W           R0, [R5,#4]!; void *
40CFEA:  CMP             R0, #0
40CFEC:  IT NE
40CFEE:  BLXNE           _ZdaPv; operator delete[](void *)
40CFF2:  B               loc_40CFF6
40CFF4:  ADDS            R5, R4, #4
40CFF6:  MOVS            R0, #0
40CFF8:  STR             R0, [R4]
40CFFA:  STR             R0, [R5]
40CFFC:  MOV             R0, R4; void *
40CFFE:  BLX             _ZdlPv; operator delete(void *)
40D002:  LDR.W           R0, =(_ZN6CPools25ms_pPtrNodeDoubleLinkPoolE_ptr - 0x40D00A)
40D006:  ADD             R0, PC; _ZN6CPools25ms_pPtrNodeDoubleLinkPoolE_ptr
40D008:  LDR             R0, [R0]; CPools::ms_pPtrNodeDoubleLinkPool ...
40D00A:  LDR             R4, [R0]; CPools::ms_pPtrNodeDoubleLinkPool
40D00C:  CBZ             R4, loc_40D040
40D00E:  LDR             R0, [R4,#8]
40D010:  CMP             R0, #1
40D012:  BLT             loc_40D03A
40D014:  LDRB            R0, [R4,#0x10]
40D016:  CBZ             R0, loc_40D032
40D018:  LDR             R0, [R4]; void *
40D01A:  CMP             R0, #0
40D01C:  IT NE
40D01E:  BLXNE           _ZdaPv; operator delete[](void *)
40D022:  MOV             R5, R4
40D024:  LDR.W           R0, [R5,#4]!; void *
40D028:  CMP             R0, #0
40D02A:  IT NE
40D02C:  BLXNE           _ZdaPv; operator delete[](void *)
40D030:  B               loc_40D034
40D032:  ADDS            R5, R4, #4
40D034:  MOVS            R0, #0
40D036:  STR             R0, [R4]
40D038:  STR             R0, [R5]
40D03A:  MOV             R0, R4; void *
40D03C:  BLX             _ZdlPv; operator delete(void *)
40D040:  LDR.W           R0, =(_ZN6CPools21ms_pEntryInfoNodePoolE_ptr - 0x40D048)
40D044:  ADD             R0, PC; _ZN6CPools21ms_pEntryInfoNodePoolE_ptr
40D046:  LDR             R0, [R0]; CPools::ms_pEntryInfoNodePool ...
40D048:  LDR             R4, [R0]; CPools::ms_pEntryInfoNodePool
40D04A:  CBZ             R4, loc_40D07E
40D04C:  LDR             R0, [R4,#8]
40D04E:  CMP             R0, #1
40D050:  BLT             loc_40D078
40D052:  LDRB            R0, [R4,#0x10]
40D054:  CBZ             R0, loc_40D070
40D056:  LDR             R0, [R4]; void *
40D058:  CMP             R0, #0
40D05A:  IT NE
40D05C:  BLXNE           _ZdaPv; operator delete[](void *)
40D060:  MOV             R5, R4
40D062:  LDR.W           R0, [R5,#4]!; void *
40D066:  CMP             R0, #0
40D068:  IT NE
40D06A:  BLXNE           _ZdaPv; operator delete[](void *)
40D06E:  B               loc_40D072
40D070:  ADDS            R5, R4, #4
40D072:  MOVS            R0, #0
40D074:  STR             R0, [R4]
40D076:  STR             R0, [R5]
40D078:  MOV             R0, R4; void *
40D07A:  BLX             _ZdlPv; operator delete(void *)
40D07E:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x40D086)
40D082:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
40D084:  LDR             R0, [R0]; CPools::ms_pPedPool ...
40D086:  LDR             R4, [R0]; CPools::ms_pPedPool
40D088:  CBZ             R4, loc_40D0BC
40D08A:  LDR             R0, [R4,#8]
40D08C:  CMP             R0, #1
40D08E:  BLT             loc_40D0B6
40D090:  LDRB            R0, [R4,#0x10]
40D092:  CBZ             R0, loc_40D0AE
40D094:  LDR             R0, [R4]; void *
40D096:  CMP             R0, #0
40D098:  IT NE
40D09A:  BLXNE           _ZdaPv; operator delete[](void *)
40D09E:  MOV             R5, R4
40D0A0:  LDR.W           R0, [R5,#4]!; void *
40D0A4:  CMP             R0, #0
40D0A6:  IT NE
40D0A8:  BLXNE           _ZdaPv; operator delete[](void *)
40D0AC:  B               loc_40D0B0
40D0AE:  ADDS            R5, R4, #4
40D0B0:  MOVS            R0, #0
40D0B2:  STR             R0, [R4]
40D0B4:  STR             R0, [R5]
40D0B6:  MOV             R0, R4; void *
40D0B8:  BLX             _ZdlPv; operator delete(void *)
40D0BC:  LDR             R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x40D0C2)
40D0BE:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
40D0C0:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
40D0C2:  LDR             R4, [R0]; CPools::ms_pVehiclePool
40D0C4:  CBZ             R4, loc_40D0F8
40D0C6:  LDR             R0, [R4,#8]
40D0C8:  CMP             R0, #1
40D0CA:  BLT             loc_40D0F2
40D0CC:  LDRB            R0, [R4,#0x10]
40D0CE:  CBZ             R0, loc_40D0EA
40D0D0:  LDR             R0, [R4]; void *
40D0D2:  CMP             R0, #0
40D0D4:  IT NE
40D0D6:  BLXNE           _ZdaPv; operator delete[](void *)
40D0DA:  MOV             R5, R4
40D0DC:  LDR.W           R0, [R5,#4]!; void *
40D0E0:  CMP             R0, #0
40D0E2:  IT NE
40D0E4:  BLXNE           _ZdaPv; operator delete[](void *)
40D0E8:  B               loc_40D0EC
40D0EA:  ADDS            R5, R4, #4
40D0EC:  MOVS            R0, #0
40D0EE:  STR             R0, [R4]
40D0F0:  STR             R0, [R5]
40D0F2:  MOV             R0, R4; void *
40D0F4:  BLX             _ZdlPv; operator delete(void *)
40D0F8:  LDR             R0, =(_ZN6CPools16ms_pBuildingPoolE_ptr - 0x40D0FE)
40D0FA:  ADD             R0, PC; _ZN6CPools16ms_pBuildingPoolE_ptr
40D0FC:  LDR             R0, [R0]; CPools::ms_pBuildingPool ...
40D0FE:  LDR             R4, [R0]; CPools::ms_pBuildingPool
40D100:  CBZ             R4, loc_40D134
40D102:  LDR             R0, [R4,#8]
40D104:  CMP             R0, #1
40D106:  BLT             loc_40D12E
40D108:  LDRB            R0, [R4,#0x10]
40D10A:  CBZ             R0, loc_40D126
40D10C:  LDR             R0, [R4]; void *
40D10E:  CMP             R0, #0
40D110:  IT NE
40D112:  BLXNE           _ZdaPv; operator delete[](void *)
40D116:  MOV             R5, R4
40D118:  LDR.W           R0, [R5,#4]!; void *
40D11C:  CMP             R0, #0
40D11E:  IT NE
40D120:  BLXNE           _ZdaPv; operator delete[](void *)
40D124:  B               loc_40D128
40D126:  ADDS            R5, R4, #4
40D128:  MOVS            R0, #0
40D12A:  STR             R0, [R4]
40D12C:  STR             R0, [R5]
40D12E:  MOV             R0, R4; void *
40D130:  BLX             _ZdlPv; operator delete(void *)
40D134:  LDR             R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x40D13A)
40D136:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
40D138:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
40D13A:  LDR             R4, [R0]; CPools::ms_pObjectPool
40D13C:  CBZ             R4, loc_40D170
40D13E:  LDR             R0, [R4,#8]
40D140:  CMP             R0, #1
40D142:  BLT             loc_40D16A
40D144:  LDRB            R0, [R4,#0x10]
40D146:  CBZ             R0, loc_40D162
40D148:  LDR             R0, [R4]; void *
40D14A:  CMP             R0, #0
40D14C:  IT NE
40D14E:  BLXNE           _ZdaPv; operator delete[](void *)
40D152:  MOV             R5, R4
40D154:  LDR.W           R0, [R5,#4]!; void *
40D158:  CMP             R0, #0
40D15A:  IT NE
40D15C:  BLXNE           _ZdaPv; operator delete[](void *)
40D160:  B               loc_40D164
40D162:  ADDS            R5, R4, #4
40D164:  MOVS            R0, #0
40D166:  STR             R0, [R4]
40D168:  STR             R0, [R5]
40D16A:  MOV             R0, R4; void *
40D16C:  BLX             _ZdlPv; operator delete(void *)
40D170:  LDR             R0, =(_ZN6CPools13ms_pDummyPoolE_ptr - 0x40D176)
40D172:  ADD             R0, PC; _ZN6CPools13ms_pDummyPoolE_ptr
40D174:  LDR             R0, [R0]; CPools::ms_pDummyPool ...
40D176:  LDR             R4, [R0]; CPools::ms_pDummyPool
40D178:  CBZ             R4, loc_40D1AC
40D17A:  LDR             R0, [R4,#8]
40D17C:  CMP             R0, #1
40D17E:  BLT             loc_40D1A6
40D180:  LDRB            R0, [R4,#0x10]
40D182:  CBZ             R0, loc_40D19E
40D184:  LDR             R0, [R4]; void *
40D186:  CMP             R0, #0
40D188:  IT NE
40D18A:  BLXNE           _ZdaPv; operator delete[](void *)
40D18E:  MOV             R5, R4
40D190:  LDR.W           R0, [R5,#4]!; void *
40D194:  CMP             R0, #0
40D196:  IT NE
40D198:  BLXNE           _ZdaPv; operator delete[](void *)
40D19C:  B               loc_40D1A0
40D19E:  ADDS            R5, R4, #4
40D1A0:  MOVS            R0, #0
40D1A2:  STR             R0, [R4]
40D1A4:  STR             R0, [R5]
40D1A6:  MOV             R0, R4; void *
40D1A8:  BLX             _ZdlPv; operator delete(void *)
40D1AC:  LDR             R0, =(_ZN6CPools16ms_pColModelPoolE_ptr - 0x40D1B2)
40D1AE:  ADD             R0, PC; _ZN6CPools16ms_pColModelPoolE_ptr
40D1B0:  LDR             R0, [R0]; CPools::ms_pColModelPool ...
40D1B2:  LDR             R4, [R0]; CPools::ms_pColModelPool
40D1B4:  CBZ             R4, loc_40D1E8
40D1B6:  LDR             R0, [R4,#8]
40D1B8:  CMP             R0, #1
40D1BA:  BLT             loc_40D1E2
40D1BC:  LDRB            R0, [R4,#0x10]
40D1BE:  CBZ             R0, loc_40D1DA
40D1C0:  LDR             R0, [R4]; void *
40D1C2:  CMP             R0, #0
40D1C4:  IT NE
40D1C6:  BLXNE           _ZdaPv; operator delete[](void *)
40D1CA:  MOV             R5, R4
40D1CC:  LDR.W           R0, [R5,#4]!; void *
40D1D0:  CMP             R0, #0
40D1D2:  IT NE
40D1D4:  BLXNE           _ZdaPv; operator delete[](void *)
40D1D8:  B               loc_40D1DC
40D1DA:  ADDS            R5, R4, #4
40D1DC:  MOVS            R0, #0
40D1DE:  STR             R0, [R4]
40D1E0:  STR             R0, [R5]
40D1E2:  MOV             R0, R4; void *
40D1E4:  BLX             _ZdlPv; operator delete(void *)
40D1E8:  LDR             R0, =(_ZN6CPools12ms_pTaskPoolE_ptr - 0x40D1EE)
40D1EA:  ADD             R0, PC; _ZN6CPools12ms_pTaskPoolE_ptr
40D1EC:  LDR             R0, [R0]; CPools::ms_pTaskPool ...
40D1EE:  LDR             R4, [R0]; CPools::ms_pTaskPool
40D1F0:  CBZ             R4, loc_40D224
40D1F2:  LDR             R0, [R4,#8]
40D1F4:  CMP             R0, #1
40D1F6:  BLT             loc_40D21E
40D1F8:  LDRB            R0, [R4,#0x10]
40D1FA:  CBZ             R0, loc_40D216
40D1FC:  LDR             R0, [R4]; void *
40D1FE:  CMP             R0, #0
40D200:  IT NE
40D202:  BLXNE           _ZdaPv; operator delete[](void *)
40D206:  MOV             R5, R4
40D208:  LDR.W           R0, [R5,#4]!; void *
40D20C:  CMP             R0, #0
40D20E:  IT NE
40D210:  BLXNE           _ZdaPv; operator delete[](void *)
40D214:  B               loc_40D218
40D216:  ADDS            R5, R4, #4
40D218:  MOVS            R0, #0
40D21A:  STR             R0, [R4]
40D21C:  STR             R0, [R5]
40D21E:  MOV             R0, R4; void *
40D220:  BLX             _ZdlPv; operator delete(void *)
40D224:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x40D22A)
40D226:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
40D228:  LDR             R0, [R0]; CPools::ms_pEventPool ...
40D22A:  LDR             R4, [R0]; CPools::ms_pEventPool
40D22C:  CBZ             R4, loc_40D260
40D22E:  LDR             R0, [R4,#8]
40D230:  CMP             R0, #1
40D232:  BLT             loc_40D25A
40D234:  LDRB            R0, [R4,#0x10]
40D236:  CBZ             R0, loc_40D252
40D238:  LDR             R0, [R4]; void *
40D23A:  CMP             R0, #0
40D23C:  IT NE
40D23E:  BLXNE           _ZdaPv; operator delete[](void *)
40D242:  MOV             R5, R4
40D244:  LDR.W           R0, [R5,#4]!; void *
40D248:  CMP             R0, #0
40D24A:  IT NE
40D24C:  BLXNE           _ZdaPv; operator delete[](void *)
40D250:  B               loc_40D254
40D252:  ADDS            R5, R4, #4
40D254:  MOVS            R0, #0
40D256:  STR             R0, [R4]
40D258:  STR             R0, [R5]
40D25A:  MOV             R0, R4; void *
40D25C:  BLX             _ZdlPv; operator delete(void *)
40D260:  LDR             R0, =(_ZN6CPools18ms_pPointRoutePoolE_ptr - 0x40D266)
40D262:  ADD             R0, PC; _ZN6CPools18ms_pPointRoutePoolE_ptr
40D264:  LDR             R0, [R0]; CPools::ms_pPointRoutePool ...
40D266:  LDR             R4, [R0]; CPools::ms_pPointRoutePool
40D268:  CBZ             R4, loc_40D29C
40D26A:  LDR             R0, [R4,#8]
40D26C:  CMP             R0, #1
40D26E:  BLT             loc_40D296
40D270:  LDRB            R0, [R4,#0x10]
40D272:  CBZ             R0, loc_40D28E
40D274:  LDR             R0, [R4]; void *
40D276:  CMP             R0, #0
40D278:  IT NE
40D27A:  BLXNE           _ZdaPv; operator delete[](void *)
40D27E:  MOV             R5, R4
40D280:  LDR.W           R0, [R5,#4]!; void *
40D284:  CMP             R0, #0
40D286:  IT NE
40D288:  BLXNE           _ZdaPv; operator delete[](void *)
40D28C:  B               loc_40D290
40D28E:  ADDS            R5, R4, #4
40D290:  MOVS            R0, #0
40D292:  STR             R0, [R4]
40D294:  STR             R0, [R5]
40D296:  MOV             R0, R4; void *
40D298:  BLX             _ZdlPv; operator delete(void *)
40D29C:  LDR             R0, =(_ZN6CPools19ms_pPatrolRoutePoolE_ptr - 0x40D2A2)
40D29E:  ADD             R0, PC; _ZN6CPools19ms_pPatrolRoutePoolE_ptr
40D2A0:  LDR             R0, [R0]; CPools::ms_pPatrolRoutePool ...
40D2A2:  LDR             R4, [R0]; CPools::ms_pPatrolRoutePool
40D2A4:  CBZ             R4, loc_40D2D8
40D2A6:  LDR             R0, [R4,#8]
40D2A8:  CMP             R0, #1
40D2AA:  BLT             loc_40D2D2
40D2AC:  LDRB            R0, [R4,#0x10]
40D2AE:  CBZ             R0, loc_40D2CA
40D2B0:  LDR             R0, [R4]; void *
40D2B2:  CMP             R0, #0
40D2B4:  IT NE
40D2B6:  BLXNE           _ZdaPv; operator delete[](void *)
40D2BA:  MOV             R5, R4
40D2BC:  LDR.W           R0, [R5,#4]!; void *
40D2C0:  CMP             R0, #0
40D2C2:  IT NE
40D2C4:  BLXNE           _ZdaPv; operator delete[](void *)
40D2C8:  B               loc_40D2CC
40D2CA:  ADDS            R5, R4, #4
40D2CC:  MOVS            R0, #0
40D2CE:  STR             R0, [R4]
40D2D0:  STR             R0, [R5]
40D2D2:  MOV             R0, R4; void *
40D2D4:  BLX             _ZdlPv; operator delete(void *)
40D2D8:  LDR             R0, =(_ZN6CPools17ms_pNodeRoutePoolE_ptr - 0x40D2DE)
40D2DA:  ADD             R0, PC; _ZN6CPools17ms_pNodeRoutePoolE_ptr
40D2DC:  LDR             R0, [R0]; CPools::ms_pNodeRoutePool ...
40D2DE:  LDR             R4, [R0]; CPools::ms_pNodeRoutePool
40D2E0:  CBZ             R4, loc_40D314
40D2E2:  LDR             R0, [R4,#8]
40D2E4:  CMP             R0, #1
40D2E6:  BLT             loc_40D30E
40D2E8:  LDRB            R0, [R4,#0x10]
40D2EA:  CBZ             R0, loc_40D306
40D2EC:  LDR             R0, [R4]; void *
40D2EE:  CMP             R0, #0
40D2F0:  IT NE
40D2F2:  BLXNE           _ZdaPv; operator delete[](void *)
40D2F6:  MOV             R5, R4
40D2F8:  LDR.W           R0, [R5,#4]!; void *
40D2FC:  CMP             R0, #0
40D2FE:  IT NE
40D300:  BLXNE           _ZdaPv; operator delete[](void *)
40D304:  B               loc_40D308
40D306:  ADDS            R5, R4, #4
40D308:  MOVS            R0, #0
40D30A:  STR             R0, [R4]
40D30C:  STR             R0, [R5]
40D30E:  MOV             R0, R4; void *
40D310:  BLX             _ZdlPv; operator delete(void *)
40D314:  LDR             R0, =(_ZN6CPools21ms_pTaskAllocatorPoolE_ptr - 0x40D31A)
40D316:  ADD             R0, PC; _ZN6CPools21ms_pTaskAllocatorPoolE_ptr
40D318:  LDR             R0, [R0]; CPools::ms_pTaskAllocatorPool ...
40D31A:  LDR             R4, [R0]; CPools::ms_pTaskAllocatorPool
40D31C:  CBZ             R4, loc_40D350
40D31E:  LDR             R0, [R4,#8]
40D320:  CMP             R0, #1
40D322:  BLT             loc_40D34A
40D324:  LDRB            R0, [R4,#0x10]
40D326:  CBZ             R0, loc_40D342
40D328:  LDR             R0, [R4]; void *
40D32A:  CMP             R0, #0
40D32C:  IT NE
40D32E:  BLXNE           _ZdaPv; operator delete[](void *)
40D332:  MOV             R5, R4
40D334:  LDR.W           R0, [R5,#4]!; void *
40D338:  CMP             R0, #0
40D33A:  IT NE
40D33C:  BLXNE           _ZdaPv; operator delete[](void *)
40D340:  B               loc_40D344
40D342:  ADDS            R5, R4, #4
40D344:  MOVS            R0, #0
40D346:  STR             R0, [R4]
40D348:  STR             R0, [R5]
40D34A:  MOV             R0, R4; void *
40D34C:  BLX             _ZdlPv; operator delete(void *)
40D350:  LDR             R0, =(_ZN6CPools23ms_pPedIntelligencePoolE_ptr - 0x40D356)
40D352:  ADD             R0, PC; _ZN6CPools23ms_pPedIntelligencePoolE_ptr
40D354:  LDR             R0, [R0]; CPools::ms_pPedIntelligencePool ...
40D356:  LDR             R4, [R0]; CPools::ms_pPedIntelligencePool
40D358:  CBZ             R4, loc_40D38C
40D35A:  LDR             R0, [R4,#8]
40D35C:  CMP             R0, #1
40D35E:  BLT             loc_40D386
40D360:  LDRB            R0, [R4,#0x10]
40D362:  CBZ             R0, loc_40D37E
40D364:  LDR             R0, [R4]; void *
40D366:  CMP             R0, #0
40D368:  IT NE
40D36A:  BLXNE           _ZdaPv; operator delete[](void *)
40D36E:  MOV             R5, R4
40D370:  LDR.W           R0, [R5,#4]!; void *
40D374:  CMP             R0, #0
40D376:  IT NE
40D378:  BLXNE           _ZdaPv; operator delete[](void *)
40D37C:  B               loc_40D380
40D37E:  ADDS            R5, R4, #4
40D380:  MOVS            R0, #0
40D382:  STR             R0, [R4]
40D384:  STR             R0, [R5]
40D386:  MOV             R0, R4; void *
40D388:  BLX             _ZdlPv; operator delete(void *)
40D38C:  LDR             R0, =(_ZN6CPools20ms_pPedAttractorPoolE_ptr - 0x40D392)
40D38E:  ADD             R0, PC; _ZN6CPools20ms_pPedAttractorPoolE_ptr
40D390:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool ...
40D392:  LDR             R4, [R0]; CPools::ms_pPedAttractorPool
40D394:  CMP             R4, #0
40D396:  IT EQ
40D398:  POPEQ           {R4,R5,R7,PC}
40D39A:  LDR             R0, [R4,#8]
40D39C:  CMP             R0, #1
40D39E:  BLT             loc_40D3C6
40D3A0:  LDRB            R0, [R4,#0x10]
40D3A2:  CBZ             R0, loc_40D3BE
40D3A4:  LDR             R0, [R4]; void *
40D3A6:  CMP             R0, #0
40D3A8:  IT NE
40D3AA:  BLXNE           _ZdaPv; operator delete[](void *)
40D3AE:  MOV             R5, R4
40D3B0:  LDR.W           R0, [R5,#4]!; void *
40D3B4:  CMP             R0, #0
40D3B6:  IT NE
40D3B8:  BLXNE           _ZdaPv; operator delete[](void *)
40D3BC:  B               loc_40D3C0
40D3BE:  ADDS            R5, R4, #4
40D3C0:  MOVS            R0, #0
40D3C2:  STR             R0, [R4]
40D3C4:  STR             R0, [R5]
40D3C6:  MOV             R0, R4; void *
40D3C8:  POP.W           {R4,R5,R7,LR}
40D3CC:  B.W             j__ZdlPv; operator delete(void *)
