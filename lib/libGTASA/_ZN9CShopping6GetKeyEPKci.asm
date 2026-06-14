; =========================================================
; Game Engine Function: _ZN9CShopping6GetKeyEPKci
; Address            : 0x35FA70 - 0x35FAAA
; =========================================================

35FA70:  PUSH            {R7,LR}
35FA72:  MOV             R7, SP
35FA74:  SUB             SP, SP, #8
35FA76:  SUBS            R2, R1, #4; int *
35FA78:  CMP             R2, #3
35FA7A:  BCS             loc_35FA82
35FA7C:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
35FA80:  B               loc_35FA8E
35FA82:  CMP             R1, #2
35FA84:  BEQ             loc_35FA94
35FA86:  CMP             R1, #9
35FA88:  BNE             loc_35FA98
35FA8A:  BLX             j__ZN11CWeaponInfo14FindWeaponTypeEPKc; CWeaponInfo::FindWeaponType(char const*)
35FA8E:  STR             R0, [SP,#0x10+var_C]
35FA90:  ADD             SP, SP, #8
35FA92:  POP             {R7,PC}
35FA94:  ADD             SP, SP, #8
35FA96:  POP             {R7,PC}
35FA98:  MOV.W           R1, #0xFFFFFFFF
35FA9C:  STR             R1, [SP,#0x10+var_C]
35FA9E:  ADD             R1, SP, #0x10+var_C; char *
35FAA0:  BLX             j__ZN10CModelInfo12GetModelInfoEPKcPi; CModelInfo::GetModelInfo(char const*,int *)
35FAA4:  LDR             R0, [SP,#0x10+var_C]
35FAA6:  ADD             SP, SP, #8
35FAA8:  POP             {R7,PC}
