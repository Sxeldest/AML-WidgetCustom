; =========================================================
; Game Engine Function: sub_F6412
; Address            : 0xF6412 - 0xF64D2
; =========================================================

F6412:  PUSH            {R4-R7,LR}
F6414:  ADD             R7, SP, #0xC
F6416:  PUSH.W          {R8-R11}
F641A:  SUB             SP, SP, #0x14
F641C:  MOV             R9, R0
F641E:  MOVS            R0, #0
F6420:  MOV             R8, R3
F6422:  MOV             R10, R2
F6424:  MOV             R6, R1
F6426:  STR             R0, [SP,#0x30+var_20]
F6428:  STRD.W          R0, R0, [SP,#0x30+var_28]
F642C:  BL              sub_F61A4
F6430:  ADD             R2, SP, #0x30+var_28
F6432:  MOV             R1, R9
F6434:  BL              sub_15EAE0
F6438:  LDRD.W          R4, R11, [SP,#0x30+var_28]
F643C:  CMP             R4, R11
F643E:  BEQ             loc_F64C0
F6440:  LDR             R0, [R4]
F6442:  ADD.W           R5, R0, #0xAC
F6446:  MOV             R0, R5; s
F6448:  BLX             strlen
F644C:  LDRB            R1, [R6]
F644E:  LDR             R2, [R6,#4]
F6450:  LSLS            R3, R1, #0x1F
F6452:  IT EQ
F6454:  LSREQ           R2, R1, #1
F6456:  CMP             R0, R2
F6458:  BNE             loc_F64B8
F645A:  STR             R0, [SP,#0x30+var_30]
F645C:  MOV             R0, R6
F645E:  MOVS            R1, #0
F6460:  MOV.W           R2, #0xFFFFFFFF
F6464:  MOV             R3, R5
F6466:  BLX             j__ZNKSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE7compareEjjPKcj; std::string::compare(uint,uint,char const*,uint)
F646A:  CBNZ            R0, loc_F64B8
F646C:  BL              sub_F61A4
F6470:  LDR             R2, [R4]
F6472:  VLDR            S0, [R10]
F6476:  VLDR            S2, [R10,#4]
F647A:  VLDR            S6, [R2,#0x40]
F647E:  VLDR            S8, [R2,#0x44]
F6482:  VADD.F32        S0, S6, S0
F6486:  VLDR            S4, [R10,#8]
F648A:  VLDR            S10, [R2,#0x48]
F648E:  VADD.F32        S2, S8, S2
F6492:  VMOV            R3, S0
F6496:  VADD.F32        S0, S10, S4
F649A:  MOV             R1, R9
F649C:  VSTR            S2, [SP,#0x30+var_30]
F64A0:  VSTR            S0, [SP,#0x30+var_2C]
F64A4:  BL              sub_15E99C
F64A8:  BL              sub_F61A4
F64AC:  LDR.W           R3, [R8]
F64B0:  LDR             R2, [R4]
F64B2:  MOV             R1, R9
F64B4:  BL              sub_15E8F0
F64B8:  ADDS            R4, #4
F64BA:  CMP             R4, R11
F64BC:  BNE             loc_F6440
F64BE:  LDR             R4, [SP,#0x30+var_28]
F64C0:  CBZ             R4, loc_F64CA
F64C2:  MOV             R0, R4; void *
F64C4:  STR             R4, [SP,#0x30+var_24]
F64C6:  BLX             j__ZdlPv; operator delete(void *)
F64CA:  ADD             SP, SP, #0x14
F64CC:  POP.W           {R8-R11}
F64D0:  POP             {R4-R7,PC}
