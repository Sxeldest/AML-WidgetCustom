; =========================================================
; Game Engine Function: sub_1DCBFC
; Address            : 0x1DCBFC - 0x1DCE22
; =========================================================

1DCBFC:  PUSH            {R4-R7,LR}
1DCBFE:  ADD             R7, SP, #0xC
1DCC00:  PUSH.W          {R8-R11}
1DCC04:  SUB.W           SP, SP, #0x21C
1DCC08:  MOV             R5, R0
1DCC0A:  LDR             R0, =(__stack_chk_guard_ptr - 0x1DCC14)
1DCC0C:  MOV             R6, R1
1DCC0E:  LDR             R1, =(RwEngineInstance_ptr - 0x1DCC18)
1DCC10:  ADD             R0, PC; __stack_chk_guard_ptr
1DCC12:  MOV             R11, R3
1DCC14:  ADD             R1, PC; RwEngineInstance_ptr
1DCC16:  MOV             R9, R2
1DCC18:  LDR             R0, [R0]; __stack_chk_guard
1DCC1A:  MOV.W           R2, #0x100
1DCC1E:  LDR             R4, [R1]; RwEngineInstance
1DCC20:  MOV             R1, R5
1DCC22:  LDR             R0, [R0]
1DCC24:  STR             R0, [SP,#0x238+var_20]
1DCC26:  LDR             R0, [R4]
1DCC28:  LDR.W           R3, [R0,#0xFC]
1DCC2C:  ADD             R0, SP, #0x238+var_120
1DCC2E:  BLX             R3
1DCC30:  LDR             R0, [R4]
1DCC32:  LDR.W           R1, [R0,#0x118]
1DCC36:  MOV             R0, R5
1DCC38:  BLX             R1
1DCC3A:  MOVW            R8, #0x1E
1DCC3E:  CMP.W           R0, #0x100
1DCC42:  MOVT            R8, #0x8000
1DCC46:  BCC             loc_1DCC6C
1DCC48:  MOVS            R4, #0
1DCC4A:  MOV             R1, R5
1DCC4C:  STR             R4, [SP,#0x238+var_220]
1DCC4E:  MOV.W           R2, #0x100
1DCC52:  LDRB.W          R0, [R5,#0xFF]
1DCC56:  MOVS            R3, #0xFF
1DCC58:  STR             R0, [SP,#0x238+var_238]
1DCC5A:  MOV             R0, R8; int
1DCC5C:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DCC60:  STR             R0, [SP,#0x238+var_21C]
1DCC62:  ADD             R0, SP, #0x238+var_220
1DCC64:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DCC68:  STRB.W          R4, [SP,#0x238+var_21]
1DCC6C:  MOV             R0, R5; char *
1DCC6E:  BLX             j__Z19RwImageFindFileTypePKc; RwImageFindFileType(char const*)
1DCC72:  MOV             R1, R0
1DCC74:  CBZ             R1, loc_1DCC86
1DCC76:  LDR             R0, =(RwEngineInstance_ptr - 0x1DCC7C)
1DCC78:  ADD             R0, PC; RwEngineInstance_ptr
1DCC7A:  LDR             R0, [R0]; RwEngineInstance
1DCC7C:  LDR             R0, [R0]
1DCC7E:  LDR.W           R2, [R0,#0x100]
1DCC82:  ADD             R0, SP, #0x238+var_120
1DCC84:  BLX             R2
1DCC86:  MOVS            R0, #0
1DCC88:  CMP             R6, #0
1DCC8A:  STRB.W          R0, [SP,#0x238+var_220]
1DCC8E:  ITT NE
1DCC90:  LDRBNE          R0, [R6]
1DCC92:  CMPNE           R0, #0
1DCC94:  BEQ             loc_1DCCFA
1DCC96:  LDR             R0, =(RwEngineInstance_ptr - 0x1DCCA2)
1DCC98:  MOV             R1, R6
1DCC9A:  MOV.W           R2, #0x100
1DCC9E:  ADD             R0, PC; RwEngineInstance_ptr
1DCCA0:  LDR             R4, [R0]; RwEngineInstance
1DCCA2:  LDR             R0, [R4]
1DCCA4:  LDR.W           R3, [R0,#0xFC]
1DCCA8:  ADD             R0, SP, #0x238+var_220
1DCCAA:  BLX             R3
1DCCAC:  LDR             R0, [R4]
1DCCAE:  LDR.W           R1, [R0,#0x118]
1DCCB2:  MOV             R0, R6
1DCCB4:  BLX             R1
1DCCB6:  CMP.W           R0, #0x100
1DCCBA:  BCC             loc_1DCCE0
1DCCBC:  MOVS            R4, #0
1DCCBE:  MOV             R1, R6
1DCCC0:  STR             R4, [SP,#0x238+var_22C]
1DCCC2:  MOV.W           R2, #0x100
1DCCC6:  LDRB.W          R0, [R6,#0xFF]
1DCCCA:  MOVS            R3, #0xFF
1DCCCC:  STR             R0, [SP,#0x238+var_238]
1DCCCE:  MOV             R0, R8; int
1DCCD0:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DCCD4:  STR             R0, [SP,#0x238+var_228]
1DCCD6:  ADD             R0, SP, #0x238+var_22C
1DCCD8:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DCCDC:  STRB.W          R4, [SP,#0x238+var_121]
1DCCE0:  MOV             R0, R6; char *
1DCCE2:  BLX             j__Z19RwImageFindFileTypePKc; RwImageFindFileType(char const*)
1DCCE6:  MOV             R1, R0
1DCCE8:  CBZ             R1, loc_1DCCFA
1DCCEA:  LDR             R0, =(RwEngineInstance_ptr - 0x1DCCF0)
1DCCEC:  ADD             R0, PC; RwEngineInstance_ptr
1DCCEE:  LDR             R0, [R0]; RwEngineInstance
1DCCF0:  LDR             R0, [R0]
1DCCF2:  LDR.W           R2, [R0,#0x100]
1DCCF6:  ADD             R0, SP, #0x238+var_220
1DCCF8:  BLX             R2
1DCCFA:  ADD             R0, SP, #0x238+var_120; char *
1DCCFC:  ADD             R1, SP, #0x238+var_220; char *
1DCCFE:  BLX             j__Z22RwImageReadMaskedImagePKcS0_; RwImageReadMaskedImage(char const*,char const*)
1DCD02:  MOV             R6, R0
1DCD04:  CMP             R6, #0
1DCD06:  STR             R6, [SP,#0x238+var_224]
1DCD08:  BEQ             loc_1DCD58
1DCD0A:  LDR.W           R0, [R11]
1DCD0E:  LDR.W           R10, [R7,#arg_0]
1DCD12:  CMP             R0, #0
1DCD14:  ITT NE
1DCD16:  LDRNE.W         R1, [R10]
1DCD1A:  CMPNE           R1, #0
1DCD1C:  BNE             loc_1DCD3A
1DCD1E:  LDRD.W          R1, R0, [R7,#arg_4]
1DCD22:  MOV             R2, R11
1DCD24:  STRD.W          R1, R0, [SP,#0x238+var_238]
1DCD28:  MOV             R0, R6
1DCD2A:  MOV             R1, R9
1DCD2C:  MOV             R3, R10
1DCD2E:  BLX             j__Z23RwImageFindRasterFormatP7RwImageiPiS1_S1_S1_; RwImageFindRasterFormat(RwImage *,int,int *,int *,int *,int *)
1DCD32:  CMP             R0, #0
1DCD34:  BEQ             loc_1DCDC0
1DCD36:  LDR.W           R0, [R11]
1DCD3A:  LDR             R2, [R6,#4]
1DCD3C:  CMP             R2, R0
1DCD3E:  BNE             loc_1DCD4A
1DCD40:  LDR.W           R1, [R10]
1DCD44:  LDR             R3, [R6,#8]
1DCD46:  CMP             R3, R1
1DCD48:  BEQ             loc_1DCE02
1DCD4A:  LDR.W           R8, [R6,#0xC]
1DCD4E:  CMP.W           R8, #0x20 ; ' '
1DCD52:  BNE             loc_1DCD5C
1DCD54:  MOV             R5, R6
1DCD56:  B               loc_1DCD88
1DCD58:  MOVS            R4, #0
1DCD5A:  B               loc_1DCE04
1DCD5C:  LDR             R1, [R6,#8]; int
1DCD5E:  MOV             R0, R2; int
1DCD60:  MOVS            R2, #0x20 ; ' '; int
1DCD62:  BLX             j__Z13RwImageCreateiii; RwImageCreate(int,int,int)
1DCD66:  MOV             R5, R0
1DCD68:  CMP             R5, #0
1DCD6A:  STR             R5, [SP,#0x238+var_224]
1DCD6C:  BEQ             loc_1DCDF0
1DCD6E:  MOV             R0, R5
1DCD70:  BLX             j__Z21RwImageAllocatePixelsP7RwImage; RwImageAllocatePixels(RwImage *)
1DCD74:  CBZ             R0, loc_1DCDEA
1DCD76:  MOV             R0, R5
1DCD78:  MOV             R1, R6
1DCD7A:  BLX             j__Z11RwImageCopyP7RwImagePKS_; RwImageCopy(RwImage *,RwImage const*)
1DCD7E:  MOV             R0, R6
1DCD80:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1DCD84:  LDR.W           R0, [R11]; int
1DCD88:  LDR.W           R1, [R10]; int
1DCD8C:  MOVS            R2, #0x20 ; ' '; int
1DCD8E:  BLX             j__Z13RwImageCreateiii; RwImageCreate(int,int,int)
1DCD92:  MOV             R4, R0
1DCD94:  CBZ             R4, loc_1DCDDC
1DCD96:  MOV             R0, R4
1DCD98:  BLX             j__Z21RwImageAllocatePixelsP7RwImage; RwImageAllocatePixels(RwImage *)
1DCD9C:  CBZ             R0, loc_1DCDE0
1DCD9E:  MOV             R0, R4
1DCDA0:  MOV             R1, R5
1DCDA2:  BLX             j__Z15RwImageResampleP7RwImagePKS_; RwImageResample(RwImage *,RwImage const*)
1DCDA6:  MOV             R0, R5
1DCDA8:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1DCDAC:  CMP.W           R8, #8
1DCDB0:  STR             R4, [SP,#0x238+var_224]
1DCDB2:  BEQ             loc_1DCDFA
1DCDB4:  CMP.W           R8, #4
1DCDB8:  BNE             loc_1DCE02
1DCDBA:  ADD             R0, SP, #0x238+var_224
1DCDBC:  MOVS            R1, #4
1DCDBE:  B               loc_1DCDFE
1DCDC0:  MOV             R0, R6
1DCDC2:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1DCDC6:  SUB.W           R0, R8, #0x15; int
1DCDCA:  MOVS            R4, #0
1DCDCC:  STR             R4, [SP,#0x238+var_22C]
1DCDCE:  BLX             j__Z8_rwerroriz; _rwerror(int,...)
1DCDD2:  STR             R0, [SP,#0x238+var_228]
1DCDD4:  ADD             R0, SP, #0x238+var_22C
1DCDD6:  BLX             j__Z10RwErrorSetP7RwError; RwErrorSet(RwError *)
1DCDDA:  B               loc_1DCE04
1DCDDC:  MOV             R0, R5
1DCDDE:  B               loc_1DCDF2
1DCDE0:  MOV             R0, R4
1DCDE2:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1DCDE6:  MOV             R0, R5
1DCDE8:  B               loc_1DCDF2
1DCDEA:  MOV             R0, R5
1DCDEC:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1DCDF0:  MOV             R0, R6
1DCDF2:  BLX             j__Z14RwImageDestroyP7RwImage; RwImageDestroy(RwImage *)
1DCDF6:  MOVS            R4, #0
1DCDF8:  B               loc_1DCE04
1DCDFA:  ADD             R0, SP, #0x238+var_224
1DCDFC:  MOVS            R1, #8
1DCDFE:  BL              sub_1DCF60
1DCE02:  LDR             R4, [SP,#0x238+var_224]
1DCE04:  LDR             R0, =(__stack_chk_guard_ptr - 0x1DCE0C)
1DCE06:  LDR             R1, [SP,#0x238+var_20]
1DCE08:  ADD             R0, PC; __stack_chk_guard_ptr
1DCE0A:  LDR             R0, [R0]; __stack_chk_guard
1DCE0C:  LDR             R0, [R0]
1DCE0E:  SUBS            R0, R0, R1
1DCE10:  ITTTT EQ
1DCE12:  MOVEQ           R0, R4
1DCE14:  ADDEQ.W         SP, SP, #0x21C
1DCE18:  POPEQ.W         {R8-R11}
1DCE1C:  POPEQ           {R4-R7,PC}
1DCE1E:  BLX             __stack_chk_fail
