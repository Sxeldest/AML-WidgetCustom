; =========================================================
; Game Engine Function: _ZN21CTaskSimpleHoldEntityC2EP7CEntityPK7CVectorhhPKcS6_i
; Address            : 0x541350 - 0x5413F0
; =========================================================

541350:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimpleHoldEntity::CTaskSimpleHoldEntity(CEntity *, CVector const*, unsigned char, unsigned char, char const*, char const*, int)'
541352:  ADD             R7, SP, #0xC
541354:  PUSH.W          {R8,R9,R11}
541358:  MOV             R8, R3
54135A:  MOV             R6, R2
54135C:  MOV             R5, R1
54135E:  MOV             R4, R0
541360:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
541364:  LDR             R0, =(_ZTV21CTaskSimpleHoldEntity_ptr - 0x541370)
541366:  MOVS            R2, #0
541368:  LDR             R1, [R7,#arg_0]
54136A:  CMP             R6, #0
54136C:  ADD             R0, PC; _ZTV21CTaskSimpleHoldEntity_ptr
54136E:  STRD.W          R2, R2, [R4,#0x10]
541372:  STRB            R1, [R4,#0x19]
541374:  MOV.W           R1, #0xBF
541378:  LDR             R0, [R0]; `vtable for'CTaskSimpleHoldEntity ...
54137A:  STRB.W          R8, [R4,#0x18]
54137E:  STRD.W          R1, R2, [R4,#0x20]
541382:  MOV.W           R1, #0x100
541386:  ADD.W           R0, R0, #8
54138A:  STR             R2, [R4,#0x38]
54138C:  STRH            R1, [R4,#0x34]
54138E:  MOV             R1, R4
541390:  STRB.W          R2, [R4,#0x36]
541394:  STR             R0, [R4]
541396:  MOV             R0, R4
541398:  STR.W           R2, [R0,#0xC]!
54139C:  STR.W           R5, [R1,#8]!; CEntity **
5413A0:  ITTTT NE
5413A2:  VLDRNE          D16, [R6]
5413A6:  LDRNE           R2, [R6,#8]
5413A8:  STRNE           R2, [R0,#8]
5413AA:  VSTRNE          D16, [R0]
5413AE:  LDR             R6, [R7,#arg_C]
5413B0:  LDRD.W          R8, R9, [R7,#arg_4]
5413B4:  CBZ             R5, loc_5413C4
5413B6:  LDR             R0, [R5,#0x1C]
5413B8:  ORR.W           R0, R0, #0x400
5413BC:  STR             R0, [R5,#0x1C]
5413BE:  LDR             R0, [R1]; this
5413C0:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5413C4:  MOV             R0, R9; this
5413C6:  STR             R6, [R4,#0x28]
5413C8:  BLX             j__ZN12CAnimManager17GetAnimationBlockEPKc; CAnimManager::GetAnimationBlock(char const*)
5413CC:  MOV             R1, R0
5413CE:  MOV             R0, R8
5413D0:  STR             R1, [R4,#0x2C]
5413D2:  BLX             j__ZN12CAnimManager12GetAnimationEPKcPK10CAnimBlock; CAnimManager::GetAnimation(char const*,CAnimBlock const*)
5413D6:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x5413DE)
5413D8:  LDR             R2, [R4,#0x2C]
5413DA:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
5413DC:  STR             R0, [R4,#0x30]
5413DE:  LDR             R1, [R1]; int
5413E0:  SUBS            R0, R2, R1
5413E2:  ASRS            R0, R0, #5; this
5413E4:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
5413E8:  MOV             R0, R4
5413EA:  POP.W           {R8,R9,R11}
5413EE:  POP             {R4-R7,PC}
