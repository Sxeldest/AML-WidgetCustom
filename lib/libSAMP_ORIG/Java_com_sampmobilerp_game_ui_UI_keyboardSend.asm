; =========================================================
; Game Engine Function: Java_com_sampmobilerp_game_ui_UI_keyboardSend
; Address            : 0x6A360 - 0x6A4BA
; =========================================================

6A360:  PUSH            {R4-R7,LR}
6A362:  ADD             R7, SP, #0xC
6A364:  PUSH.W          {R11}
6A368:  LDR             R0, =(byte_1A43B0 - 0x6A36E)
6A36A:  ADD             R0, PC; byte_1A43B0
6A36C:  LDRB            R0, [R0]
6A36E:  DMB.W           ISH
6A372:  LDR             R4, =(unk_1A4380 - 0x6A378)
6A374:  ADD             R4, PC; unk_1A4380
6A376:  LSLS            R0, R0, #0x1F
6A378:  BEQ             loc_6A45C
6A37A:  LDRB.W          R0, [R4,#(word_1A43AC+1 - 0x1A4380)]
6A37E:  CMP             R0, #0
6A380:  BEQ             loc_6A446
6A382:  VMOV.I8         Q8, #0x5A ; 'Z'
6A386:  MOVS            R0, #0x22 ; '"'
6A388:  MOV             R1, R4
6A38A:  LDRB.W          R2, [R4,#(dword_1A43A4 - 0x1A4380)]
6A38E:  VLD1.8          {D18-D19}, [R1@128],R0
6A392:  MOVS            R5, #0x11
6A394:  VEOR            Q9, Q9, Q8
6A398:  EOR.W           R2, R2, #0x5A ; 'Z'
6A39C:  LDRB.W          R0, [R4,#(dword_1A43A0+3 - 0x1A4380)]
6A3A0:  LDRB.W          R3, [R4,#(dword_1A43A4+1 - 0x1A4380)]
6A3A4:  EOR.W           R0, R0, #0x5A ; 'Z'
6A3A8:  STRB.W          R0, [R4,#(dword_1A43A0+3 - 0x1A4380)]
6A3AC:  MOV             R0, R4
6A3AE:  LDRB.W          R12, [R4,#(dword_1A43A4+2 - 0x1A4380)]
6A3B2:  VST1.8          {D18-D19}, [R0@128]!
6A3B6:  MOV             R6, R0
6A3B8:  STRB.W          R2, [R4,#(dword_1A43A4 - 0x1A4380)]
6A3BC:  EOR.W           R2, R3, #0x5A ; 'Z'
6A3C0:  VLD1.8          {D18-D19}, [R6@128],R5
6A3C4:  VEOR            Q8, Q9, Q8
6A3C8:  STRB.W          R2, [R4,#(dword_1A43A4+1 - 0x1A4380)]
6A3CC:  EOR.W           R2, R12, #0x5A ; 'Z'
6A3D0:  LDRB.W          LR, [R1]
6A3D4:  STRB.W          R2, [R4,#(dword_1A43A4+2 - 0x1A4380)]
6A3D8:  LDRB            R2, [R6]
6A3DA:  EOR.W           R5, LR, #0x5A ; 'Z'
6A3DE:  LDRB.W          R3, [R4,#(dword_1A43A4+3 - 0x1A4380)]
6A3E2:  STRB            R5, [R1]
6A3E4:  EOR.W           R1, R2, #0x5A ; 'Z'
6A3E8:  VST1.8          {D16-D17}, [R0@128]!
6A3EC:  EOR.W           R2, R3, #0x5A ; 'Z'
6A3F0:  STRB            R1, [R6]
6A3F2:  LDRB.W          R1, [R4,#(byte_1A43A8 - 0x1A4380)]
6A3F6:  STRB.W          R2, [R4,#(dword_1A43A4+3 - 0x1A4380)]
6A3FA:  LDRB            R2, [R0]
6A3FC:  EOR.W           R1, R1, #0x5A ; 'Z'
6A400:  STRB.W          R1, [R4,#(byte_1A43A8 - 0x1A4380)]
6A404:  EOR.W           R1, R2, #0x5A ; 'Z'
6A408:  STRB            R1, [R0]
6A40A:  LDRB.W          R0, [R4,#(byte_1A43A9 - 0x1A4380)]
6A40E:  EOR.W           R0, R0, #0x5A ; 'Z'
6A412:  STRB.W          R0, [R4,#(byte_1A43A9 - 0x1A4380)]
6A416:  LDRB.W          R0, [R4,#(byte_1A43AA - 0x1A4380)]
6A41A:  EOR.W           R0, R0, #0x5A ; 'Z'
6A41E:  STRB.W          R0, [R4,#(byte_1A43AA - 0x1A4380)]
6A422:  LDRB.W          R0, [R4,#(byte_1A43AB - 0x1A4380)]
6A426:  EOR.W           R0, R0, #0x5A ; 'Z'
6A42A:  STRB.W          R0, [R4,#(byte_1A43AB - 0x1A4380)]
6A42E:  LDRB.W          R0, [R4,#(word_1A43AC - 0x1A4380)]
6A432:  EOR.W           R0, R0, #0x5A ; 'Z'
6A436:  STRB.W          R0, [R4,#(word_1A43AC - 0x1A4380)]
6A43A:  LDRB.W          R0, [R4,#(word_1A43AC+1 - 0x1A4380)]
6A43E:  EOR.W           R0, R0, #0x5A ; 'Z'
6A442:  STRB.W          R0, [R4,#(word_1A43AC+1 - 0x1A4380)]
6A446:  LDR             R1, =(aSampOrig - 0x6A450); "SAMP_ORIG" ...
6A448:  MOVS            R0, #4
6A44A:  LDR             R2, =(unk_1A4380 - 0x6A452)
6A44C:  ADD             R1, PC; "SAMP_ORIG"
6A44E:  ADD             R2, PC; unk_1A4380
6A450:  POP.W           {R11}
6A454:  POP.W           {R4-R7,LR}
6A458:  B.W             sub_10C158
6A45C:  LDR             R0, =(byte_1A43B0 - 0x6A462)
6A45E:  ADD             R0, PC; byte_1A43B0 ; __guard *
6A460:  BLX             j___cxa_guard_acquire
6A464:  CMP             R0, #0
6A466:  BEQ             loc_6A37A
6A468:  ADR             R0, dword_6A4C0
6A46A:  MOVW            R1, #0x5A3E
6A46E:  VLD1.64         {D16-D17}, [R0@128]
6A472:  ADR             R0, dword_6A4D0
6A474:  MOVW            R3, #0x3538
6A478:  VLD1.64         {D18-D19}, [R0@128]
6A47C:  MOVT            R3, #0x283B
6A480:  LDR             R0, =(sub_6AE28+1 - 0x6A492)
6A482:  LDR             R2, =(off_110560 - 0x6A4A2)
6A484:  STRH            R1, [R4,#(word_1A43AC - 0x1A4380)]
6A486:  MOV             R1, #0x343F093E
6A48E:  ADD             R0, PC; sub_6AE28 ; lpfunc
6A490:  STRD.W          R3, R1, [R4,#(dword_1A43A4 - 0x1A4380)]
6A494:  MOV             R1, R4
6A496:  VST1.8          {D16-D17}, [R1@128]!
6A49A:  MOVW            R3, #0x3105
6A49E:  ADD             R2, PC; off_110560 ; lpdso_handle
6A4A0:  MOVT            R3, #0x233F
6A4A4:  VST1.8          {D18-D19}, [R1@128]!
6A4A8:  STR             R3, [R1]
6A4AA:  MOV             R1, R4; obj
6A4AC:  BLX             __cxa_atexit
6A4B0:  LDR             R0, =(byte_1A43B0 - 0x6A4B6)
6A4B2:  ADD             R0, PC; byte_1A43B0 ; __guard *
6A4B4:  BLX             j___cxa_guard_release
6A4B8:  B               loc_6A37A
