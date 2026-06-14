; =========================================================
; Game Engine Function: _ZN11CFileLoader14LoadTimeObjectEPKc
; Address            : 0x46959C - 0x4696E2
; =========================================================

46959C:  PUSH            {R4-R7,LR}
46959E:  ADD             R7, SP, #0xC
4695A0:  PUSH.W          {R8-R11}
4695A4:  SUB             SP, SP, #0x74
4695A6:  MOV             R4, R0
4695A8:  LDR             R0, =(__stack_chk_guard_ptr - 0x4695B4)
4695AA:  ADD.W           R8, SP, #0x90+var_60
4695AE:  ADR             R1, aDSSFDDD; "%d %s %s %f %d %d %d"
4695B0:  ADD             R0, PC; __stack_chk_guard_ptr
4695B2:  ADD             R2, SP, #0x90+var_50
4695B4:  SUB.W           R3, R7, #-var_35
4695B8:  ADD.W           R10, SP, #0x90+var_58
4695BC:  LDR             R0, [R0]; __stack_chk_guard
4695BE:  ADD             R6, SP, #0x90+var_54
4695C0:  SUB.W           R5, R7, #-var_4A
4695C4:  ADD.W           R9, SP, #0x90+var_5C
4695C8:  LDR             R0, [R0]
4695CA:  STR             R0, [SP,#0x90+var_20]
4695CC:  MOV             R0, R4; s
4695CE:  STMEA.W         SP, {R5,R6,R10}
4695D2:  STRD.W          R9, R8, [SP,#0x90+var_84]
4695D6:  BLX             sscanf
4695DA:  CMP             R0, #7
4695DC:  BNE             loc_4695F0
4695DE:  VMOV.F32        S2, #4.0
4695E2:  VLDR            S0, [SP,#0x90+var_54]
4695E6:  VCMPE.F32       S0, S2
4695EA:  VMRS            APSR_nzcv, FPSCR
4695EE:  BGE             loc_469668
4695F0:  LDR             R1, =(aDSSD - 0x469600); "%d %s %s %d"
4695F2:  ADD.W           R11, SP, #0x90+var_64
4695F6:  ADD             R2, SP, #0x90+var_50
4695F8:  SUB.W           R3, R7, #-var_35
4695FC:  ADD             R1, PC; "%d %s %s %d"
4695FE:  MOV             R0, R4; s
469600:  STRD.W          R5, R11, [SP,#0x90+var_90]
469604:  BLX             sscanf
469608:  CMP             R0, #4
46960A:  BNE             loc_46962A
46960C:  LDR             R0, [SP,#0x90+var_64]
46960E:  CMP             R0, #3
469610:  BEQ             loc_469630
469612:  CMP             R0, #2
469614:  BEQ             loc_469648
469616:  CMP             R0, #1
469618:  BNE             loc_469668
46961A:  STRD.W          R5, R11, [SP,#0x90+var_90]
46961E:  ADR             R1, aDSSDFDDD; "%d %s %s %d %f %d %d %d"
469620:  STRD.W          R6, R10, [SP,#0x90+var_88]
469624:  STRD.W          R9, R8, [SP,#0x90+var_80]
469628:  B               loc_46965C
46962A:  MOV.W           R0, #0xFFFFFFFF
46962E:  B               loc_4696C8
469630:  ADD             R0, SP, #0x90+var_6C
469632:  STRD.W          R5, R11, [SP,#0x90+var_90]
469636:  ADDS            R1, R0, #4
469638:  STRD.W          R6, R0, [SP,#0x90+var_88]
46963C:  STRD.W          R1, R10, [SP,#0x90+var_80]
469640:  ADR             R1, aDSSDFFFDDD; "%d %s %s %d %f %f %f %d %d %d"
469642:  STRD.W          R9, R8, [SP,#0x90+var_78]
469646:  B               loc_46965C
469648:  ADD             R0, SP, #0x90+var_6C
46964A:  STRD.W          R5, R11, [SP,#0x90+var_90]
46964E:  ADR             R1, aDSSDFFDDD; "%d %s %s %d %f %f %d %d %d"
469650:  STRD.W          R6, R0, [SP,#0x90+var_88]
469654:  STRD.W          R10, R9, [SP,#0x90+var_80]
469658:  STR.W           R8, [SP,#0x90+var_78]
46965C:  ADD             R2, SP, #0x90+var_50
46965E:  SUB.W           R3, R7, #-var_35
469662:  MOV             R0, R4; s
469664:  BLX             sscanf
469668:  LDR             R0, [SP,#0x90+var_50]; this
46966A:  BLX             j__ZN10CModelInfo12AddTimeModelEi; CModelInfo::AddTimeModel(int)
46966E:  MOV             R4, R0
469670:  LDR             R0, [R4]
469672:  LDR             R1, [R0,#0x18]
469674:  MOV             R0, R4
469676:  BLX             R1
469678:  SUB.W           R6, R7, #-var_35
46967C:  MOV             R5, R0
46967E:  LDR             R0, [SP,#0x90+var_54]
469680:  STR             R0, [R4,#0x30]
469682:  MOV             R0, R6; this
469684:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
469688:  STR             R0, [R4,#4]
46968A:  ADD.W           R0, R4, #8; char *
46968E:  MOV             R1, R6; char *
469690:  BLX             strcpy
469694:  LDR             R0, [SP,#0x90+var_50]; this
469696:  BLX             j__ZN10CStreaming14GetModelCDNameEi; CStreaming::GetModelCDName(int)
46969A:  SUB.W           R1, R7, #-var_4A; CTxdStore *
46969E:  MOV             R2, R0; char *
4696A0:  MOV             R0, R4; this
4696A2:  BLX             j__ZN14CBaseModelInfo16SetTexDictionaryEPKcS1_; CBaseModelInfo::SetTexDictionary(char const*,char const*)
4696A6:  LDRD.W          R1, R0, [SP,#0x90+var_60]
4696AA:  STRB            R1, [R5,#1]
4696AC:  STRB            R0, [R5]
4696AE:  MOV             R0, R4; CAtomicModelInfo *
4696B0:  LDR             R1, [SP,#0x90+var_58]; unsigned int
4696B2:  BLX             j__Z23SetAtomicModelInfoFlagsP16CAtomicModelInfoj; SetAtomicModelInfoFlags(CAtomicModelInfo *,uint)
4696B6:  MOV             R0, R5; this
4696B8:  MOV             R1, R6; char *
4696BA:  BLX             j__ZN9CTimeInfo18FindOtherTimeModelEPKc; CTimeInfo::FindOtherTimeModel(char const*)
4696BE:  CMP             R0, #0
4696C0:  ITT NE
4696C2:  LDRNE           R1, [SP,#0x90+var_50]
4696C4:  STRHNE          R1, [R0,#2]
4696C6:  LDR             R0, [SP,#0x90+var_50]
4696C8:  LDR             R1, =(__stack_chk_guard_ptr - 0x4696D0)
4696CA:  LDR             R2, [SP,#0x90+var_20]
4696CC:  ADD             R1, PC; __stack_chk_guard_ptr
4696CE:  LDR             R1, [R1]; __stack_chk_guard
4696D0:  LDR             R1, [R1]
4696D2:  SUBS            R1, R1, R2
4696D4:  ITTT EQ
4696D6:  ADDEQ           SP, SP, #0x74 ; 't'
4696D8:  POPEQ.W         {R8-R11}
4696DC:  POPEQ           {R4-R7,PC}
4696DE:  BLX             __stack_chk_fail
