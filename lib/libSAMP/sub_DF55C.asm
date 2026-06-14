; =========================================================
; Game Engine Function: sub_DF55C
; Address            : 0xDF55C - 0xDF602
; =========================================================

DF55C:  PUSH            {R4-R7,LR}
DF55E:  ADD             R7, SP, #0xC
DF560:  PUSH.W          {R8-R10}
DF564:  SUB.W           SP, SP, #0x228
DF568:  ADD.W           R9, R7, #8
DF56C:  MOV             R10, R0
DF56E:  LDM.W           R9, {R0,R8,R9}
DF572:  LDRB.W          R1, [R9,#0xC]
DF576:  CBZ             R1, loc_DF5D0
DF578:  LDR             R1, =(_ZTVN3fmt2v819basic_memory_bufferIcLj500ENSt6__ndk19allocatorIcEEEE - 0xDF586); `vtable for'fmt::v8::basic_memory_buffer<char,500u,std::allocator<char>> ...
DF57A:  MOV.W           R6, #0x1F4
DF57E:  ADD             R5, SP, #0x240+var_23C
DF580:  STR             R6, [SP,#0x240+var_230]
DF582:  ADD             R1, PC; `vtable for'fmt::v8::basic_memory_buffer<char,500u,std::allocator<char>>
DF584:  ADD.W           R6, R5, #0x10
DF588:  ADDS            R1, #8
DF58A:  MOVS            R4, #0
DF58C:  STR             R6, [SP,#0x240+var_238]
DF58E:  STR             R4, [SP,#0x240+var_234]
DF590:  STR             R1, [SP,#0x240+var_23C]
DF592:  STR             R0, [SP,#0x240+var_240]
DF594:  ADD             R0, SP, #0x240+var_34
DF596:  ADD             R1, SP, #0x240+var_2C
DF598:  BL              sub_DD0CC
DF59C:  LDR             R1, [SP,#0x240+var_30]
DF59E:  ADD             R0, SP, #0x240+var_2C
DF5A0:  MOV             R2, R5
DF5A2:  BL              sub_DCF1C
DF5A6:  MOVS            R0, #0x30 ; '0'
DF5A8:  STRB.W          R0, [SP,#0x240+var_2C]
DF5AC:  ADD             R2, SP, #0x240+var_2C
DF5AE:  MOV             R0, R5
DF5B0:  MOV             R1, R8
DF5B2:  BL              sub_DE834
DF5B6:  LDRD.W          R2, R3, [SP,#0x240+var_238]
DF5BA:  MOV             R0, R9
DF5BC:  MOV             R1, R10
DF5BE:  BL              sub_DDA0C
DF5C2:  MOV             R4, R0
DF5C4:  LDR             R0, [SP,#0x240+var_238]; void *
DF5C6:  CMP             R0, R6
DF5C8:  BEQ             loc_DF5F6
DF5CA:  BLX             j__ZdlPv; operator delete(void *)
DF5CE:  B               loc_DF5F6
DF5D0:  ADD             R5, SP, #0x240+var_23C
DF5D2:  STR             R0, [SP,#0x240+var_240]
DF5D4:  ADD             R0, SP, #0x240+var_2C
DF5D6:  MOV             R1, R5
DF5D8:  BL              sub_DD0CC
DF5DC:  LDR             R1, [SP,#0x240+var_28]
DF5DE:  MOV             R0, R5
DF5E0:  MOV             R2, R10
DF5E2:  BL              sub_DCF1C
DF5E6:  MOVS            R1, #0x30 ; '0'
DF5E8:  ADD             R2, SP, #0x240+var_23C
DF5EA:  STRB.W          R1, [SP,#0x240+var_23C]
DF5EE:  MOV             R1, R8
DF5F0:  BL              sub_DE834
DF5F4:  MOV             R4, R0
DF5F6:  MOV             R0, R4
DF5F8:  ADD.W           SP, SP, #0x228
DF5FC:  POP.W           {R8-R10}
DF600:  POP             {R4-R7,PC}
