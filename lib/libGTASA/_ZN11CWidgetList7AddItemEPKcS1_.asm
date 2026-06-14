; =========================================================
; Game Engine Function: _ZN11CWidgetList7AddItemEPKcS1_
; Address            : 0x2BA970 - 0x2BAA90
; =========================================================

2BA970:  PUSH            {R4-R7,LR}
2BA972:  ADD             R7, SP, #0xC
2BA974:  PUSH.W          {R8-R11}
2BA978:  SUB             SP, SP, #0x134
2BA97A:  MOV             R10, R0
2BA97C:  LDR             R0, =(__stack_chk_guard_ptr - 0x2BA986)
2BA97E:  MOV             R5, R2
2BA980:  MOV             R6, R1
2BA982:  ADD             R0, PC; __stack_chk_guard_ptr
2BA984:  MOVS            R1, #0xFF; unsigned __int8
2BA986:  MOVS            R2, #0xFF; unsigned __int8
2BA988:  MOVS            R3, #0xFF; unsigned __int8
2BA98A:  LDR             R0, [R0]; __stack_chk_guard
2BA98C:  LDR             R0, [R0]
2BA98E:  STR             R0, [SP,#0x150+var_20]
2BA990:  MOVS            R0, #0xFF
2BA992:  STR             R0, [SP,#0x150+var_150]; unsigned __int8
2BA994:  ADD             R0, SP, #0x150+var_144; this
2BA996:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2BA99A:  ADD.W           R8, SP, #0x150+var_140
2BA99E:  ADD.W           R0, R8, #0x100; this
2BA9A2:  STR             R0, [SP,#0x150+var_148]
2BA9A4:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
2BA9A8:  MOVW            R0, #0x2400
2BA9AC:  ADR             R4, dword_2BAAA4
2BA9AE:  MOVT            R0, #0x4974
2BA9B2:  CMP             R6, #0
2BA9B4:  STR             R0, [SP,#0x150+var_30]
2BA9B6:  STR             R0, [SP,#0x150+var_3C]
2BA9B8:  MOV             R0, #0xC9742400
2BA9C0:  STRD.W          R0, R0, [SP,#0x150+var_38]
2BA9C4:  IT EQ
2BA9C6:  MOVEQ           R6, R4
2BA9C8:  MOV             R0, R8; char *
2BA9CA:  MOV             R1, R6; char *
2BA9CC:  BLX             strcpy
2BA9D0:  CMP             R5, #0
2BA9D2:  ADD.W           R0, R8, #0x80; char *
2BA9D6:  IT NE
2BA9D8:  MOVNE           R4, R5
2BA9DA:  MOV             R1, R4; char *
2BA9DC:  BLX             strcpy
2BA9E0:  ADR             R0, dword_2BAA90
2BA9E2:  ADD.W           R6, R8, #0x104
2BA9E6:  VLD1.64         {D16-D17}, [R0@128]
2BA9EA:  MOVS            R0, #0
2BA9EC:  MOV             R1, R8; void *
2BA9EE:  MOV.W           R2, #0x11C
2BA9F2:  LDRB.W          R5, [SP,#0x150+var_144]
2BA9F6:  LDRB.W          R11, [SP,#0x150+var_143]
2BA9FA:  LDRB.W          R4, [SP,#0x150+var_142]
2BA9FE:  VST1.32         {D16-D17}, [R6]
2BAA02:  STRB.W          R5, [SP,#0x150+var_2C]
2BAA06:  STRB.W          R11, [SP,#0x150+var_2B]
2BAA0A:  STRB.W          R4, [SP,#0x150+var_2A]
2BAA0E:  STRB.W          R0, [SP,#0x150+var_28]
2BAA12:  MOVW            R0, #:lower16:(elf_hash_chain+0x1B48)
2BAA16:  LDRB.W          R8, [SP,#0x150+var_141]
2BAA1A:  MOVT            R0, #:upper16:(elf_hash_chain+0x1B48)
2BAA1E:  STRB.W          R8, [SP,#0x150+var_29]
2BAA22:  LDR.W           R0, [R10,R0]
2BAA26:  MLA.W           R9, R0, R2, R10
2BAA2A:  MOV.W           R2, #0x100; size_t
2BAA2E:  ADD.W           R0, R9, #0x90; void *
2BAA32:  BLX             memcpy_0
2BAA36:  LDR             R0, [SP,#0x150+var_40]
2BAA38:  STR.W           R0, [R9,#0x190]
2BAA3C:  MOVS            R0, #0
2BAA3E:  VLD1.32         {D16-D17}, [R6]
2BAA42:  STRB.W          R5, [R9,#0x1A4]
2BAA46:  STRB.W          R0, [R9,#0x1A8]
2BAA4A:  ADD.W           R0, R9, #0x194
2BAA4E:  STRB.W          R4, [R9,#0x1A6]
2BAA52:  STRB.W          R11, [R9,#0x1A5]
2BAA56:  STRB.W          R8, [R9,#0x1A7]
2BAA5A:  VST1.32         {D16-D17}, [R0]
2BAA5E:  LDR             R0, [SP,#0x150+var_148]; this
2BAA60:  BLX             j__ZN9CSprite2dD2Ev; CSprite2d::~CSprite2d()
2BAA64:  MOV             R1, #0x11CB0
2BAA6C:  LDR.W           R0, [R10,R1]
2BAA70:  ADDS            R0, #1
2BAA72:  STR.W           R0, [R10,R1]
2BAA76:  LDR             R0, =(__stack_chk_guard_ptr - 0x2BAA7E)
2BAA78:  LDR             R1, [SP,#0x150+var_20]
2BAA7A:  ADD             R0, PC; __stack_chk_guard_ptr
2BAA7C:  LDR             R0, [R0]; __stack_chk_guard
2BAA7E:  LDR             R0, [R0]
2BAA80:  SUBS            R0, R0, R1
2BAA82:  ITTT EQ
2BAA84:  ADDEQ           SP, SP, #0x134
2BAA86:  POPEQ.W         {R8-R11}
2BAA8A:  POPEQ           {R4-R7,PC}
2BAA8C:  BLX             __stack_chk_fail
