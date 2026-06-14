; =========================================================
; Game Engine Function: _ZN7CWidgetC2EPKcRK14WidgetPositionj10HIDMapping
; Address            : 0x2B2910 - 0x2B29F6
; =========================================================

2B2910:  PUSH            {R4-R7,LR}
2B2912:  ADD             R7, SP, #0xC
2B2914:  PUSH.W          {R8,R9,R11}
2B2918:  SUB             SP, SP, #8
2B291A:  MOV             R4, R0
2B291C:  LDR             R0, =(_ZTV7CWidget_ptr - 0x2B2926)
2B291E:  MOV             R9, R1
2B2920:  LDR             R1, [R7,#arg_0]
2B2922:  ADD             R0, PC; _ZTV7CWidget_ptr
2B2924:  ADD.W           R6, R4, #8
2B2928:  MOV             R8, R3
2B292A:  MOV             R5, R2
2B292C:  LDR             R0, [R0]; `vtable for'CWidget ...
2B292E:  ADDS            R0, #8
2B2930:  STRD.W          R0, R1, [R4]
2B2934:  MOV             R0, R6; this
2B2936:  BLX             j__ZN9CSprite2dC2Ev; CSprite2d::CSprite2d(void)
2B293A:  LDR             R0, [R5]
2B293C:  ADR             R1, dword_2B2A00
2B293E:  STR             R0, [R4,#0xC]
2B2940:  MOVS            R2, #1
2B2942:  LDR             R0, [R5,#4]
2B2944:  MOVS            R3, #0xFF; unsigned __int8
2B2946:  STR             R0, [R4,#0x10]
2B2948:  LDR             R0, [R5,#8]
2B294A:  VLD1.64         {D16-D17}, [R1@128]
2B294E:  ADR             R1, dword_2B2A10
2B2950:  STR             R0, [R4,#0x14]
2B2952:  ADD.W           R0, R4, #0x1C
2B2956:  VLD1.64         {D18-D19}, [R1@128]
2B295A:  LDR             R1, [R5,#0xC]
2B295C:  MOVS            R5, #0
2B295E:  VST1.32         {D16-D17}, [R0]
2B2962:  ADD.W           R0, R4, #0x2C ; ','
2B2966:  VST1.32         {D18-D19}, [R0]
2B296A:  MOV             R0, #0x49742400
2B2972:  STR             R1, [R4,#0x18]
2B2974:  MOV             R1, #0xC9742400
2B297C:  STRB.W          R2, [R4,#0x48]
2B2980:  STRD.W          R1, R0, [R4,#0x3C]
2B2984:  ADD.W           R0, R4, #0x49 ; 'I'; this
2B2988:  MOVS            R1, #0xFF; unsigned __int8
2B298A:  MOVS            R2, #0xFF; unsigned __int8
2B298C:  STR             R5, [R4,#0x44]
2B298E:  STR             R5, [SP,#0x20+var_20]; unsigned __int8
2B2990:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
2B2994:  MOVW            R0, #0x999A
2B2998:  CMP.W           R9, #0
2B299C:  MOVT            R0, #0x3F99
2B29A0:  STRH.W          R5, [R4,#0x4D]
2B29A4:  STRD.W          R5, R5, [R4,#0x78]
2B29A8:  STRD.W          R8, R5, [R4,#0x80]
2B29AC:  STRD.W          R5, R0, [R4,#0x88]
2B29B0:  BEQ             loc_2B29D4
2B29B2:  LDR             R0, [R6]
2B29B4:  CBZ             R0, loc_2B29C0
2B29B6:  ADDS            R0, #0x10; char *
2B29B8:  MOV             R1, R9; char *
2B29BA:  BLX             strcasecmp
2B29BE:  CBZ             R0, loc_2B29D4
2B29C0:  BLX             j__ZN15CTouchInterface13LoadTextureDBEv; CTouchInterface::LoadTextureDB(void)
2B29C4:  MOV             R8, R0
2B29C6:  MOV             R0, R6; this
2B29C8:  MOV             R1, R9; char *
2B29CA:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
2B29CE:  MOV             R0, R8; this
2B29D0:  BLX             j__ZN15CTouchInterface15UnloadTextureDBEP22TextureDatabaseRuntime; CTouchInterface::UnloadTextureDB(TextureDatabaseRuntime *)
2B29D4:  VMOV.I32        Q8, #0
2B29D8:  ADD.W           R0, R4, #0x60 ; '`'
2B29DC:  STRD.W          R5, R5, [R4,#0x70]
2B29E0:  VST1.32         {D16-D17}, [R0]
2B29E4:  ADD.W           R0, R4, #0x50 ; 'P'
2B29E8:  VST1.32         {D16-D17}, [R0]
2B29EC:  MOV             R0, R4
2B29EE:  ADD             SP, SP, #8
2B29F0:  POP.W           {R8,R9,R11}
2B29F4:  POP             {R4-R7,PC}
