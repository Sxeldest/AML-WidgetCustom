; =========================================================
; Game Engine Function: _ZN9CSprite2d10SetTextureEPc
; Address            : 0x5C8838 - 0x5C8926
; =========================================================

5C8838:  PUSH            {R4-R7,LR}
5C883A:  ADD             R7, SP, #0xC
5C883C:  PUSH.W          {R8,R9,R11}
5C8840:  SUB             SP, SP, #0x40
5C8842:  MOV             R4, R0
5C8844:  LDR             R0, =(__stack_chk_guard_ptr - 0x5C884C)
5C8846:  MOV             R5, R1
5C8848:  ADD             R0, PC; __stack_chk_guard_ptr
5C884A:  LDR             R0, [R0]; __stack_chk_guard
5C884C:  LDR             R0, [R0]
5C884E:  STR             R0, [SP,#0x58+var_1C]
5C8850:  LDR             R0, [R4]
5C8852:  CBZ             R0, loc_5C885C
5C8854:  BLX.W           j__Z16RwTextureDestroyP9RwTexture; RwTextureDestroy(RwTexture *)
5C8858:  MOVS            R0, #0
5C885A:  STR             R0, [R4]
5C885C:  CBZ             R5, loc_5C887E
5C885E:  MOV             R0, R5; char *
5C8860:  BLX.W           strlen
5C8864:  CMP             R0, #4
5C8866:  BLT             loc_5C8874
5C8868:  ADD             R0, R5
5C886A:  ADR             R1, off_5C892C; char *
5C886C:  SUBS            R0, #3; char *
5C886E:  BLX.W           strcmp
5C8872:  CBZ             R0, loc_5C8898
5C8874:  MOV             R0, R5; char *
5C8876:  MOVS            R1, #0; char *
5C8878:  BLX.W           j__Z13RwTextureReadPKcS0_; RwTextureRead(char const*,char const*)
5C887C:  STR             R0, [R4]
5C887E:  LDR             R0, =(__stack_chk_guard_ptr - 0x5C8886)
5C8880:  LDR             R1, [SP,#0x58+var_1C]
5C8882:  ADD             R0, PC; __stack_chk_guard_ptr
5C8884:  LDR             R0, [R0]; __stack_chk_guard
5C8886:  LDR             R0, [R0]
5C8888:  SUBS            R0, R0, R1
5C888A:  ITTT EQ
5C888C:  ADDEQ           SP, SP, #0x40 ; '@'
5C888E:  POPEQ.W         {R8,R9,R11}
5C8892:  POPEQ           {R4-R7,PC}
5C8894:  BLX.W           __stack_chk_fail
5C8898:  MOV             R0, R5; char *
5C889A:  BLX.W           j__Z16RsPathnameCreatePKc; RsPathnameCreate(char const*)
5C889E:  MOV             R6, R0
5C88A0:  BLX.W           j__Z14RtPNGImageReadPKc; RtPNGImageRead(char const*)
5C88A4:  MOV             R8, R0
5C88A6:  MOV             R0, R6; char *
5C88A8:  BLX.W           j__Z17RsPathnameDestroyPc; RsPathnameDestroy(char *)
5C88AC:  ADD             R0, SP, #0x58+var_4C
5C88AE:  ADD             R1, SP, #0x58+var_48
5C88B0:  ADD             R2, SP, #0x58+var_40
5C88B2:  ADD             R3, SP, #0x58+var_44
5C88B4:  STRD.W          R1, R0, [SP,#0x58+var_58]
5C88B8:  MOV             R0, R8
5C88BA:  MOVS            R1, #4
5C88BC:  BLX.W           j__Z23RwImageFindRasterFormatP7RwImageiPiS1_S1_S1_; RwImageFindRasterFormat(RwImage *,int,int *,int *,int *,int *)
5C88C0:  LDRD.W          R3, R2, [SP,#0x58+var_4C]; int
5C88C4:  LDRD.W          R1, R0, [SP,#0x58+var_44]; int
5C88C8:  BLX.W           j__Z14RwRasterCreateiiii; RwRasterCreate(int,int,int,int)
5C88CC:  MOV             R1, R8
5C88CE:  MOV             R6, R0
5C88D0:  BLX.W           j__Z20RwRasterSetFromImageP8RwRasterP7RwImage; RwRasterSetFromImage(RwRaster *,RwImage *)
5C88D4:  MOV             R0, R6
5C88D6:  BLX.W           j__Z15RwTextureCreateP8RwRaster; RwTextureCreate(RwRaster *)
5C88DA:  MOV             R6, R0
5C88DC:  MOV             R0, R5; char *
5C88DE:  MOVS            R1, #0x2F ; '/'; int
5C88E0:  BLX.W           strrchr
5C88E4:  CBZ             R0, loc_5C8912
5C88E6:  ADDS            R5, R0, #1
5C88E8:  MOV             R0, R5; char *
5C88EA:  BLX.W           strlen
5C88EE:  ADD.W           R9, SP, #0x58+var_3C
5C88F2:  SUBS            R2, R0, #4; size_t
5C88F4:  MOV             R1, R5; char *
5C88F6:  MOV             R0, R9; char *
5C88F8:  BLX.W           strncpy
5C88FC:  MOV             R0, R5; char *
5C88FE:  BLX.W           strlen
5C8902:  ADD             R0, R9
5C8904:  MOVS            R1, #0
5C8906:  STRB.W          R1, [R0,#-4]
5C890A:  MOV             R0, R6
5C890C:  MOV             R1, R9
5C890E:  BLX.W           j__Z16RwTextureSetNameP9RwTexturePKc; RwTextureSetName(RwTexture *,char const*)
5C8912:  MOV             R0, R8
5C8914:  BLX.W           j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
5C8918:  STR             R6, [R4]
5C891A:  CMP             R6, #0
5C891C:  ITTT NE
5C891E:  LDRNE           R0, [R6,#0x54]
5C8920:  ADDNE           R0, #1
5C8922:  STRNE           R0, [R6,#0x54]
5C8924:  B               loc_5C887E
