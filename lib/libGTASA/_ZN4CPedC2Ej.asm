; =========================================================
; Game Engine Function: _ZN4CPedC2Ej
; Address            : 0x49F040 - 0x49F4FE
; =========================================================

49F040:  PUSH            {R4-R7,LR}
49F042:  ADD             R7, SP, #0xC
49F044:  PUSH.W          {R8-R10}
49F048:  VPUSH           {D8-D9}
49F04C:  SUB             SP, SP, #0x18
49F04E:  MOV             R6, R1
49F050:  MOV             R4, R0
49F052:  BLX             j__ZN9CPhysicalC2Ev_0; CPhysical::CPhysical(void)
49F056:  LDR.W           R0, =(_ZTV22CAETwinLoopSoundEntity_ptr - 0x49F068)
49F05A:  MOVS            R5, #0
49F05C:  LDR.W           R1, =(_ZTV4CPed_ptr - 0x49F06A)
49F060:  LDR.W           R2, =(_ZTV17CAEPedAudioEntity_ptr - 0x49F070)
49F064:  ADD             R0, PC; _ZTV22CAETwinLoopSoundEntity_ptr
49F066:  ADD             R1, PC; _ZTV4CPed_ptr
49F068:  STR.W           R5, [R4,#0x14C]
49F06C:  ADD             R2, PC; _ZTV17CAEPedAudioEntity_ptr
49F06E:  LDR             R0, [R0]; `vtable for'CAETwinLoopSoundEntity ...
49F070:  LDR             R1, [R1]; `vtable for'CPed ...
49F072:  LDR             R2, [R2]; `vtable for'CAEPedAudioEntity ...
49F074:  ADDS            R0, #8
49F076:  ADDS            R1, #8
49F078:  STR.W           R5, [R4,#0x1F4]
49F07C:  STRD.W          R5, R5, [R4,#0x284]
49F080:  STRH.W          R5, [R4,#0x26C]
49F084:  STR.W           R5, [R4,#0x1D0]
49F088:  STRD.W          R5, R5, [R4,#0x1D8]
49F08C:  STR.W           R5, [R4,#0x1E0]
49F090:  STRB.W          R5, [R4,#0x1B8]
49F094:  STR             R1, [R4]
49F096:  ADD.W           R1, R2, #8
49F09A:  STR.W           R1, [R4,#0x13C]
49F09E:  STR.W           R0, [R4,#0x1E4]
49F0A2:  ADD.W           R0, R4, #0x298; this
49F0A6:  BLX             j__ZN23CAEPedSpeechAudioEntityC2Ev; CAEPedSpeechAudioEntity::CAEPedSpeechAudioEntity(void)
49F0AA:  VMOV.I32        Q4, #0
49F0AE:  ADD.W           R1, R4, #0x428
49F0B2:  LDR.W           R0, =(_ZTV23CAEPedWeaponAudioEntity_ptr - 0x49F0C2)
49F0B6:  VST1.32         {D8-D9}, [R1]
49F0BA:  ADDW            R1, R4, #0x41C
49F0BE:  ADD             R0, PC; _ZTV23CAEPedWeaponAudioEntity_ptr
49F0C0:  VST1.32         {D8-D9}, [R1]
49F0C4:  ADD.W           R1, R4, #0x4F0
49F0C8:  LDR             R0, [R0]; `vtable for'CAEPedWeaponAudioEntity ...
49F0CA:  VST1.32         {D8-D9}, [R1]
49F0CE:  ADDW            R1, R4, #0x4E4
49F0D2:  ADDS            R0, #8
49F0D4:  VST1.32         {D8-D9}, [R1]
49F0D8:  MOV             R1, R4; CPed *
49F0DA:  STRB.W          R5, [R4,#0x414]
49F0DE:  STRH.W          R5, [R4,#0x415]
49F0E2:  STR.W           R5, [R4,#0x3A8]
49F0E6:  STR.W           R0, [R4,#0x398]
49F0EA:  ADD.W           R0, R4, #0x518; this
49F0EE:  STR.W           R5, [R4,#0x43C]
49F0F2:  STRB.W          R5, [R4,#0x438]
49F0F6:  BLX             j__ZN6CPedIKC2EP4CPed; CPedIK::CPedIK(CPed *)
49F0FA:  MOVS            R0, #0
49F0FC:  ADDW            R1, R4, #0x74C
49F100:  MOVT            R0, #0x42C8
49F104:  MOVS            R2, #0
49F106:  STR.W           R0, [R4,#0x544]
49F10A:  MOVW            R3, #0xCCCD
49F10E:  STR.W           R0, [R4,#0x548]
49F112:  MOVT            R2, #0x4170
49F116:  STR.W           R5, [R4,#0x54C]
49F11A:  MOVT            R3, #0x3DCC
49F11E:  STR.W           R6, [R4,#0x59C]
49F122:  MOV.W           R9, #0x3F800000
49F126:  STR.W           R5, [R4,#0x5BC]
49F12A:  MOV.W           R8, #0xFF
49F12E:  STRH.W          R5, [R4,#0x5B8]
49F132:  STR.W           R5, [R4,#0x5D8]
49F136:  STRH.W          R5, [R4,#0x5D4]
49F13A:  STR.W           R5, [R4,#0x5F4]
49F13E:  STRH.W          R5, [R4,#0x5F0]
49F142:  STR.W           R5, [R4,#0x610]
49F146:  STRH.W          R5, [R4,#0x60C]
49F14A:  STR.W           R5, [R4,#0x62C]
49F14E:  STRH.W          R5, [R4,#0x628]
49F152:  STR.W           R5, [R4,#0x648]
49F156:  STRH.W          R5, [R4,#0x644]
49F15A:  STR.W           R5, [R4,#0x664]
49F15E:  STRH.W          R5, [R4,#0x660]
49F162:  STR.W           R5, [R4,#0x680]
49F166:  STRH.W          R5, [R4,#0x67C]
49F16A:  STRH.W          R5, [R4,#0x698]
49F16E:  STR.W           R5, [R4,#0x69C]
49F172:  STRH.W          R5, [R4,#0x6B4]
49F176:  STR.W           R5, [R4,#0x6B8]
49F17A:  STRH.W          R5, [R4,#0x6D0]
49F17E:  STR.W           R5, [R4,#0x6D4]
49F182:  STRH.W          R5, [R4,#0x6EC]
49F186:  STR.W           R5, [R4,#0x6F0]
49F18A:  STR.W           R5, [R4,#0x70C]
49F18E:  STRH.W          R5, [R4,#0x708]
49F192:  VST1.32         {D8-D9}, [R1]
49F196:  ADDW            R1, R4, #0x56C
49F19A:  VST1.32         {D8-D9}, [R1]
49F19E:  MOVS            R1, #1
49F1A0:  STRB.W          R1, [R4,#0x448]
49F1A4:  STR.W           R5, [R4,#0x590]
49F1A8:  STR.W           R5, [R4,#0x538]
49F1AC:  STR.W           R5, [R4,#0x554]
49F1B0:  STR.W           R5, [R4,#0x558]
49F1B4:  STR.W           R5, [R4,#0x55C]
49F1B8:  STR.W           R5, [R4,#0x560]
49F1BC:  STR.W           R2, [R4,#0x564]
49F1C0:  MOVS            R2, #0x28 ; '('
49F1C2:  STR.W           R3, [R4,#0x568]
49F1C6:  STR.W           R5, [R4,#0x580]
49F1CA:  STR.W           R5, [R4,#0x57C]
49F1CE:  STR.W           R9, [R4,#0x584]
49F1D2:  STR.W           R5, [R4,#0x598]
49F1D6:  STRB.W          R2, [R4,#0x71D]
49F1DA:  STR.W           R5, [R4,#0x12C]
49F1DE:  STR.W           R1, [R4,#0x44C]
49F1E2:  STR.W           R1, [R4,#0x450]
49F1E6:  MOV             R1, #0x47C34FFF
49F1EE:  STR.W           R5, [R4,#0x53C]
49F1F2:  STR.W           R5, [R4,#0x720]
49F1F6:  STR.W           R5, [R4,#0x724]
49F1FA:  STR.W           R5, [R4,#0x738]
49F1FE:  STR.W           R9, [R4,#0x73C]
49F202:  STR.W           R5, [R4,#0x740]
49F206:  STR.W           R5, [R4,#0x744]
49F20A:  STR.W           R5, [R4,#0x588]
49F20E:  STR.W           R1, [R4,#0x58C]
49F212:  MOVS            R1, #0x428C0000
49F218:  STRD.W          R1, R0, [R4,#0x90]
49F21C:  MOVW            R0, #0x3EE7
49F220:  MOVW            R1, #0xCCCD
49F224:  MOVT            R0, #0x3BBB
49F228:  MOVT            R1, #0x3D4C
49F22C:  STRD.W          R0, R1, [R4,#0x9C]
49F230:  LDRB.W          R0, [R4,#0x3A]
49F234:  STRB.W          R8, [R4,#0x75C]
49F238:  AND.W           R0, R0, #0xF8
49F23C:  LDR             R1, [R4,#0x44]
49F23E:  ORR.W           R0, R0, #3
49F242:  STRB.W          R0, [R4,#0x3A]
49F246:  ORR.W           R0, R1, #0x10000000
49F24A:  MOV.W           R1, #0x2000
49F24E:  ORR.W           R0, R0, #0x10
49F252:  STR             R0, [R4,#0x44]
49F254:  LDR.W           R0, [R4,#0x484]
49F258:  BFI.W           R0, R1, #0, #0x11
49F25C:  STR.W           R0, [R4,#0x484]
49F260:  BLX             rand
49F264:  LDR.W           R1, [R4,#0x484]
49F268:  TST.W           R0, #3
49F26C:  MOV.W           R0, #0
49F270:  LDR.W           R2, [R4,#0x48C]
49F274:  LDR.W           R3, [R4,#0x490]
49F278:  IT EQ
49F27A:  MOVEQ           R0, #1
49F27C:  BFC.W           R1, #0x11, #0xF
49F280:  MOVS            R6, #0x20 ; ' '
49F282:  ORR.W           R0, R1, R0,LSL#17
49F286:  AND.W           R2, R2, #0x20000000
49F28A:  ORR.W           R0, R0, #0x80000000
49F28E:  STR.W           R0, [R4,#0x484]
49F292:  ADD.W           R0, R4, #0x398; this
49F296:  MOV.W           R12, #0x6100000
49F29A:  MOVT            R6, #0xFFE0
49F29E:  ANDS            R3, R6
49F2A0:  MOV             R1, R4; CEntity *
49F2A2:  ORR.W           R2, R2, #0x4000000
49F2A6:  STR.W           R12, [R4,#0x488]
49F2AA:  ORR.W           R3, R3, #0x21000
49F2AE:  STR.W           R2, [R4,#0x48C]
49F2B2:  STR.W           R3, [R4,#0x490]
49F2B6:  BLX             j__ZN23CAEPedWeaponAudioEntity10InitialiseEP7CEntity; CAEPedWeaponAudioEntity::Initialise(CEntity *)
49F2BA:  ADD.W           R0, R4, #0x13C; this
49F2BE:  MOV             R1, R4; CEntity *
49F2C0:  BLX             j__ZN17CAEPedAudioEntity10InitialiseEP7CEntity; CAEPedAudioEntity::Initialise(CEntity *)
49F2C4:  LDR.W           R0, [R4,#0x59C]; this
49F2C8:  BLX             j__ZN8CPedType23GetPedTypeAcquaintancesEi; CPedType::GetPedTypeAcquaintances(int)
49F2CC:  LDR             R1, [R0]
49F2CE:  MOVS            R2, #0
49F2D0:  STR.W           R1, [R4,#0x4EC]
49F2D4:  MOVS            R3, #0
49F2D6:  LDR             R1, [R0,#4]
49F2D8:  STR.W           R1, [R4,#0x4F0]
49F2DC:  LDR             R1, [R0,#8]
49F2DE:  STR.W           R1, [R4,#0x4F4]
49F2E2:  LDR             R1, [R0,#0xC]
49F2E4:  STR.W           R1, [R4,#0x4F8]
49F2E8:  MOVS            R1, #0
49F2EA:  LDR             R0, [R0,#0x10]
49F2EC:  STR.W           R0, [R4,#0x4FC]
49F2F0:  MOVS            R0, #0x37 ; '7'
49F2F2:  STR.W           R0, [R4,#0x710]
49F2F6:  STR.W           R0, [R4,#0x714]
49F2FA:  ADDW            R0, R4, #0x5A4
49F2FE:  STRB.W          R5, [R4,#0x71C]
49F302:  VST1.32         {D8-D9}, [R0]!
49F306:  STR.W           R5, [R4,#0x5D0]
49F30A:  STR             R5, [R0]
49F30C:  ADD.W           R0, R4, #0x5C0
49F310:  VST1.32         {D8-D9}, [R0]
49F314:  ADDW            R0, R4, #0x5DC
49F318:  VST1.32         {D8-D9}, [R0]
49F31C:  ADD.W           R0, R4, #0x5F8
49F320:  VST1.32         {D8-D9}, [R0]
49F324:  ADDW            R0, R4, #0x614
49F328:  VST1.32         {D8-D9}, [R0]
49F32C:  ADD.W           R0, R4, #0x630
49F330:  VST1.32         {D8-D9}, [R0]
49F334:  ADDW            R0, R4, #0x64C
49F338:  VST1.32         {D8-D9}, [R0]
49F33C:  ADD.W           R0, R4, #0x668
49F340:  STR.W           R5, [R4,#0x5EC]
49F344:  STR.W           R5, [R4,#0x608]
49F348:  STR.W           R5, [R4,#0x624]
49F34C:  STR.W           R5, [R4,#0x640]
49F350:  VST1.32         {D8-D9}, [R0]
49F354:  ADDW            R0, R4, #0x684
49F358:  STR.W           R5, [R4,#0x65C]
49F35C:  STR.W           R5, [R4,#0x678]
49F360:  VST1.32         {D8-D9}, [R0]
49F364:  ADD.W           R0, R4, #0x6A0
49F368:  STR.W           R5, [R4,#0x694]
49F36C:  VST1.32         {D8-D9}, [R0]
49F370:  ADDW            R0, R4, #0x6BC
49F374:  STR.W           R5, [R4,#0x6B0]
49F378:  VST1.32         {D8-D9}, [R0]
49F37C:  ADD.W           R0, R4, #0x6D8
49F380:  STR.W           R5, [R4,#0x6CC]
49F384:  VST1.32         {D8-D9}, [R0]
49F388:  ADDW            R0, R4, #0x6F4
49F38C:  STR.W           R5, [R4,#0x6E8]
49F390:  VST1.32         {D8-D9}, [R0]
49F394:  MOVW            R0, #0x401
49F398:  STR.W           R5, [R4,#0x704]
49F39C:  STRB.W          R5, [R4,#0x736]
49F3A0:  STRH.W          R0, [R4,#0x734]
49F3A4:  MOV             R0, R4
49F3A6:  BLX             j__ZN4CPed10GiveWeaponE11eWeaponTypejb; CPed::GiveWeapon(eWeaponType,uint,bool)
49F3AA:  MOVS            R0, #0x3C ; '<'
49F3AC:  ADD.W           R1, R4, #0x500; unsigned int
49F3B0:  STRB.W          R0, [R4,#0x71E]
49F3B4:  MOV.W           R0, #0xFFFFFFFF
49F3B8:  STRB.W          R8, [R4,#0x768]
49F3BC:  STR.W           R5, [R4,#0x76C]
49F3C0:  STR.W           R5, [R4,#0x770]
49F3C4:  STR.W           R5, [R4,#0x100]
49F3C8:  STRB.W          R5, [R4,#0x478]
49F3CC:  STR.W           R0, [R4,#0x748]
49F3D0:  STR.W           R5, [R4,#0x480]
49F3D4:  STR.W           R5, [R4,#0x550]
49F3D8:  STR.W           R5, [R4,#0x594]
49F3DC:  STR.W           R5, [R4,#0x78C]
49F3E0:  STR.W           R5, [R4,#0x790]
49F3E4:  STR.W           R5, [R4,#0x794]
49F3E8:  STRH.W          R5, [R4,#0x75E]
49F3EC:  STRB.W          R5, [R4,#0x737]
49F3F0:  STR.W           R5, [R4,#0x510]
49F3F4:  STR.W           R5, [R4,#0x514]
49F3F8:  VST1.32         {D8-D9}, [R1]
49F3FC:  STR.W           R0, [R4,#0x7A0]
49F400:  MOV.W           R0, #(elf_hash_bucket+0x19C); this
49F404:  BLX             j__ZN16CPedIntelligencenwEj; CPedIntelligence::operator new(uint)
49F408:  MOV             R1, R4; CPed *
49F40A:  MOV             R8, R0
49F40C:  BLX             j__ZN16CPedIntelligenceC2EP4CPed; CPedIntelligence::CPedIntelligence(CPed *)
49F410:  STR.W           R8, [R4,#0x440]
49F414:  ADDW            R10, R4, #0x484
49F418:  STR.W           R5, [R4,#0x444]
49F41C:  LDR.W           R0, [R4,#0x59C]
49F420:  CMP             R0, #2
49F422:  BCC             loc_49F440
49F424:  MOVS            R0, #dword_20; this
49F426:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49F42A:  MOV             R6, R0
49F42C:  BLX             j__ZN18CTaskComplexFacialC2Ev; CTaskComplexFacial::CTaskComplexFacial(void)
49F430:  ADD.W           R0, R8, #4; this
49F434:  MOV             R1, R6; CTask *
49F436:  MOVS            R2, #3; int
49F438:  BLX             j__ZN12CTaskManager16SetTaskSecondaryEP5CTaski; CTaskManager::SetTaskSecondary(CTask *,int)
49F43C:  LDR.W           R8, [R4,#0x440]
49F440:  MOVS            R0, #dword_20; this
49F442:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
49F446:  MOV             R6, R0
49F448:  MOV.W           R0, #0x41000000
49F44C:  STR             R0, [SP,#0x40+var_40]; float
49F44E:  MOV             R0, R6; this
49F450:  MOVS            R1, #0; int
49F452:  MOVS            R2, #1; bool
49F454:  MOVS            R3, #0; bool
49F456:  BLX             j__ZN21CTaskSimpleStandStillC2Eibbf; CTaskSimpleStandStill::CTaskSimpleStandStill(int,bool,bool,float)
49F45A:  ADD.W           R0, R8, #4; this
49F45E:  MOV             R1, R6; CTask *
49F460:  MOVS            R2, #4; int
49F462:  MOVS            R3, #0; bool
49F464:  BLX             j__ZN12CTaskManager7SetTaskEP5CTaskib; CTaskManager::SetTask(CTask *,int,bool)
49F468:  MOVW            R0, #0xFFFF
49F46C:  STR.W           R9, [R4,#0x798]
49F470:  STR.W           R5, [R4,#0x760]
49F474:  MOVS            R1, #0; CPed *
49F476:  STRH.W          R0, [R4,#0x79C]
49F47A:  MOV             R0, R4; this
49F47C:  BLX             j__ZN11CPopulation14UpdatePedCountEP4CPedh; CPopulation::UpdatePedCount(CPed *,uchar)
49F480:  LDR             R0, =(_ZN6CCheat15m_aCheatsActiveE_ptr - 0x49F48A)
49F482:  LDRD.W          R1, R2, [R10,#8]
49F486:  ADD             R0, PC; _ZN6CCheat15m_aCheatsActiveE_ptr
49F488:  BIC.W           R2, R2, #0x20 ; ' '
49F48C:  BIC.W           R1, R1, #0x20000000; int
49F490:  LDR             R0, [R0]; CCheat::m_aCheatsActive ...
49F492:  STRD.W          R1, R2, [R10,#8]
49F496:  LDRB            R0, [R0,#(byte_79680A - 0x7967F4)]
49F498:  CMP             R0, #0
49F49A:  BEQ             loc_49F4F0
49F49C:  LDR.W           R0, [R4,#0x59C]
49F4A0:  CMP             R0, #2
49F4A2:  BCC             loc_49F4F0
49F4A4:  MOVS            R0, #0; this
49F4A6:  ADDW            R5, R4, #0x4EC
49F4AA:  BLX             j__ZN8CPedType10GetPedFlagEi; CPedType::GetPedFlag(int)
49F4AE:  MOV             R2, R0; unsigned int
49F4B0:  MOV             R0, R5; this
49F4B2:  MOVS            R1, #4; int
49F4B4:  BLX             j__ZN13CAcquaintance17SetAsAcquaintanceEij; CAcquaintance::SetAsAcquaintance(int,uint)
49F4B8:  MOV.W           R0, #0xFFFFFFFF; int
49F4BC:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
49F4C0:  ADD             R5, SP, #0x40+var_3C
49F4C2:  MOV             R1, R0; CPed *
49F4C4:  MOV             R0, R5; this
49F4C6:  BLX             j__ZN21CEventAcquaintancePedC2EP4CPed; CEventAcquaintancePed::CEventAcquaintancePed(CPed *)
49F4CA:  LDR             R0, =(_ZTV25CEventAcquaintancePedHate_ptr - 0x49F4DA)
49F4CC:  MOV.W           R1, #0x3E8
49F4D0:  STRH.W          R1, [SP,#0x40+var_32]
49F4D4:  MOV             R1, R5; CEvent *
49F4D6:  ADD             R0, PC; _ZTV25CEventAcquaintancePedHate_ptr
49F4D8:  MOVS            R2, #0; bool
49F4DA:  LDR             R0, [R0]; `vtable for'CEventAcquaintancePedHate ...
49F4DC:  ADDS            R0, #8
49F4DE:  STR             R0, [SP,#0x40+var_3C]
49F4E0:  LDR.W           R0, [R4,#0x440]
49F4E4:  ADDS            R0, #0x68 ; 'h'; this
49F4E6:  BLX             j__ZN11CEventGroup3AddER6CEventb; CEventGroup::Add(CEvent &,bool)
49F4EA:  MOV             R0, R5; this
49F4EC:  BLX             j__ZN21CEventAcquaintancePedD2Ev; CEventAcquaintancePed::~CEventAcquaintancePed()
49F4F0:  MOV             R0, R4
49F4F2:  ADD             SP, SP, #0x18
49F4F4:  VPOP            {D8-D9}
49F4F8:  POP.W           {R8-R10}
49F4FC:  POP             {R4-R7,PC}
