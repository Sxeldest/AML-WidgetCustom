; =========================================================
; Game Engine Function: sub_EE308
; Address            : 0xEE308 - 0xEE40C
; =========================================================

EE308:  PUSH            {R4-R7,LR}
EE30A:  ADD             R7, SP, #0xC
EE30C:  PUSH.W          {R8}
EE310:  MOV             R4, R1
EE312:  BLX             j__ZNSt6__ndk115basic_streambufIcNS_11char_traitsIcEEEC2ERKS3_; std::streambuf::basic_streambuf(std::streambuf const&)
EE316:  LDR             R1, =(_ZTVNSt6__ndk113basic_filebufIcNS_11char_traitsIcEEEE_ptr - 0xEE31C)
EE318:  ADD             R1, PC; _ZTVNSt6__ndk113basic_filebufIcNS_11char_traitsIcEEEE_ptr
EE31A:  LDR             R2, [R1]; `vtable for'std::filebuf ...
EE31C:  LDR             R1, [R4,#0x20]
EE31E:  ADDS            R2, #8
EE320:  STR             R2, [R0]
EE322:  ADD.W           R2, R4, #0x2C ; ','
EE326:  CMP             R1, R2
EE328:  BEQ             loc_EE332
EE32A:  LDRD.W          R3, R2, [R4,#0x24]
EE32E:  STR             R1, [R0,#0x20]
EE330:  B               loc_EE346
EE332:  ADD.W           R1, R0, #0x2C ; ','
EE336:  STR             R1, [R0,#0x20]
EE338:  LDRD.W          R3, R2, [R4,#0x24]
EE33C:  LDR             R5, [R4,#0x20]
EE33E:  SUBS            R2, R2, R5
EE340:  SUBS            R3, R3, R5
EE342:  ADD             R2, R1
EE344:  ADD             R3, R1
EE346:  STRD.W          R3, R2, [R0,#0x24]
EE34A:  MOV             R8, R4
EE34C:  LDRD.W          R12, R3, [R4,#0x38]
EE350:  LDR.W           R2, [R8,#0x34]!
EE354:  LDRD.W          R5, R6, [R4,#0x40]
EE358:  STRD.W          R2, R12, [R0,#0x34]
EE35C:  ADD.W           R2, R0, #0x3C ; '<'
EE360:  STM             R2!, {R3,R5,R6}
EE362:  MOV             R3, R4
EE364:  LDR.W           R2, [R3,#0x48]!
EE368:  STR             R2, [R0,#0x48]
EE36A:  LDR             R2, [R3,#4]
EE36C:  STR             R2, [R0,#0x4C]
EE36E:  LDR             R6, [R3,#8]
EE370:  LDR.W           R2, [R3,#-0x34]
EE374:  STR             R6, [R0,#0x50]
EE376:  LDRB.W          LR, [R3,#0x10]
EE37A:  LDRH.W          R6, [R3,#0x11]
EE37E:  LDR             R5, [R3,#0xC]
EE380:  STR             R5, [R0,#0x54]
EE382:  STRB.W          LR, [R0,#0x58]
EE386:  STRH.W          R6, [R0,#0x59]
EE38A:  CBZ             R2, loc_EE3CE
EE38C:  LDR             R5, [R4,#0x38]
EE38E:  LDR             R6, [R4,#0x1C]
EE390:  CMP             R2, R5
EE392:  IT EQ
EE394:  MOVEQ           R1, R12
EE396:  SUBS            R2, R6, R2
EE398:  STRD.W          R1, R1, [R0,#0x14]
EE39C:  ADD             R2, R1
EE39E:  STR             R2, [R0,#0x1C]
EE3A0:  LDRD.W          R2, R6, [R4,#0x14]
EE3A4:  SUBS            R2, R6, R2
EE3A6:  ADD             R1, R2
EE3A8:  STR             R1, [R0,#0x18]
EE3AA:  VMOV.I32        Q8, #0
EE3AE:  ADD.W           R2, R4, #8
EE3B2:  MOVS            R1, #0
EE3B4:  VST1.32         {D16-D17}, [R2]!
EE3B8:  VST1.32         {D16-D17}, [R3]!
EE3BC:  VST1.32         {D16-D17}, [R2]!
EE3C0:  VST1.32         {D16-D17}, [R8]
EE3C4:  STRH            R1, [R3]
EE3C6:  STR             R1, [R2]
EE3C8:  POP.W           {R8}
EE3CC:  POP             {R4-R7,PC}
EE3CE:  LDR.W           LR, [R4,#8]
EE3D2:  CMP.W           LR, #0
EE3D6:  BEQ             loc_EE3AA
EE3D8:  LDR             R2, [R4,#0xC]
EE3DA:  LDR             R5, [R4,#0x38]
EE3DC:  SUB.W           R2, R2, LR
EE3E0:  CMP             LR, R5
EE3E2:  BEQ             loc_EE3F8
EE3E4:  LDR             R6, [R4,#0x10]
EE3E6:  ADD.W           R12, R0, #8
EE3EA:  ADD             R2, R1
EE3EC:  SUB.W           R6, R6, LR
EE3F0:  ADD             R6, R1
EE3F2:  STM.W           R12, {R1,R2,R6}
EE3F6:  B               loc_EE3AA
EE3F8:  ADD.W           R1, R12, R2
EE3FC:  LDR             R2, [R4,#0x10]
EE3FE:  SUB.W           R2, R2, LR
EE402:  STRD.W          R12, R1, [R0,#8]
EE406:  ADD             R2, R12
EE408:  STR             R2, [R0,#0x10]
EE40A:  B               loc_EE3AA
