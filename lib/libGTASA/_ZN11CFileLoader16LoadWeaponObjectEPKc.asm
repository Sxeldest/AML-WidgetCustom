; =========================================================
; Game Engine Function: _ZN11CFileLoader16LoadWeaponObjectEPKc
; Address            : 0x46975C - 0x4697F4
; =========================================================

46975C:  PUSH            {R4-R7,LR}
46975E:  ADD             R7, SP, #0xC
469760:  PUSH.W          {R8}
469764:  SUB             SP, SP, #0x60
469766:  LDR             R1, =(__stack_chk_guard_ptr - 0x469776)
469768:  SUB.W           R8, R7, #-var_4E
46976C:  SUB.W           R4, R7, #-var_29
469770:  ADD             R2, SP, #0x70+var_58
469772:  ADD             R1, PC; __stack_chk_guard_ptr
469774:  SUB.W           R5, R7, #-var_3E
469778:  MOV             R3, R4
46977A:  LDR             R1, [R1]; __stack_chk_guard
46977C:  LDR             R1, [R1]
46977E:  STR             R1, [SP,#0x70+var_14]
469780:  ADD             R1, SP, #0x70+var_5C
469782:  STRD.W          R5, R8, [SP,#0x70+var_70]
469786:  STRD.W          R2, R1, [SP,#0x70+var_68]
46978A:  ADR             R1, aDSSSDF; "%d %s %s %s %d %f"
46978C:  ADD             R2, SP, #0x70+var_54
46978E:  BLX             sscanf
469792:  LDR             R0, [SP,#0x70+var_54]; this
469794:  BLX             j__ZN10CModelInfo14AddWeaponModelEi; CModelInfo::AddWeaponModel(int)
469798:  MOV             R6, R0
46979A:  MOV             R0, R4; this
46979C:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
4697A0:  STR             R0, [R6,#4]
4697A2:  ADD.W           R0, R6, #8; char *
4697A6:  MOV             R1, R4; char *
4697A8:  BLX             strcpy
4697AC:  LDR             R0, [SP,#0x70+var_5C]
4697AE:  STR             R0, [R6,#0x30]
4697B0:  LDR             R0, [SP,#0x70+var_54]; this
4697B2:  BLX             j__ZN10CStreaming14GetModelCDNameEi; CStreaming::GetModelCDName(int)
4697B6:  MOV             R2, R0; char *
4697B8:  MOV             R0, R6; this
4697BA:  MOV             R1, R5; CTxdStore *
4697BC:  BLX             j__ZN14CBaseModelInfo16SetTexDictionaryEPKcS1_; CBaseModelInfo::SetTexDictionary(char const*,char const*)
4697C0:  LDR             R0, [R6]
4697C2:  MOV             R1, R8
4697C4:  LDR             R2, [R0,#0x34]
4697C6:  MOV             R0, R6
4697C8:  BLX             R2
4697CA:  LDR             R0, =(_ZN14CTempColModels17ms_colModelWeaponE_ptr - 0x4697D2)
4697CC:  MOVS            R2, #0; bool
4697CE:  ADD             R0, PC; _ZN14CTempColModels17ms_colModelWeaponE_ptr
4697D0:  LDR             R1, [R0]; CColModel *
4697D2:  MOV             R0, R6; this
4697D4:  BLX             j__ZN14CBaseModelInfo11SetColModelEP9CColModelb; CBaseModelInfo::SetColModel(CColModel *,bool)
4697D8:  LDR             R1, =(__stack_chk_guard_ptr - 0x4697E0)
4697DA:  LDR             R0, [SP,#0x70+var_54]
4697DC:  ADD             R1, PC; __stack_chk_guard_ptr
4697DE:  LDR             R2, [SP,#0x70+var_14]
4697E0:  LDR             R1, [R1]; __stack_chk_guard
4697E2:  LDR             R1, [R1]
4697E4:  SUBS            R1, R1, R2
4697E6:  ITTT EQ
4697E8:  ADDEQ           SP, SP, #0x60 ; '`'
4697EA:  POPEQ.W         {R8}
4697EE:  POPEQ           {R4-R7,PC}
4697F0:  BLX             __stack_chk_fail
