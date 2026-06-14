; =========================================================
; Game Engine Function: alGetBufferi
; Address            : 0x247780 - 0x247A5E
; =========================================================

247780:  PUSH            {R4-R7,LR}
247782:  ADD             R7, SP, #0xC
247784:  PUSH.W          {R8-R11}
247788:  SUB             SP, SP, #4
24778A:  MOV             R4, R2
24778C:  MOV             R5, R1
24778E:  MOV             R6, R0
247790:  BLX             j_GetContextRef
247794:  MOV             R10, R0
247796:  CMP.W           R10, #0
24779A:  BEQ             loc_2477E0
24779C:  LDR.W           R0, [R10,#0x88]
2477A0:  MOV             R1, R6
2477A2:  ADDS            R0, #0x40 ; '@'
2477A4:  BLX             j_LookupUIntMapKey
2477A8:  MOV             R9, R0
2477AA:  CMP.W           R9, #0
2477AE:  BEQ             loc_2477E8
2477B0:  CMP             R4, #0
2477B2:  BEQ             loc_247824
2477B4:  MOVW            R0, #0x2001
2477B8:  SUBS            R0, R5, R0
2477BA:  CMP             R0, #9; switch 10 cases
2477BC:  BHI.W           def_2477C0; jumptable 002477C0 default case, cases 4-6
2477C0:  TBH.W           [PC,R0,LSL#1]; switch jump
2477C4:  DCW 0xA; jump table for switch statement
2477C6:  DCW 0x4E
2477C8:  DCW 0x57
2477CA:  DCW 0x64
2477CC:  DCW 0xF2
2477CE:  DCW 0xF2
2477D0:  DCW 0xF2
2477D2:  DCW 0x117
2477D4:  DCW 0x11B
2477D6:  DCW 0x11F
2477D8:  LDR.W           R0, [R9,#4]; jumptable 002477C0 case 0
2477DC:  STR             R0, [R4]
2477DE:  B               loc_2479E2
2477E0:  ADD             SP, SP, #4
2477E2:  POP.W           {R8-R11}
2477E6:  POP             {R4-R7,PC}
2477E8:  LDR             R0, =(TrapALError_ptr - 0x2477EE)
2477EA:  ADD             R0, PC; TrapALError_ptr
2477EC:  LDR             R0, [R0]; TrapALError
2477EE:  LDRB            R0, [R0]
2477F0:  CMP             R0, #0
2477F2:  ITT NE
2477F4:  MOVNE           R0, #5; sig
2477F6:  BLXNE           raise
2477FA:  LDREX.W         R0, [R10,#0x50]
2477FE:  CMP             R0, #0
247800:  BNE.W           loc_2479DA
247804:  ADD.W           R0, R10, #0x50 ; 'P'
247808:  MOVW            R1, #0xA001
24780C:  DMB.W           ISH
247810:  STREX.W         R2, R1, [R0]
247814:  CMP             R2, #0
247816:  BEQ.W           loc_2479DE
24781A:  LDREX.W         R2, [R0]
24781E:  CMP             R2, #0
247820:  BEQ             loc_247810
247822:  B               loc_2479DA
247824:  LDR             R0, =(TrapALError_ptr - 0x24782A)
247826:  ADD             R0, PC; TrapALError_ptr
247828:  LDR             R0, [R0]; TrapALError
24782A:  LDRB            R0, [R0]
24782C:  CMP             R0, #0
24782E:  ITT NE
247830:  MOVNE           R0, #5; sig
247832:  BLXNE           raise
247836:  LDREX.W         R0, [R10,#0x50]
24783A:  CMP             R0, #0
24783C:  BNE.W           loc_2479DA
247840:  ADD.W           R0, R10, #0x50 ; 'P'
247844:  MOVW            R1, #0xA003
247848:  DMB.W           ISH
24784C:  STREX.W         R2, R1, [R0]
247850:  CMP             R2, #0
247852:  BEQ.W           loc_2479DE
247856:  LDREX.W         R2, [R0]
24785A:  CMP             R2, #0
24785C:  BEQ             loc_24784C
24785E:  B               loc_2479DA
247860:  LDR.W           R0, [R9,#0x14]; jumptable 002477C0 case 1
247864:  SUB.W           R0, R0, #0x1400
247868:  CMP             R0, #6
24786A:  BHI.W           loc_247A0A
24786E:  ADR             R1, dword_247A6C
247870:  B               loc_247884
247872:  LDR.W           R0, [R9,#0x10]; jumptable 002477C0 case 2
247876:  SUB.W           R0, R0, #0x1500
24787A:  CMP             R0, #6
24787C:  BHI.W           loc_247A0A
247880:  LDR             R1, =(unk_60A680 - 0x247886)
247882:  ADD             R1, PC; unk_60A680
247884:  LDR.W           R0, [R1,R0,LSL#2]
247888:  STR             R0, [R4]
24788A:  B               loc_2479E2
24788C:  ADD.W           R6, R9, #0x3C ; '<'; jumptable 002477C0 case 3
247890:  ADD.W           R11, R9, #0x30 ; '0'
247894:  STR             R4, [SP,#0x20+var_20]
247896:  MOVS            R1, #1
247898:  DMB.W           ISH
24789C:  LDREX.W         R0, [R6]
2478A0:  STREX.W         R2, R1, [R6]
2478A4:  CMP             R2, #0
2478A6:  BNE             loc_24789C
2478A8:  CMP             R0, #1
2478AA:  DMB.W           ISH
2478AE:  BNE             loc_2478CE
2478B0:  MOVS            R4, #1
2478B2:  BLX             sched_yield
2478B6:  DMB.W           ISH
2478BA:  LDREX.W         R0, [R6]
2478BE:  STREX.W         R1, R4, [R6]
2478C2:  CMP             R1, #0
2478C4:  BNE             loc_2478BA
2478C6:  CMP             R0, #1
2478C8:  DMB.W           ISH
2478CC:  BEQ             loc_2478B2
2478CE:  ADD.W           R4, R9, #0x38 ; '8'
2478D2:  MOVS            R1, #1
2478D4:  DMB.W           ISH
2478D8:  LDREX.W         R0, [R4]
2478DC:  STREX.W         R2, R1, [R4]
2478E0:  CMP             R2, #0
2478E2:  BNE             loc_2478D8
2478E4:  CMP             R0, #1
2478E6:  DMB.W           ISH
2478EA:  BNE             loc_24790A
2478EC:  MOVS            R5, #1
2478EE:  BLX             sched_yield
2478F2:  DMB.W           ISH
2478F6:  LDREX.W         R0, [R4]
2478FA:  STREX.W         R1, R5, [R4]
2478FE:  CMP             R1, #0
247900:  BNE             loc_2478F6
247902:  CMP             R0, #1
247904:  DMB.W           ISH
247908:  BEQ             loc_2478EE
24790A:  DMB.W           ISH
24790E:  LDREX.W         R0, [R11]
247912:  ADDS            R1, R0, #1
247914:  STREX.W         R2, R1, [R11]
247918:  CMP             R2, #0
24791A:  BNE             loc_24790E
24791C:  CMP             R0, #0
24791E:  DMB.W           ISH
247922:  BNE             loc_247962
247924:  ADD.W           R5, R9, #0x40 ; '@'
247928:  MOVS            R1, #1
24792A:  DMB.W           ISH
24792E:  LDREX.W         R0, [R5]
247932:  STREX.W         R2, R1, [R5]
247936:  CMP             R2, #0
247938:  BNE             loc_24792E
24793A:  CMP             R0, #1
24793C:  DMB.W           ISH
247940:  BNE             loc_247962
247942:  MOV.W           R8, #1
247946:  BLX             sched_yield
24794A:  DMB.W           ISH
24794E:  LDREX.W         R0, [R5]
247952:  STREX.W         R1, R8, [R5]
247956:  CMP             R1, #0
247958:  BNE             loc_24794E
24795A:  CMP             R0, #1
24795C:  DMB.W           ISH
247960:  BEQ             loc_247946
247962:  MOVS            R0, #0
247964:  DMB.W           ISH
247968:  LDREX.W         R1, [R4]
24796C:  STREX.W         R1, R0, [R4]
247970:  CMP             R1, #0
247972:  BNE             loc_247968
247974:  DMB.W           ISH
247978:  MOVS            R0, #0
24797A:  DMB.W           ISH
24797E:  LDREX.W         R1, [R6]
247982:  STREX.W         R1, R0, [R6]
247986:  CMP             R1, #0
247988:  BNE             loc_24797E
24798A:  ADD.W           R2, R9, #0xC
24798E:  DMB.W           ISH
247992:  LDM             R2, {R0-R2}
247994:  LDR             R6, [SP,#0x20+var_20]
247996:  SUB.W           R1, R1, #0x1500
24799A:  CMP             R1, #6
24799C:  BHI             loc_247A10
24799E:  LDR             R3, =(unk_60A680 - 0x2479A4)
2479A0:  ADD             R3, PC; unk_60A680
2479A2:  LDR.W           R1, [R3,R1,LSL#2]
2479A6:  B               loc_247A12
2479A8:  LDR             R0, =(TrapALError_ptr - 0x2479AE); jumptable 002477C0 default case, cases 4-6
2479AA:  ADD             R0, PC; TrapALError_ptr
2479AC:  LDR             R0, [R0]; TrapALError
2479AE:  LDRB            R0, [R0]
2479B0:  CMP             R0, #0
2479B2:  ITT NE
2479B4:  MOVNE           R0, #5; sig
2479B6:  BLXNE           raise
2479BA:  LDREX.W         R0, [R10,#0x50]
2479BE:  CBNZ            R0, loc_2479DA
2479C0:  ADD.W           R0, R10, #0x50 ; 'P'
2479C4:  MOVW            R1, #0xA002
2479C8:  DMB.W           ISH
2479CC:  STREX.W         R2, R1, [R0]
2479D0:  CBZ             R2, loc_2479DE
2479D2:  LDREX.W         R2, [R0]
2479D6:  CMP             R2, #0
2479D8:  BEQ             loc_2479CC
2479DA:  CLREX.W
2479DE:  DMB.W           ISH
2479E2:  MOV             R0, R10
2479E4:  ADD             SP, SP, #4
2479E6:  POP.W           {R8-R11}
2479EA:  POP.W           {R4-R7,LR}
2479EE:  B.W             ALCcontext_DecRef
2479F2:  LDR.W           R0, [R9,#8]; jumptable 002477C0 case 7
2479F6:  STR             R0, [R4]
2479F8:  B               loc_2479E2
2479FA:  LDR.W           R0, [R9,#0x20]; jumptable 002477C0 case 8
2479FE:  STR             R0, [R4]
247A00:  B               loc_2479E2
247A02:  LDR.W           R0, [R9,#0xC]; jumptable 002477C0 case 9
247A06:  STR             R0, [R4]
247A08:  B               loc_2479E2
247A0A:  MOVS            R0, #0
247A0C:  STR             R0, [R4]
247A0E:  B               loc_2479E2
247A10:  MOVS            R1, #0
247A12:  SUB.W           R2, R2, #0x1400
247A16:  CMP             R2, #6
247A18:  BHI             loc_247A24
247A1A:  LDR             R3, =(unk_60A580 - 0x247A20)
247A1C:  ADD             R3, PC; unk_60A580
247A1E:  LDR.W           R2, [R3,R2,LSL#2]
247A22:  B               loc_247A26
247A24:  MOVS            R2, #0
247A26:  MULS            R0, R1
247A28:  MULS            R0, R2
247A2A:  STR             R0, [R6]
247A2C:  DMB.W           ISH
247A30:  LDREX.W         R0, [R11]
247A34:  SUBS            R1, R0, #1
247A36:  STREX.W         R2, R1, [R11]
247A3A:  CMP             R2, #0
247A3C:  BNE             loc_247A30
247A3E:  CMP             R0, #1
247A40:  DMB.W           ISH
247A44:  BNE             loc_2479E2
247A46:  ADD.W           R0, R9, #0x40 ; '@'
247A4A:  MOVS            R1, #0
247A4C:  DMB.W           ISH
247A50:  LDREX.W         R2, [R0]
247A54:  STREX.W         R2, R1, [R0]
247A58:  CMP             R2, #0
247A5A:  BNE             loc_247A50
247A5C:  B               loc_2479DE
