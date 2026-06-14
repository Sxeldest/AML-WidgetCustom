; =========================================================
; Game Engine Function: _ZN13CAEMP3Decoder10FillBufferEPvmPi
; Address            : 0x27EE94 - 0x27EF22
; =========================================================

27EE94:  PUSH            {R4-R7,LR}
27EE96:  ADD             R7, SP, #0xC
27EE98:  PUSH.W          {R8-R10}
27EE9C:  SUB             SP, SP, #8
27EE9E:  MOV             R8, R3
27EEA0:  MOV             R6, R2
27EEA2:  MOV             R9, R1
27EEA4:  MOV             R4, R0
27EEA6:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
27EEAA:  MOVS            R5, #0
27EEAC:  CMP             R6, #0
27EEAE:  STR.W           R5, [R8]
27EEB2:  BEQ             loc_27EF00
27EEB4:  ADD.W           R10, SP, #0x20+var_1C
27EEB8:  MOVS            R5, #0
27EEBA:  LDRD.W          R1, R0, [R4,#0x24]
27EEBE:  SUBS            R2, R6, R5
27EEC0:  MOV             R3, R10
27EEC2:  CMP             R1, R2
27EEC4:  IT LT
27EEC6:  MOVLT           R2, R1
27EEC8:  MOV             R1, R9
27EECA:  BLX             j_mpg123_read
27EECE:  ADDS            R0, #0xA
27EED0:  BNE             loc_27EEEC
27EED2:  LDR             R0, [R4,#0xC]; this
27EED4:  MOV.W           R2, #0x4000; n
27EED8:  LDR             R1, [R4,#0x58]; ptr
27EEDA:  BLX             j__ZN13CAEDataStream10FillBufferEPvj; CAEDataStream::FillBuffer(void *,uint)
27EEDE:  MOV             R2, R0
27EEE0:  CBZ             R2, loc_27EEFA
27EEE2:  LDR             R0, [R4,#0x28]
27EEE4:  LDR             R1, [R4,#0x58]
27EEE6:  BLX             j_mpg123_feed
27EEEA:  B               loc_27EEF4
27EEEC:  LDR             R0, [SP,#0x20+var_1C]
27EEEE:  CBZ             R0, loc_27EEFA
27EEF0:  ADD             R9, R0
27EEF2:  ADD             R5, R0
27EEF4:  CMP             R5, R6
27EEF6:  BCC             loc_27EEBA
27EEF8:  B               loc_27EF00
27EEFA:  MOVS            R0, #1
27EEFC:  STR.W           R0, [R8]
27EF00:  LDR             R1, [R4,#0x14]
27EF02:  LSRS            R0, R5, #1
27EF04:  LDR             R2, [R4,#0x34]
27EF06:  MOV.W           R3, #0x3E8
27EF0A:  MULS            R0, R3
27EF0C:  LDR             R6, [R4,#0x20]
27EF0E:  MULS            R1, R2
27EF10:  BLX             __aeabi_uidiv
27EF14:  ADD             R0, R6
27EF16:  STR             R0, [R4,#0x20]
27EF18:  MOV             R0, R5
27EF1A:  ADD             SP, SP, #8
27EF1C:  POP.W           {R8-R10}
27EF20:  POP             {R4-R7,PC}
