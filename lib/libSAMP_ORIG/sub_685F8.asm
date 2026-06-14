; =========================================================
; Game Engine Function: sub_685F8
; Address            : 0x685F8 - 0x6868C
; =========================================================

685F8:  PUSH            {R4-R7,LR}
685FA:  ADD             R7, SP, #0xC
685FC:  PUSH.W          {R8-R10}
68600:  SUB             SP, SP, #8
68602:  MOV             R9, R0
68604:  LDR             R0, =(off_114AA8 - 0x68610)
68606:  MOV             R8, R1
68608:  MOVW            R1, #0xAC8D
6860C:  ADD             R0, PC; off_114AA8
6860E:  MOVT            R1, #0x1E
68612:  LDR             R5, [R0]; dword_1A4404
68614:  LDR             R0, [R5]
68616:  ADD             R1, R0
68618:  MOV             R0, R9
6861A:  BLX             R1
6861C:  CBZ             R0, loc_6864E
6861E:  MOV             R4, R0
68620:  LDR             R0, [R5]
68622:  MOV             R10, #0x1E9BC9
6862A:  ADD.W           R1, R0, R10
6862E:  MOV             R0, R4
68630:  BLX             R1
68632:  LDR             R0, [R5]
68634:  ADD             R0, R10
68636:  ADD.W           R1, R0, #0x11C
6863A:  MOV             R0, R8
6863C:  BLX             R1
6863E:  MOV             R6, R0
68640:  CBZ             R0, loc_68662
68642:  MOV.W           R0, #0x1CE0
68646:  LDR             R1, [R6,R0]
68648:  ADDS            R1, #1
6864A:  STR             R1, [R6,R0]
6864C:  B               loc_68676
6864E:  LDR             R1, =(aSampOrig - 0x6865A); "SAMP_ORIG" ...
68650:  MOVS            R0, #4; prio
68652:  LDR             R2, =(aTexturedatabas - 0x6865C); "TextureDatabase %s not found!" ...
68654:  MOV             R3, R9
68656:  ADD             R1, PC; "SAMP_ORIG"
68658:  ADD             R2, PC; "TextureDatabase %s not found!"
6865A:  BLX             __android_log_print
6865E:  MOVS            R6, #0
68660:  B               loc_68682
68662:  LDR             R1, =(aSampOrig - 0x6866E); "SAMP_ORIG" ...
68664:  MOVS            R0, #4; prio
68666:  LDR             R2, =(aTextureSNotFou - 0x68674); "Texture (%s) not found in database (%s)" ...
68668:  MOV             R3, R8
6866A:  ADD             R1, PC; "SAMP_ORIG"
6866C:  STR.W           R9, [SP,#0x20+var_20]
68670:  ADD             R2, PC; "Texture (%s) not found in database (%s)"
68672:  BLX             __android_log_print
68676:  LDR             R0, [R5]
68678:  ADD             R0, R10
6867A:  ADD.W           R1, R0, #0xB8
6867E:  MOV             R0, R4
68680:  BLX             R1
68682:  MOV             R0, R6
68684:  ADD             SP, SP, #8
68686:  POP.W           {R8-R10}
6868A:  POP             {R4-R7,PC}
