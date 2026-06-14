; =========================================================
; Game Engine Function: _ZN18CEventKnockOffBikeC2ERKS_
; Address            : 0x375494 - 0x375528
; =========================================================

375494:  PUSH            {R4,R5,R7,LR}
375496:  ADD             R7, SP, #8
375498:  MOV             R4, R0
37549A:  LDR             R0, =(_ZTV18CEventKnockOffBike_ptr - 0x3754A2)
37549C:  MOVS            R2, #0
37549E:  ADD             R0, PC; _ZTV18CEventKnockOffBike_ptr
3754A0:  STRB            R2, [R4,#8]
3754A2:  LDR             R0, [R0]; `vtable for'CEventKnockOffBike ...
3754A4:  ADDS            R0, #8
3754A6:  STRD.W          R0, R2, [R4]
3754AA:  LDR             R0, [R1,#0x38]; this
3754AC:  STR             R0, [R4,#0x38]
3754AE:  VLDR            D16, [R1,#0xC]
3754B2:  CMP             R0, #0
3754B4:  LDR             R2, [R1,#0x14]
3754B6:  STR             R2, [R4,#0x14]
3754B8:  VSTR            D16, [R4,#0xC]
3754BC:  VLDR            D16, [R1,#0x18]
3754C0:  LDR             R2, [R1,#0x20]
3754C2:  STR             R2, [R4,#0x20]
3754C4:  VSTR            D16, [R4,#0x18]
3754C8:  LDR             R2, [R1,#0x24]
3754CA:  STR             R2, [R4,#0x24]
3754CC:  LDR             R2, [R1,#0x28]
3754CE:  STR             R2, [R4,#0x28]
3754D0:  LDRB.W          R2, [R1,#0x36]
3754D4:  STRB.W          R2, [R4,#0x36]
3754D8:  LDRB.W          R2, [R1,#0x34]
3754DC:  STRB.W          R2, [R4,#0x34]
3754E0:  LDR             R2, [R1,#0x2C]
3754E2:  STR             R2, [R4,#0x2C]
3754E4:  LDR             R2, [R1,#0x30]
3754E6:  STR             R2, [R4,#0x30]
3754E8:  LDRB.W          R3, [R1,#0x35]
3754EC:  LDRB.W          R5, [R4,#0x35]
3754F0:  AND.W           R3, R3, #1
3754F4:  AND.W           R5, R5, #0xFE
3754F8:  ORR.W           R3, R3, R5
3754FC:  STRB.W          R3, [R4,#0x35]
375500:  ADD.W           R5, R4, #0x30 ; '0'
375504:  LDRB.W          R1, [R1,#0x37]
375508:  STRB.W          R1, [R4,#0x37]
37550C:  BEQ             loc_375518
37550E:  ADD.W           R1, R4, #0x38 ; '8'; CEntity **
375512:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
375516:  LDR             R2, [R5]
375518:  CMP             R2, #0
37551A:  ITTT NE
37551C:  MOVNE           R0, R2; this
37551E:  MOVNE           R1, R5; CEntity **
375520:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
375524:  MOV             R0, R4
375526:  POP             {R4,R5,R7,PC}
