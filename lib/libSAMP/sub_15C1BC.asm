; =========================================================
; Game Engine Function: sub_15C1BC
; Address            : 0x15C1BC - 0x15C498
; =========================================================

15C1BC:  PUSH            {R4-R7,LR}
15C1BE:  ADD             R7, SP, #0xC
15C1C0:  PUSH.W          {R8-R11}
15C1C4:  SUB             SP, SP, #0x54
15C1C6:  MOV             R10, R0
15C1C8:  MOV             R6, R1
15C1CA:  MOV             R0, R1
15C1CC:  MOV             R1, R3
15C1CE:  MOV             R5, R3
15C1D0:  STRH.W          R2, [R7,#var_2E]
15C1D4:  BL              sub_12DE18
15C1D8:  STR             R0, [SP,#0x70+var_34]
15C1DA:  ADDS            R0, R6, #4
15C1DC:  ADD             R1, SP, #0x70+var_34
15C1DE:  BL              sub_15C95E
15C1E2:  LDR.W           R9, [R7,#arg_0]
15C1E6:  CMP             R0, #0
15C1E8:  BEQ             loc_15C2CE
15C1EA:  MOV             R4, R0
15C1EC:  ADD             R0, SP, #0x70+var_44
15C1EE:  MOV             R1, R5
15C1F0:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
15C1F4:  LDR             R3, =(unk_BA6B8 - 0x15C202)
15C1F6:  SUB.W           R5, R7, #-var_2E
15C1FA:  STRB.W          R9, [SP,#0x70+var_38]
15C1FE:  ADD             R3, PC; unk_BA6B8
15C200:  STRD.W          R0, R5, [SP,#0x70+var_2C]
15C204:  ADD.W           R8, SP, #0x70+var_50
15C208:  ADD.W           R9, SP, #0x70+var_2C
15C20C:  ADD.W           R1, R6, #0x2C ; ','
15C210:  MOV             R2, R5
15C212:  MOV             R0, R8
15C214:  ADD.W           R11, SP, #0x70+var_28
15C218:  STRD.W          R11, R9, [SP,#0x70+var_70]
15C21C:  BL              sub_15CF04
15C220:  LDRB.W          R0, [SP,#0x70+var_44]
15C224:  LSLS            R0, R0, #0x1F
15C226:  ITT NE
15C228:  LDRNE           R0, [SP,#0x70+var_3C]; void *
15C22A:  BLXNE           j__ZdlPv; operator delete(void *)
15C22E:  MOVS            R0, #0x30 ; '0'; unsigned int
15C230:  BLX             j__Znwj; operator new(uint)
15C234:  LDR             R3, =(unk_BA6B8 - 0x15C242)
15C236:  MOVS            R2, #0
15C238:  LDR             R1, =(_ZTVNSt6__ndk120__shared_ptr_emplaceIN12SoundStorage5SoundENS_9allocatorIS2_EEEE - 0x15C244); `vtable for'std::__shared_ptr_emplace<SoundStorage::Sound> ...
15C23A:  STRD.W          R2, R2, [R0,#4]
15C23E:  ADD             R3, PC; unk_BA6B8
15C240:  ADD             R1, PC; `vtable for'std::__shared_ptr_emplace<SoundStorage::Sound>
15C242:  LDRB            R4, [R4,#0xC]
15C244:  ADDS            R1, #8
15C246:  STR             R1, [R0]
15C248:  LDR             R1, [SP,#0x70+var_34]
15C24A:  STRB.W          R4, [R0,#0x20]
15C24E:  MOV.W           R4, #0x100
15C252:  STRD.W          R2, R2, [R0,#0x28]
15C256:  STRH.W          R4, [R0,#0x21]
15C25A:  STRD.W          R2, R2, [R0,#0x14]
15C25E:  STR             R1, [R0,#0x1C]
15C260:  STR             R0, [SP,#0x70+var_4C]
15C262:  STR.W           R2, [R0,#0x10]!
15C266:  STR             R0, [SP,#0x70+var_50]
15C268:  STRD.W          R8, R5, [SP,#0x70+var_2C]
15C26C:  ADD.W           R1, R6, #0x18
15C270:  ADD             R0, SP, #0x70+var_44
15C272:  MOV             R2, R5
15C274:  STRD.W          R11, R9, [SP,#0x70+var_70]
15C278:  BL              sub_15D3CE
15C27C:  LDR             R0, [SP,#0x70+var_44]
15C27E:  LDRD.W          R1, R0, [R0,#0xC]
15C282:  STRD.W          R1, R0, [R10]
15C286:  CBZ             R0, loc_15C298
15C288:  ADDS            R0, #4
15C28A:  LDREX.W         R1, [R0]
15C28E:  ADDS            R1, #1
15C290:  STREX.W         R2, R1, [R0]
15C294:  CMP             R2, #0
15C296:  BNE             loc_15C28A
15C298:  LDR             R4, [SP,#0x70+var_4C]
15C29A:  CMP             R4, #0
15C29C:  BEQ.W           loc_15C490
15C2A0:  ADDS            R0, R4, #4
15C2A2:  DMB.W           ISH
15C2A6:  LDREX.W         R1, [R0]
15C2AA:  SUBS            R2, R1, #1
15C2AC:  STREX.W         R3, R2, [R0]
15C2B0:  CMP             R3, #0
15C2B2:  BNE             loc_15C2A6
15C2B4:  CMP             R1, #0
15C2B6:  DMB.W           ISH
15C2BA:  BNE.W           loc_15C490
15C2BE:  LDR             R0, [R4]
15C2C0:  LDR             R1, [R0,#8]
15C2C2:  MOV             R0, R4
15C2C4:  BLX             R1
15C2C6:  MOV             R0, R4; this
15C2C8:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
15C2CC:  B               loc_15C490
15C2CE:  ADD.W           R8, R6, #0x18
15C2D2:  SUB.W           R4, R7, #-var_2E
15C2D6:  MOV             R0, R8
15C2D8:  MOV             R1, R4
15C2DA:  BL              sub_15D7E2
15C2DE:  CBZ             R0, loc_15C2E8
15C2E0:  MOVS            R0, #0
15C2E2:  STRD.W          R0, R0, [R10]
15C2E6:  B               loc_15C490
15C2E8:  CMP.W           R9, #0
15C2EC:  BEQ             loc_15C2FA
15C2EE:  LDRB.W          R0, [R6,#0x40]
15C2F2:  CBNZ            R0, loc_15C2FA
15C2F4:  MOVS            R0, #1
15C2F6:  STRB.W          R0, [R6,#0x40]
15C2FA:  ADD             R0, SP, #0x70+var_44
15C2FC:  MOV             R1, R5
15C2FE:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
15C302:  LDR             R3, =(unk_BA6B8 - 0x15C30C)
15C304:  STRB.W          R9, [SP,#0x70+var_38]
15C308:  ADD             R3, PC; unk_BA6B8
15C30A:  STRD.W          R0, R4, [SP,#0x70+var_2C]
15C30E:  ADD             R0, SP, #0x70+var_2C
15C310:  ADD             R1, SP, #0x70+var_28
15C312:  MOV             R2, R4
15C314:  STRD.W          R1, R0, [SP,#0x70+var_70]
15C318:  ADD.W           R1, R6, #0x2C ; ','
15C31C:  ADD             R0, SP, #0x70+var_50
15C31E:  BL              sub_15CF04
15C322:  LDRB.W          R0, [SP,#0x70+var_44]
15C326:  LSLS            R0, R0, #0x1F
15C328:  ITT NE
15C32A:  LDRNE           R0, [SP,#0x70+var_3C]; void *
15C32C:  BLXNE           j__ZdlPv; operator delete(void *)
15C330:  ADD             R4, SP, #0x70+var_50
15C332:  LDR             R1, [SP,#0x70+var_34]; std::__itoa *
15C334:  MOV             R0, R4; this
15C336:  BLX             j__ZNSt6__ndk19to_stringEj; std::to_string(uint)
15C33A:  ADD             R0, SP, #0x70+var_44
15C33C:  MOV             R1, R4
15C33E:  MOV             R2, R9
15C340:  BL              sub_15A2FC
15C344:  LDRB.W          R0, [SP,#0x70+var_50]
15C348:  LSLS            R0, R0, #0x1F
15C34A:  ITT NE
15C34C:  LDRNE           R0, [SP,#0x70+var_48]; void *
15C34E:  BLXNE           j__ZdlPv; operator delete(void *)
15C352:  ADD             R0, SP, #0x70+var_50
15C354:  ADD             R1, SP, #0x70+var_44
15C356:  BL              sub_15C53C
15C35A:  ADD             R0, SP, #0x70+var_28; this
15C35C:  ADD             R1, SP, #0x70+var_50; std::__fs::filesystem::path *
15C35E:  MOVS            R2, #0; std::error_code *
15C360:  BLX             j__ZNSt6__ndk14__fs10filesystem8__statusERKNS1_4pathEPNS_10error_codeE; std::__fs::filesystem::__status(std::__fs::filesystem::path const&,std::error_code *)
15C364:  LDRB.W          R0, [SP,#0x70+var_50]
15C368:  LDRB.W          R1, [SP,#0x70+var_28]
15C36C:  LSLS            R0, R0, #0x1F
15C36E:  SUB.W           R4, R1, #1
15C372:  ITT NE
15C374:  LDRNE           R0, [SP,#0x70+var_48]; void *
15C376:  BLXNE           j__ZdlPv; operator delete(void *)
15C37A:  CMP             R4, #0xFE
15C37C:  BCC             loc_15C39C
15C37E:  ADD             R0, SP, #0x70+var_50
15C380:  ADD             R1, SP, #0x70+var_44
15C382:  BL              sub_15C53C
15C386:  ADD             R0, SP, #0x70+var_50; this
15C388:  MOVS            R1, #0; std::__fs::filesystem::path *
15C38A:  BLX             j__ZNSt6__ndk14__fs10filesystem20__create_directoriesERKNS1_4pathEPNS_10error_codeE; std::__fs::filesystem::__create_directories(std::__fs::filesystem::path const&,std::error_code *)
15C38E:  LDRB.W          R0, [SP,#0x70+var_50]
15C392:  LSLS            R0, R0, #0x1F
15C394:  ITT NE
15C396:  LDRNE           R0, [SP,#0x70+var_48]; void *
15C398:  BLXNE           j__ZdlPv; operator delete(void *)
15C39C:  ADD             R0, SP, #0x70+var_5C
15C39E:  MOV             R1, R5
15C3A0:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
15C3A4:  ADD             R0, SP, #0x70+var_68
15C3A6:  ADD             R1, SP, #0x70+var_44
15C3A8:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEC2ERKS5_; std::string::basic_string(std::string const&)
15C3AC:  ADD             R0, SP, #0x70+var_2C
15C3AE:  ADD             R1, SP, #0x70+var_5C
15C3B0:  ADD             R2, SP, #0x70+var_68
15C3B2:  BL              sub_158190
15C3B6:  LDRB.W          R0, [SP,#0x70+var_68]
15C3BA:  LSLS            R0, R0, #0x1F
15C3BC:  ITT NE
15C3BE:  LDRNE           R0, [SP,#0x70+var_60]; void *
15C3C0:  BLXNE           j__ZdlPv; operator delete(void *)
15C3C4:  LDRB.W          R0, [SP,#0x70+var_5C]
15C3C8:  LSLS            R0, R0, #0x1F
15C3CA:  ITT NE
15C3CC:  LDRNE           R0, [SP,#0x70+var_54]; void *
15C3CE:  BLXNE           j__ZdlPv; operator delete(void *)
15C3D2:  MOVS            R0, #0x30 ; '0'; unsigned int
15C3D4:  BLX             j__Znwj; operator new(uint)
15C3D8:  LDR             R1, =(_ZTVNSt6__ndk120__shared_ptr_emplaceIN12SoundStorage5SoundENS_9allocatorIS2_EEEE - 0x15C3E4); `vtable for'std::__shared_ptr_emplace<SoundStorage::Sound> ...
15C3DA:  MOVS            R6, #0
15C3DC:  LDR             R2, [SP,#0x70+var_2C]
15C3DE:  MOVS            R5, #1
15C3E0:  ADD             R1, PC; `vtable for'std::__shared_ptr_emplace<SoundStorage::Sound>
15C3E2:  LDR             R3, [SP,#0x70+var_34]
15C3E4:  ADDS            R1, #8
15C3E6:  STRD.W          R6, R6, [R0,#0x28]
15C3EA:  STRH.W          R5, [R0,#0x21]
15C3EE:  STRB.W          R9, [R0,#0x20]
15C3F2:  STRD.W          R6, R6, [R0,#0x14]
15C3F6:  STR             R3, [R0,#0x1C]
15C3F8:  STRD.W          R1, R6, [R0]
15C3FC:  STR             R6, [R0,#8]
15C3FE:  STR             R0, [SP,#0x70+var_4C]
15C400:  STR.W           R2, [R0,#0x10]!
15C404:  STR             R6, [SP,#0x70+var_2C]
15C406:  STR             R0, [SP,#0x70+var_50]
15C408:  ADD             R0, SP, #0x70+var_28
15C40A:  SUB.W           R2, R7, #-var_2E
15C40E:  ADD             R3, SP, #0x70+var_50
15C410:  MOV             R1, R8
15C412:  BL              loc_15C5B0
15C416:  LDR             R0, [SP,#0x70+var_28]
15C418:  LDRD.W          R1, R0, [R0,#0xC]
15C41C:  STRD.W          R1, R0, [R10]
15C420:  CBZ             R0, loc_15C432
15C422:  ADDS            R0, #4
15C424:  LDREX.W         R1, [R0]
15C428:  ADDS            R1, #1
15C42A:  STREX.W         R2, R1, [R0]
15C42E:  CMP             R2, #0
15C430:  BNE             loc_15C424
15C432:  LDR             R4, [SP,#0x70+var_4C]
15C434:  CBZ             R4, loc_15C45E
15C436:  ADDS            R0, R4, #4
15C438:  DMB.W           ISH
15C43C:  LDREX.W         R1, [R0]
15C440:  SUBS            R2, R1, #1
15C442:  STREX.W         R3, R2, [R0]
15C446:  CMP             R3, #0
15C448:  BNE             loc_15C43C
15C44A:  DMB.W           ISH
15C44E:  CBNZ            R1, loc_15C45E
15C450:  LDR             R0, [R4]
15C452:  LDR             R1, [R0,#8]
15C454:  MOV             R0, R4
15C456:  BLX             R1
15C458:  MOV             R0, R4; this
15C45A:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
15C45E:  LDR             R0, [SP,#0x70+var_2C]
15C460:  CBZ             R0, loc_15C482
15C462:  ADDS            R1, R0, #4
15C464:  DMB.W           ISH
15C468:  LDREX.W         R2, [R1]
15C46C:  SUBS            R3, R2, #1
15C46E:  STREX.W         R6, R3, [R1]
15C472:  CMP             R6, #0
15C474:  BNE             loc_15C468
15C476:  DMB.W           ISH
15C47A:  CBNZ            R2, loc_15C482
15C47C:  LDR             R1, [R0]
15C47E:  LDR             R1, [R1,#8]
15C480:  BLX             R1
15C482:  LDRB.W          R0, [SP,#0x70+var_44]
15C486:  LSLS            R0, R0, #0x1F
15C488:  BEQ             loc_15C490
15C48A:  LDR             R0, [SP,#0x70+var_3C]; void *
15C48C:  BLX             j__ZdlPv; operator delete(void *)
15C490:  ADD             SP, SP, #0x54 ; 'T'
15C492:  POP.W           {R8-R11}
15C496:  POP             {R4-R7,PC}
