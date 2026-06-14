; =========================================================
; Game Engine Function: _ZN16CPedAtmAttractorD0Ev
; Address            : 0x4AC3B0 - 0x4AC42E
; =========================================================

4AC3B0:  PUSH            {R4,R5,R7,LR}
4AC3B2:  ADD             R7, SP, #8
4AC3B4:  MOV             R4, R0
4AC3B6:  LDR             R0, =(_ZTV13CPedAttractor_ptr - 0x4AC3BE)
4AC3B8:  MOV             R1, R4
4AC3BA:  ADD             R0, PC; _ZTV13CPedAttractor_ptr
4AC3BC:  LDR             R2, [R0]; `vtable for'CPedAttractor ...
4AC3BE:  LDR.W           R0, [R1,#8]!; CEntity **
4AC3C2:  ADDS            R2, #8
4AC3C4:  STR             R2, [R4]
4AC3C6:  CMP             R0, #0
4AC3C8:  IT NE
4AC3CA:  BLXNE           j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
4AC3CE:  LDR             R0, [R4,#0x2C]; p
4AC3D0:  MOVS            R5, #0
4AC3D2:  STR             R5, [R4,#0x28]
4AC3D4:  CBZ             R0, loc_4AC3DC
4AC3D6:  BLX             free
4AC3DA:  STR             R5, [R4,#0x2C]
4AC3DC:  LDR             R0, [R4,#0x20]; p
4AC3DE:  STR             R5, [R4,#0x1C]
4AC3E0:  CMP             R0, #0
4AC3E2:  STR             R5, [R4,#0x24]
4AC3E4:  BEQ             loc_4AC3EE
4AC3E6:  BLX             free
4AC3EA:  MOVS            R0, #0
4AC3EC:  STR             R0, [R4,#0x20]
4AC3EE:  LDR             R0, [R4,#0x14]; p
4AC3F0:  MOVS            R5, #0
4AC3F2:  STR             R5, [R4,#0x10]
4AC3F4:  CMP             R0, #0
4AC3F6:  STR             R5, [R4,#0x18]
4AC3F8:  BEQ             loc_4AC400
4AC3FA:  BLX             free
4AC3FE:  STR             R5, [R4,#0x14]
4AC400:  LDR             R0, =(_ZN6CPools20ms_pPedAttractorPoolE_ptr - 0x4AC410)
4AC402:  MOVW            R3, #0xD8F3
4AC406:  STR             R5, [R4,#0xC]
4AC408:  MOVT            R3, #0xA08A
4AC40C:  ADD             R0, PC; _ZN6CPools20ms_pPedAttractorPoolE_ptr
4AC40E:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool ...
4AC410:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool
4AC412:  LDRD.W          R1, R2, [R0]
4AC416:  SUBS            R1, R4, R1
4AC418:  ASRS            R1, R1, #2
4AC41A:  MULS            R1, R3
4AC41C:  LDRB            R3, [R2,R1]
4AC41E:  ORR.W           R3, R3, #0x80
4AC422:  STRB            R3, [R2,R1]
4AC424:  LDR             R2, [R0,#0xC]
4AC426:  CMP             R1, R2
4AC428:  IT LT
4AC42A:  STRLT           R1, [R0,#0xC]
4AC42C:  POP             {R4,R5,R7,PC}
