; =========================================================
; Game Engine Function: _ZN11CFileLoader23LoadAnimatedClumpObjectEPKc
; Address            : 0x4698A8 - 0x4699C2
; =========================================================

4698A8:  PUSH            {R4-R7,LR}
4698AA:  ADD             R7, SP, #0xC
4698AC:  PUSH.W          {R11}
4698B0:  SUB             SP, SP, #0x68
4698B2:  LDR             R1, =(__stack_chk_guard_ptr - 0x4698C0)
4698B4:  MOV.W           R4, #0xFFFFFFFF
4698B8:  LDR             R2, =(aNull_7 - 0x4698C4); "null"
4698BA:  ADD             R3, SP, #0x78+var_60
4698BC:  ADD             R1, PC; __stack_chk_guard_ptr
4698BE:  ADD             R6, SP, #0x78+var_44
4698C0:  ADD             R2, PC; "null"
4698C2:  LDR             R1, [R1]; __stack_chk_guard
4698C4:  VLD1.64         {D16-D17}, [R2]
4698C8:  MOVS            R2, #0x44FA0000
4698CE:  LDR             R1, [R1]
4698D0:  STR             R1, [SP,#0x78+var_14]
4698D2:  ADD             R1, SP, #0x78+var_58
4698D4:  STR             R2, [SP,#0x78+var_60]
4698D6:  ADD             R2, SP, #0x78+var_64
4698D8:  STR             R4, [SP,#0x78+var_5C]
4698DA:  VST1.64         {D16-D17}, [R1]
4698DE:  STRD.W          R6, R1, [SP,#0x78+var_78]
4698E2:  ADR             R1, aDSSSFD; "%d %s %s %s %f %d"
4698E4:  STRD.W          R3, R2, [SP,#0x78+var_70]
4698E8:  ADD             R2, SP, #0x78+var_5C
4698EA:  ADD             R3, SP, #0x78+var_2C
4698EC:  BLX             sscanf
4698F0:  CMP             R0, #6
4698F2:  BNE             loc_4699A6
4698F4:  LDR             R0, [SP,#0x78+var_5C]; this
4698F6:  BLX             j__ZN10CModelInfo13AddClumpModelEi; CModelInfo::AddClumpModel(int)
4698FA:  ADD             R5, SP, #0x78+var_2C
4698FC:  MOV             R4, R0
4698FE:  MOV             R0, R5; this
469900:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
469904:  STR             R0, [R4,#4]
469906:  ADD.W           R0, R4, #8; char *
46990A:  MOV             R1, R5; char *
46990C:  BLX             strcpy
469910:  LDR             R0, [SP,#0x78+var_5C]; this
469912:  BLX             j__ZN10CStreaming14GetModelCDNameEi; CStreaming::GetModelCDName(int)
469916:  ADD             R1, SP, #0x78+var_44; CTxdStore *
469918:  MOV             R2, R0; char *
46991A:  MOV             R0, R4; this
46991C:  BLX             j__ZN14CBaseModelInfo16SetTexDictionaryEPKcS1_; CBaseModelInfo::SetTexDictionary(char const*,char const*)
469920:  LDR             R0, [R4]
469922:  ADD             R5, SP, #0x78+var_58
469924:  LDR             R1, [SP,#0x78+var_60]
469926:  STR             R1, [R4,#0x30]
469928:  MOV             R1, R5
46992A:  LDR             R2, [R0,#0x34]
46992C:  MOV             R0, R4
46992E:  BLX             R2
469930:  LDRH            R0, [R4,#0x28]
469932:  LDR             R1, [SP,#0x78+var_64]
469934:  BIC.W           R2, R0, #2
469938:  TST.W           R1, #0xC
46993C:  IT NE
46993E:  ORRNE.W         R2, R0, #2
469942:  TST.W           R1, #8
469946:  BIC.W           R0, R2, #4
46994A:  IT NE
46994C:  ORRNE.W         R0, R2, #4
469950:  TST.W           R1, #0x40
469954:  BIC.W           R2, R0, #8
469958:  IT NE
46995A:  ORRNE.W         R2, R0, #8
46995E:  MOVW            R0, #0xFFEF
469962:  ANDS            R0, R2
469964:  TST.W           R1, #0x80
469968:  IT NE
46996A:  ORRNE.W         R0, R2, #0x10
46996E:  MOVW            R2, #0xFFBF
469972:  ANDS            R2, R0
469974:  TST.W           R1, #0x200000
469978:  IT EQ
46997A:  ORREQ.W         R2, R0, #0x40 ; '@'
46997E:  MOVW            R0, #0xFBFF
469982:  AND.W           R6, R2, R0
469986:  TST.W           R1, #0x20
46998A:  ADR             R1, aNull_2; "null"
46998C:  IT NE
46998E:  ORRNE.W         R6, R2, #0x400
469992:  MOV             R0, R5; char *
469994:  STRH            R6, [R4,#0x28]
469996:  BLX             strcmp
46999A:  CMP             R0, #0
46999C:  ITT NE
46999E:  ORRNE.W         R0, R6, #0x100
4699A2:  STRHNE          R0, [R4,#0x28]
4699A4:  LDR             R4, [SP,#0x78+var_5C]
4699A6:  LDR             R0, =(__stack_chk_guard_ptr - 0x4699AE)
4699A8:  LDR             R1, [SP,#0x78+var_14]
4699AA:  ADD             R0, PC; __stack_chk_guard_ptr
4699AC:  LDR             R0, [R0]; __stack_chk_guard
4699AE:  LDR             R0, [R0]
4699B0:  SUBS            R0, R0, R1
4699B2:  ITTTT EQ
4699B4:  MOVEQ           R0, R4
4699B6:  ADDEQ           SP, SP, #0x68 ; 'h'
4699B8:  POPEQ.W         {R11}
4699BC:  POPEQ           {R4-R7,PC}
4699BE:  BLX             __stack_chk_fail
