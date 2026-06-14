; =========================================================
; Game Engine Function: _ZN12CEventDamageC2EP7CEntityj11eWeaponType14ePedPieceTypeshbb
; Address            : 0x37236C - 0x372400
; =========================================================

37236C:  PUSH            {R4-R7,LR}; Alternative name is 'CEventDamage::CEventDamage(CEntity *, unsigned int, eWeaponType, ePedPieceTypes, unsigned char, bool, bool)'
37236E:  ADD             R7, SP, #0xC
372370:  PUSH.W          {R8,R9,R11}
372374:  MOVW            R5, #0x100
372378:  MOV             R4, R0
37237A:  MOVS            R0, #0
37237C:  MOVT            R5, #0xC8
372380:  LDR.W           R12, =(_ZTV12CEventDamage_ptr - 0x372392)
372384:  CMP             R1, #0
372386:  LDRD.W          R8, LR, [R7,#arg_8]
37238A:  LDRD.W          R6, R9, [R7,#arg_0]
37238E:  ADD             R12, PC; _ZTV12CEventDamage_ptr
372390:  STR             R0, [R4,#4]
372392:  STR             R5, [R4,#8]
372394:  MOVW            R5, #0xFFFF
372398:  STRH            R5, [R4,#0xC]
37239A:  ADD.W           R5, R4, #0x14
37239E:  STM             R5!, {R2,R3,R6}
3723A0:  MOV.W           R2, #0xBF
3723A4:  MOV.W           R3, #0x41000000
3723A8:  STRB.W          R9, [R4,#0x20]
3723AC:  MOV.W           R5, #0x3F800000
3723B0:  LDRB.W          R6, [R4,#0x21]
3723B4:  ADD.W           R9, R4, #0x24 ; '$'
3723B8:  STM.W           R9, {R0,R2,R3,R5}
3723BC:  BIC.W           R2, R6, #0x1F
3723C0:  LDR.W           R3, [R12]; `vtable for'CEventDamage ...
3723C4:  STRD.W          R0, R0, [R4,#0x34]
3723C8:  STR             R0, [R4,#0x3C]
3723CA:  ORR.W           R0, R8, LR,LSL#3
3723CE:  ORR.W           R0, R0, R2
3723D2:  ADD.W           R2, R3, #8
3723D6:  STRB.W          R0, [R4,#0x21]
3723DA:  STR             R2, [R4]
3723DC:  MOV             R2, R4
3723DE:  STR.W           R1, [R2,#0x10]!
3723E2:  BEQ             loc_3723F0
3723E4:  MOV             R0, R1; this
3723E6:  MOV             R1, R2; CEntity **
3723E8:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3723EC:  LDRB.W          R0, [R4,#0x21]
3723F0:  ORR.W           R0, R0, #8
3723F4:  STRB.W          R0, [R4,#0x21]
3723F8:  MOV             R0, R4
3723FA:  POP.W           {R8,R9,R11}
3723FE:  POP             {R4-R7,PC}
