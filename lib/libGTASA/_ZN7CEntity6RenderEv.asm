; =========================================================
; Game Engine Function: _ZN7CEntity6RenderEv
; Address            : 0x3ED20C - 0x3ED31E
; =========================================================

3ED20C:  PUSH            {R4-R7,LR}
3ED20E:  ADD             R7, SP, #0xC
3ED210:  PUSH.W          {R8-R10}
3ED214:  SUB             SP, SP, #8
3ED216:  MOV             R8, R0
3ED218:  LDR.W           R0, [R8,#0x18]
3ED21C:  CMP             R0, #0
3ED21E:  BEQ             loc_3ED316
3ED220:  LDRB            R0, [R0]
3ED222:  CMP             R0, #1
3ED224:  BNE             loc_3ED242
3ED226:  MOV             R0, R8; this
3ED228:  BLX             j__ZN11CTagManager5IsTagEPK7CEntity; CTagManager::IsTag(CEntity const*)
3ED22C:  CMP             R0, #1
3ED22E:  BNE             loc_3ED242
3ED230:  LDR.W           R0, [R8,#0x18]
3ED234:  ADD             SP, SP, #8
3ED236:  POP.W           {R8-R10}
3ED23A:  POP.W           {R4-R7,LR}
3ED23E:  B.W             sub_1A0C10
3ED242:  LDR             R0, =(MI_JELLYFISH_ptr - 0x3ED248)
3ED244:  ADD             R0, PC; MI_JELLYFISH_ptr
3ED246:  LDR             R1, [R0]; MI_JELLYFISH
3ED248:  MOVS            R0, #0
3ED24A:  STR             R0, [SP,#0x20+var_1C]
3ED24C:  LDRSH.W         R0, [R8,#0x26]
3ED250:  LDRH            R1, [R1]
3ED252:  CMP             R0, R1
3ED254:  BEQ             loc_3ED262
3ED256:  LDR             R1, =(MI_JELLYFISH01_ptr - 0x3ED25C)
3ED258:  ADD             R1, PC; MI_JELLYFISH01_ptr
3ED25A:  LDR             R1, [R1]; MI_JELLYFISH01
3ED25C:  LDRH            R1, [R1]
3ED25E:  CMP             R0, R1
3ED260:  BNE             loc_3ED272
3ED262:  ADD             R1, SP, #0x20+var_1C
3ED264:  MOVS            R0, #0x1E
3ED266:  BLX             j__Z16RwRenderStateGet13RwRenderStatePv; RwRenderStateGet(RwRenderState,void *)
3ED26A:  MOVS            R0, #0x1E
3ED26C:  MOVS            R1, #0
3ED26E:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
3ED272:  MOV             R9, R8
3ED274:  LDR.W           R1, [R9,#0x1C]!
3ED278:  LDR.W           R0, [R9,#-4]
3ED27C:  ORR.W           R1, R1, #0x2000
3ED280:  STR.W           R1, [R9]
3ED284:  LDRB            R1, [R0]
3ED286:  CMP             R1, #1
3ED288:  BNE             loc_3ED290
3ED28A:  LDR             R1, [R0,#0x48]
3ED28C:  BLX             R1
3ED28E:  B               loc_3ED294
3ED290:  BLX             j__Z13RpClumpRenderP7RpClump; RpClumpRender(RpClump *)
3ED294:  LDR.W           R0, [R8,#0x2C]
3ED298:  BLX             j__ZN10CStreaming12RenderEntityEP5CLinkIP7CEntityE; CStreaming::RenderEntity(CLink<CEntity *> *)
3ED29C:  LDRB.W          R0, [R9,#3]
3ED2A0:  LSLS            R0, R0, #0x1F
3ED2A2:  BEQ             loc_3ED2E6
3ED2A4:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x3ED2AE)
3ED2A6:  LDRSH.W         R1, [R8,#0x26]
3ED2AA:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
3ED2AC:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
3ED2AE:  LDR.W           R10, [R0,R1,LSL#2]
3ED2B2:  LDRB.W          R4, [R10,#0x23]
3ED2B6:  CBZ             R4, loc_3ED2E6
3ED2B8:  LDR             R0, =(TheCamera_ptr - 0x3ED2C0)
3ED2BA:  MOVS            R6, #0
3ED2BC:  ADD             R0, PC; TheCamera_ptr
3ED2BE:  LDR             R5, [R0]; TheCamera
3ED2C0:  MOV             R0, R10; this
3ED2C2:  MOV             R1, R6; int
3ED2C4:  BLX             j__ZN14CBaseModelInfo11Get2dEffectEi; CBaseModelInfo::Get2dEffect(int)
3ED2C8:  LDRB            R1, [R0,#0xC]
3ED2CA:  CMP             R1, #7
3ED2CC:  BNE             loc_3ED2E0
3ED2CE:  LDR             R2, [R5,#(dword_951FBC - 0x951FA8)]
3ED2D0:  LDR             R0, [R0,#0x2C]
3ED2D2:  ADD.W           R1, R2, #0x30 ; '0'
3ED2D6:  CMP             R2, #0
3ED2D8:  IT EQ
3ED2DA:  ADDEQ           R1, R5, #4
3ED2DC:  BLX             j__ZN18CCustomRoadsignMgr20RenderRoadsignAtomicEP8RpAtomicRK7CVector; CCustomRoadsignMgr::RenderRoadsignAtomic(RpAtomic *,CVector const&)
3ED2E0:  ADDS            R6, #1
3ED2E2:  CMP             R4, R6
3ED2E4:  BNE             loc_3ED2C0
3ED2E6:  LDR             R0, =(MI_JELLYFISH_ptr - 0x3ED2EC)
3ED2E8:  ADD             R0, PC; MI_JELLYFISH_ptr
3ED2EA:  LDR             R1, [R0]; MI_JELLYFISH
3ED2EC:  LDRSH.W         R0, [R8,#0x26]
3ED2F0:  LDRH            R1, [R1]
3ED2F2:  CMP             R0, R1
3ED2F4:  BEQ             loc_3ED302
3ED2F6:  LDR             R1, =(MI_JELLYFISH01_ptr - 0x3ED2FC)
3ED2F8:  ADD             R1, PC; MI_JELLYFISH01_ptr
3ED2FA:  LDR             R1, [R1]; MI_JELLYFISH01
3ED2FC:  LDRH            R1, [R1]
3ED2FE:  CMP             R0, R1
3ED300:  BNE             loc_3ED30A
3ED302:  LDR             R1, [SP,#0x20+var_1C]
3ED304:  MOVS            R0, #0x1E
3ED306:  BLX             j__Z16RwRenderStateSet13RwRenderStatePv; RwRenderStateSet(RwRenderState,void *)
3ED30A:  LDR.W           R0, [R9]
3ED30E:  BIC.W           R0, R0, #0x2000
3ED312:  STR.W           R0, [R9]
3ED316:  ADD             SP, SP, #8
3ED318:  POP.W           {R8-R10}
3ED31C:  POP             {R4-R7,PC}
