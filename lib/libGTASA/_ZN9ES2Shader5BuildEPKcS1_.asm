; =========================================================
; Game Engine Function: _ZN9ES2Shader5BuildEPKcS1_
; Address            : 0x1CCC04 - 0x1CCFC0
; =========================================================

1CCC04:  PUSH            {R4-R7,LR}
1CCC06:  ADD             R7, SP, #0xC
1CCC08:  PUSH.W          {R8-R11}
1CCC0C:  SUB.W           SP, SP, #0x20C
1CCC10:  MOV             R11, R0
1CCC12:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x1CCC1E)
1CCC16:  MOV             R5, R2
1CCC18:  MOV             R6, R1
1CCC1A:  ADD             R0, PC; __stack_chk_guard_ptr
1CCC1C:  LDR             R0, [R0]; __stack_chk_guard
1CCC1E:  LDR             R0, [R0]
1CCC20:  STR             R0, [SP,#0x228+var_20]
1CCC22:  BLX             glCreateProgram
1CCC26:  STR.W           R0, [R11,#0x3E8]
1CCC2A:  MOV             R0, R6; char *
1CCC2C:  BLX             j__Z10HashStringPKc; HashString(char const*)
1CCC30:  LDR.W           R1, =(pixelShaders_ptr - 0x1CCC38)
1CCC34:  ADD             R1, PC; pixelShaders_ptr
1CCC36:  LDR             R1, [R1]; pixelShaders
1CCC38:  LDR             R1, [R1,#(dword_6B8BD0 - 0x6B8BCC)]
1CCC3A:  CBZ             R1, loc_1CCC6E
1CCC3C:  LDR.W           R2, =(pixelShaders_ptr - 0x1CCC46)
1CCC40:  MOVS            R3, #0
1CCC42:  ADD             R2, PC; pixelShaders_ptr
1CCC44:  LDR             R2, [R2]; pixelShaders
1CCC46:  LDR             R2, [R2,#(dword_6B8BD4 - 0x6B8BCC)]
1CCC48:  ADDS            R2, #4
1CCC4A:  LDR.W           R4, [R2,#-4]
1CCC4E:  CMP             R4, R0
1CCC50:  BEQ             loc_1CCC5C
1CCC52:  ADDS            R3, #1
1CCC54:  ADDS            R2, #8
1CCC56:  CMP             R3, R1
1CCC58:  BCC             loc_1CCC4A
1CCC5A:  B               loc_1CCC6E
1CCC5C:  CMP             R2, #4
1CCC5E:  BEQ             loc_1CCC6E
1CCC60:  MOVS            R0, #0
1CCC62:  LDR             R1, [R2]
1CCC64:  STRB.W          R0, [R11,#0x3DC]
1CCC68:  STR.W           R1, [R11,#0x3D8]
1CCC6C:  B               loc_1CCD30
1CCC6E:  MOVW            R0, #0x8B30
1CCC72:  BLX             glCreateShader
1CCC76:  MOV             R4, R0
1CCC78:  MOVS            R0, #1
1CCC7A:  STR.W           R4, [R11,#0x3D8]
1CCC7E:  STRB.W          R0, [R11,#0x3DC]
1CCC82:  MOV             R0, R6; char *
1CCC84:  BLX             strlen
1CCC88:  ADD             R2, SP, #0x228+var_224
1CCC8A:  ADD             R3, SP, #0x228+var_220
1CCC8C:  STRD.W          R6, R0, [SP,#0x228+var_224]
1CCC90:  MOV             R0, R4
1CCC92:  MOVS            R1, #1
1CCC94:  BLX             glShaderSource
1CCC98:  LDR.W           R0, [R11,#0x3D8]
1CCC9C:  BLX             glCompileShader
1CCCA0:  LDR.W           R1, [R11,#0x3D8]; unsigned int
1CCCA4:  MOV             R3, R6; char *
1CCCA6:  BLX             j__ZN9ES2Shader12CheckCompileEjjPKc; ES2Shader::CheckCompile(uint,uint,char const*)
1CCCAA:  CMP             R0, #1
1CCCAC:  BNE.W           loc_1CCEC4
1CCCB0:  MOV             R0, R6; char *
1CCCB2:  BLX             j__Z10HashStringPKc; HashString(char const*)
1CCCB6:  MOV             R8, R0
1CCCB8:  LDR             R0, =(pixelShaders_ptr - 0x1CCCBE)
1CCCBA:  ADD             R0, PC; pixelShaders_ptr
1CCCBC:  LDR             R1, [R0]; pixelShaders
1CCCBE:  LDRD.W          R0, R9, [R1]
1CCCC2:  ADD.W           R1, R9, #1
1CCCC6:  LDR.W           R4, [R11,#0x3D8]
1CCCCA:  CMP             R0, R1
1CCCCC:  BCS             loc_1CCD18
1CCCCE:  ADD.W           R1, R1, R1,LSL#1
1CCCD2:  MOVS            R2, #3
1CCCD4:  ADD.W           R10, R2, R1,LSR#1
1CCCD8:  CMP             R10, R0
1CCCDA:  BEQ             loc_1CCD18
1CCCDC:  MOV.W           R0, R10,LSL#3; byte_count
1CCCE0:  BLX             malloc
1CCCE4:  LDR             R1, =(pixelShaders_ptr - 0x1CCCEA)
1CCCE6:  ADD             R1, PC; pixelShaders_ptr
1CCCE8:  LDR             R1, [R1]; pixelShaders
1CCCEA:  LDR             R1, [R1,#(dword_6B8BD4 - 0x6B8BCC)]; src
1CCCEC:  CBZ             R1, loc_1CCD0C
1CCCEE:  MOV.W           R2, R9,LSL#3; n
1CCCF2:  STR             R0, [SP,#0x228+var_228]
1CCCF4:  MOV             R9, R1
1CCCF6:  BLX             memmove_1
1CCCFA:  MOV             R0, R9; p
1CCCFC:  BLX             free
1CCD00:  LDR             R1, =(pixelShaders_ptr - 0x1CCD08)
1CCD02:  LDR             R0, [SP,#0x228+var_228]
1CCD04:  ADD             R1, PC; pixelShaders_ptr
1CCD06:  LDR             R1, [R1]; pixelShaders
1CCD08:  LDR.W           R9, [R1,#(dword_6B8BD0 - 0x6B8BCC)]
1CCD0C:  LDR             R1, =(pixelShaders_ptr - 0x1CCD12)
1CCD0E:  ADD             R1, PC; pixelShaders_ptr
1CCD10:  LDR             R1, [R1]; pixelShaders
1CCD12:  STR             R0, [R1,#(dword_6B8BD4 - 0x6B8BCC)]
1CCD14:  STR.W           R10, [R1]
1CCD18:  LDR             R0, =(pixelShaders_ptr - 0x1CCD1E)
1CCD1A:  ADD             R0, PC; pixelShaders_ptr
1CCD1C:  LDR             R0, [R0]; pixelShaders
1CCD1E:  LDR             R1, [R0,#(dword_6B8BD4 - 0x6B8BCC)]
1CCD20:  STR.W           R8, [R1,R9,LSL#3]
1CCD24:  ADD.W           R1, R1, R9,LSL#3
1CCD28:  STR             R4, [R1,#4]
1CCD2A:  LDR             R1, [R0,#(dword_6B8BD0 - 0x6B8BCC)]
1CCD2C:  ADDS            R1, #1
1CCD2E:  STR             R1, [R0,#(dword_6B8BD0 - 0x6B8BCC)]
1CCD30:  MOV             R0, R5; char *
1CCD32:  BLX             j__Z10HashStringPKc; HashString(char const*)
1CCD36:  LDR             R1, =(vertexShaders_ptr - 0x1CCD3C)
1CCD38:  ADD             R1, PC; vertexShaders_ptr
1CCD3A:  LDR             R1, [R1]; vertexShaders
1CCD3C:  LDR             R1, [R1,#(dword_6B8BDC - 0x6B8BD8)]
1CCD3E:  CBZ             R1, loc_1CCD70
1CCD40:  LDR             R2, =(vertexShaders_ptr - 0x1CCD48)
1CCD42:  MOVS            R3, #0
1CCD44:  ADD             R2, PC; vertexShaders_ptr
1CCD46:  LDR             R2, [R2]; vertexShaders
1CCD48:  LDR             R2, [R2,#(dword_6B8BE0 - 0x6B8BD8)]
1CCD4A:  ADDS            R2, #4
1CCD4C:  LDR.W           R4, [R2,#-4]
1CCD50:  CMP             R4, R0
1CCD52:  BEQ             loc_1CCD5E
1CCD54:  ADDS            R3, #1
1CCD56:  ADDS            R2, #8
1CCD58:  CMP             R3, R1
1CCD5A:  BCC             loc_1CCD4C
1CCD5C:  B               loc_1CCD70
1CCD5E:  CMP             R2, #4
1CCD60:  BEQ             loc_1CCD70
1CCD62:  MOVS            R0, #0
1CCD64:  LDR             R1, [R2]
1CCD66:  STRB.W          R0, [R11,#0x3E4]
1CCD6A:  STR.W           R1, [R11,#0x3E0]
1CCD6E:  B               loc_1CCE36
1CCD70:  MOVW            R0, #0x8B31
1CCD74:  BLX             glCreateShader
1CCD78:  MOV             R4, R0
1CCD7A:  MOVS            R0, #1
1CCD7C:  STR.W           R4, [R11,#0x3E0]
1CCD80:  STRB.W          R0, [R11,#0x3E4]
1CCD84:  MOV             R0, R5; char *
1CCD86:  BLX             strlen
1CCD8A:  ADD             R2, SP, #0x228+var_224
1CCD8C:  ADD             R3, SP, #0x228+var_220
1CCD8E:  STRD.W          R5, R0, [SP,#0x228+var_224]
1CCD92:  MOV             R0, R4
1CCD94:  MOVS            R1, #1
1CCD96:  BLX             glShaderSource
1CCD9A:  LDR.W           R0, [R11,#0x3E0]
1CCD9E:  BLX             glCompileShader
1CCDA2:  LDR.W           R1, [R11,#0x3E0]; unsigned int
1CCDA6:  MOV             R3, R5; char *
1CCDA8:  BLX             j__ZN9ES2Shader12CheckCompileEjjPKc; ES2Shader::CheckCompile(uint,uint,char const*)
1CCDAC:  CMP             R0, #1
1CCDAE:  BNE.W           loc_1CCEC4
1CCDB2:  MOV             R0, R5; char *
1CCDB4:  BLX             j__Z10HashStringPKc; HashString(char const*)
1CCDB8:  MOV             R8, R0
1CCDBA:  LDR             R0, =(vertexShaders_ptr - 0x1CCDC0)
1CCDBC:  ADD             R0, PC; vertexShaders_ptr
1CCDBE:  LDR             R1, [R0]; vertexShaders
1CCDC0:  LDRD.W          R0, R9, [R1]
1CCDC4:  ADD.W           R1, R9, #1
1CCDC8:  LDR.W           R4, [R11,#0x3E0]
1CCDCC:  CMP             R0, R1
1CCDCE:  BCS             loc_1CCE1A
1CCDD0:  ADD.W           R1, R1, R1,LSL#1
1CCDD4:  MOVS            R2, #3
1CCDD6:  ADD.W           R10, R2, R1,LSR#1
1CCDDA:  CMP             R10, R0
1CCDDC:  BEQ             loc_1CCE1A
1CCDDE:  MOV.W           R0, R10,LSL#3; byte_count
1CCDE2:  BLX             malloc
1CCDE6:  LDR             R1, =(vertexShaders_ptr - 0x1CCDEC)
1CCDE8:  ADD             R1, PC; vertexShaders_ptr
1CCDEA:  LDR             R1, [R1]; vertexShaders
1CCDEC:  LDR             R1, [R1,#(dword_6B8BE0 - 0x6B8BD8)]; src
1CCDEE:  CBZ             R1, loc_1CCE0E
1CCDF0:  MOV.W           R2, R9,LSL#3; n
1CCDF4:  STR             R0, [SP,#0x228+var_228]
1CCDF6:  MOV             R9, R1
1CCDF8:  BLX             memmove_1
1CCDFC:  MOV             R0, R9; p
1CCDFE:  BLX             free
1CCE02:  LDR             R1, =(vertexShaders_ptr - 0x1CCE0A)
1CCE04:  LDR             R0, [SP,#0x228+var_228]
1CCE06:  ADD             R1, PC; vertexShaders_ptr
1CCE08:  LDR             R1, [R1]; vertexShaders
1CCE0A:  LDR.W           R9, [R1,#(dword_6B8BDC - 0x6B8BD8)]
1CCE0E:  LDR             R1, =(vertexShaders_ptr - 0x1CCE14)
1CCE10:  ADD             R1, PC; vertexShaders_ptr
1CCE12:  LDR             R1, [R1]; vertexShaders
1CCE14:  STR             R0, [R1,#(dword_6B8BE0 - 0x6B8BD8)]
1CCE16:  STR.W           R10, [R1]
1CCE1A:  LDR             R0, =(vertexShaders_ptr - 0x1CCE20)
1CCE1C:  ADD             R0, PC; vertexShaders_ptr
1CCE1E:  LDR             R0, [R0]; vertexShaders
1CCE20:  LDR             R1, [R0,#(dword_6B8BE0 - 0x6B8BD8)]
1CCE22:  STR.W           R8, [R1,R9,LSL#3]
1CCE26:  ADD.W           R1, R1, R9,LSL#3
1CCE2A:  STR             R4, [R1,#4]
1CCE2C:  LDR             R1, [R0,#(dword_6B8BDC - 0x6B8BD8)]
1CCE2E:  ADDS            R1, #1
1CCE30:  STR             R1, [R0,#(dword_6B8BDC - 0x6B8BD8)]
1CCE32:  LDR.W           R1, [R11,#0x3E0]
1CCE36:  LDR.W           R0, [R11,#0x3E8]
1CCE3A:  BLX             glAttachShader
1CCE3E:  LDR.W           R1, [R11,#0x3D8]
1CCE42:  LDR.W           R0, [R11,#0x3E8]
1CCE46:  BLX             glAttachShader
1CCE4A:  LDR.W           R0, [R11,#0x3E8]
1CCE4E:  ADR             R2, aPosition; "Position"
1CCE50:  MOVS            R1, #0
1CCE52:  MOVS            R4, #0
1CCE54:  BLX             glBindAttribLocation
1CCE58:  LDR.W           R0, [R11,#0x3E8]
1CCE5C:  ADR             R2, aTexcoord0; "TexCoord0"
1CCE5E:  MOVS            R1, #1
1CCE60:  BLX             glBindAttribLocation
1CCE64:  LDR.W           R0, [R11,#0x3E8]
1CCE68:  ADR             R2, aNormal; "Normal"
1CCE6A:  MOVS            R1, #2
1CCE6C:  BLX             glBindAttribLocation
1CCE70:  LDR.W           R0, [R11,#0x3E8]
1CCE74:  ADR             R2, aGlobalcolor_0; "GlobalColor"
1CCE76:  MOVS            R1, #3
1CCE78:  BLX             glBindAttribLocation
1CCE7C:  LDR.W           R0, [R11,#0x3E8]
1CCE80:  ADR             R2, aBoneweight; "BoneWeight"
1CCE82:  MOVS            R1, #4
1CCE84:  BLX             glBindAttribLocation
1CCE88:  LDR.W           R0, [R11,#0x3E8]
1CCE8C:  ADR             R2, aBoneindices; "BoneIndices"
1CCE8E:  MOVS            R1, #5
1CCE90:  BLX             glBindAttribLocation
1CCE94:  LDR.W           R0, [R11,#0x3E8]
1CCE98:  ADR             R2, aColor2; "Color2"
1CCE9A:  MOVS            R1, #6
1CCE9C:  BLX             glBindAttribLocation
1CCEA0:  LDR.W           R0, [R11,#0x3E8]
1CCEA4:  BLX             glLinkProgram
1CCEA8:  STR             R4, [SP,#0x228+var_224]
1CCEAA:  ADD             R2, SP, #0x228+var_224
1CCEAC:  LDR.W           R0, [R11,#0x3E8]
1CCEB0:  MOVW            R1, #0x8B82
1CCEB4:  BLX             glGetProgramiv
1CCEB8:  LDR             R0, [SP,#0x228+var_224]
1CCEBA:  CMP             R0, #0
1CCEBC:  BNE             loc_1CCF9C
1CCEBE:  ADD.W           R8, SP, #0x228+var_220
1CCEC2:  B               loc_1CCF0E
1CCEC4:  MOVS            R0, #0
1CCEC6:  B               loc_1CCFA4
1CCEC8:  CMP             R0, #0x7D ; '}'
1CCECA:  MOV.W           R0, #0
1CCECE:  IT NE
1CCED0:  MOVNE           R0, #1
1CCED2:  LDR             R1, =(byte_61CD7E - 0x1CCEDE)
1CCED4:  ANDS.W          R10, R4, R0
1CCED8:  LDR             R0, =(asc_5EA852 - 0x1CCEE0); "    "
1CCEDA:  ADD             R1, PC; byte_61CD7E
1CCEDC:  ADD             R0, PC; "    "
1CCEDE:  IT NE
1CCEE0:  MOVNE           R1, R0; char *
1CCEE2:  MOV             R0, R8; char *
1CCEE4:  BLX             strcpy
1CCEE8:  RSB.W           R0, R9, #1
1CCEEC:  MOV             R1, R9; char *
1CCEEE:  ADDS            R2, R0, R6; size_t
1CCEF0:  MOV             R0, R8; char *
1CCEF2:  BLX             strncat
1CCEF6:  MOV             R0, R8; fmt
1CCEF8:  LDRB.W          R4, [R6],#1
1CCEFC:  BLX             j__Z11OS_DebugOutPKc; OS_DebugOut(char const*)
1CCF00:  CMP             R4, #0x7B ; '{'
1CCF02:  MOV.W           R0, #0
1CCF06:  IT EQ
1CCF08:  MOVEQ           R0, #1
1CCF0A:  ORR.W           R4, R10, R0
1CCF0E:  MOV             R9, R6
1CCF10:  B               loc_1CCF14
1CCF12:  ADDS            R6, #1
1CCF14:  LDRB            R0, [R6]
1CCF16:  CMP             R0, #0x7A ; 'z'
1CCF18:  BGT             loc_1CCF22
1CCF1A:  CBZ             R0, loc_1CCF2C
1CCF1C:  CMP             R0, #0x3B ; ';'
1CCF1E:  BNE             loc_1CCF12
1CCF20:  B               loc_1CCEC8
1CCF22:  CMP             R0, #0x7B ; '{'
1CCF24:  IT NE
1CCF26:  CMPNE           R0, #0x7D ; '}'
1CCF28:  BNE             loc_1CCF12
1CCF2A:  B               loc_1CCEC8
1CCF2C:  LDR.W           R9, =(byte_61CD7E - 0x1CCF3E)
1CCF30:  ADD.W           R8, SP, #0x228+var_220
1CCF34:  LDR.W           R10, =(asc_5EA852 - 0x1CCF40); "    "
1CCF38:  MOVS            R0, #0
1CCF3A:  ADD             R9, PC; byte_61CD7E
1CCF3C:  ADD             R10, PC; "    "
1CCF3E:  B               loc_1CCF7E
1CCF40:  CMP             R1, #0x7D ; '}'
1CCF42:  MOV.W           R1, #0
1CCF46:  IT NE
1CCF48:  MOVNE           R1, #1
1CCF4A:  ANDS.W          R4, R0, R1
1CCF4E:  MOV             R1, R9
1CCF50:  IT NE
1CCF52:  MOVNE           R1, R10; char *
1CCF54:  MOV             R0, R8; char *
1CCF56:  BLX             strcpy
1CCF5A:  RSB.W           R0, R6, #1
1CCF5E:  MOV             R1, R6; char *
1CCF60:  ADDS            R2, R0, R5; size_t
1CCF62:  MOV             R0, R8; char *
1CCF64:  BLX             strncat
1CCF68:  MOV             R0, R8; fmt
1CCF6A:  LDRB.W          R6, [R5],#1
1CCF6E:  BLX             j__Z11OS_DebugOutPKc; OS_DebugOut(char const*)
1CCF72:  CMP             R6, #0x7B ; '{'
1CCF74:  MOV.W           R0, #0
1CCF78:  IT EQ
1CCF7A:  MOVEQ           R0, #1
1CCF7C:  ORRS            R0, R4
1CCF7E:  MOV             R6, R5
1CCF80:  B               loc_1CCF84
1CCF82:  ADDS            R5, #1
1CCF84:  LDRB            R1, [R5]
1CCF86:  CMP             R1, #0x7A ; 'z'
1CCF88:  BGT             loc_1CCF92
1CCF8A:  CBZ             R1, loc_1CCF9C
1CCF8C:  CMP             R1, #0x3B ; ';'
1CCF8E:  BNE             loc_1CCF82
1CCF90:  B               loc_1CCF40
1CCF92:  CMP             R1, #0x7B ; '{'
1CCF94:  IT NE
1CCF96:  CMPNE           R1, #0x7D ; '}'
1CCF98:  BNE             loc_1CCF82
1CCF9A:  B               loc_1CCF40
1CCF9C:  MOV             R0, R11; this
1CCF9E:  BLX             j__ZN9ES2Shader22InitializeAfterCompileEv; ES2Shader::InitializeAfterCompile(void)
1CCFA2:  MOVS            R0, #1
1CCFA4:  LDR             R1, =(__stack_chk_guard_ptr - 0x1CCFAC)
1CCFA6:  LDR             R2, [SP,#0x228+var_20]
1CCFA8:  ADD             R1, PC; __stack_chk_guard_ptr
1CCFAA:  LDR             R1, [R1]; __stack_chk_guard
1CCFAC:  LDR             R1, [R1]
1CCFAE:  SUBS            R1, R1, R2
1CCFB0:  ITTT EQ
1CCFB2:  ADDEQ.W         SP, SP, #0x20C
1CCFB6:  POPEQ.W         {R8-R11}
1CCFBA:  POPEQ           {R4-R7,PC}
1CCFBC:  BLX             __stack_chk_fail
