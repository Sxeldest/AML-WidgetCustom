; =========================================================
; Game Engine Function: sub_61494
; Address            : 0x61494 - 0x614F0
; =========================================================

61494:  PUSH            {R7,LR}
61496:  MOV             R7, SP
61498:  CBZ             R0, loc_614B6
6149A:  LDR             R3, =(off_114AD8 - 0x614A0)
6149C:  ADD             R3, PC; off_114AD8
6149E:  LDR             R3, [R3]; dword_1A4434
614A0:  LDR             R3, [R3]
614A2:  CMP             R3, #0
614A4:  IT NE
614A6:  CMPNE           R1, #0
614A8:  BNE             loc_614C8
614AA:  LDR             R3, =(off_11763C - 0x614B0)
614AC:  ADD             R3, PC; off_11763C
614AE:  LDR             R3, [R3]
614B0:  POP.W           {R7,LR}
614B4:  BX              R3
614B6:  LDR             R1, =(aSampOrig - 0x614C0); "SAMP_ORIG" ...
614B8:  MOVS            R0, #6; prio
614BA:  LDR             R2, =(aInvalidThisPoi_0 - 0x614C2); "Invalid _this pointer in CBike_ProcessE"... ...
614BC:  ADD             R1, PC; "SAMP_ORIG"
614BE:  ADD             R2, PC; "Invalid _this pointer in CBike_ProcessE"...
614C0:  BLX             __android_log_print
614C4:  MOVS            R0, #0
614C6:  POP             {R7,PC}
614C8:  LDR             R3, =(byte_117634 - 0x614CE)
614CA:  ADD             R3, PC; byte_117634
614CC:  LDRB            R3, [R3]
614CE:  CMP             R3, #0
614D0:  BEQ             loc_614AA
614D2:  LDRH            R3, [R1,#0x26]
614D4:  SUB.W           R3, R3, #0x264
614D8:  CMN.W           R3, #0xD4
614DC:  BCC             loc_614AA
614DE:  LDR.W           R3, [R0,#0x464]
614E2:  CMP             R3, #0
614E4:  ITT NE
614E6:  LDRNE.W         R3, [R1,#0x464]
614EA:  CMPNE           R3, #0
614EC:  BEQ             loc_614AA
614EE:  B               loc_614C4
