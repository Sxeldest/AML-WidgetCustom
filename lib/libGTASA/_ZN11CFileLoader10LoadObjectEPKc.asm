; =========================================================
; Game Engine Function: _ZN11CFileLoader10LoadObjectEPKc
; Address            : 0x469420 - 0x46953A
; =========================================================

469420:  PUSH            {R4-R7,LR}
469422:  ADD             R7, SP, #0xC
469424:  PUSH.W          {R8,R9,R11}
469428:  SUB             SP, SP, #0x60
46942A:  MOV             R4, R0
46942C:  LDR             R0, =(__stack_chk_guard_ptr - 0x469436)
46942E:  ADR             R1, aDSSFD; "%d %s %s %f %d"
469430:  ADD             R2, SP, #0x78+var_4C
469432:  ADD             R0, PC; __stack_chk_guard_ptr
469434:  SUB.W           R3, R7, #-var_31
469438:  ADD.W           R8, SP, #0x78+var_54
46943C:  ADD             R6, SP, #0x78+var_50
46943E:  LDR             R0, [R0]; __stack_chk_guard
469440:  SUB.W           R5, R7, #-var_46
469444:  LDR             R0, [R0]
469446:  STR             R0, [SP,#0x78+var_1C]
469448:  MOV             R0, R4; s
46944A:  STMEA.W         SP, {R5,R6,R8}
46944E:  BLX             sscanf
469452:  CMP             R0, #5
469454:  BNE             loc_469468
469456:  VMOV.F32        S2, #4.0
46945A:  VLDR            S0, [SP,#0x78+var_50]
46945E:  VCMPE.F32       S0, S2
469462:  VMRS            APSR_nzcv, FPSCR
469466:  BGE             loc_4694D4
469468:  LDR             R1, =(aDSSD - 0x469478); "%d %s %s %d"
46946A:  ADD.W           R9, SP, #0x78+var_58
46946E:  ADD             R2, SP, #0x78+var_4C
469470:  SUB.W           R3, R7, #-var_31
469474:  ADD             R1, PC; "%d %s %s %d"
469476:  MOV             R0, R4; s
469478:  STRD.W          R5, R9, [SP,#0x78+var_78]
46947C:  BLX             sscanf
469480:  CMP             R0, #4
469482:  BNE             loc_46949E
469484:  LDR             R0, [SP,#0x78+var_58]
469486:  CMP             R0, #3
469488:  BEQ             loc_4694A4
46948A:  CMP             R0, #2
46948C:  BEQ             loc_4694B8
46948E:  CMP             R0, #1
469490:  BNE             loc_4694D4
469492:  STRD.W          R5, R9, [SP,#0x78+var_78]
469496:  ADR             R1, aDSSDFD; "%d %s %s %d %f %d"
469498:  STRD.W          R6, R8, [SP,#0x78+var_70]
46949C:  B               loc_4694C8
46949E:  MOV.W           R0, #0xFFFFFFFF
4694A2:  B               loc_469520
4694A4:  ADD             R0, SP, #0x78+var_60
4694A6:  STRD.W          R5, R9, [SP,#0x78+var_78]
4694AA:  ADDS            R1, R0, #4
4694AC:  STRD.W          R6, R0, [SP,#0x78+var_70]
4694B0:  STRD.W          R1, R8, [SP,#0x78+var_68]
4694B4:  ADR             R1, aDSSDFFFD; "%d %s %s %d %f %f %f %d"
4694B6:  B               loc_4694C8
4694B8:  ADD             R0, SP, #0x78+var_60
4694BA:  STRD.W          R5, R9, [SP,#0x78+var_78]
4694BE:  ADR             R1, aDSSDFFD; "%d %s %s %d %f %f %d"
4694C0:  STRD.W          R6, R0, [SP,#0x78+var_70]
4694C4:  STR.W           R8, [SP,#0x78+var_68]
4694C8:  ADD             R2, SP, #0x78+var_4C
4694CA:  SUB.W           R3, R7, #-var_31
4694CE:  MOV             R0, R4; s
4694D0:  BLX             sscanf
4694D4:  LDRB.W          R1, [SP,#0x78+var_54+1]
4694D8:  LDR             R0, [SP,#0x78+var_4C]; this
4694DA:  LSLS            R1, R1, #0x1B; int
4694DC:  BMI             loc_4694E4
4694DE:  BLX             j__ZN10CModelInfo14AddAtomicModelEi; CModelInfo::AddAtomicModel(int)
4694E2:  B               loc_4694E8
4694E4:  BLX             j__ZN10CModelInfo20AddDamageAtomicModelEi; CModelInfo::AddDamageAtomicModel(int)
4694E8:  SUB.W           R5, R7, #-var_31
4694EC:  MOV             R4, R0
4694EE:  LDR             R0, [SP,#0x78+var_50]
4694F0:  STR             R0, [R4,#0x30]
4694F2:  MOV             R0, R5; this
4694F4:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
4694F8:  STR             R0, [R4,#4]
4694FA:  ADD.W           R0, R4, #8; char *
4694FE:  MOV             R1, R5; char *
469500:  BLX             strcpy
469504:  LDR             R0, [SP,#0x78+var_4C]; this
469506:  BLX             j__ZN10CStreaming14GetModelCDNameEi; CStreaming::GetModelCDName(int)
46950A:  SUB.W           R1, R7, #-var_46; CTxdStore *
46950E:  MOV             R2, R0; char *
469510:  MOV             R0, R4; this
469512:  BLX             j__ZN14CBaseModelInfo16SetTexDictionaryEPKcS1_; CBaseModelInfo::SetTexDictionary(char const*,char const*)
469516:  LDR             R1, [SP,#0x78+var_54]; unsigned int
469518:  MOV             R0, R4; CAtomicModelInfo *
46951A:  BLX             j__Z23SetAtomicModelInfoFlagsP16CAtomicModelInfoj; SetAtomicModelInfoFlags(CAtomicModelInfo *,uint)
46951E:  LDR             R0, [SP,#0x78+var_4C]
469520:  LDR             R1, =(__stack_chk_guard_ptr - 0x469528)
469522:  LDR             R2, [SP,#0x78+var_1C]
469524:  ADD             R1, PC; __stack_chk_guard_ptr
469526:  LDR             R1, [R1]; __stack_chk_guard
469528:  LDR             R1, [R1]
46952A:  SUBS            R1, R1, R2
46952C:  ITTT EQ
46952E:  ADDEQ           SP, SP, #0x60 ; '`'
469530:  POPEQ.W         {R8,R9,R11}
469534:  POPEQ           {R4-R7,PC}
469536:  BLX             __stack_chk_fail
