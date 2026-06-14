; =========================================================
; Game Engine Function: sub_15A3E8
; Address            : 0x15A3E8 - 0x15A4B6
; =========================================================

15A3E8:  PUSH            {R4-R7,LR}
15A3EA:  ADD             R7, SP, #0xC
15A3EC:  PUSH.W          {R8-R10}
15A3F0:  SUB             SP, SP, #0x10
15A3F2:  MOV             R6, R1
15A3F4:  MOV             R4, R0
15A3F6:  LDRD.W          R0, R1, [R0,#0x28]
15A3FA:  MOV             R5, R3
15A3FC:  ADDS            R1, #1
15A3FE:  MOV             R8, R2
15A400:  ADD             R0, R3
15A402:  STRD.W          R0, R1, [R4,#0x28]
15A406:  CLZ.W           R0, R3
15A40A:  LSRS            R0, R0, #5
15A40C:  STRB            R0, [R4]
15A40E:  ADD             R0, SP, #0x28+var_20; this
15A410:  BLX             j__ZNSt6__ndk16chrono12steady_clock3nowEv; std::chrono::steady_clock::now(void)
15A414:  LDRB            R0, [R4]
15A416:  LDRB            R1, [R4,#0x1E]
15A418:  ORRS            R0, R1
15A41A:  BEQ             loc_15A430
15A41C:  LDR             R2, [R4,#0x30]
15A41E:  LDRD.W          R0, R1, [SP,#0x28+var_20]
15A422:  STRD.W          R0, R1, [R4,#0x10]
15A426:  ADDS            R0, R2, #1
15A428:  STRH            R6, [R4,#0x1C]
15A42A:  STR             R0, [R4,#0x30]
15A42C:  MOVS            R0, #0
15A42E:  B               loc_15A4AE
15A430:  LDRH            R0, [R4,#0x1C]
15A432:  LDR.W           R9, [R7,#arg_0]
15A436:  CBZ             R0, loc_15A47C
15A438:  ADD.W           R10, R0, #1
15A43C:  CMP             R10, R6
15A43E:  BEQ             loc_15A47C
15A440:  ADDS            R0, R4, #4
15A442:  MOV             R1, R9
15A444:  MOVS            R2, #0x14
15A446:  BL              sub_15E194
15A44A:  SUB.W           R0, R6, R10
15A44E:  CMP             R0, #1
15A450:  BLT             loc_15A47C
15A452:  LDRD.W          R12, R2, [SP,#0x28+var_20]
15A456:  LDRD.W          R3, R1, [R4,#0x10]
15A45A:  SUBS.W          R3, R12, R3
15A45E:  SBC.W           R1, R2, R1
15A462:  MOVW            R2, #0xD17F
15A466:  MOV.W           R12, #0
15A46A:  MOVT            R2, #0x8F0
15A46E:  SUBS            R2, R2, R3
15A470:  SBCS.W          R1, R12, R1
15A474:  ITTT GE
15A476:  LDRGE           R1, [R4,#0x24]
15A478:  ADDGE           R0, R1
15A47A:  STRGE           R0, [R4,#0x24]
15A47C:  LDRD.W          R0, R1, [SP,#0x28+var_20]
15A480:  STRD.W          R0, R1, [R4,#0x10]
15A484:  STRH            R6, [R4,#0x1C]
15A486:  MOV             R0, R8
15A488:  MOV             R1, R5
15A48A:  BLX             j_opus_packet_get_nb_frames
15A48E:  MOV             R6, R0
15A490:  RSB.W           R0, R0, R0,LSL#4
15A494:  MOV             R1, R8
15A496:  MOV             R2, R5
15A498:  MOV             R3, R9
15A49A:  LSLS            R0, R0, #6
15A49C:  STR             R0, [SP,#0x28+var_28]
15A49E:  ADDS            R0, R4, #4
15A4A0:  BL              sub_15E0FC
15A4A4:  LDR             R1, [R4,#0x18]
15A4A6:  LDR             R2, [R4,#0x34]
15A4A8:  MULS            R0, R1
15A4AA:  ADDS            R1, R2, R6
15A4AC:  STR             R1, [R4,#0x34]
15A4AE:  ADD             SP, SP, #0x10
15A4B0:  POP.W           {R8-R10}
15A4B4:  POP             {R4-R7,PC}
