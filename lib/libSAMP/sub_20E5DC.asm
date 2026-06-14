; =========================================================
; Game Engine Function: sub_20E5DC
; Address            : 0x20E5DC - 0x20E614
; =========================================================

20E5DC:  PUSH            {R2-R5,R7,LR}
20E5DE:  ADD             R7, SP, #0x10
20E5E0:  MOV             R5, R0
20E5E2:  MOV             R0, R1; s
20E5E4:  MOV             R4, R1
20E5E6:  BLX             strlen
20E5EA:  LDRB            R2, [R5]
20E5EC:  LDR             R1, [R5,#4]
20E5EE:  LSLS            R3, R2, #0x1F
20E5F0:  IT EQ
20E5F2:  LSREQ           R1, R2, #1
20E5F4:  CMP             R0, R1
20E5F6:  BNE             loc_20E610
20E5F8:  STR             R0, [SP,#0x10+var_10]
20E5FA:  MOV             R0, R5
20E5FC:  MOVS            R1, #0
20E5FE:  MOV.W           R2, #0xFFFFFFFF
20E602:  MOV             R3, R4
20E604:  BLX             j__ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEjjPKcj; std::string::compare(uint,uint,char const*,uint)
20E608:  CLZ.W           R0, R0
20E60C:  LSRS            R0, R0, #5
20E60E:  POP             {R2-R5,R7,PC}
20E610:  MOVS            R0, #0
20E612:  POP             {R2-R5,R7,PC}
