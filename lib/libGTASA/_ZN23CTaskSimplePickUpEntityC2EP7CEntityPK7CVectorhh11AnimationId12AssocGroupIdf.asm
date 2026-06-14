; =========================================================
; Game Engine Function: _ZN23CTaskSimplePickUpEntityC2EP7CEntityPK7CVectorhh11AnimationId12AssocGroupIdf
; Address            : 0x542178 - 0x542218
; =========================================================

542178:  PUSH            {R4-R7,LR}; Alternative name is 'CTaskSimplePickUpEntity::CTaskSimplePickUpEntity(CEntity *, CVector const*, unsigned char, unsigned char, AnimationId, AssocGroupId, float)'
54217A:  ADD             R7, SP, #0xC
54217C:  PUSH.W          {R8}
542180:  VPUSH           {D8}
542184:  MOV             R8, R3
542186:  MOV             R6, R2
542188:  MOV             R5, R1
54218A:  MOV             R4, R0
54218C:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
542190:  LDR.W           R12, =(_ZTV21CTaskSimpleHoldEntity_ptr - 0x5421A2)
542194:  MOVS            R1, #0
542196:  LDR             R0, [R7,#arg_8]
542198:  CMP             R6, #0
54219A:  LDRD.W          R3, R2, [R7,#arg_0]
54219E:  ADD             R12, PC; _ZTV21CTaskSimpleHoldEntity_ptr
5421A0:  STRD.W          R1, R1, [R4,#0x10]
5421A4:  STRB            R3, [R4,#0x19]
5421A6:  STRB.W          R8, [R4,#0x18]
5421AA:  STRD.W          R2, R0, [R4,#0x20]
5421AE:  MOV.W           R2, #0x100
5421B2:  LDR.W           R0, [R12]; `vtable for'CTaskSimpleHoldEntity ...
5421B6:  STRD.W          R1, R1, [R4,#0x2C]
5421BA:  ADD.W           R0, R0, #8
5421BE:  STR             R1, [R4,#0x38]
5421C0:  STRH            R2, [R4,#0x34]
5421C2:  STRB.W          R1, [R4,#0x36]
5421C6:  STR             R0, [R4]
5421C8:  MOV             R0, R4
5421CA:  STR.W           R1, [R0,#0xC]!
5421CE:  MOV             R1, R4
5421D0:  STR.W           R5, [R1,#8]!; CEntity **
5421D4:  VLDR            S16, [R7,#arg_C]
5421D8:  ITTTT NE
5421DA:  VLDRNE          D16, [R6]
5421DE:  LDRNE           R2, [R6,#8]
5421E0:  STRNE           R2, [R0,#8]
5421E2:  VSTRNE          D16, [R0]
5421E6:  CBZ             R5, loc_5421F6
5421E8:  LDR             R0, [R5,#0x1C]
5421EA:  ORR.W           R0, R0, #0x400
5421EE:  STR             R0, [R5,#0x1C]
5421F0:  LDR             R0, [R1]; this
5421F2:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
5421F6:  LDR             R0, =(_ZTV23CTaskSimplePickUpEntity_ptr - 0x542202)
5421F8:  MOVS            R1, #0
5421FA:  VSTR            S16, [R4,#0x3C]
5421FE:  ADD             R0, PC; _ZTV23CTaskSimplePickUpEntity_ptr
542200:  STRD.W          R1, R1, [R4,#0x40]
542204:  STR             R1, [R4,#0x48]
542206:  LDR             R0, [R0]; `vtable for'CTaskSimplePickUpEntity ...
542208:  ADDS            R0, #8
54220A:  STR             R0, [R4]
54220C:  MOV             R0, R4
54220E:  VPOP            {D8}
542212:  POP.W           {R8}
542216:  POP             {R4-R7,PC}
