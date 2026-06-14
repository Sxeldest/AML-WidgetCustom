; =========================================================
; Game Engine Function: sub_FAB24
; Address            : 0xFAB24 - 0xFAB94
; =========================================================

FAB24:  PUSH            {R4,R5,R7,LR}
FAB26:  ADD             R7, SP, #8
FAB28:  MOV             R5, R0
FAB2A:  LDR             R0, [R0,#8]; this
FAB2C:  CBZ             R0, loc_FAB5C
FAB2E:  BLX             j__ZNSt6__ndk119__shared_weak_count4lockEv; std::__shared_weak_count::lock(void)
FAB32:  CBZ             R0, loc_FAB5C
FAB34:  MOV             R4, R0
FAB36:  LDR             R0, [R5,#4]
FAB38:  MOVS            R5, #0
FAB3A:  CBZ             R0, loc_FAB68
FAB3C:  ADD.W           R1, R0, #8
FAB40:  DMB.W           ISH
FAB44:  LDREXB.W        R2, [R1]
FAB48:  STREXB.W        R3, R5, [R1]
FAB4C:  CMP             R3, #0
FAB4E:  BNE             loc_FAB44
FAB50:  LSLS            R1, R2, #0x1F
FAB52:  DMB.W           ISH
FAB56:  BNE             loc_FAB60
FAB58:  MOVS            R5, #0
FAB5A:  B               loc_FAB68
FAB5C:  MOVS            R5, #0
FAB5E:  B               loc_FAB90
FAB60:  LDR             R1, [R0]
FAB62:  LDR             R1, [R1,#0xC]
FAB64:  BLX             R1
FAB66:  MOVS            R5, #1
FAB68:  ADDS            R0, R4, #4
FAB6A:  DMB.W           ISH
FAB6E:  LDREX.W         R1, [R0]
FAB72:  SUBS            R2, R1, #1
FAB74:  STREX.W         R3, R2, [R0]
FAB78:  CMP             R3, #0
FAB7A:  BNE             loc_FAB6E
FAB7C:  DMB.W           ISH
FAB80:  CBNZ            R1, loc_FAB90
FAB82:  LDR             R0, [R4]
FAB84:  LDR             R1, [R0,#8]
FAB86:  MOV             R0, R4
FAB88:  BLX             R1
FAB8A:  MOV             R0, R4; this
FAB8C:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
FAB90:  MOV             R0, R5
FAB92:  POP             {R4,R5,R7,PC}
