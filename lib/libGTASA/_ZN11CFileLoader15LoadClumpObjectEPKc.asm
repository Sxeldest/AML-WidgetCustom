; =========================================================
; Game Engine Function: _ZN11CFileLoader15LoadClumpObjectEPKc
; Address            : 0x469814 - 0x469890
; =========================================================

469814:  PUSH            {R4,R5,R7,LR}
469816:  ADD             R7, SP, #8
469818:  SUB             SP, SP, #0x40
46981A:  LDR             R1, =(__stack_chk_guard_ptr - 0x469828)
46981C:  ADD             R2, SP, #0x48+var_40
46981E:  ADD             R3, SP, #0x48+var_24
469820:  MOV.W           R4, #0xFFFFFFFF
469824:  ADD             R1, PC; __stack_chk_guard_ptr
469826:  LDR             R1, [R1]; __stack_chk_guard
469828:  LDR             R1, [R1]
46982A:  STR             R1, [SP,#0x48+var_C]
46982C:  ADD             R1, SP, #0x48+var_3C
46982E:  STR             R1, [SP,#0x48+var_48]
469830:  ADR             R1, aDSS; "%d %s %s"
469832:  STR             R4, [SP,#0x48+var_40]
469834:  BLX             sscanf
469838:  CMP             R0, #3
46983A:  BNE             loc_469878
46983C:  LDR             R0, [SP,#0x48+var_40]; this
46983E:  BLX             j__ZN10CModelInfo13AddClumpModelEi; CModelInfo::AddClumpModel(int)
469842:  ADD             R5, SP, #0x48+var_24
469844:  MOV             R4, R0
469846:  MOV             R0, R5; this
469848:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
46984C:  STR             R0, [R4,#4]
46984E:  ADD.W           R0, R4, #8; char *
469852:  MOV             R1, R5; char *
469854:  BLX             strcpy
469858:  LDR             R0, [SP,#0x48+var_40]; this
46985A:  BLX             j__ZN10CStreaming14GetModelCDNameEi; CStreaming::GetModelCDName(int)
46985E:  ADD             R1, SP, #0x48+var_3C; CTxdStore *
469860:  MOV             R2, R0; char *
469862:  MOV             R0, R4; this
469864:  BLX             j__ZN14CBaseModelInfo16SetTexDictionaryEPKcS1_; CBaseModelInfo::SetTexDictionary(char const*,char const*)
469868:  LDR             R0, =(_ZN14CTempColModels15ms_colModelBBoxE_ptr - 0x469870)
46986A:  MOVS            R2, #0; bool
46986C:  ADD             R0, PC; _ZN14CTempColModels15ms_colModelBBoxE_ptr
46986E:  LDR             R1, [R0]; CColModel *
469870:  MOV             R0, R4; this
469872:  BLX             j__ZN14CBaseModelInfo11SetColModelEP9CColModelb; CBaseModelInfo::SetColModel(CColModel *,bool)
469876:  LDR             R4, [SP,#0x48+var_40]
469878:  LDR             R0, =(__stack_chk_guard_ptr - 0x469880)
46987A:  LDR             R1, [SP,#0x48+var_C]
46987C:  ADD             R0, PC; __stack_chk_guard_ptr
46987E:  LDR             R0, [R0]; __stack_chk_guard
469880:  LDR             R0, [R0]
469882:  SUBS            R0, R0, R1
469884:  ITTT EQ
469886:  MOVEQ           R0, R4
469888:  ADDEQ           SP, SP, #0x40 ; '@'
46988A:  POPEQ           {R4,R5,R7,PC}
46988C:  BLX             __stack_chk_fail
