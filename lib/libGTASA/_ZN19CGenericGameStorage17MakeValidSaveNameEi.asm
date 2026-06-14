; =========================================================
; Game Engine Function: _ZN19CGenericGameStorage17MakeValidSaveNameEi
; Address            : 0x483B18 - 0x483BC2
; =========================================================

483B18:  PUSH            {R4,R5,R7,LR}
483B1A:  ADD             R7, SP, #8
483B1C:  SUB             SP, SP, #0x110
483B1E:  MOV             R4, R0
483B20:  LDR             R0, =(__stack_chk_guard_ptr - 0x483B26)
483B22:  ADD             R0, PC; __stack_chk_guard_ptr
483B24:  LDR             R0, [R0]; __stack_chk_guard
483B26:  LDR             R0, [R0]
483B28:  STR             R0, [SP,#0x118+var_C]
483B2A:  MOVS            R0, #0
483B2C:  STRB.W          R0, [SP,#0x118+var_110]
483B30:  MOV             R0, R4; int
483B32:  BLX             j__Z11IsCloudSloti; IsCloudSlot(int)
483B36:  CMP             R0, #1
483B38:  BNE             loc_483B4E
483B3A:  BLX             GetRockstarID
483B3E:  LDR             R1, =(DefaultPCSaveFileName_ptr - 0x483B4A)
483B40:  ADDS            R3, R4, #1
483B42:  STR             R0, [SP,#0x118+var_118]
483B44:  ADD             R0, SP, #0x118+var_110
483B46:  ADD             R1, PC; DefaultPCSaveFileName_ptr
483B48:  LDR             R2, [R1]; "GTASAsf" ...
483B4A:  ADR             R1, aSIS_0; "%s%i_%s"
483B4C:  B               loc_483B5A
483B4E:  LDR             R1, =(DefaultPCSaveFileName_ptr - 0x483B58)
483B50:  ADDS            R3, R4, #1
483B52:  ADD             R0, SP, #0x118+var_110
483B54:  ADD             R1, PC; DefaultPCSaveFileName_ptr
483B56:  LDR             R2, [R1]; "GTASAsf" ...
483B58:  ADR             R1, aSI; "%s%i"
483B5A:  BL              sub_5E6BC0
483B5E:  ADD             R5, SP, #0x118+var_110
483B60:  MOV             R0, R5; char *
483B62:  BLX             strlen
483B66:  CMP.W           R0, #0x100
483B6A:  ITT HI
483B6C:  MOVHI           R0, #0
483B6E:  STRBHI.W        R0, [SP,#0x118+var_F]
483B72:  MOV             R0, R5; char *
483B74:  BLX             strlen
483B78:  LDR             R1, =(_ZN19CGenericGameStorage16ms_ValidSaveNameE_ptr - 0x483B86)
483B7A:  MOVW            R2, #0x622E
483B7E:  STRH            R2, [R5,R0]
483B80:  ADD             R0, R5
483B82:  ADD             R1, PC; _ZN19CGenericGameStorage16ms_ValidSaveNameE_ptr
483B84:  MOVS            R2, #0
483B86:  LDR             R4, [R1]; CGenericGameStorage::ms_ValidSaveName ...
483B88:  MOV             R1, R5; char *
483B8A:  STRB            R2, [R0,#2]
483B8C:  MOV             R0, R4; char *
483B8E:  BLX             strcpy
483B92:  MOVS            R0, #0x20 ; ' '
483B94:  B               loc_483B98
483B96:  ADDS            R4, #1
483B98:  LDRB            R1, [R4]; CGenericGameStorage::ms_ValidSaveName
483B9A:  CMP             R1, #0x3F ; '?'
483B9C:  BEQ             loc_483BA8
483B9E:  CMP             R1, #0
483BA0:  IT NE
483BA2:  CMPNE           R1, #0xA
483BA4:  BNE             loc_483B96
483BA6:  B               loc_483BAC
483BA8:  STRB            R0, [R4]; CGenericGameStorage::ms_ValidSaveName
483BAA:  B               loc_483B96
483BAC:  LDR             R0, =(__stack_chk_guard_ptr - 0x483BB4)
483BAE:  LDR             R1, [SP,#0x118+var_C]
483BB0:  ADD             R0, PC; __stack_chk_guard_ptr
483BB2:  LDR             R0, [R0]; __stack_chk_guard
483BB4:  LDR             R0, [R0]
483BB6:  SUBS            R0, R0, R1
483BB8:  ITT EQ
483BBA:  ADDEQ           SP, SP, #0x110
483BBC:  POPEQ           {R4,R5,R7,PC}
483BBE:  BLX             __stack_chk_fail
