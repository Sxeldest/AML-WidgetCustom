; =========================================================
; Game Engine Function: sub_15BEC4
; Address            : 0x15BEC4 - 0x15BF72
; =========================================================

15BEC4:  PUSH            {R4-R7,LR}
15BEC6:  ADD             R7, SP, #0xC
15BEC8:  PUSH.W          {R8}
15BECC:  SUB             SP, SP, #0x10
15BECE:  MOV             R5, R1
15BED0:  LDR             R1, [R1]
15BED2:  MOV             R6, R0
15BED4:  LDRB            R0, [R1,#0x12]
15BED6:  CBZ             R0, loc_15BF16
15BED8:  LDR             R4, [R5,#4]
15BEDA:  MOVS            R0, #0
15BEDC:  STRD.W          R0, R0, [R5]
15BEE0:  CMP             R4, #0
15BEE2:  BEQ             loc_15BF6A
15BEE4:  ADDS            R0, R4, #4
15BEE6:  DMB.W           ISH
15BEEA:  LDREX.W         R1, [R0]
15BEEE:  SUBS            R2, R1, #1
15BEF0:  STREX.W         R3, R2, [R0]
15BEF4:  CMP             R3, #0
15BEF6:  BNE             loc_15BEEA
15BEF8:  DMB.W           ISH
15BEFC:  CBNZ            R1, loc_15BF6A
15BEFE:  LDR             R0, [R4]
15BF00:  LDR             R1, [R0,#8]
15BF02:  MOV             R0, R4
15BF04:  BLX             R1
15BF06:  MOV             R0, R4
15BF08:  ADD             SP, SP, #0x10
15BF0A:  POP.W           {R8}
15BF0E:  POP.W           {R4-R7,LR}
15BF12:  B.W             sub_2242E0
15BF16:  ADD             R0, SP, #0x20+var_1C
15BF18:  BL              sub_15BDD8
15BF1C:  LDR             R1, [R5]
15BF1E:  LDR.W           R8, [SP,#0x20+var_14]
15BF22:  LDRB.W          R4, [SP,#0x20+var_1C]
15BF26:  ADDS            R0, R6, #4
15BF28:  ADDS            R1, #0xC
15BF2A:  BL              sub_15C942
15BF2E:  LDR             R6, [R5,#4]
15BF30:  MOVS            R0, #0
15BF32:  STRD.W          R0, R0, [R5]
15BF36:  CBZ             R6, loc_15BF60
15BF38:  ADDS            R0, R6, #4
15BF3A:  DMB.W           ISH
15BF3E:  LDREX.W         R1, [R0]
15BF42:  SUBS            R2, R1, #1
15BF44:  STREX.W         R3, R2, [R0]
15BF48:  CMP             R3, #0
15BF4A:  BNE             loc_15BF3E
15BF4C:  DMB.W           ISH
15BF50:  CBNZ            R1, loc_15BF60
15BF52:  LDR             R0, [R6]
15BF54:  LDR             R1, [R0,#8]
15BF56:  MOV             R0, R6
15BF58:  BLX             R1
15BF5A:  MOV             R0, R6; this
15BF5C:  BLX             j__ZNSt6__ndk119__shared_weak_count14__release_weakEv; std::__shared_weak_count::__release_weak(void)
15BF60:  LSLS            R0, R4, #0x1F
15BF62:  ITT NE
15BF64:  MOVNE           R0, R8; void *
15BF66:  BLXNE           j__ZdlPv; operator delete(void *)
15BF6A:  ADD             SP, SP, #0x10
15BF6C:  POP.W           {R8}
15BF70:  POP             {R4-R7,PC}
