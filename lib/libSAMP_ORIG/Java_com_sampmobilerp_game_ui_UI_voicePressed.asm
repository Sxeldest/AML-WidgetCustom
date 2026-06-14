; =========================================================
; Game Engine Function: Java_com_sampmobilerp_game_ui_UI_voicePressed
; Address            : 0x6A500 - 0x6A672
; =========================================================

6A500:  PUSH            {R4-R7,LR}
6A502:  ADD             R7, SP, #0xC
6A504:  PUSH.W          {R11}
6A508:  LDR             R0, =(byte_1A43F0 - 0x6A50E)
6A50A:  ADD             R0, PC; byte_1A43F0
6A50C:  LDRB            R0, [R0]
6A50E:  DMB.W           ISH
6A512:  LDR             R4, =(unk_1A43C0 - 0x6A518)
6A514:  ADD             R4, PC; unk_1A43C0
6A516:  LSLS            R0, R0, #0x1F
6A518:  BEQ             loc_6A612
6A51A:  LDRB.W          R0, [R4,#(word_1A43EC+1 - 0x1A43C0)]
6A51E:  CMP             R0, #0
6A520:  BEQ             loc_6A5E6
6A522:  VMOV.I8         Q8, #0x5A ; 'Z'
6A526:  MOVS            R0, #0x22 ; '"'
6A528:  MOV             R1, R4
6A52A:  LDRB.W          R2, [R4,#(dword_1A43E4 - 0x1A43C0)]
6A52E:  VLD1.8          {D18-D19}, [R1@128],R0
6A532:  MOVS            R5, #0x11
6A534:  VEOR            Q9, Q9, Q8
6A538:  EOR.W           R2, R2, #0x5A ; 'Z'
6A53C:  LDRB.W          R0, [R4,#(dword_1A43E0+3 - 0x1A43C0)]
6A540:  LDRB.W          R3, [R4,#(dword_1A43E4+1 - 0x1A43C0)]
6A544:  EOR.W           R0, R0, #0x5A ; 'Z'
6A548:  STRB.W          R0, [R4,#(dword_1A43E0+3 - 0x1A43C0)]
6A54C:  MOV             R0, R4
6A54E:  LDRB.W          R12, [R4,#(dword_1A43E4+2 - 0x1A43C0)]
6A552:  VST1.8          {D18-D19}, [R0@128]!
6A556:  MOV             R6, R0
6A558:  STRB.W          R2, [R4,#(dword_1A43E4 - 0x1A43C0)]
6A55C:  EOR.W           R2, R3, #0x5A ; 'Z'
6A560:  VLD1.8          {D18-D19}, [R6@128],R5
6A564:  VEOR            Q8, Q9, Q8
6A568:  STRB.W          R2, [R4,#(dword_1A43E4+1 - 0x1A43C0)]
6A56C:  EOR.W           R2, R12, #0x5A ; 'Z'
6A570:  LDRB.W          LR, [R1]
6A574:  STRB.W          R2, [R4,#(dword_1A43E4+2 - 0x1A43C0)]
6A578:  LDRB            R2, [R6]
6A57A:  EOR.W           R5, LR, #0x5A ; 'Z'
6A57E:  LDRB.W          R3, [R4,#(dword_1A43E4+3 - 0x1A43C0)]
6A582:  STRB            R5, [R1]
6A584:  EOR.W           R1, R2, #0x5A ; 'Z'
6A588:  VST1.8          {D16-D17}, [R0@128]!
6A58C:  EOR.W           R2, R3, #0x5A ; 'Z'
6A590:  STRB            R1, [R6]
6A592:  LDRB.W          R1, [R4,#(byte_1A43E8 - 0x1A43C0)]
6A596:  STRB.W          R2, [R4,#(dword_1A43E4+3 - 0x1A43C0)]
6A59A:  LDRB            R2, [R0]
6A59C:  EOR.W           R1, R1, #0x5A ; 'Z'
6A5A0:  STRB.W          R1, [R4,#(byte_1A43E8 - 0x1A43C0)]
6A5A4:  EOR.W           R1, R2, #0x5A ; 'Z'
6A5A8:  STRB            R1, [R0]
6A5AA:  LDRB.W          R0, [R4,#(byte_1A43E9 - 0x1A43C0)]
6A5AE:  EOR.W           R0, R0, #0x5A ; 'Z'
6A5B2:  STRB.W          R0, [R4,#(byte_1A43E9 - 0x1A43C0)]
6A5B6:  LDRB.W          R0, [R4,#(byte_1A43EA - 0x1A43C0)]
6A5BA:  EOR.W           R0, R0, #0x5A ; 'Z'
6A5BE:  STRB.W          R0, [R4,#(byte_1A43EA - 0x1A43C0)]
6A5C2:  LDRB.W          R0, [R4,#(byte_1A43EB - 0x1A43C0)]
6A5C6:  EOR.W           R0, R0, #0x5A ; 'Z'
6A5CA:  STRB.W          R0, [R4,#(byte_1A43EB - 0x1A43C0)]
6A5CE:  LDRB.W          R0, [R4,#(word_1A43EC - 0x1A43C0)]
6A5D2:  EOR.W           R0, R0, #0x5A ; 'Z'
6A5D6:  STRB.W          R0, [R4,#(word_1A43EC - 0x1A43C0)]
6A5DA:  LDRB.W          R0, [R4,#(word_1A43EC+1 - 0x1A43C0)]
6A5DE:  EOR.W           R0, R0, #0x5A ; 'Z'
6A5E2:  STRB.W          R0, [R4,#(word_1A43EC+1 - 0x1A43C0)]
6A5E6:  LDR             R1, =(aSampOrig - 0x6A5F0); "SAMP_ORIG" ...
6A5E8:  MOVS            R0, #4; prio
6A5EA:  LDR             R2, =(unk_1A43C0 - 0x6A5F2)
6A5EC:  ADD             R1, PC; "SAMP_ORIG"
6A5EE:  ADD             R2, PC; unk_1A43C0 ; fmt
6A5F0:  BLX             __android_log_print
6A5F4:  LDR             R0, =(off_114B10 - 0x6A5FA)
6A5F6:  ADD             R0, PC; off_114B10
6A5F8:  LDR             R0, [R0]; dword_1A442C
6A5FA:  LDR             R0, [R0]
6A5FC:  CMP             R0, #0
6A5FE:  ITTTT NE
6A600:  LDRNE.W         R0, [R0,#0x80]
6A604:  LDRBNE          R1, [R0,#1]
6A606:  EORNE.W         R1, R1, #1
6A60A:  STRBNE          R1, [R0,#1]
6A60C:  POP.W           {R11}
6A610:  POP             {R4-R7,PC}
6A612:  LDR             R0, =(byte_1A43F0 - 0x6A618)
6A614:  ADD             R0, PC; byte_1A43F0 ; __guard *
6A616:  BLX             j___cxa_guard_acquire
6A61A:  CMP             R0, #0
6A61C:  BEQ.W           loc_6A51A
6A620:  ADR             R0, dword_6A680
6A622:  MOVW            R1, #0x5A3E
6A626:  VLD1.64         {D16-D17}, [R0@128]
6A62A:  ADR             R0, dword_6A690
6A62C:  MOVW            R3, #0x3F39
6A630:  VLD1.64         {D18-D19}, [R0@128]
6A634:  MOVT            R3, #0x280A
6A638:  LDR             R0, =(sub_6AE28+1 - 0x6A64A)
6A63A:  LDR             R2, =(off_110560 - 0x6A65A)
6A63C:  STRH            R1, [R4,#(word_1A43EC - 0x1A43C0)]
6A63E:  MOV             R1, #0x3F29293F
6A646:  ADD             R0, PC; sub_6AE28 ; lpfunc
6A648:  STRD.W          R3, R1, [R4,#(dword_1A43E4 - 0x1A43C0)]
6A64C:  MOV             R1, R4
6A64E:  VST1.8          {D16-D17}, [R1@128]!
6A652:  MOVW            R3, #0x2C05
6A656:  ADD             R2, PC; off_110560 ; lpdso_handle
6A658:  MOVT            R3, #0x3335
6A65C:  VST1.8          {D18-D19}, [R1@128]!
6A660:  STR             R3, [R1]
6A662:  MOV             R1, R4; obj
6A664:  BLX             __cxa_atexit
6A668:  LDR             R0, =(byte_1A43F0 - 0x6A66E)
6A66A:  ADD             R0, PC; byte_1A43F0 ; __guard *
6A66C:  BLX             j___cxa_guard_release
6A670:  B               loc_6A51A
