; =========================================================
; Game Engine Function: _ZN15InteriorGroup_c10SetupPathsEv
; Address            : 0x448CF0 - 0x44990A
; =========================================================

448CF0:  PUSH            {R4-R7,LR}
448CF2:  ADD             R7, SP, #0xC
448CF4:  PUSH.W          {R8-R11}
448CF8:  SUB             SP, SP, #4
448CFA:  VPUSH           {D8-D10}
448CFE:  SUB             SP, SP, #0x1F8
448D00:  MOV             R11, R0
448D02:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x448D0A)
448D06:  ADD             R0, PC; __stack_chk_guard_ptr
448D08:  LDR             R0, [R0]; __stack_chk_guard
448D0A:  LDR             R0, [R0]
448D0C:  STR             R0, [SP,#0x230+var_3C]
448D0E:  MOV             R0, R11; this
448D10:  BLX             j__ZN15InteriorGroup_c14ArePathsLoadedEv; InteriorGroup_c::ArePathsLoaded(void)
448D14:  CMP             R0, #0
448D16:  BEQ.W           loc_4498E8
448D1A:  LDR.W           R0, =(ThePaths_ptr - 0x448D26)
448D1E:  LDRSB.W         R1, [R11,#0xC]; unsigned int
448D22:  ADD             R0, PC; ThePaths_ptr
448D24:  LDR             R0, [R0]; ThePaths ; this
448D26:  BLX             j__ZN9CPathFind16StartNewInteriorEj; CPathFind::StartNewInterior(uint)
448D2A:  LDR.W           R0, =(ThePaths_ptr - 0x448D3C)
448D2E:  ADD.W           R8, SP, #0x230+var_6C
448D32:  MOV.W           R4, #0xFFFFFFFF
448D36:  MOVS            R5, #0
448D38:  ADD             R0, PC; ThePaths_ptr
448D3A:  MOVS            R6, #0
448D3C:  MOVS            R1, #0
448D3E:  STR.W           R11, [SP,#0x230+var_190]
448D42:  LDR.W           R9, [R0]; ThePaths
448D46:  LDR.W           R0, =(ThePaths_ptr - 0x448D52)
448D4A:  STR.W           R9, [SP,#0x230+var_198]
448D4E:  ADD             R0, PC; ThePaths_ptr
448D50:  LDR             R0, [R0]; ThePaths
448D52:  STR             R0, [SP,#0x230+var_188]
448D54:  LDR.W           R0, =(ThePaths_ptr - 0x448D5C)
448D58:  ADD             R0, PC; ThePaths_ptr
448D5A:  LDR             R0, [R0]; ThePaths
448D5C:  STR             R0, [SP,#0x230+var_18C]
448D5E:  ADD.W           R0, R11, R1,LSL#2
448D62:  LDR.W           R10, [R0,#0x10]
448D66:  CMP.W           R10, #0
448D6A:  BEQ             loc_448E54
448D6C:  STR.W           R5, [R8,R1,LSL#2]
448D70:  LDRSB.W         R0, [R10,#0x40C]
448D74:  CMP             R0, #3
448D76:  BLT             loc_448E50
448D78:  STR             R1, [SP,#0x230+var_194]
448D7A:  MOV             R0, R9; this
448D7C:  LDR.W           R1, [R10,#0x414]; float
448D80:  LDR.W           R2, [R10,#0x418]; float
448D84:  LDR.W           R3, [R10,#0x41C]; float
448D88:  STR             R6, [SP,#0x230+var_184]
448D8A:  MOVS            R6, #0
448D8C:  STRD.W          R6, R4, [SP,#0x230+var_230]; bool
448D90:  STRD.W          R4, R4, [SP,#0x230+var_228]; signed __int8
448D94:  STRD.W          R4, R4, [SP,#0x230+var_220]; signed __int8
448D98:  STR             R4, [SP,#0x230+var_218]; signed __int8
448D9A:  BLX             j__ZN9CPathFind20AddNodeToNewInteriorEfffbaaaaaa; CPathFind::AddNodeToNewInterior(float,float,float,bool,signed char,signed char,signed char,signed char,signed char,signed char)
448D9E:  LDR.W           R1, [R10,#0x424]; float
448DA2:  MOV             R0, R9; this
448DA4:  LDR.W           R2, [R10,#0x428]; float
448DA8:  LDR.W           R3, [R10,#0x42C]; float
448DAC:  STR             R6, [SP,#0x230+var_230]; bool
448DAE:  LDR             R6, [SP,#0x230+var_184]
448DB0:  STRD.W          R4, R4, [SP,#0x230+var_22C]; signed __int8
448DB4:  STRD.W          R4, R4, [SP,#0x230+var_224]; signed __int8
448DB8:  STRD.W          R4, R4, [SP,#0x230+var_21C]; signed __int8
448DBC:  BLX             j__ZN9CPathFind20AddNodeToNewInteriorEfffbaaaaaa; CPathFind::AddNodeToNewInterior(float,float,float,bool,signed char,signed char,signed char,signed char,signed char,signed char)
448DC0:  ADDS            R1, R6, #1; int
448DC2:  MOV             R0, R9; this
448DC4:  MOV             R2, R5; int
448DC6:  BLX             j__ZN9CPathFind15AddInteriorLinkEii; CPathFind::AddInteriorLink(int,int)
448DCA:  LDRSB.W         R0, [R10,#0x40C]
448DCE:  CMP             R0, #3
448DD0:  BLT             loc_448E4C
448DD2:  ADDW            R8, R10, #0x43C
448DD6:  MOV.W           R11, #2
448DDA:  STR             R5, [SP,#0x230+var_180]
448DDC:  MOVS            R0, #0
448DDE:  LDRD.W          R1, R2, [R8,#-8]; float
448DE2:  LDR.W           R3, [R8]; float
448DE6:  STRD.W          R0, R4, [SP,#0x230+var_230]; bool
448DEA:  STRD.W          R4, R4, [SP,#0x230+var_228]; signed __int8
448DEE:  STRD.W          R4, R4, [SP,#0x230+var_220]; signed __int8
448DF2:  LDR             R6, [SP,#0x230+var_188]
448DF4:  STR             R4, [SP,#0x230+var_218]; signed __int8
448DF6:  MOV             R0, R6; this
448DF8:  BLX             j__ZN9CPathFind20AddNodeToNewInteriorEfffbaaaaaa; CPathFind::AddNodeToNewInterior(float,float,float,bool,signed char,signed char,signed char,signed char,signed char,signed char)
448DFC:  LDR             R0, [SP,#0x230+var_184]
448DFE:  ADD.W           R5, R0, R11
448E02:  LDR             R0, [SP,#0x230+var_180]
448E04:  ADD.W           R9, R0, R11
448E08:  MOV             R0, R6; this
448E0A:  SUB.W           R2, R9, #2; int
448E0E:  MOV             R1, R5; int
448E10:  BLX             j__ZN9CPathFind15AddInteriorLinkEii; CPathFind::AddInteriorLink(int,int)
448E14:  TST.W           R11, #1
448E18:  BEQ             loc_448E26
448E1A:  LDR             R0, [SP,#0x230+var_18C]; this
448E1C:  SUB.W           R2, R9, #1; int
448E20:  MOV             R1, R5; int
448E22:  BLX             j__ZN9CPathFind15AddInteriorLinkEii; CPathFind::AddInteriorLink(int,int)
448E26:  LDRSB.W         R0, [R10,#0x40C]
448E2A:  ADD.W           R11, R11, #1
448E2E:  ADD.W           R8, R8, #0x10
448E32:  CMP             R11, R0
448E34:  BLT             loc_448DDC
448E36:  LDR             R6, [SP,#0x230+var_184]
448E38:  ADD.W           R8, SP, #0x230+var_6C
448E3C:  LDR             R5, [SP,#0x230+var_180]
448E3E:  UXTB            R0, R0
448E40:  ADD             R6, R11
448E42:  LDR.W           R11, [SP,#0x230+var_190]
448E46:  LDR.W           R9, [SP,#0x230+var_198]
448E4A:  B               loc_448E4E
448E4C:  ADDS            R6, #2
448E4E:  LDR             R1, [SP,#0x230+var_194]
448E50:  SXTAB.W         R5, R5, R0
448E54:  ADDS            R1, #1
448E56:  CMP             R1, #8
448E58:  BNE.W           loc_448D5E
448E5C:  ADD.W           R0, R11, #0x10
448E60:  STR             R0, [SP,#0x230+var_188]
448E62:  LDR.W           R0, =(ThePaths_ptr - 0x448E74)
448E66:  VMOV.F32        S16, #0.125
448E6A:  VMOV.F32        S20, #9.0
448E6E:  ADD             R2, SP, #0x230+var_4C
448E70:  ADD             R0, PC; ThePaths_ptr
448E72:  VMOV.I32        D9, #0x3E000000
448E76:  STR             R5, [SP,#0x230+var_180]
448E78:  MOVS            R6, #0
448E7A:  LDR             R0, [R0]; ThePaths
448E7C:  MOVS            R5, #0
448E7E:  STR             R0, [SP,#0x230+var_1A0]
448E80:  LDR.W           R0, =(ThePaths_ptr - 0x448E88)
448E84:  ADD             R0, PC; ThePaths_ptr
448E86:  LDR             R0, [R0]; ThePaths
448E88:  STR             R0, [SP,#0x230+var_1C0]
448E8A:  LDR.W           R0, =(ThePaths_ptr - 0x448E92)
448E8E:  ADD             R0, PC; ThePaths_ptr
448E90:  LDR             R0, [R0]; ThePaths
448E92:  STR             R0, [SP,#0x230+var_1C4]
448E94:  LDR.W           R0, =(ThePaths_ptr - 0x448E9C)
448E98:  ADD             R0, PC; ThePaths_ptr
448E9A:  LDR             R0, [R0]; ThePaths
448E9C:  STR             R0, [SP,#0x230+var_1A4]
448E9E:  LDR.W           R0, =(ThePaths_ptr - 0x448EA6)
448EA2:  ADD             R0, PC; ThePaths_ptr
448EA4:  LDR             R0, [R0]; ThePaths
448EA6:  STR             R0, [SP,#0x230+var_1E0]
448EA8:  LDR.W           R0, =(ThePaths_ptr - 0x448EB0)
448EAC:  ADD             R0, PC; ThePaths_ptr
448EAE:  LDR             R0, [R0]; ThePaths
448EB0:  STR             R0, [SP,#0x230+var_204]
448EB2:  LDR.W           R0, =(ThePaths_ptr - 0x448EBA)
448EB6:  ADD             R0, PC; ThePaths_ptr
448EB8:  LDR             R0, [R0]; ThePaths
448EBA:  STR             R0, [SP,#0x230+var_1A8]
448EBC:  LDR.W           R0, =(ThePaths_ptr - 0x448EC4)
448EC0:  ADD             R0, PC; ThePaths_ptr
448EC2:  LDR             R0, [R0]; ThePaths
448EC4:  STR             R0, [SP,#0x230+var_1AC]
448EC6:  LDR.W           R0, =(ThePaths_ptr - 0x448ECE)
448ECA:  ADD             R0, PC; ThePaths_ptr
448ECC:  LDR             R0, [R0]; ThePaths
448ECE:  STR             R0, [SP,#0x230+var_1E4]
448ED0:  LDR.W           R0, =(ThePaths_ptr - 0x448ED8)
448ED4:  ADD             R0, PC; ThePaths_ptr
448ED6:  LDR             R0, [R0]; ThePaths
448ED8:  STR             R0, [SP,#0x230+var_208]
448EDA:  LDR.W           R0, =(ThePaths_ptr - 0x448EE2)
448EDE:  ADD             R0, PC; ThePaths_ptr
448EE0:  LDR             R0, [R0]; ThePaths
448EE2:  STR             R0, [SP,#0x230+var_1C8]
448EE4:  LDR.W           R0, =(ThePaths_ptr - 0x448EEC)
448EE8:  ADD             R0, PC; ThePaths_ptr
448EEA:  LDR             R0, [R0]; ThePaths
448EEC:  STR             R0, [SP,#0x230+var_1CC]
448EEE:  LDR.W           R0, =(ThePaths_ptr - 0x448EF6)
448EF2:  ADD             R0, PC; ThePaths_ptr
448EF4:  LDR             R0, [R0]; ThePaths
448EF6:  STR             R0, [SP,#0x230+var_1B0]
448EF8:  LDR.W           R0, =(ThePaths_ptr - 0x448F00)
448EFC:  ADD             R0, PC; ThePaths_ptr
448EFE:  LDR             R0, [R0]; ThePaths
448F00:  STR             R0, [SP,#0x230+var_1B4]
448F02:  LDR.W           R0, =(ThePaths_ptr - 0x448F0A)
448F06:  ADD             R0, PC; ThePaths_ptr
448F08:  LDR             R0, [R0]; ThePaths
448F0A:  STR             R0, [SP,#0x230+var_1E8]
448F0C:  LDR.W           R0, =(ThePaths_ptr - 0x448F14)
448F10:  ADD             R0, PC; ThePaths_ptr
448F12:  LDR             R0, [R0]; ThePaths
448F14:  STR             R0, [SP,#0x230+var_20C]
448F16:  LDR.W           R0, =(ThePaths_ptr - 0x448F1E)
448F1A:  ADD             R0, PC; ThePaths_ptr
448F1C:  LDR             R0, [R0]; ThePaths
448F1E:  STR             R0, [SP,#0x230+var_1D0]
448F20:  LDR.W           R0, =(ThePaths_ptr - 0x448F28)
448F24:  ADD             R0, PC; ThePaths_ptr
448F26:  LDR             R0, [R0]; ThePaths
448F28:  STR             R0, [SP,#0x230+var_1D4]
448F2A:  LDR.W           R0, =(ThePaths_ptr - 0x448F32)
448F2E:  ADD             R0, PC; ThePaths_ptr
448F30:  LDR             R0, [R0]; ThePaths
448F32:  STR             R0, [SP,#0x230+var_1B8]
448F34:  LDR.W           R0, =(ThePaths_ptr - 0x448F3C)
448F38:  ADD             R0, PC; ThePaths_ptr
448F3A:  LDR             R0, [R0]; ThePaths
448F3C:  STR             R0, [SP,#0x230+var_1BC]
448F3E:  LDR.W           R0, =(ThePaths_ptr - 0x448F46)
448F42:  ADD             R0, PC; ThePaths_ptr
448F44:  LDR             R0, [R0]; ThePaths
448F46:  STR             R0, [SP,#0x230+var_1EC]
448F48:  LDR.W           R0, =(ThePaths_ptr - 0x448F50)
448F4C:  ADD             R0, PC; ThePaths_ptr
448F4E:  LDR             R0, [R0]; ThePaths
448F50:  STR             R0, [SP,#0x230+var_210]
448F52:  LDR.W           R0, =(ThePaths_ptr - 0x448F5A)
448F56:  ADD             R0, PC; ThePaths_ptr
448F58:  LDR             R0, [R0]; ThePaths
448F5A:  STR             R0, [SP,#0x230+var_1D8]
448F5C:  LDR.W           R0, =(ThePaths_ptr - 0x448F64)
448F60:  ADD             R0, PC; ThePaths_ptr
448F62:  LDR             R0, [R0]; ThePaths
448F64:  STR             R0, [SP,#0x230+var_1DC]
448F66:  LDR.W           R0, =(ThePaths_ptr - 0x448F6E)
448F6A:  ADD             R0, PC; ThePaths_ptr
448F6C:  LDR             R0, [R0]; ThePaths
448F6E:  STR             R0, [SP,#0x230+var_1F0]
448F70:  LDR.W           R0, =(ThePaths_ptr - 0x448F78)
448F74:  ADD             R0, PC; ThePaths_ptr
448F76:  LDR             R0, [R0]; ThePaths
448F78:  STR             R0, [SP,#0x230+var_1F4]
448F7A:  LDR.W           R0, =(ThePaths_ptr - 0x448F82)
448F7E:  ADD             R0, PC; ThePaths_ptr
448F80:  LDR             R0, [R0]; ThePaths
448F82:  STR             R0, [SP,#0x230+var_1F8]
448F84:  LDR.W           R0, =(ThePaths_ptr - 0x448F8C)
448F88:  ADD             R0, PC; ThePaths_ptr
448F8A:  LDR             R0, [R0]; ThePaths
448F8C:  STR             R0, [SP,#0x230+var_1FC]
448F8E:  LDR.W           R0, =(ThePaths_ptr - 0x448F96)
448F92:  ADD             R0, PC; ThePaths_ptr
448F94:  LDR             R0, [R0]; ThePaths
448F96:  STR             R0, [SP,#0x230+var_200]
448F98:  MOVS            R0, #0
448F9A:  STR             R0, [SP,#0x230+var_184]
448F9C:  STR             R0, [SP,#0x230+var_18C]
448F9E:  STR             R0, [SP,#0x230+var_19C]
448FA0:  STR             R0, [SP,#0x230+var_194]
448FA2:  STR             R0, [SP,#0x230+var_198]
448FA4:  B               loc_449034
448FA6:  LDR.W           R0, [R9,#0x14]
448FAA:  LDRSB.W         R1, [R0,#5]
448FAE:  CMP             R1, #0
448FB0:  BLT             loc_448FFA
448FB2:  LDRSB.W         R1, [R0,#6]
448FB6:  CMP             R1, #0
448FB8:  BLT             loc_448FCA
448FBA:  LDR             R0, [SP,#0x230+var_1F0]; this
448FBC:  LDR             R1, [SP,#0x230+var_18C]; int
448FBE:  LDR             R2, [SP,#0x230+var_19C]; int
448FC0:  BLX             j__ZN9CPathFind15AddInteriorLinkEii; CPathFind::AddInteriorLink(int,int)
448FC4:  LDR.W           R0, [R9,#0x14]
448FC8:  ADD             R2, SP, #0x230+var_4C
448FCA:  LDRSB.W         R1, [R0,#0xA]
448FCE:  CMP             R1, #0
448FD0:  BLT             loc_448FE2
448FD2:  LDR             R0, [SP,#0x230+var_1F4]; this
448FD4:  LDR             R1, [SP,#0x230+var_18C]; int
448FD6:  LDR             R2, [SP,#0x230+var_194]; int
448FD8:  BLX             j__ZN9CPathFind15AddInteriorLinkEii; CPathFind::AddInteriorLink(int,int)
448FDC:  LDR.W           R0, [R9,#0x14]
448FE0:  ADD             R2, SP, #0x230+var_4C
448FE2:  LDRSB.W         R1, [R0,#8]
448FE6:  CMP             R1, #0
448FE8:  BLT             loc_448FFA
448FEA:  LDR             R0, [SP,#0x230+var_1F8]; this
448FEC:  LDR             R1, [SP,#0x230+var_18C]; int
448FEE:  LDR             R2, [SP,#0x230+var_198]; int
448FF0:  BLX             j__ZN9CPathFind15AddInteriorLinkEii; CPathFind::AddInteriorLink(int,int)
448FF4:  LDR.W           R0, [R9,#0x14]
448FF8:  ADD             R2, SP, #0x230+var_4C
448FFA:  LDRSB.W         R1, [R0,#0xA]
448FFE:  CMP             R1, #0
449000:  BLT.W           loc_4497F0
449004:  LDRSB.W         R1, [R0,#6]
449008:  CMP             R1, #0
44900A:  BLT             loc_44901C
44900C:  LDR             R0, [SP,#0x230+var_1FC]; this
44900E:  LDR             R1, [SP,#0x230+var_194]; int
449010:  LDR             R2, [SP,#0x230+var_19C]; int
449012:  BLX             j__ZN9CPathFind15AddInteriorLinkEii; CPathFind::AddInteriorLink(int,int)
449016:  LDR.W           R0, [R9,#0x14]
44901A:  ADD             R2, SP, #0x230+var_4C
44901C:  LDRSB.W         R0, [R0,#8]
449020:  CMP             R0, #0
449022:  BLT.W           loc_4497F0
449026:  LDR             R0, [SP,#0x230+var_200]; this
449028:  LDRD.W          R2, R1, [SP,#0x230+var_198]; int
44902C:  BLX             j__ZN9CPathFind15AddInteriorLinkEii; CPathFind::AddInteriorLink(int,int)
449030:  ADD             R2, SP, #0x230+var_4C
449032:  B               loc_4497F0
449034:  LDR             R0, [SP,#0x230+var_188]
449036:  LDR.W           R9, [R0,R5,LSL#2]
44903A:  CMP.W           R9, #0
44903E:  BEQ.W           loc_4497F0
449042:  LDR.W           R0, [R9,#0x14]
449046:  LDRSB.W         R1, [R0,#5]
44904A:  CMP             R1, #0
44904C:  BLT             loc_449140
44904E:  MOV.W           R0, #0xFFFFFFFF
449052:  LDR.W           R1, [R9,#0x514]; float
449056:  LDR.W           R2, [R9,#0x518]; float
44905A:  MOV             R10, R11
44905C:  LDR.W           R3, [R9,#0x51C]; float
449060:  STR             R6, [SP,#0x230+var_230]; bool
449062:  STRD.W          R0, R0, [SP,#0x230+var_22C]; signed __int8
449066:  STRD.W          R0, R0, [SP,#0x230+var_224]; signed __int8
44906A:  STRD.W          R0, R0, [SP,#0x230+var_21C]; signed __int8
44906E:  LDR             R0, [SP,#0x230+var_1A0]; this
449070:  BLX             j__ZN9CPathFind20AddNodeToNewInteriorEfffbaaaaaa; CPathFind::AddNodeToNewInterior(float,float,float,bool,signed char,signed char,signed char,signed char,signed char,signed char)
449074:  MOV             R6, R0
449076:  LDRSB.W         R0, [R9,#0x512]
44907A:  ADDW            R4, R9, #0x514
44907E:  CMP             R0, #0
449080:  BLT             loc_449090
449082:  LDR.W           R1, [R8,R5,LSL#2]
449086:  ADDS            R2, R1, R0; int
449088:  LDR             R0, [SP,#0x230+var_1C0]; this
44908A:  LDR             R1, [SP,#0x230+var_180]; int
44908C:  BLX             j__ZN9CPathFind15AddInteriorLinkEii; CPathFind::AddInteriorLink(int,int)
449090:  LDRSB.W         R0, [R9,#0x513]
449094:  LDR.W           R11, [SP,#0x230+var_180]
449098:  CMP             R0, #0
44909A:  BLT             loc_4490AA
44909C:  LDR.W           R1, [R8,R5,LSL#2]
4490A0:  ADDS            R2, R1, R0; int
4490A2:  LDR             R0, [SP,#0x230+var_1C4]; this
4490A4:  MOV             R1, R11; int
4490A6:  BLX             j__ZN9CPathFind15AddInteriorLinkEii; CPathFind::AddInteriorLink(int,int)
4490AA:  STR.W           R6, [R9,#0x3F0]
4490AE:  LDR             R0, [R4,#8]
4490B0:  VLDR            D16, [R4]
4490B4:  LDR.W           R1, [R9,#0x524]; float
4490B8:  LDR.W           R2, [R9,#0x528]; float
4490BC:  LDR.W           R3, [R9,#0x52C]; float
4490C0:  STR.W           R0, [R9,#0x408]
4490C4:  ADD.W           R0, R9, #0x400
4490C8:  VSTR            D16, [R0]
4490CC:  LDRB.W          R0, [R10,#0xE]
4490D0:  CMP             R0, #0
4490D2:  IT NE
4490D4:  MOVNE           R0, #1
4490D6:  STR             R0, [SP,#0x230+var_230]; bool
4490D8:  MOV.W           R0, #0xFFFFFFFF
4490DC:  STRD.W          R0, R0, [SP,#0x230+var_22C]; signed __int8
4490E0:  STRD.W          R0, R0, [SP,#0x230+var_224]; signed __int8
4490E4:  STRD.W          R0, R0, [SP,#0x230+var_21C]; signed __int8
4490E8:  LDR             R4, [SP,#0x230+var_1A4]
4490EA:  MOV             R0, R4; this
4490EC:  BLX             j__ZN9CPathFind20AddNodeToNewInteriorEfffbaaaaaa; CPathFind::AddNodeToNewInterior(float,float,float,bool,signed char,signed char,signed char,signed char,signed char,signed char)
4490F0:  ADD.W           R8, R11, #1
4490F4:  MOV             R0, R4; this
4490F6:  MOV             R2, R11; int
4490F8:  MOV             R1, R8; int
4490FA:  BLX             j__ZN9CPathFind15AddInteriorLinkEii; CPathFind::AddInteriorLink(int,int)
4490FE:  MOV             R0, R4; this
449100:  MOV             R1, R8; int
449102:  BLX             j__ZN9CPathFind37FindNearestExteriorNodeToInteriorNodeEi; CPathFind::FindNearestExteriorNodeToInteriorNode(int)
449106:  MOV             R2, R0
449108:  ADDW            R0, R9, #0x524
44910C:  UXTH            R1, R2
44910E:  MOVW            R3, #0xFFFF
449112:  CMP             R1, R3
449114:  BNE             loc_449148
449116:  LDR             R3, [SP,#0x230+var_184]
449118:  ADD             R1, SP, #0x230+var_AC
44911A:  ADD             R2, SP, #0x230+var_16C
44911C:  MOVS            R6, #0
44911E:  STR.W           R8, [R1,R3,LSL#2]
449122:  ADD.W           R1, R3, R3,LSL#1
449126:  VLDR            D16, [R0]
44912A:  ADD.W           R1, R2, R1,LSL#2
44912E:  ADD             R2, SP, #0x230+var_4C
449130:  LDR             R0, [R0,#8]
449132:  STR             R0, [R1,#8]
449134:  STRB            R6, [R2,R3]
449136:  ADDS            R3, #1
449138:  VSTR            D16, [R1]
44913C:  STR             R3, [SP,#0x230+var_184]
44913E:  B               loc_449218
449140:  MOVS            R4, #0
449142:  LDR.W           R8, [SP,#0x230+var_180]
449146:  B               loc_449226
449148:  STR.W           R2, [R9,#0x3EC]
44914C:  MOV.W           R12, R2,LSR#16
449150:  LDR             R3, [SP,#0x230+var_1E0]
449152:  MOV.W           R6, R12,LSL#3
449156:  SUB.W           R6, R6, R2,LSR#16
44915A:  ADD.W           R3, R3, R1,LSL#2
44915E:  LDR.W           R4, [R3,#0x804]
449162:  ADD.W           R6, R4, R6,LSL#2
449166:  LDRSH.W         R4, [R6,#8]
44916A:  LDRSH.W         R1, [R6,#0xA]
44916E:  LDRSH.W         R6, [R6,#0xC]
449172:  VMOV            S4, R4
449176:  VMOV            S2, R1
44917A:  VMOV            S0, R6
44917E:  VCVT.F32.S32    S0, S0
449182:  VCVT.F32.S32    S2, S2
449186:  VCVT.F32.S32    S4, S4
44918A:  VMUL.F32        S0, S0, S16
44918E:  VMUL.F32        S2, S2, S16
449192:  VMUL.F32        S4, S4, S16
449196:  VSTR            S4, [R9,#0x3F4]
44919A:  VSTR            S2, [R9,#0x3F8]
44919E:  VSTR            S0, [R9,#0x3FC]
4491A2:  LDRB.W          R1, [R10,#0xE]
4491A6:  CBNZ            R1, loc_449214
4491A8:  ADDW            R3, R3, #0x804
4491AC:  RSB.W           R6, R12, R12,LSL#3
4491B0:  ADD.W           R1, R9, #0x528
4491B4:  LDR             R3, [R3]
4491B6:  ADD.W           R3, R3, R6,LSL#2
4491BA:  LDRSH.W         R6, [R3,#8]
4491BE:  VMOV            S0, R6
4491C2:  VCVT.F32.S32    S0, S0
4491C6:  LDR.W           R3, [R3,#0xA]
4491CA:  STR             R3, [SP,#0x230+var_170]
4491CC:  ADD             R3, SP, #0x230+var_170
4491CE:  VLDR            S2, [R0]
4491D2:  VLD1.32         {D16[0]}, [R3@32]
4491D6:  VMOVL.S16       Q8, D16
4491DA:  VMUL.F32        S0, S0, S16
4491DE:  VCVT.F32.S32    D16, D16
4491E2:  VLDR            D17, [R1]
4491E6:  VMUL.F32        D16, D16, D9
4491EA:  VSUB.F32        S0, S0, S2
4491EE:  VSUB.F32        D16, D16, D17
4491F2:  VMUL.F32        S0, S0, S0
4491F6:  VMUL.F32        D1, D16, D16
4491FA:  VADD.F32        S0, S0, S2
4491FE:  VADD.F32        S0, S0, S3
449202:  VCMPE.F32       S0, S20
449206:  VMRS            APSR_nzcv, FPSCR
44920A:  BGT             loc_449214
44920C:  LDR             R0, [SP,#0x230+var_204]
44920E:  MOV             R1, R8
449210:  BLX             j__ZN9CPathFind29AddInteriorLinkToExternalNodeEi12CNodeAddress; CPathFind::AddInteriorLinkToExternalNode(int,CNodeAddress)
449214:  ADD             R2, SP, #0x230+var_4C
449216:  MOVS            R6, #0
449218:  LDR             R1, [SP,#0x230+var_180]
44921A:  MOVS            R4, #1
44921C:  LDR.W           R0, [R9,#0x14]
449220:  ADD.W           R8, R1, #2
449224:  STR             R1, [SP,#0x230+var_18C]
449226:  LDRSB.W         R1, [R0,#6]
44922A:  STR             R5, [SP,#0x230+var_180]
44922C:  CMP             R1, #0
44922E:  BLT             loc_44931C
449230:  MOV.W           R0, #0xFFFFFFFF
449234:  LDR.W           R1, [R9,#0x534]; float
449238:  LDR.W           R2, [R9,#0x538]; float
44923C:  LDR.W           R3, [R9,#0x53C]; float
449240:  STR             R6, [SP,#0x230+var_230]; bool
449242:  STRD.W          R0, R0, [SP,#0x230+var_22C]; signed __int8
449246:  STRD.W          R0, R0, [SP,#0x230+var_224]; signed __int8
44924A:  STRD.W          R0, R0, [SP,#0x230+var_21C]; signed __int8
44924E:  LDR             R0, [SP,#0x230+var_1A8]; this
449250:  BLX             j__ZN9CPathFind20AddNodeToNewInteriorEfffbaaaaaa; CPathFind::AddNodeToNewInterior(float,float,float,bool,signed char,signed char,signed char,signed char,signed char,signed char)
449254:  MOV             R6, R0
449256:  LDRSB.W         R0, [R9,#0x532]
44925A:  ADDS            R1, R0, #1
44925C:  BEQ             loc_44926E
44925E:  ADD             R1, SP, #0x230+var_6C
449260:  LDR.W           R1, [R1,R5,LSL#2]
449264:  ADDS            R2, R1, R0; int
449266:  LDR             R0, [SP,#0x230+var_1CC]; this
449268:  MOV             R1, R8; int
44926A:  BLX             j__ZN9CPathFind15AddInteriorLinkEii; CPathFind::AddInteriorLink(int,int)
44926E:  LDRSB.W         R0, [R9,#0x533]
449272:  ADDS            R1, R0, #1
449274:  BEQ             loc_449286
449276:  ADD             R1, SP, #0x230+var_6C
449278:  LDR.W           R1, [R1,R5,LSL#2]
44927C:  ADDS            R2, R1, R0; int
44927E:  LDR             R0, [SP,#0x230+var_1C8]; this
449280:  MOV             R1, R8; int
449282:  BLX             j__ZN9CPathFind15AddInteriorLinkEii; CPathFind::AddInteriorLink(int,int)
449286:  CBNZ            R4, loc_4492A2
449288:  ADDW            R0, R9, #0x534
44928C:  STR.W           R6, [R9,#0x3F0]
449290:  VLDR            D16, [R0]
449294:  LDR             R0, [R0,#8]
449296:  STR.W           R0, [R9,#0x408]
44929A:  ADD.W           R0, R9, #0x400
44929E:  VSTR            D16, [R0]
4492A2:  MOVS            R6, #0
4492A4:  MOV.W           R0, #0xFFFFFFFF
4492A8:  LDR.W           R1, [R9,#0x544]; float
4492AC:  LDR.W           R2, [R9,#0x548]; float
4492B0:  LDR.W           R3, [R9,#0x54C]; float
4492B4:  STR             R6, [SP,#0x230+var_230]; bool
4492B6:  STRD.W          R0, R0, [SP,#0x230+var_22C]; signed __int8
4492BA:  STRD.W          R0, R0, [SP,#0x230+var_224]; signed __int8
4492BE:  STRD.W          R0, R0, [SP,#0x230+var_21C]; signed __int8
4492C2:  LDR             R4, [SP,#0x230+var_1AC]
4492C4:  MOV             R0, R4; this
4492C6:  BLX             j__ZN9CPathFind20AddNodeToNewInteriorEfffbaaaaaa; CPathFind::AddNodeToNewInterior(float,float,float,bool,signed char,signed char,signed char,signed char,signed char,signed char)
4492CA:  ADD.W           R5, R8, #1
4492CE:  MOV             R0, R4; this
4492D0:  MOV             R2, R8; int
4492D2:  MOV             R1, R5; int
4492D4:  BLX             j__ZN9CPathFind15AddInteriorLinkEii; CPathFind::AddInteriorLink(int,int)
4492D8:  MOV             R0, R4; this
4492DA:  MOV             R1, R5; int
4492DC:  BLX             j__ZN9CPathFind37FindNearestExteriorNodeToInteriorNodeEi; CPathFind::FindNearestExteriorNodeToInteriorNode(int)
4492E0:  MOV             R2, R0
4492E2:  ADDW            R0, R9, #0x544
4492E6:  UXTH            R1, R2
4492E8:  MOVW            R3, #0xFFFF
4492EC:  CMP             R1, R3
4492EE:  BNE             loc_449324
4492F0:  LDR             R3, [SP,#0x230+var_184]
4492F2:  ADD             R1, SP, #0x230+var_AC
4492F4:  ADD             R2, SP, #0x230+var_16C
4492F6:  MOV.W           R11, #0
4492FA:  STR.W           R5, [R1,R3,LSL#2]
4492FE:  ADD.W           R1, R3, R3,LSL#1
449302:  VLDR            D16, [R0]
449306:  ADD.W           R1, R2, R1,LSL#2
44930A:  ADD             R2, SP, #0x230+var_4C
44930C:  LDR             R0, [R0,#8]
44930E:  STR             R0, [R1,#8]
449310:  STRB            R6, [R2,R3]
449312:  ADDS            R3, #1
449314:  VSTR            D16, [R1]
449318:  STR             R3, [SP,#0x230+var_184]
44931A:  B               loc_4493F6
44931C:  MOV.W           R11, #0
449320:  MOV             R10, R8
449322:  B               loc_449404
449324:  STR.W           R2, [R9,#0x3EC]
449328:  MOV.W           R12, R2,LSR#16
44932C:  LDR             R3, [SP,#0x230+var_1E4]
44932E:  MOV.W           R6, R12,LSL#3
449332:  SUB.W           R6, R6, R2,LSR#16
449336:  MOV.W           R11, #0
44933A:  ADD.W           R3, R3, R1,LSL#2
44933E:  LDR.W           R4, [R3,#0x804]
449342:  ADD.W           R6, R4, R6,LSL#2
449346:  LDRSH.W         R4, [R6,#8]
44934A:  LDRSH.W         R1, [R6,#0xA]
44934E:  LDRSH.W         R6, [R6,#0xC]
449352:  VMOV            S4, R4
449356:  VMOV            S2, R1
44935A:  VMOV            S0, R6
44935E:  VCVT.F32.S32    S0, S0
449362:  VCVT.F32.S32    S2, S2
449366:  VCVT.F32.S32    S4, S4
44936A:  VMUL.F32        S0, S0, S16
44936E:  VMUL.F32        S2, S2, S16
449372:  VMUL.F32        S4, S4, S16
449376:  VSTR            S4, [R9,#0x3F4]
44937A:  VSTR            S2, [R9,#0x3F8]
44937E:  VSTR            S0, [R9,#0x3FC]
449382:  LDR             R1, [SP,#0x230+var_190]
449384:  LDRB            R1, [R1,#0xE]
449386:  CBNZ            R1, loc_4493F4
449388:  ADDW            R3, R3, #0x804
44938C:  RSB.W           R6, R12, R12,LSL#3
449390:  ADD.W           R1, R9, #0x548
449394:  LDR             R3, [R3]
449396:  ADD.W           R3, R3, R6,LSL#2
44939A:  LDRSH.W         R6, [R3,#8]
44939E:  VMOV            S0, R6
4493A2:  VCVT.F32.S32    S0, S0
4493A6:  LDR.W           R3, [R3,#0xA]
4493AA:  STR             R3, [SP,#0x230+var_174]
4493AC:  ADD             R3, SP, #0x230+var_174
4493AE:  VLDR            S2, [R0]
4493B2:  VLD1.32         {D16[0]}, [R3@32]
4493B6:  VMOVL.S16       Q8, D16
4493BA:  VMUL.F32        S0, S0, S16
4493BE:  VCVT.F32.S32    D16, D16
4493C2:  VLDR            D17, [R1]
4493C6:  VMUL.F32        D16, D16, D9
4493CA:  VSUB.F32        S0, S0, S2
4493CE:  VSUB.F32        D16, D16, D17
4493D2:  VMUL.F32        S0, S0, S0
4493D6:  VMUL.F32        D1, D16, D16
4493DA:  VADD.F32        S0, S0, S2
4493DE:  VADD.F32        S0, S0, S3
4493E2:  VCMPE.F32       S0, S20
4493E6:  VMRS            APSR_nzcv, FPSCR
4493EA:  BGT             loc_4493F4
4493EC:  LDR             R0, [SP,#0x230+var_208]
4493EE:  MOV             R1, R5
4493F0:  BLX             j__ZN9CPathFind29AddInteriorLinkToExternalNodeEi12CNodeAddress; CPathFind::AddInteriorLinkToExternalNode(int,CNodeAddress)
4493F4:  ADD             R2, SP, #0x230+var_4C
4493F6:  LDR.W           R0, [R9,#0x14]
4493FA:  ADD.W           R10, R8, #2
4493FE:  MOVS            R4, #1
449400:  STR.W           R8, [SP,#0x230+var_19C]
449404:  LDRSB.W         R1, [R0,#0xA]
449408:  ADD.W           R8, SP, #0x230+var_6C
44940C:  CMP             R1, #0
44940E:  BLT             loc_449504
449410:  MOV.W           R0, #0xFFFFFFFF
449414:  LDR.W           R1, [R9,#0x554]; float
449418:  LDR.W           R2, [R9,#0x558]; float
44941C:  LDR.W           R3, [R9,#0x55C]; float
449420:  STR.W           R11, [SP,#0x230+var_230]; bool
449424:  STRD.W          R0, R0, [SP,#0x230+var_22C]; signed __int8
449428:  STRD.W          R0, R0, [SP,#0x230+var_224]; signed __int8
44942C:  STRD.W          R0, R0, [SP,#0x230+var_21C]; signed __int8
449430:  LDR             R0, [SP,#0x230+var_1B0]; this
449432:  BLX             j__ZN9CPathFind20AddNodeToNewInteriorEfffbaaaaaa; CPathFind::AddNodeToNewInterior(float,float,float,bool,signed char,signed char,signed char,signed char,signed char,signed char)
449436:  MOV             R5, R0
449438:  LDRSB.W         R0, [R9,#0x552]
44943C:  LDR             R6, [SP,#0x230+var_180]
44943E:  ADDS            R1, R0, #1
449440:  BEQ             loc_449450
449442:  LDR.W           R1, [R8,R6,LSL#2]
449446:  ADDS            R2, R1, R0; int
449448:  LDR             R0, [SP,#0x230+var_1D4]; this
44944A:  MOV             R1, R10; int
44944C:  BLX             j__ZN9CPathFind15AddInteriorLinkEii; CPathFind::AddInteriorLink(int,int)
449450:  LDRSB.W         R0, [R9,#0x553]
449454:  LDR.W           R8, [SP,#0x230+var_190]
449458:  ADDS            R1, R0, #1
44945A:  BEQ             loc_44946C
44945C:  ADD             R1, SP, #0x230+var_6C
44945E:  LDR.W           R1, [R1,R6,LSL#2]
449462:  ADDS            R2, R1, R0; int
449464:  LDR             R0, [SP,#0x230+var_1D0]; this
449466:  MOV             R1, R10; int
449468:  BLX             j__ZN9CPathFind15AddInteriorLinkEii; CPathFind::AddInteriorLink(int,int)
44946C:  CBNZ            R4, loc_449488
44946E:  ADDW            R0, R9, #0x554
449472:  STR.W           R5, [R9,#0x3F0]
449476:  VLDR            D16, [R0]
44947A:  LDR             R0, [R0,#8]
44947C:  STR.W           R0, [R9,#0x408]
449480:  ADD.W           R0, R9, #0x400
449484:  VSTR            D16, [R0]
449488:  MOVS            R4, #0
44948A:  MOV.W           R0, #0xFFFFFFFF
44948E:  LDR.W           R1, [R9,#0x564]; float
449492:  LDR.W           R2, [R9,#0x568]; float
449496:  LDR.W           R3, [R9,#0x56C]; float
44949A:  STR             R4, [SP,#0x230+var_230]; bool
44949C:  STRD.W          R0, R0, [SP,#0x230+var_22C]; signed __int8
4494A0:  STRD.W          R0, R0, [SP,#0x230+var_224]; signed __int8
4494A4:  STRD.W          R0, R0, [SP,#0x230+var_21C]; signed __int8
4494A8:  LDR.W           R11, [SP,#0x230+var_1B4]
4494AC:  MOV             R0, R11; this
4494AE:  BLX             j__ZN9CPathFind20AddNodeToNewInteriorEfffbaaaaaa; CPathFind::AddNodeToNewInterior(float,float,float,bool,signed char,signed char,signed char,signed char,signed char,signed char)
4494B2:  ADD.W           R6, R10, #1
4494B6:  MOV             R0, R11; this
4494B8:  MOV             R2, R10; int
4494BA:  MOV             R1, R6; int
4494BC:  BLX             j__ZN9CPathFind15AddInteriorLinkEii; CPathFind::AddInteriorLink(int,int)
4494C0:  MOV             R0, R11; this
4494C2:  MOV             R1, R6; int
4494C4:  BLX             j__ZN9CPathFind37FindNearestExteriorNodeToInteriorNodeEi; CPathFind::FindNearestExteriorNodeToInteriorNode(int)
4494C8:  MOV             R2, R0
4494CA:  ADDW            R0, R9, #0x564
4494CE:  UXTH            R1, R2
4494D0:  MOVW            R3, #0xFFFF
4494D4:  CMP             R1, R3
4494D6:  BNE             loc_44950E
4494D8:  LDR             R3, [SP,#0x230+var_184]
4494DA:  ADD             R1, SP, #0x230+var_AC
4494DC:  ADD             R2, SP, #0x230+var_16C
4494DE:  LDR             R5, [SP,#0x230+var_180]
4494E0:  MOV             R11, R8
4494E2:  STR.W           R6, [R1,R3,LSL#2]
4494E6:  ADD.W           R1, R3, R3,LSL#1
4494EA:  VLDR            D16, [R0]
4494EE:  ADD.W           R1, R2, R1,LSL#2
4494F2:  ADD             R2, SP, #0x230+var_4C
4494F4:  LDR             R0, [R0,#8]
4494F6:  STR             R0, [R1,#8]
4494F8:  STRB            R4, [R2,R3]
4494FA:  ADDS            R3, #1
4494FC:  VSTR            D16, [R1]
449500:  STR             R3, [SP,#0x230+var_184]
449502:  B               loc_4495E6
449504:  MOV             R8, R10
449506:  LDR.W           R11, [SP,#0x230+var_190]
44950A:  LDR             R5, [SP,#0x230+var_180]
44950C:  B               loc_4495F4
44950E:  STR.W           R2, [R9,#0x3EC]
449512:  MOV.W           R12, R2,LSR#16
449516:  LDR             R3, [SP,#0x230+var_1E8]
449518:  MOV.W           R4, R12,LSL#3
44951C:  SUB.W           R4, R4, R2,LSR#16
449520:  MOV             R11, R8
449522:  ADD.W           LR, R3, R1,LSL#2
449526:  LDR.W           R1, [LR,#0x804]
44952A:  ADD.W           R1, R1, R4,LSL#2
44952E:  LDRSH.W         R4, [R1,#8]
449532:  LDRSH.W         R3, [R1,#0xA]
449536:  LDRSH.W         R1, [R1,#0xC]
44953A:  VMOV            S4, R4
44953E:  VMOV            S2, R3
449542:  VMOV            S0, R1
449546:  VCVT.F32.S32    S0, S0
44954A:  VCVT.F32.S32    S2, S2
44954E:  VCVT.F32.S32    S4, S4
449552:  VMUL.F32        S0, S0, S16
449556:  VMUL.F32        S2, S2, S16
44955A:  VMUL.F32        S4, S4, S16
44955E:  VSTR            S4, [R9,#0x3F4]
449562:  VSTR            S2, [R9,#0x3F8]
449566:  VSTR            S0, [R9,#0x3FC]
44956A:  LDRB.W          R1, [R11,#0xE]
44956E:  CBZ             R1, loc_449576
449570:  ADD             R2, SP, #0x230+var_4C
449572:  LDR             R5, [SP,#0x230+var_180]
449574:  B               loc_4495E6
449576:  ADDW            R3, LR, #0x804
44957A:  RSB.W           R4, R12, R12,LSL#3
44957E:  ADD.W           R1, R9, #0x568
449582:  LDR             R3, [R3]
449584:  ADD.W           R3, R3, R4,LSL#2
449588:  LDRSH.W         R4, [R3,#8]
44958C:  VMOV            S0, R4
449590:  VCVT.F32.S32    S0, S0
449594:  LDR.W           R3, [R3,#0xA]
449598:  STR             R3, [SP,#0x230+var_178]
44959A:  ADD             R3, SP, #0x230+var_178
44959C:  VLDR            S2, [R0]
4495A0:  VLD1.32         {D16[0]}, [R3@32]
4495A4:  LDR             R5, [SP,#0x230+var_180]
4495A6:  VMOVL.S16       Q8, D16
4495AA:  VMUL.F32        S0, S0, S16
4495AE:  VCVT.F32.S32    D16, D16
4495B2:  VLDR            D17, [R1]
4495B6:  VMUL.F32        D16, D16, D9
4495BA:  VSUB.F32        S0, S0, S2
4495BE:  VSUB.F32        D16, D16, D17
4495C2:  VMUL.F32        S0, S0, S0
4495C6:  VMUL.F32        D1, D16, D16
4495CA:  VADD.F32        S0, S0, S2
4495CE:  VADD.F32        S0, S0, S3
4495D2:  VCMPE.F32       S0, S20
4495D6:  VMRS            APSR_nzcv, FPSCR
4495DA:  BGT             loc_4495E4
4495DC:  LDR             R0, [SP,#0x230+var_20C]
4495DE:  MOV             R1, R6
4495E0:  BLX             j__ZN9CPathFind29AddInteriorLinkToExternalNodeEi12CNodeAddress; CPathFind::AddInteriorLinkToExternalNode(int,CNodeAddress)
4495E4:  ADD             R2, SP, #0x230+var_4C
4495E6:  LDR.W           R0, [R9,#0x14]
4495EA:  ADD.W           R8, R10, #2
4495EE:  MOVS            R4, #1
4495F0:  STR.W           R10, [SP,#0x230+var_194]
4495F4:  LDRSB.W         R0, [R0,#8]
4495F8:  MOVS            R6, #0
4495FA:  CMP             R0, #0
4495FC:  BLT             loc_4496F4
4495FE:  MOV.W           R0, #0xFFFFFFFF
449602:  LDR.W           R1, [R9,#0x574]; float
449606:  LDR.W           R2, [R9,#0x578]; float
44960A:  LDR.W           R3, [R9,#0x57C]; float
44960E:  STR             R6, [SP,#0x230+var_230]; bool
449610:  STRD.W          R0, R0, [SP,#0x230+var_22C]; signed __int8
449614:  STRD.W          R0, R0, [SP,#0x230+var_224]; signed __int8
449618:  STRD.W          R0, R0, [SP,#0x230+var_21C]; signed __int8
44961C:  LDR             R0, [SP,#0x230+var_1B8]; this
44961E:  BLX             j__ZN9CPathFind20AddNodeToNewInteriorEfffbaaaaaa; CPathFind::AddNodeToNewInterior(float,float,float,bool,signed char,signed char,signed char,signed char,signed char,signed char)
449622:  MOV             R10, R0
449624:  LDRSB.W         R0, [R9,#0x572]
449628:  ADDS            R1, R0, #1
44962A:  BEQ             loc_44963C
44962C:  ADD             R1, SP, #0x230+var_6C
44962E:  LDR.W           R1, [R1,R5,LSL#2]
449632:  ADDS            R2, R1, R0; int
449634:  LDR             R0, [SP,#0x230+var_1DC]; this
449636:  MOV             R1, R8; int
449638:  BLX             j__ZN9CPathFind15AddInteriorLinkEii; CPathFind::AddInteriorLink(int,int)
44963C:  LDRSB.W         R0, [R9,#0x573]
449640:  LDR             R6, [SP,#0x230+var_184]
449642:  ADDS            R1, R0, #1
449644:  BEQ             loc_449656
449646:  ADD             R1, SP, #0x230+var_6C
449648:  LDR.W           R1, [R1,R5,LSL#2]
44964C:  ADDS            R2, R1, R0; int
44964E:  LDR             R0, [SP,#0x230+var_1D8]; this
449650:  MOV             R1, R8; int
449652:  BLX             j__ZN9CPathFind15AddInteriorLinkEii; CPathFind::AddInteriorLink(int,int)
449656:  CBNZ            R4, loc_449672
449658:  ADDW            R0, R9, #0x574
44965C:  STR.W           R10, [R9,#0x3F0]
449660:  VLDR            D16, [R0]
449664:  LDR             R0, [R0,#8]
449666:  STR.W           R0, [R9,#0x408]
44966A:  ADD.W           R0, R9, #0x400
44966E:  VSTR            D16, [R0]
449672:  MOV.W           R11, #0
449676:  MOV.W           R0, #0xFFFFFFFF
44967A:  LDR.W           R1, [R9,#0x584]; float
44967E:  LDR.W           R2, [R9,#0x588]; float
449682:  LDR.W           R3, [R9,#0x58C]; float
449686:  STR.W           R11, [SP,#0x230+var_230]; bool
44968A:  STRD.W          R0, R0, [SP,#0x230+var_22C]; signed __int8
44968E:  STRD.W          R0, R0, [SP,#0x230+var_224]; signed __int8
449692:  STRD.W          R0, R0, [SP,#0x230+var_21C]; signed __int8
449696:  LDR             R4, [SP,#0x230+var_1BC]
449698:  MOV             R0, R4; this
44969A:  BLX             j__ZN9CPathFind20AddNodeToNewInteriorEfffbaaaaaa; CPathFind::AddNodeToNewInterior(float,float,float,bool,signed char,signed char,signed char,signed char,signed char,signed char)
44969E:  ADD.W           R10, R8, #1
4496A2:  MOV             R0, R4; this
4496A4:  MOV             R2, R8; int
4496A6:  MOV             R1, R10; int
4496A8:  BLX             j__ZN9CPathFind15AddInteriorLinkEii; CPathFind::AddInteriorLink(int,int)
4496AC:  MOV             R0, R4; this
4496AE:  MOV             R1, R10; int
4496B0:  BLX             j__ZN9CPathFind37FindNearestExteriorNodeToInteriorNodeEi; CPathFind::FindNearestExteriorNodeToInteriorNode(int)
4496B4:  MOV             R2, R0
4496B6:  ADDW            R0, R9, #0x584
4496BA:  UXTH            R1, R2
4496BC:  MOVW            R3, #0xFFFF
4496C0:  CMP             R1, R3
4496C2:  BNE             loc_4496FA
4496C4:  ADD             R1, SP, #0x230+var_AC
4496C6:  ADD             R2, SP, #0x230+var_16C
4496C8:  LDR             R5, [SP,#0x230+var_180]
4496CA:  STR.W           R10, [R1,R6,LSL#2]
4496CE:  ADD.W           R1, R6, R6,LSL#1
4496D2:  ADD.W           R1, R2, R1,LSL#2
4496D6:  ADD             R2, SP, #0x230+var_4C
4496D8:  VLDR            D16, [R0]
4496DC:  LDR             R0, [R0,#8]
4496DE:  STRB.W          R11, [R2,R6]
4496E2:  ADDS            R6, #1
4496E4:  LDR.W           R11, [SP,#0x230+var_190]
4496E8:  STR             R6, [SP,#0x230+var_184]
4496EA:  MOVS            R6, #0
4496EC:  STR             R0, [R1,#8]
4496EE:  VSTR            D16, [R1]
4496F2:  B               loc_4497D8
4496F4:  STR.W           R8, [SP,#0x230+var_180]
4496F8:  B               loc_4497E2
4496FA:  STR.W           R2, [R9,#0x3EC]
4496FE:  MOV.W           R12, R2,LSR#16
449702:  LDR             R3, [SP,#0x230+var_1EC]
449704:  MOV.W           R4, R12,LSL#3
449708:  SUB.W           R4, R4, R2,LSR#16
44970C:  ADD.W           LR, R3, R1,LSL#2
449710:  LDR.W           R1, [LR,#0x804]
449714:  ADD.W           R1, R1, R4,LSL#2
449718:  LDRSH.W         R4, [R1,#8]
44971C:  LDRSH.W         R3, [R1,#0xA]
449720:  LDRSH.W         R1, [R1,#0xC]
449724:  VMOV            S4, R4
449728:  VMOV            S2, R3
44972C:  VMOV            S0, R1
449730:  VCVT.F32.S32    S0, S0
449734:  VCVT.F32.S32    S2, S2
449738:  VCVT.F32.S32    S4, S4
44973C:  VMUL.F32        S0, S0, S16
449740:  VMUL.F32        S2, S2, S16
449744:  VMUL.F32        S4, S4, S16
449748:  VSTR            S4, [R9,#0x3F4]
44974C:  VSTR            S2, [R9,#0x3F8]
449750:  VSTR            S0, [R9,#0x3FC]
449754:  LDR.W           R11, [SP,#0x230+var_190]
449758:  LDRB.W          R1, [R11,#0xE]
44975C:  CBZ             R1, loc_449766
44975E:  ADD             R2, SP, #0x230+var_4C
449760:  MOVS            R6, #0
449762:  LDR             R5, [SP,#0x230+var_180]
449764:  B               loc_4497D8
449766:  ADDW            R3, LR, #0x804
44976A:  RSB.W           R4, R12, R12,LSL#3
44976E:  ADD.W           R1, R9, #0x588
449772:  LDR             R3, [R3]
449774:  ADD.W           R3, R3, R4,LSL#2
449778:  LDRSH.W         R4, [R3,#8]
44977C:  VMOV            S0, R4
449780:  VCVT.F32.S32    S0, S0
449784:  LDR.W           R3, [R3,#0xA]
449788:  STR             R3, [SP,#0x230+var_17C]
44978A:  ADD             R3, SP, #0x230+var_17C
44978C:  VLDR            S2, [R0]
449790:  VLD1.32         {D16[0]}, [R3@32]
449794:  LDR             R5, [SP,#0x230+var_180]
449796:  VMOVL.S16       Q8, D16
44979A:  VMUL.F32        S0, S0, S16
44979E:  VCVT.F32.S32    D16, D16
4497A2:  VLDR            D17, [R1]
4497A6:  VMUL.F32        D16, D16, D9
4497AA:  VSUB.F32        S0, S0, S2
4497AE:  VSUB.F32        D16, D16, D17
4497B2:  VMUL.F32        S0, S0, S0
4497B6:  VMUL.F32        D1, D16, D16
4497BA:  VADD.F32        S0, S0, S2
4497BE:  VADD.F32        S0, S0, S3
4497C2:  VCMPE.F32       S0, S20
4497C6:  VMRS            APSR_nzcv, FPSCR
4497CA:  BGT             loc_4497D4
4497CC:  LDR             R0, [SP,#0x230+var_210]
4497CE:  MOV             R1, R10
4497D0:  BLX             j__ZN9CPathFind29AddInteriorLinkToExternalNodeEi12CNodeAddress; CPathFind::AddInteriorLinkToExternalNode(int,CNodeAddress)
4497D4:  ADD             R2, SP, #0x230+var_4C
4497D6:  MOVS            R6, #0
4497D8:  ADD.W           R0, R8, #2
4497DC:  STR             R0, [SP,#0x230+var_180]
4497DE:  STR.W           R8, [SP,#0x230+var_198]
4497E2:  LDRB.W          R0, [R9,#0x40C]
4497E6:  ADD.W           R8, SP, #0x230+var_6C
4497EA:  CMP             R0, #0
4497EC:  BEQ.W           loc_448FA6
4497F0:  ADDS            R5, #1
4497F2:  CMP             R5, #8
4497F4:  BNE.W           loc_449034
4497F8:  LDR             R6, [SP,#0x230+var_184]
4497FA:  CMP             R6, #1
4497FC:  BLT             loc_4498D4
4497FE:  ADD             R0, SP, #0x230+var_16C
449800:  VMOV.F32        S18, #3.0
449804:  ADD.W           R9, R0, #4
449808:  LDR             R0, =(ThePaths_ptr - 0x449816)
44980A:  VLDR            S16, =1.0e9
44980E:  MOV.W           R10, #0
449812:  ADD             R0, PC; ThePaths_ptr
449814:  LDR.W           R8, [R0]; ThePaths
449818:  LDR             R0, =(ThePaths_ptr - 0x44981E)
44981A:  ADD             R0, PC; ThePaths_ptr
44981C:  LDR.W           R11, [R0]; ThePaths
449820:  LDRB.W          R0, [R2,R10]
449824:  CMP             R0, #0
449826:  BNE             loc_4498CC
449828:  ADD.W           R0, R10, R10,LSL#1
44982C:  ADD             R1, SP, #0x230+var_16C
44982E:  VMOV            D0, D8
449832:  MOV             R3, R10
449834:  ADD.W           R1, R1, R0,LSL#2
449838:  MOV.W           R0, #0xFFFFFFFF
44983C:  ADD.W           R12, R1, #4
449840:  B               loc_449880
449842:  VLDR            S2, [R5,#-4]
449846:  SUBS            R3, #1
449848:  VLDR            S4, [R1]
44984C:  VLDR            D16, [R5]
449850:  VSUB.F32        S2, S4, S2
449854:  VLDR            D17, [R12]
449858:  VSUB.F32        D16, D17, D16
44985C:  VMUL.F32        D2, D16, D16
449860:  VMUL.F32        S2, S2, S2
449864:  VADD.F32        S2, S2, S4
449868:  VADD.F32        S2, S2, S5
44986C:  VMIN.F32        D2, D1, D0
449870:  VCMPE.F32       S2, S0
449874:  VMRS            APSR_nzcv, FPSCR
449878:  VMOV            D0, D2
44987C:  IT LT
44987E:  MOVLT           R0, R3
449880:  ADD.W           R5, R3, R3,LSL#1
449884:  ADDS            R3, #1
449886:  ADD.W           R5, R9, R5,LSL#2
44988A:  CMP             R3, R6
44988C:  BGE             loc_44989A
44988E:  LDRB            R4, [R2,R3]
449890:  ADDS            R5, #0xC
449892:  ADDS            R3, #1
449894:  CMP             R4, #0
449896:  BNE             loc_44988A
449898:  B               loc_449842
44989A:  VCMPE.F32       S0, S18
44989E:  VMRS            APSR_nzcv, FPSCR
4498A2:  BGE             loc_4498BE
4498A4:  MOVS            R1, #1
4498A6:  STRB.W          R1, [R2,R10]
4498AA:  STRB            R1, [R2,R0]
4498AC:  ADD             R1, SP, #0x230+var_AC
4498AE:  LDR.W           R2, [R1,R0,LSL#2]; int
4498B2:  MOV             R0, R8; this
4498B4:  LDR.W           R1, [R1,R10,LSL#2]; int
4498B8:  BLX             j__ZN9CPathFind15AddInteriorLinkEii; CPathFind::AddInteriorLink(int,int)
4498BC:  B               loc_4498CA
4498BE:  ADD             R0, SP, #0x230+var_AC
4498C0:  LDR.W           R1, [R0,R10,LSL#2]; int
4498C4:  MOV             R0, R11; this
4498C6:  BLX             j__ZN9CPathFind19RemoveInteriorLinksEi; CPathFind::RemoveInteriorLinks(int)
4498CA:  ADD             R2, SP, #0x230+var_4C
4498CC:  ADD.W           R10, R10, #1
4498D0:  CMP             R10, R6
4498D2:  BNE             loc_449820
4498D4:  LDR             R0, =(ThePaths_ptr - 0x4498DC)
4498D6:  MOVS            R1, #0
4498D8:  ADD             R0, PC; ThePaths_ptr
4498DA:  LDR             R0, [R0]; ThePaths
4498DC:  BLX             j__ZN9CPathFind19CompleteNewInteriorEP12CNodeAddress; CPathFind::CompleteNewInterior(CNodeAddress *)
4498E0:  LDR             R1, [SP,#0x230+var_190]
4498E2:  MOVS            R0, #1
4498E4:  STRB.W          R0, [R1,#0xB8]
4498E8:  LDR             R0, =(__stack_chk_guard_ptr - 0x4498F0)
4498EA:  LDR             R1, [SP,#0x230+var_3C]
4498EC:  ADD             R0, PC; __stack_chk_guard_ptr
4498EE:  LDR             R0, [R0]; __stack_chk_guard
4498F0:  LDR             R0, [R0]
4498F2:  SUBS            R0, R0, R1
4498F4:  ITTTT EQ
4498F6:  ADDEQ           SP, SP, #0x1F8
4498F8:  VPOPEQ          {D8-D10}
4498FC:  ADDEQ           SP, SP, #4
4498FE:  POPEQ.W         {R8-R11}
449902:  IT EQ
449904:  POPEQ           {R4-R7,PC}
449906:  BLX             __stack_chk_fail
