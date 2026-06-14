; =========================================================
; Game Engine Function: _ZNK24CTaskSimplePutDownEntity5CloneEv
; Address            : 0x5442DC - 0x54441A
; =========================================================

5442DC:  PUSH            {R4-R7,LR}
5442DE:  ADD             R7, SP, #0xC
5442E0:  PUSH.W          {R8-R11}
5442E4:  SUB             SP, SP, #4
5442E6:  VPUSH           {D8}
5442EA:  SUB             SP, SP, #8
5442EC:  MOV             R5, R0
5442EE:  MOVS            R0, #dword_40; this
5442F0:  LDR             R6, [R5,#0x30]
5442F2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
5442F6:  LDRB.W          R11, [R5,#0x19]
5442FA:  ADD.W           R8, R5, #0xC
5442FE:  LDRB.W          R10, [R5,#0x18]
544302:  MOV             R4, R0
544304:  LDR.W           R9, [R5,#8]
544308:  CMP             R6, #0
54430A:  BEQ             loc_544392
54430C:  LDR             R0, [R5,#0x28]
54430E:  VLDR            S16, [R5,#0x3C]
544312:  STR             R0, [SP,#0x30+var_2C]
544314:  MOV             R0, R4; this
544316:  LDRD.W          R6, R5, [R5,#0x2C]
54431A:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
54431E:  LDR             R0, =(_ZTV21CTaskSimpleHoldEntity_ptr - 0x54432C)
544320:  MOVS            R1, #0
544322:  MOVS            R2, #0xBF
544324:  STRB.W          R10, [R4,#0x18]
544328:  ADD             R0, PC; _ZTV21CTaskSimpleHoldEntity_ptr
54432A:  STRD.W          R1, R1, [R4,#0xC]
54432E:  STR             R1, [R4,#0x14]
544330:  CMP.W           R9, #0
544334:  LDR             R0, [R0]; `vtable for'CTaskSimpleHoldEntity ...
544336:  STRB.W          R11, [R4,#0x19]
54433A:  STRD.W          R1, R2, [R4,#0x1C]
54433E:  MOV.W           R2, #0x100
544342:  STR             R1, [R4,#0x24]
544344:  ADD.W           R0, R0, #8
544348:  STRH            R2, [R4,#0x34]
54434A:  STRB.W          R1, [R4,#0x36]
54434E:  STR             R1, [R4,#0x38]
544350:  MOV             R1, R4
544352:  STR             R0, [R4]
544354:  STR.W           R9, [R1,#8]!; CEntity **
544358:  VLDR            D16, [R8]
54435C:  LDR.W           R0, [R8,#8]
544360:  STR             R0, [R4,#0x14]
544362:  VSTR            D16, [R4,#0xC]
544366:  BEQ             loc_54437A
544368:  LDR.W           R0, [R9,#0x1C]
54436C:  ORR.W           R0, R0, #0x400
544370:  STR.W           R0, [R9,#0x1C]
544374:  LDR             R0, [R1]; this
544376:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
54437A:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x544382)
54437C:  STR             R6, [R4,#0x2C]
54437E:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
544380:  LDR             R1, [SP,#0x30+var_2C]; int
544382:  STR             R1, [R4,#0x28]
544384:  LDR             R0, [R0]; CAnimManager::ms_aAnimBlocks ...
544386:  STR             R5, [R4,#0x30]
544388:  SUBS            R0, R6, R0
54438A:  ASRS            R0, R0, #5; this
54438C:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
544390:  B               loc_5443FC
544392:  MOV             R0, R4; this
544394:  VLDR            S16, [R5,#0x3C]
544398:  LDRD.W          R6, R5, [R5,#0x20]
54439C:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5443A0:  LDR             R0, =(_ZTV21CTaskSimpleHoldEntity_ptr - 0x5443B0)
5443A2:  MOVS            R1, #0
5443A4:  MOV.W           R2, #0x100
5443A8:  STRB.W          R10, [R4,#0x18]
5443AC:  ADD             R0, PC; _ZTV21CTaskSimpleHoldEntity_ptr
5443AE:  STRD.W          R1, R1, [R4,#0xC]
5443B2:  STR             R1, [R4,#0x14]
5443B4:  CMP.W           R9, #0
5443B8:  LDR             R0, [R0]; `vtable for'CTaskSimpleHoldEntity ...
5443BA:  STRB.W          R11, [R4,#0x19]
5443BE:  STRD.W          R6, R5, [R4,#0x20]
5443C2:  ADD.W           R0, R0, #8
5443C6:  STRD.W          R1, R1, [R4,#0x2C]
5443CA:  STRH            R2, [R4,#0x34]
5443CC:  STRB.W          R1, [R4,#0x36]
5443D0:  STR             R1, [R4,#0x38]
5443D2:  MOV             R1, R4
5443D4:  STR             R0, [R4]
5443D6:  STR.W           R9, [R1,#8]!; CEntity **
5443DA:  VLDR            D16, [R8]
5443DE:  LDR.W           R0, [R8,#8]
5443E2:  STR             R0, [R4,#0x14]
5443E4:  VSTR            D16, [R4,#0xC]
5443E8:  BEQ             loc_5443FC
5443EA:  LDR.W           R0, [R9,#0x1C]
5443EE:  ORR.W           R0, R0, #0x400
5443F2:  STR.W           R0, [R9,#0x1C]
5443F6:  LDR             R0, [R4,#8]; this
5443F8:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5443FC:  LDR             R0, =(_ZTV24CTaskSimplePutDownEntity_ptr - 0x544406)
5443FE:  VSTR            S16, [R4,#0x3C]
544402:  ADD             R0, PC; _ZTV24CTaskSimplePutDownEntity_ptr
544404:  LDR             R0, [R0]; `vtable for'CTaskSimplePutDownEntity ...
544406:  ADDS            R0, #8
544408:  STR             R0, [R4]
54440A:  MOV             R0, R4
54440C:  ADD             SP, SP, #8
54440E:  VPOP            {D8}
544412:  ADD             SP, SP, #4
544414:  POP.W           {R8-R11}
544418:  POP             {R4-R7,PC}
