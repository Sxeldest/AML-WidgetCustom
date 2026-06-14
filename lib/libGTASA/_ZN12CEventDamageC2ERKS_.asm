; =========================================================
; Game Engine Function: _ZN12CEventDamageC2ERKS_
; Address            : 0x372480 - 0x3724B4
; =========================================================

372480:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CEventDamage::CEventDamage(CEventDamage const&)'
372482:  ADD             R7, SP, #8
372484:  MOV             R4, R0
372486:  LDR             R0, =(_ZTV12CEventDamage_ptr - 0x372492)
372488:  MOVW            R3, #0x100
37248C:  MOVS            R2, #0
37248E:  ADD             R0, PC; _ZTV12CEventDamage_ptr
372490:  MOVT            R3, #0xC8
372494:  STR             R2, [R4,#4]
372496:  LDR             R0, [R0]; `vtable for'CEventDamage ...
372498:  STR             R3, [R4,#8]
37249A:  MOVW            R3, #0xFFFF
37249E:  ADDS            R0, #8
3724A0:  STRH            R3, [R4,#0xC]
3724A2:  STRD.W          R2, R2, [R4,#0x34]
3724A6:  STR             R2, [R4,#0x3C]
3724A8:  STR             R0, [R4]
3724AA:  MOV             R0, R4; this
3724AC:  BLX             j__ZN12CEventDamage4FromERKS_; CEventDamage::From(CEventDamage const&)
3724B0:  MOV             R0, R4
3724B2:  POP             {R4,R6,R7,PC}
