; =========================================================
; Game Engine Function: _ZNK23CTaskSimplePickUpEntity5CloneEv
; Address            : 0x54416C - 0x5442B2
; =========================================================

54416C:  PUSH            {R4-R7,LR}
54416E:  ADD             R7, SP, #0xC
544170:  PUSH.W          {R8-R11}
544174:  SUB             SP, SP, #4
544176:  VPUSH           {D8}
54417A:  SUB             SP, SP, #8
54417C:  MOV             R5, R0
54417E:  MOVS            R0, #dword_4C; this
544180:  LDR             R6, [R5,#0x30]
544182:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
544186:  LDRB.W          R11, [R5,#0x19]
54418A:  ADD.W           R8, R5, #0xC
54418E:  LDRB.W          R10, [R5,#0x18]
544192:  MOV             R4, R0
544194:  LDR.W           R9, [R5,#8]
544198:  CMP             R6, #0
54419A:  BEQ             loc_544222
54419C:  LDR             R0, [R5,#0x28]
54419E:  VLDR            S16, [R5,#0x3C]
5441A2:  STR             R0, [SP,#0x30+var_2C]
5441A4:  MOV             R0, R4; this
5441A6:  LDRD.W          R6, R5, [R5,#0x2C]
5441AA:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
5441AE:  LDR             R0, =(_ZTV21CTaskSimpleHoldEntity_ptr - 0x5441BC)
5441B0:  MOVS            R1, #0
5441B2:  MOVS            R2, #0xBF
5441B4:  STRB.W          R10, [R4,#0x18]
5441B8:  ADD             R0, PC; _ZTV21CTaskSimpleHoldEntity_ptr
5441BA:  STRD.W          R1, R1, [R4,#0xC]
5441BE:  STR             R1, [R4,#0x14]
5441C0:  CMP.W           R9, #0
5441C4:  LDR             R0, [R0]; `vtable for'CTaskSimpleHoldEntity ...
5441C6:  STRB.W          R11, [R4,#0x19]
5441CA:  STRD.W          R1, R2, [R4,#0x1C]
5441CE:  MOV.W           R2, #0x100
5441D2:  STR             R1, [R4,#0x24]
5441D4:  ADD.W           R0, R0, #8
5441D8:  STRH            R2, [R4,#0x34]
5441DA:  STRB.W          R1, [R4,#0x36]
5441DE:  STR             R1, [R4,#0x38]
5441E0:  MOV             R1, R4
5441E2:  STR             R0, [R4]
5441E4:  STR.W           R9, [R1,#8]!; CEntity **
5441E8:  VLDR            D16, [R8]
5441EC:  LDR.W           R0, [R8,#8]
5441F0:  STR             R0, [R4,#0x14]
5441F2:  VSTR            D16, [R4,#0xC]
5441F6:  BEQ             loc_54420A
5441F8:  LDR.W           R0, [R9,#0x1C]
5441FC:  ORR.W           R0, R0, #0x400
544200:  STR.W           R0, [R9,#0x1C]
544204:  LDR             R0, [R1]; this
544206:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
54420A:  LDR             R0, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x544212)
54420C:  STR             R6, [R4,#0x2C]
54420E:  ADD             R0, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
544210:  LDR             R1, [SP,#0x30+var_2C]; int
544212:  STR             R1, [R4,#0x28]
544214:  LDR             R0, [R0]; CAnimManager::ms_aAnimBlocks ...
544216:  STR             R5, [R4,#0x30]
544218:  SUBS            R0, R6, R0
54421A:  ASRS            R0, R0, #5; this
54421C:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
544220:  B               loc_54428C
544222:  MOV             R0, R4; this
544224:  VLDR            S16, [R5,#0x3C]
544228:  LDRD.W          R6, R5, [R5,#0x20]
54422C:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
544230:  LDR             R0, =(_ZTV21CTaskSimpleHoldEntity_ptr - 0x544240)
544232:  MOVS            R1, #0
544234:  MOV.W           R2, #0x100
544238:  STRB.W          R10, [R4,#0x18]
54423C:  ADD             R0, PC; _ZTV21CTaskSimpleHoldEntity_ptr
54423E:  STRD.W          R1, R1, [R4,#0xC]
544242:  STR             R1, [R4,#0x14]
544244:  CMP.W           R9, #0
544248:  LDR             R0, [R0]; `vtable for'CTaskSimpleHoldEntity ...
54424A:  STRB.W          R11, [R4,#0x19]
54424E:  STRD.W          R6, R5, [R4,#0x20]
544252:  ADD.W           R0, R0, #8
544256:  STRD.W          R1, R1, [R4,#0x2C]
54425A:  STRH            R2, [R4,#0x34]
54425C:  STRB.W          R1, [R4,#0x36]
544260:  STR             R1, [R4,#0x38]
544262:  MOV             R1, R4
544264:  STR             R0, [R4]
544266:  STR.W           R9, [R1,#8]!; CEntity **
54426A:  VLDR            D16, [R8]
54426E:  LDR.W           R0, [R8,#8]
544272:  STR             R0, [R4,#0x14]
544274:  VSTR            D16, [R4,#0xC]
544278:  BEQ             loc_54428C
54427A:  LDR.W           R0, [R9,#0x1C]
54427E:  ORR.W           R0, R0, #0x400
544282:  STR.W           R0, [R9,#0x1C]
544286:  LDR             R0, [R4,#8]; this
544288:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
54428C:  LDR             R0, =(_ZTV23CTaskSimplePickUpEntity_ptr - 0x544298)
54428E:  MOVS            R1, #0
544290:  VSTR            S16, [R4,#0x3C]
544294:  ADD             R0, PC; _ZTV23CTaskSimplePickUpEntity_ptr
544296:  STRD.W          R1, R1, [R4,#0x40]
54429A:  STR             R1, [R4,#0x48]
54429C:  LDR             R0, [R0]; `vtable for'CTaskSimplePickUpEntity ...
54429E:  ADDS            R0, #8
5442A0:  STR             R0, [R4]
5442A2:  MOV             R0, R4
5442A4:  ADD             SP, SP, #8
5442A6:  VPOP            {D8}
5442AA:  ADD             SP, SP, #4
5442AC:  POP.W           {R8-R11}
5442B0:  POP             {R4-R7,PC}
