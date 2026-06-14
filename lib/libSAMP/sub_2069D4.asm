; =========================================================
; Game Engine Function: sub_2069D4
; Address            : 0x2069D4 - 0x206A3A
; =========================================================

2069D4:  PUSH            {R4-R7,LR}
2069D6:  ADD             R7, SP, #0xC
2069D8:  PUSH.W          {R11}
2069DC:  LDRB            R4, [R0]
2069DE:  MOV             R3, R1
2069E0:  LDR             R2, [R0,#4]
2069E2:  ANDS.W          R12, R4, #1
2069E6:  IT EQ
2069E8:  LSREQ           R2, R4, #1
2069EA:  LDRB            R5, [R3]
2069EC:  LDR             R1, [R1,#4]
2069EE:  ANDS.W          R6, R5, #1
2069F2:  IT EQ
2069F4:  LSREQ           R1, R5, #1
2069F6:  CMP             R2, R1
2069F8:  BNE             loc_206A24
2069FA:  LDR             R1, [R3,#8]
2069FC:  CMP             R6, #0
2069FE:  IT EQ
206A00:  ADDEQ           R1, R3, #1
206A02:  CMP.W           R12, #0
206A06:  BNE             loc_206A28
206A08:  ADDS            R3, R0, #1
206A0A:  LSRS            R2, R4, #1
206A0C:  CLZ.W           R0, R2
206A10:  LSRS            R0, R0, #5
206A12:  CBZ             R2, loc_206A34
206A14:  LDRB            R4, [R1]
206A16:  LDRB            R5, [R3]
206A18:  CMP             R5, R4
206A1A:  BNE             loc_206A34
206A1C:  ADDS            R1, #1
206A1E:  ADDS            R3, #1
206A20:  SUBS            R2, #1
206A22:  B               loc_206A0C
206A24:  MOVS            R0, #0
206A26:  B               loc_206A34
206A28:  LDR             R0, [R0,#8]
206A2A:  BLX             j__ZNSt6__ndk111char_traitsIcE7compareEPKcS3_j; std::char_traits<char>::compare(char const*,char const*,uint)
206A2E:  CLZ.W           R0, R0
206A32:  LSRS            R0, R0, #5
206A34:  POP.W           {R11}
206A38:  POP             {R4-R7,PC}
