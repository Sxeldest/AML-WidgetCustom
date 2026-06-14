; =========================================================
; Game Engine Function: _ZN12CEventDamage4FromERKS_
; Address            : 0x3724B8 - 0x37254E
; =========================================================

3724B8:  PUSH            {R4,R5,R7,LR}
3724BA:  ADD             R7, SP, #8
3724BC:  MOV             R5, R1
3724BE:  MOV             R4, R0
3724C0:  LDR             R0, [R5,#0x10]; this
3724C2:  MOV             R1, R4
3724C4:  STR.W           R0, [R1,#0x10]!; CEntity **
3724C8:  CMP             R0, #0
3724CA:  IT NE
3724CC:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3724D0:  LDR             R0, [R5,#0x14]
3724D2:  STR             R0, [R4,#0x14]
3724D4:  LDR             R0, [R5,#0x18]
3724D6:  STR             R0, [R4,#0x18]
3724D8:  LDR             R0, [R5,#0x1C]
3724DA:  STR             R0, [R4,#0x1C]
3724DC:  LDRB.W          R1, [R5,#0x20]
3724E0:  LDRB.W          R0, [R4,#0x21]
3724E4:  STRB.W          R1, [R4,#0x20]
3724E8:  LDRB.W          R1, [R5,#0x21]
3724EC:  BFI.W           R0, R1, #0, #1
3724F0:  STRB.W          R0, [R4,#0x21]
3724F4:  VLDR            D16, [R5,#0x34]
3724F8:  LDR             R1, [R5,#0x3C]
3724FA:  STR             R1, [R4,#0x3C]
3724FC:  VSTR            D16, [R4,#0x34]
372500:  LDR             R1, [R5,#0x24]
372502:  STR             R1, [R4,#0x24]
372504:  LDR             R1, [R5,#0x28]
372506:  STR             R1, [R4,#0x28]
372508:  LDR             R1, [R5,#0x2C]
37250A:  STR             R1, [R4,#0x2C]
37250C:  LDR             R1, [R5,#0x30]
37250E:  STR             R1, [R4,#0x30]
372510:  LDRB.W          R1, [R5,#0x21]
372514:  LSRS            R1, R1, #2
372516:  BFI.W           R0, R1, #2, #1
37251A:  STRB.W          R0, [R4,#0x21]
37251E:  LDRB.W          R1, [R5,#0x21]
372522:  LSRS            R1, R1, #1
372524:  BFI.W           R0, R1, #1, #1
372528:  STRB.W          R0, [R4,#0x21]
37252C:  LDRB.W          R1, [R5,#0x21]
372530:  LSRS            R1, R1, #3
372532:  BFI.W           R0, R1, #3, #1
372536:  STRB.W          R0, [R4,#0x21]
37253A:  LDRB.W          R1, [R5,#0x21]
37253E:  AND.W           R0, R0, #0xEF
372542:  AND.W           R1, R1, #0x10
372546:  ORRS            R0, R1
372548:  STRB.W          R0, [R4,#0x21]
37254C:  POP             {R4,R5,R7,PC}
