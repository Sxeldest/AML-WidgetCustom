; =========================================================
; Game Engine Function: sub_F6376
; Address            : 0xF6376 - 0xF63FE
; =========================================================

F6376:  PUSH            {R4-R7,LR}
F6378:  ADD             R7, SP, #0xC
F637A:  PUSH.W          {R8,R9,R11}
F637E:  SUB             SP, SP, #0x10
F6380:  MOV             R8, R0
F6382:  MOVS            R0, #0
F6384:  MOV             R4, R1
F6386:  STR             R0, [SP,#0x28+var_1C]
F6388:  STRD.W          R0, R0, [SP,#0x28+var_24]
F638C:  BL              sub_F61A4
F6390:  ADD             R2, SP, #0x28+var_24
F6392:  MOV             R1, R8
F6394:  BL              sub_15EAE0
F6398:  LDRD.W          R6, R9, [SP,#0x28+var_24]
F639C:  CMP             R6, R9
F639E:  BEQ             loc_F63EC
F63A0:  LDR             R0, [R6]
F63A2:  ADD.W           R5, R0, #0xAC
F63A6:  MOV             R0, R5; s
F63A8:  BLX             strlen
F63AC:  LDRB            R1, [R4]
F63AE:  LDR             R2, [R4,#4]
F63B0:  LSLS            R3, R1, #0x1F
F63B2:  IT EQ
F63B4:  LSREQ           R2, R1, #1
F63B6:  CMP             R0, R2
F63B8:  BNE             loc_F63E4
F63BA:  STR             R0, [SP,#0x28+var_28]
F63BC:  MOV             R0, R4
F63BE:  MOVS            R1, #0
F63C0:  MOV.W           R2, #0xFFFFFFFF
F63C4:  MOV             R3, R5
F63C6:  BLX             j__ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEjjPKcj; std::string::compare(uint,uint,char const*,uint)
F63CA:  CBNZ            R0, loc_F63E4
F63CC:  BL              sub_F61A4
F63D0:  LDR             R2, [R6]
F63D2:  MOV             R1, R8
F63D4:  BL              sub_15E950
F63D8:  BL              sub_F61A4
F63DC:  LDR             R2, [R6]
F63DE:  MOV             R1, R8
F63E0:  BL              sub_15EA00
F63E4:  ADDS            R6, #4
F63E6:  CMP             R6, R9
F63E8:  BNE             loc_F63A0
F63EA:  LDR             R6, [SP,#0x28+var_24]
F63EC:  CBZ             R6, loc_F63F6
F63EE:  MOV             R0, R6; void *
F63F0:  STR             R6, [SP,#0x28+var_20]
F63F2:  BLX             j__ZdlPv; operator delete(void *)
F63F6:  ADD             SP, SP, #0x10
F63F8:  POP.W           {R8,R9,R11}
F63FC:  POP             {R4-R7,PC}
