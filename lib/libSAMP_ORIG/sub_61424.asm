; =========================================================
; Game Engine Function: sub_61424
; Address            : 0x61424 - 0x61480
; =========================================================

61424:  PUSH            {R7,LR}
61426:  MOV             R7, SP
61428:  CBZ             R0, loc_61446
6142A:  LDR             R3, =(off_114AD8 - 0x61430)
6142C:  ADD             R3, PC; off_114AD8
6142E:  LDR             R3, [R3]; dword_1A4434
61430:  LDR             R3, [R3]
61432:  CMP             R3, #0
61434:  IT NE
61436:  CMPNE           R1, #0
61438:  BNE             loc_61458
6143A:  LDR             R3, =(off_117638 - 0x61440)
6143C:  ADD             R3, PC; off_117638
6143E:  LDR             R3, [R3]
61440:  POP.W           {R7,LR}
61444:  BX              R3
61446:  LDR             R1, =(aSampOrig - 0x61450); "SAMP_ORIG" ...
61448:  MOVS            R0, #6; prio
6144A:  LDR             R2, =(aInvalidThisPoi - 0x61452); "Invalid _this pointer in CAutoMobile_Pr"... ...
6144C:  ADD             R1, PC; "SAMP_ORIG"
6144E:  ADD             R2, PC; "Invalid _this pointer in CAutoMobile_Pr"...
61450:  BLX             __android_log_print
61454:  MOVS            R0, #0
61456:  POP             {R7,PC}
61458:  LDR             R3, =(byte_117634 - 0x6145E)
6145A:  ADD             R3, PC; byte_117634
6145C:  LDRB            R3, [R3]
6145E:  CMP             R3, #0
61460:  BEQ             loc_6143A
61462:  LDRH            R3, [R1,#0x26]
61464:  SUB.W           R3, R3, #0x264
61468:  CMN.W           R3, #0xD4
6146C:  BCC             loc_6143A
6146E:  LDR.W           R3, [R0,#0x464]
61472:  CMP             R3, #0
61474:  ITT NE
61476:  LDRNE.W         R3, [R1,#0x464]
6147A:  CMPNE           R3, #0
6147C:  BEQ             loc_6143A
6147E:  B               loc_61454
