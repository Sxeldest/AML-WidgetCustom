; =========================================================
; Game Engine Function: sub_14F278
; Address            : 0x14F278 - 0x14F334
; =========================================================

14F278:  PUSH            {R4-R7,LR}
14F27A:  ADD             R7, SP, #0xC
14F27C:  PUSH.W          {R8-R11}
14F280:  SUB             SP, SP, #0x14
14F282:  MOV             R9, R0
14F284:  LDR.W           R0, [R0,R1,LSL#2]
14F288:  ADD.W           R6, R9, #0x2400
14F28C:  MOV             R8, R3
14F28E:  MOV             R10, R2
14F290:  MOV             R5, R1
14F292:  MOV.W           R11, #0
14F296:  STRH.W          R1, [R7,#var_22]
14F29A:  CBZ             R0, loc_14F2CC
14F29C:  MOV             R0, R9
14F29E:  MOV             R1, R5
14F2A0:  MOVS            R2, #0
14F2A2:  BL              sub_14F250
14F2A6:  CMP.W           R5, #0x900
14F2AA:  BHI             loc_14F2CC
14F2AC:  LDRD.W          R1, R0, [R6]
14F2B0:  CMP             R1, R0
14F2B2:  BEQ             loc_14F2C2
14F2B4:  LDRH            R2, [R1]
14F2B6:  CMP             R2, R5
14F2B8:  BEQ             loc_14F2C2
14F2BA:  ADDS            R1, #2
14F2BC:  CMP             R1, R0
14F2BE:  BNE             loc_14F2B4
14F2C0:  MOV             R1, R0
14F2C2:  SUBS.W          R11, R1, R0
14F2C6:  IT NE
14F2C8:  MOVNE.W         R11, #1
14F2CC:  MOVW            R0, #0x9E4; unsigned int
14F2D0:  BLX             j__Znwj; operator new(uint)
14F2D4:  MOV             R4, R0
14F2D6:  MOV             R1, R10
14F2D8:  MOV             R2, R8
14F2DA:  BL              sub_107C70
14F2DE:  CMP.W           R11, #0
14F2E2:  STR.W           R4, [R9,R5,LSL#2]
14F2E6:  BEQ             loc_14F2F0
14F2E8:  MOVS            R0, #0
14F2EA:  STRB.W          R0, [R4,#0x9E0]
14F2EE:  B               loc_14F314
14F2F0:  LDRD.W          R1, R0, [R6,#4]
14F2F4:  CMP             R1, R0
14F2F6:  BEQ             loc_14F300
14F2F8:  STRH.W          R5, [R1],#2
14F2FC:  STR             R1, [R6,#4]
14F2FE:  B               loc_14F30C
14F300:  SUB.W           R1, R7, #-var_22
14F304:  MOV             R0, R6
14F306:  BL              sub_14F668
14F30A:  LDR             R1, [R6,#4]
14F30C:  LDR             R0, [R6]
14F30E:  ADD             R2, SP, #0x30+var_20
14F310:  BLX             j__ZNSt6__ndk16__sortIRNS_6__lessIttEEPtEEvT0_S5_T_; std::__sort<std::__less<ushort,ushort> &,ushort *>(ushort *,ushort *,std::__less<ushort,ushort> &)
14F314:  LDRB.W          R0, [R4,#0x9E0]
14F318:  CBZ             R0, loc_14F32C
14F31A:  LDR             R1, =(aUsebox - 0x14F322); "usebox" ...
14F31C:  MOV             R0, R8; s1
14F31E:  ADD             R1, PC; "usebox"
14F320:  BLX             strcasecmp
14F324:  CBNZ            R0, loc_14F32C
14F326:  MOVS            R0, #0
14F328:  STRB.W          R0, [R4,#0x9E0]
14F32C:  ADD             SP, SP, #0x14
14F32E:  POP.W           {R8-R11}
14F332:  POP             {R4-R7,PC}
