; =========================================================
; Game Engine Function: sub_FC29C
; Address            : 0xFC29C - 0xFC32A
; =========================================================

FC29C:  PUSH            {R4-R7,LR}
FC29E:  ADD             R7, SP, #0xC
FC2A0:  PUSH.W          {R3-R11}
FC2A4:  STR             R2, [SP,#0x30+var_28]
FC2A6:  MOV.W           R11, #0
FC2AA:  STR             R0, [SP,#0x30+var_2C]
FC2AC:  MOV             R10, R3
FC2AE:  LDR             R0, =(__stack_chk_guard_ptr - 0xFC2B6)
FC2B0:  MOV             R4, R1
FC2B2:  ADD             R0, PC; __stack_chk_guard_ptr
FC2B4:  LDR             R0, [R0]; __stack_chk_guard
FC2B6:  LDR             R0, [R0]
FC2B8:  STR             R0, [SP,#0x30+var_20]
FC2BA:  STR.W           R11, [SP,#0x30+endptr]
FC2BE:  LDR             R5, [R1,#8]
FC2C0:  LDRB.W          R8, [R1]
FC2C4:  BLX             __errno
FC2C8:  LDR.W           R9, [R0]
FC2CC:  MOV             R6, R0
FC2CE:  STR.W           R11, [R0]
FC2D2:  MOVS.W          R0, R8,LSL#31
FC2D6:  IT EQ
FC2D8:  ADDEQ           R5, R4, #4
FC2DA:  ADD             R1, SP, #0x30+endptr; endptr
FC2DC:  MOV             R0, R5; nptr
FC2DE:  MOV             R2, R10; base
FC2E0:  BLX             wcstol
FC2E4:  MOV             R4, R0
FC2E6:  LDR             R0, [R6]
FC2E8:  STR.W           R9, [R6]
FC2EC:  CMP             R0, #0x22 ; '"'
FC2EE:  ITT EQ
FC2F0:  LDREQ           R0, [SP,#0x30+var_2C]; int
FC2F2:  BLEQ            sub_FC1CC
FC2F6:  LDR             R0, [SP,#0x30+endptr]
FC2F8:  CMP             R0, R5
FC2FA:  ITT EQ
FC2FC:  LDREQ           R0, [SP,#0x30+var_2C]; int
FC2FE:  BLEQ            sub_FC21C
FC302:  LDR             R1, [SP,#0x30+var_28]
FC304:  CBZ             R1, loc_FC30E
FC306:  LDR             R0, [SP,#0x30+endptr]
FC308:  SUBS            R0, R0, R5
FC30A:  ASRS            R0, R0, #2
FC30C:  STR             R0, [R1]
FC30E:  LDR             R0, [SP,#0x30+var_20]
FC310:  LDR             R1, =(__stack_chk_guard_ptr - 0xFC316)
FC312:  ADD             R1, PC; __stack_chk_guard_ptr
FC314:  LDR             R1, [R1]; __stack_chk_guard
FC316:  LDR             R1, [R1]
FC318:  CMP             R1, R0
FC31A:  ITTTT EQ
FC31C:  MOVEQ           R0, R4
FC31E:  ADDEQ           SP, SP, #0x14
FC320:  POPEQ.W         {R8-R11}
FC324:  POPEQ           {R4-R7,PC}
FC326:  BLX             __stack_chk_fail
