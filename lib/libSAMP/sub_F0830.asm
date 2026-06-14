; =========================================================
; Game Engine Function: sub_F0830
; Address            : 0xF0830 - 0xF0A74
; =========================================================

F0830:  PUSH            {R4-R7,LR}
F0832:  ADD             R7, SP, #0xC
F0834:  PUSH.W          {R8-R11}
F0838:  SUB             SP, SP, #0x14
F083A:  LDR             R5, =(byte_23DF2C - 0xF0840)
F083C:  ADD             R5, PC; byte_23DF2C
F083E:  LDRB            R0, [R5]
F0840:  LDR             R6, =(byte_23DF19 - 0xF0848)
F0842:  CMP             R0, #0
F0844:  ADD             R6, PC; byte_23DF19
F0846:  BNE.W           loc_F09AA
F084A:  MOVS            R0, #0x14; unsigned int
F084C:  BLX             j__Znwj; operator new(uint)
F0850:  MOV             R4, R0
F0852:  BL              sub_107348
F0856:  LDR             R0, =(dword_23DEFC - 0xF085C)
F0858:  ADD             R0, PC; dword_23DEFC
F085A:  STR             R4, [R0]
F085C:  MOVS            R0, #8; unsigned int
F085E:  BLX             j__Znwj; operator new(uint)
F0862:  MOV             R4, R0
F0864:  BL              sub_10137C
F0868:  LDR             R0, =(dword_23DF00 - 0xF086E)
F086A:  ADD             R0, PC; dword_23DF00
F086C:  STR             R4, [R0]
F086E:  MOVS            R0, #1; unsigned int
F0870:  BLX             j__Znwj; operator new(uint)
F0874:  MOV             R4, R0
F0876:  BL              sub_E301C
F087A:  LDR             R0, =(dword_23DF04 - 0xF0880)
F087C:  ADD             R0, PC; dword_23DF04
F087E:  STR             R4, [R0]
F0880:  MOV             R0, R4
F0882:  BL              sub_E3024
F0886:  MOVS            R0, #0x38 ; '8'; unsigned int
F0888:  BLX             j__Znwj; operator new(uint)
F088C:  MOV             R4, R0
F088E:  BL              sub_147D7C
F0892:  LDR             R0, =(dword_23DF0C - 0xF089C)
F0894:  MOV             R10, R6
F0896:  MOV             R9, R5
F0898:  ADD             R0, PC; dword_23DF0C
F089A:  STR             R4, [R0]
F089C:  MOVW            R0, #0x8D30; unsigned int
F08A0:  BLX             j__Znwj; operator new(uint)
F08A4:  MOV             R4, R0
F08A6:  BL              sub_E31FC
F08AA:  LDR             R6, =(dword_23DEEC - 0xF08B0)
F08AC:  ADD             R6, PC; dword_23DEEC
F08AE:  LDR             R0, [R6]
F08B0:  LDR             R1, =(dword_23DF08 - 0xF08B8)
F08B2:  LDR             R5, [R0,#0x5C]
F08B4:  ADD             R1, PC; dword_23DF08
F08B6:  STR             R4, [R1]
F08B8:  LDRB.W          R2, [R5,#0x50]
F08BC:  CBZ             R2, loc_F08CA
F08BE:  LDR             R0, [R5]
F08C0:  MOVS            R1, #0
F08C2:  LDR             R2, [R0,#0x24]
F08C4:  MOV             R0, R5
F08C6:  BLX             R2
F08C8:  LDR             R0, [R6]
F08CA:  LDR             R4, [R0,#0x60]
F08CC:  MOVS            R1, #0
F08CE:  STRB.W          R1, [R5,#0x50]
F08D2:  LDRB.W          R1, [R4,#0x50]
F08D6:  CMP             R1, #1
F08D8:  BEQ             loc_F08E6
F08DA:  LDR             R0, [R4]
F08DC:  MOVS            R1, #1
F08DE:  LDR             R2, [R0,#0x24]
F08E0:  MOV             R0, R4
F08E2:  BLX             R2
F08E4:  LDR             R0, [R6]
F08E6:  LDR.W           R5, [R0,#0x84]
F08EA:  MOV.W           R8, #1
F08EE:  STRB.W          R8, [R4,#0x50]
F08F2:  LDRB.W          R0, [R5,#0x50]
F08F6:  CMP             R0, #1
F08F8:  BEQ             loc_F0904
F08FA:  LDR             R0, [R5]
F08FC:  MOVS            R1, #1
F08FE:  LDR             R2, [R0,#0x24]
F0900:  MOV             R0, R5
F0902:  BLX             R2
F0904:  LDR             R0, =(dword_23DF1C - 0xF0912)
F0906:  MOV             R1, #0xFFFFFFFB
F090A:  STRB.W          R8, [R5,#0x50]
F090E:  ADD             R0, PC; dword_23DF1C
F0910:  LDR             R0, [R0]
F0912:  TST             R0, R1
F0914:  BEQ             loc_F091C
F0916:  LDR             R0, [R6]
F0918:  LDR             R0, [R0,#0x6C]
F091A:  B               loc_F0932
F091C:  LDR             R0, =(off_2349A8 - 0xF0922)
F091E:  ADD             R0, PC; off_2349A8
F0920:  LDR             R0, [R0]; dword_381BF4
F0922:  LDR             R0, [R0]
F0924:  LDRB.W          R0, [R0,#0x84]
F0928:  CMP             R0, #0
F092A:  BEQ             loc_F0916
F092C:  LDR             R0, [R6]
F092E:  LDR.W           R0, [R0,#0x80]
F0932:  MOV             R6, R0
F0934:  LDRB.W          R1, [R6,#0x50]!
F0938:  CMP             R1, #1
F093A:  BEQ             loc_F0944
F093C:  LDR             R1, [R0]
F093E:  LDR             R2, [R1,#0x24]
F0940:  MOVS            R1, #1
F0942:  BLX             R2
F0944:  LDR             R5, =(dword_23DEF0 - 0xF094E)
F0946:  MOVS            R4, #1
F0948:  STRB            R4, [R6]
F094A:  ADD             R5, PC; dword_23DEF0
F094C:  LDR             R0, [R5]
F094E:  BL              sub_F93F8
F0952:  LDR             R0, [R5]
F0954:  BL              sub_F9444
F0958:  LDR             R0, [R5]
F095A:  MOVS            R1, #0
F095C:  BL              sub_F9474
F0960:  LDRB.W          R0, [R10]
F0964:  MOV             R6, R10
F0966:  CBZ             R0, loc_F09A6
F0968:  LDR             R0, [R5]
F096A:  LDR             R0, [R0,#4]
F096C:  BL              sub_F8708
F0970:  LDR             R0, [R5]
F0972:  LDR             R0, [R0,#4]
F0974:  BL              sub_F85F0
F0978:  LDR             R0, [R5]
F097A:  MOVS            R1, #1
F097C:  BL              sub_F97A8
F0980:  LDR             R0, [R5]
F0982:  MOVS            R1, #0
F0984:  BL              sub_F9478
F0988:  LDR             R0, [R5]
F098A:  BL              sub_E35A0
F098E:  LDR             R1, [R0]
F0990:  MOVS            R3, #0x42780000
F0996:  LDR             R6, [R1,#0x10]
F0998:  MOV             R1, #0xC4BB8000
F09A0:  MOV             R2, R1
F09A2:  BLX             R6
F09A4:  MOV             R6, R10
F09A6:  STRB.W          R4, [R9]
F09AA:  LDR             R2, =(byte_23DF1A - 0xF09B2)
F09AC:  LDRB            R0, [R6]
F09AE:  ADD             R2, PC; byte_23DF1A
F09B0:  LDRB            R1, [R2]
F09B2:  ORRS            R0, R1
F09B4:  BNE             loc_F0A6C
F09B6:  MOV.W           R0, #0x3B8; unsigned int
F09BA:  STR             R2, [SP,#0x30+var_20]
F09BC:  BLX             j__Znwj; operator new(uint)
F09C0:  MOV             R4, R0
F09C2:  BL              sub_E4EF8
F09C6:  LDRB            R1, [R0]
F09C8:  LDR.W           R9, [R0,#8]
F09CC:  LSLS            R1, R1, #0x1F
F09CE:  IT EQ
F09D0:  ADDEQ.W         R9, R0, #1
F09D4:  BL              sub_E4F04
F09D8:  MOV             R8, R0
F09DA:  BL              sub_E4F1C
F09DE:  LDR             R5, [R0,#8]
F09E0:  MOV             R6, R0
F09E2:  LDRB.W          R10, [R0]
F09E6:  BL              sub_E4F10
F09EA:  LDRB            R1, [R0]
F09EC:  LDR             R2, [R0,#8]
F09EE:  LSLS            R1, R1, #0x1F
F09F0:  IT EQ
F09F2:  ADDEQ           R2, R0, #1
F09F4:  MOVS.W          R0, R10,LSL#31
F09F8:  STR             R2, [SP,#0x30+var_30]
F09FA:  IT EQ
F09FC:  ADDEQ           R5, R6, #1
F09FE:  MOV             R0, R4
F0A00:  MOV             R1, R9
F0A02:  MOV             R2, R8
F0A04:  MOV             R3, R5
F0A06:  BL              sub_141948
F0A0A:  LDR             R0, =(dword_23DEF4 - 0xF0A10)
F0A0C:  ADD             R0, PC; dword_23DEF4
F0A0E:  STR             R4, [R0]
F0A10:  BL              sub_E4EF8
F0A14:  MOV             R5, R0
F0A16:  LDR.W           R10, [R0,#8]
F0A1A:  LDRB.W          R9, [R0]
F0A1E:  BL              sub_E4F04
F0A22:  MOV             R8, R0
F0A24:  BL              sub_E4F1C
F0A28:  MOV             R6, R0
F0A2A:  LDR             R4, [R0,#8]
F0A2C:  LDRB.W          R11, [R0]
F0A30:  BL              sub_E4F10
F0A34:  LDRB            R1, [R0]
F0A36:  LDR             R3, [R0,#8]
F0A38:  LSLS            R1, R1, #0x1F
F0A3A:  IT EQ
F0A3C:  ADDEQ           R3, R0, #1
F0A3E:  LDR             R1, =(aAxl - 0xF0A52); "AXL" ...
F0A40:  MOVS.W          R0, R11,LSL#31
F0A44:  IT EQ
F0A46:  ADDEQ           R4, R6, #1
F0A48:  LDR             R2, =(aConnectedSISS - 0xF0A54); "connected: %s, %i, %s, %s" ...
F0A4A:  MOVS.W          R0, R9,LSL#31
F0A4E:  ADD             R1, PC; "AXL"
F0A50:  ADD             R2, PC; "connected: %s, %i, %s, %s"
F0A52:  STRD.W          R8, R4, [SP,#0x30+var_30]
F0A56:  STR             R3, [SP,#0x30+var_28]
F0A58:  IT EQ
F0A5A:  ADDEQ.W         R10, R5, #1
F0A5E:  MOVS            R0, #4; prio
F0A60:  MOV             R3, R10
F0A62:  BLX             __android_log_print
F0A66:  LDR             R1, [SP,#0x30+var_20]
F0A68:  MOVS            R0, #1
F0A6A:  STRB            R0, [R1]
F0A6C:  ADD             SP, SP, #0x14
F0A6E:  POP.W           {R8-R11}
F0A72:  POP             {R4-R7,PC}
