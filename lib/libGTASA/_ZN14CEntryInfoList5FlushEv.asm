; =========================================================
; Game Engine Function: _ZN14CEntryInfoList5FlushEv
; Address            : 0x3EEEAC - 0x3EEF10
; =========================================================

3EEEAC:  PUSH            {R4,R5,R7,LR}
3EEEAE:  ADD             R7, SP, #8
3EEEB0:  LDR             R1, [R0]
3EEEB2:  CBZ             R1, locret_3EEF0E
3EEEB4:  LDR             R2, =(_ZN6CPools21ms_pEntryInfoNodePoolE_ptr - 0x3EEEC4)
3EEEB6:  MOV             R12, #0xCCCCCCCD
3EEEBE:  MOV             R3, R1
3EEEC0:  ADD             R2, PC; _ZN6CPools21ms_pEntryInfoNodePoolE_ptr
3EEEC2:  LDR.W           LR, [R2]; CPools::ms_pEntryInfoNodePool ...
3EEEC6:  LDR             R2, [R3,#0x10]
3EEEC8:  CMP             R1, R3
3EEECA:  IT EQ
3EEECC:  STREQ           R2, [R0]
3EEECE:  LDR             R1, [R3,#0xC]
3EEED0:  CMP             R1, #0
3EEED2:  ITT NE
3EEED4:  LDRNE           R4, [R3,#0x10]
3EEED6:  STRNE           R4, [R1,#0x10]
3EEED8:  LDR             R1, [R3,#0x10]
3EEEDA:  CMP             R1, #0
3EEEDC:  ITT NE
3EEEDE:  LDRNE           R4, [R3,#0xC]
3EEEE0:  STRNE           R4, [R1,#0xC]
3EEEE2:  LDR.W           R1, [LR]; CPools::ms_pEntryInfoNodePool
3EEEE6:  LDRD.W          R4, R5, [R1]
3EEEEA:  SUBS            R3, R3, R4
3EEEEC:  ASRS            R3, R3, #2
3EEEEE:  MUL.W           R3, R3, R12
3EEEF2:  LDRB            R4, [R5,R3]
3EEEF4:  ORR.W           R4, R4, #0x80
3EEEF8:  STRB            R4, [R5,R3]
3EEEFA:  LDR             R4, [R1,#0xC]
3EEEFC:  CMP             R3, R4
3EEEFE:  IT LT
3EEF00:  STRLT           R3, [R1,#0xC]
3EEF02:  CMP             R2, #0
3EEF04:  IT EQ
3EEF06:  POPEQ           {R4,R5,R7,PC}
3EEF08:  LDR             R1, [R0]
3EEF0A:  MOV             R3, R2
3EEF0C:  B               loc_3EEEC6
3EEF0E:  POP             {R4,R5,R7,PC}
