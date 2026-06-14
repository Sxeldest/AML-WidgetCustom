; =========================================================
; Game Engine Function: _ZN29CDecisionMakerTypesFileLoader17LoadDecisionMakerEPKcR14CDecisionMaker
; Address            : 0x4BE720 - 0x4BED2C
; =========================================================

4BE720:  PUSH            {R4-R7,LR}
4BE722:  ADD             R7, SP, #0xC
4BE724:  PUSH.W          {R8-R11}
4BE728:  SUB             SP, SP, #4
4BE72A:  VPUSH           {D8-D9}
4BE72E:  SUB.W           SP, SP, #0x5F8
4BE732:  MOV             R5, R0
4BE734:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x4BE73E)
4BE738:  STR             R1, [SP,#0x628+var_3C0]
4BE73A:  ADD             R0, PC; __stack_chk_guard_ptr
4BE73C:  LDR             R0, [R0]; __stack_chk_guard
4BE73E:  LDR             R0, [R0]
4BE740:  STR.W           R0, [R7,#var_34]
4BE744:  ADR.W           R0, aDataDecisionAl; "data\\decision\\allowed\\"
4BE748:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
4BE74C:  ADR.W           R1, aR_11; "r"
4BE750:  MOV             R0, R5; this
4BE752:  BLX             j__ZN8CFileMgr8OpenFileEPKcS1_; CFileMgr::OpenFile(char const*,char const*)
4BE756:  MOV             R5, R0
4BE758:  LDR.W           R0, =(byte_61CD7E - 0x4BE760)
4BE75C:  ADD             R0, PC; byte_61CD7E ; this
4BE75E:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
4BE762:  CMP             R5, #0
4BE764:  BEQ.W           loc_4BED04
4BE768:  ADD             R6, SP, #0x628+s
4BE76A:  MOV             R0, R5; this
4BE76C:  MOV.W           R2, #(elf_hash_bucket+0x104); char *
4BE770:  MOV             R1, R6; unsigned int
4BE772:  BLX             j__ZN8CFileMgr8ReadLineEjPci; CFileMgr::ReadLine(uint,char *,int)
4BE776:  MOV             R0, R5; this
4BE778:  MOV             R1, R6; unsigned int
4BE77A:  MOV.W           R2, #(elf_hash_bucket+0x104); char *
4BE77E:  STR             R5, [SP,#0x628+var_3BC]
4BE780:  BLX             j__ZN8CFileMgr8ReadLineEjPci; CFileMgr::ReadLine(uint,char *,int)
4BE784:  CMP             R0, #1
4BE786:  BNE.W           loc_4BECFA
4BE78A:  ADD             R5, SP, #0x628+var_3B8
4BE78C:  VMOV.I32        Q4, #0
4BE790:  ADD.W           R0, R5, #0x18
4BE794:  STR             R0, [SP,#0x628+var_3C4]
4BE796:  ADD             R0, SP, #0x628+var_258
4BE798:  MOVW            R10, #0x8081
4BE79C:  ADD.W           R1, R0, #0x14
4BE7A0:  STR             R1, [SP,#0x628+var_3C8]
4BE7A2:  ADD.W           R1, R0, #0x10
4BE7A6:  STR             R1, [SP,#0x628+var_3CC]
4BE7A8:  ADD.W           R1, R0, #0xC
4BE7AC:  STR             R1, [SP,#0x628+var_3D0]
4BE7AE:  ADD.W           R1, R0, #8
4BE7B2:  ORR.W           R0, R0, #4
4BE7B6:  STR             R0, [SP,#0x628+var_3D8]
4BE7B8:  ADD             R0, SP, #0x628+var_2E8
4BE7BA:  STR             R1, [SP,#0x628+var_3D4]
4BE7BC:  ADD.W           R1, R0, #0x28 ; '('
4BE7C0:  STR             R1, [SP,#0x628+var_3DC]
4BE7C2:  ADD.W           R1, R0, #0x2C ; ','
4BE7C6:  STR             R1, [SP,#0x628+var_3E0]
4BE7C8:  ADD.W           R1, R0, #0x20 ; ' '
4BE7CC:  STR             R1, [SP,#0x628+var_3E4]
4BE7CE:  ADD.W           R1, R0, #0x24 ; '$'
4BE7D2:  STR             R1, [SP,#0x628+var_3E8]
4BE7D4:  ADD.W           R1, R0, #0x18
4BE7D8:  STR             R1, [SP,#0x628+var_3EC]
4BE7DA:  ADD.W           R1, R0, #0x1C
4BE7DE:  STR             R1, [SP,#0x628+var_3F0]
4BE7E0:  ADD.W           R1, R0, #0x10
4BE7E4:  STR             R1, [SP,#0x628+var_3F4]
4BE7E6:  ADD.W           R1, R0, #0x14
4BE7EA:  STR             R1, [SP,#0x628+var_3F8]
4BE7EC:  ADD.W           R1, R0, #8
4BE7F0:  STR             R1, [SP,#0x628+var_3FC]
4BE7F2:  ADD.W           R1, R0, #0xC
4BE7F6:  ADD.W           R8, R0, #4
4BE7FA:  ADD             R0, SP, #0x628+var_378
4BE7FC:  STR             R1, [SP,#0x628+var_400]
4BE7FE:  ADD.W           R1, R0, #0x8C
4BE802:  STR             R1, [SP,#0x628+var_404]
4BE804:  ADD.W           R1, R0, #0x88
4BE808:  STR             R1, [SP,#0x628+var_408]
4BE80A:  ADD.W           R1, R0, #0x84
4BE80E:  STR             R1, [SP,#0x628+var_40C]
4BE810:  ADD.W           R1, R0, #0x80
4BE814:  STR             R1, [SP,#0x628+var_410]
4BE816:  ADD.W           R1, R0, #0x7C ; '|'
4BE81A:  STR             R1, [SP,#0x628+var_414]
4BE81C:  ADD.W           R1, R0, #0x78 ; 'x'
4BE820:  STR             R1, [SP,#0x628+var_418]
4BE822:  ADD.W           R1, R0, #0x74 ; 't'
4BE826:  STR             R1, [SP,#0x628+var_41C]
4BE828:  ADD.W           R1, R0, #0x70 ; 'p'
4BE82C:  STR             R1, [SP,#0x628+var_420]
4BE82E:  ADD.W           R1, R0, #0x6C ; 'l'
4BE832:  STR             R1, [SP,#0x628+var_424]
4BE834:  ADD.W           R1, R0, #0x68 ; 'h'
4BE838:  STR             R1, [SP,#0x628+var_428]
4BE83A:  ADD.W           R1, R0, #0x64 ; 'd'
4BE83E:  STR             R1, [SP,#0x628+var_42C]
4BE840:  ADD.W           R1, R0, #0x60 ; '`'
4BE844:  STR             R1, [SP,#0x628+var_430]
4BE846:  ADD.W           R1, R0, #0x5C ; '\'
4BE84A:  STR             R1, [SP,#0x628+var_434]
4BE84C:  ADD.W           R1, R0, #0x58 ; 'X'
4BE850:  STR             R1, [SP,#0x628+var_438]
4BE852:  ADD.W           R1, R0, #0x54 ; 'T'
4BE856:  STR             R1, [SP,#0x628+var_43C]
4BE858:  ADD.W           R1, R0, #0x50 ; 'P'
4BE85C:  STR             R1, [SP,#0x628+var_440]
4BE85E:  ADD.W           R1, R0, #0x4C ; 'L'
4BE862:  STR             R1, [SP,#0x628+var_444]
4BE864:  ADD.W           R1, R0, #0x48 ; 'H'
4BE868:  STR             R1, [SP,#0x628+var_448]
4BE86A:  ADD.W           R1, R0, #0x44 ; 'D'
4BE86E:  STR             R1, [SP,#0x628+var_44C]
4BE870:  ADD.W           R1, R0, #0x40 ; '@'
4BE874:  STR             R1, [SP,#0x628+var_450]
4BE876:  ADD.W           R1, R0, #0x3C ; '<'
4BE87A:  STR             R1, [SP,#0x628+var_454]
4BE87C:  ADD.W           R1, R0, #0x38 ; '8'
4BE880:  STR             R1, [SP,#0x628+var_458]
4BE882:  ADD.W           R1, R0, #0x34 ; '4'
4BE886:  STR             R1, [SP,#0x628+var_45C]
4BE888:  ADD.W           R1, R0, #0x30 ; '0'
4BE88C:  STR             R1, [SP,#0x628+var_460]
4BE88E:  ADD.W           R1, R0, #0x2C ; ','
4BE892:  STR             R1, [SP,#0x628+var_464]
4BE894:  ADD.W           R1, R0, #0x28 ; '('
4BE898:  STR             R1, [SP,#0x628+var_468]
4BE89A:  ADD.W           R1, R0, #0x24 ; '$'
4BE89E:  STR             R1, [SP,#0x628+var_46C]
4BE8A0:  ADD.W           R1, R0, #0x20 ; ' '
4BE8A4:  STR             R1, [SP,#0x628+var_470]
4BE8A6:  ADD.W           R1, R0, #0x1C
4BE8AA:  STR             R1, [SP,#0x628+var_474]
4BE8AC:  ADD.W           R1, R0, #0x18
4BE8B0:  STR             R1, [SP,#0x628+var_478]
4BE8B2:  ADD.W           R1, R0, #0x14
4BE8B6:  STR             R1, [SP,#0x628+var_47C]
4BE8B8:  ADD.W           R1, R0, #0x10
4BE8BC:  STR             R1, [SP,#0x628+var_480]
4BE8BE:  ADD.W           R1, R0, #0xC
4BE8C2:  STR             R1, [SP,#0x628+var_484]
4BE8C4:  ADD.W           R1, R0, #8
4BE8C8:  ADDS            R0, #4
4BE8CA:  STR             R0, [SP,#0x628+var_48C]
4BE8CC:  ADD             R0, SP, #0x628+var_2B8
4BE8CE:  STR             R1, [SP,#0x628+var_488]
4BE8D0:  ADD.W           R1, R0, #0x50 ; 'P'
4BE8D4:  STR             R1, [SP,#0x628+var_490]
4BE8D6:  ADD.W           R1, R0, #0x54 ; 'T'
4BE8DA:  STR             R1, [SP,#0x628+var_494]
4BE8DC:  ADD.W           R1, R0, #0x5C ; '\'
4BE8E0:  STR             R1, [SP,#0x628+var_498]
4BE8E2:  ADD.W           R1, R0, #0x58 ; 'X'
4BE8E6:  STR             R1, [SP,#0x628+var_49C]
4BE8E8:  ADD.W           R1, R0, #0x40 ; '@'
4BE8EC:  STR             R1, [SP,#0x628+var_4A0]
4BE8EE:  ADD.W           R1, R0, #0x44 ; 'D'
4BE8F2:  STR             R1, [SP,#0x628+var_4A4]
4BE8F4:  ADD.W           R1, R0, #0x4C ; 'L'
4BE8F8:  STR             R1, [SP,#0x628+var_4A8]
4BE8FA:  ADD.W           R1, R0, #0x48 ; 'H'
4BE8FE:  STR             R1, [SP,#0x628+var_4AC]
4BE900:  ADD.W           R1, R0, #0x30 ; '0'
4BE904:  STR             R1, [SP,#0x628+var_4B0]
4BE906:  ADD.W           R1, R0, #0x34 ; '4'
4BE90A:  STR             R1, [SP,#0x628+var_4B4]
4BE90C:  ADD.W           R1, R0, #0x3C ; '<'
4BE910:  STR             R1, [SP,#0x628+var_4B8]
4BE912:  ADD.W           R1, R0, #0x38 ; '8'
4BE916:  STR             R1, [SP,#0x628+var_4BC]
4BE918:  ADD.W           R1, R0, #0x20 ; ' '
4BE91C:  STR             R1, [SP,#0x628+var_4C0]
4BE91E:  ADD.W           R1, R0, #0x24 ; '$'
4BE922:  STR             R1, [SP,#0x628+var_4C4]
4BE924:  ADD.W           R1, R0, #0x2C ; ','
4BE928:  STR             R1, [SP,#0x628+var_4C8]
4BE92A:  ADD.W           R1, R0, #0x28 ; '('
4BE92E:  STR             R1, [SP,#0x628+var_4CC]
4BE930:  ADD.W           R1, R0, #0x10
4BE934:  STR             R1, [SP,#0x628+var_4D0]
4BE936:  ADD.W           R1, R0, #0x14
4BE93A:  STR             R1, [SP,#0x628+var_4D4]
4BE93C:  ADD.W           R1, R0, #0x1C
4BE940:  STR             R1, [SP,#0x628+var_4D8]
4BE942:  ADD.W           R1, R0, #0x18
4BE946:  STR             R1, [SP,#0x628+var_4DC]
4BE948:  ADDS            R1, R0, #4
4BE94A:  ADD.W           R9, R0, #8
4BE94E:  ADDS            R0, #0xC
4BE950:  STR             R0, [SP,#0x628+var_4E4]
4BE952:  LDR.W           R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BE962)
4BE956:  MOVT            R10, #0x8080
4BE95A:  STR             R1, [SP,#0x628+var_4E0]
4BE95C:  ADD             R1, SP, #0x628+s
4BE95E:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BE960:  MOV.W           R11, #1
4BE964:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BE966:  STR             R0, [SP,#0x628+var_4E8]
4BE968:  LDR             R0, =(_ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr - 0x4BE96E)
4BE96A:  ADD             R0, PC; _ZN19CDecisionMakerTypes19m_pPedDecisionTypesE_ptr
4BE96C:  LDR             R0, [R0]; CDecisionMakerTypes::m_pPedDecisionTypes ...
4BE96E:  STR             R0, [SP,#0x628+var_4EC]
4BE970:  LDR             R0, [SP,#0x628+var_418]
4BE972:  MOV             R4, R1
4BE974:  STR             R0, [SP,#0x628+var_508]
4BE976:  ADD             R2, SP, #0x628+var_238
4BE978:  LDR             R0, [SP,#0x628+var_414]
4BE97A:  ADD             R3, SP, #0x628+var_23C
4BE97C:  STR             R0, [SP,#0x628+var_504]
4BE97E:  LDR             R0, [SP,#0x628+var_410]
4BE980:  STR             R0, [SP,#0x628+var_500]
4BE982:  LDR             R0, [SP,#0x628+var_40C]
4BE984:  STR             R0, [SP,#0x628+var_4FC]
4BE986:  LDR             R0, [SP,#0x628+var_408]
4BE988:  STR             R0, [SP,#0x628+var_4F8]
4BE98A:  LDR             R0, [SP,#0x628+var_404]
4BE98C:  STR             R0, [SP,#0x628+var_4F4]
4BE98E:  LDR             R0, [SP,#0x628+var_41C]
4BE990:  STR             R0, [SP,#0x628+var_528]
4BE992:  LDR             R0, [SP,#0x628+var_3C8]
4BE994:  STR             R0, [SP,#0x628+var_524]
4BE996:  LDR             R0, [SP,#0x628+var_49C]
4BE998:  STR             R0, [SP,#0x628+var_520]
4BE99A:  LDR             R0, [SP,#0x628+var_498]
4BE99C:  STR             R0, [SP,#0x628+var_51C]
4BE99E:  LDR             R0, [SP,#0x628+var_494]
4BE9A0:  STR             R0, [SP,#0x628+var_518]
4BE9A2:  LDR             R0, [SP,#0x628+var_490]
4BE9A4:  STR             R0, [SP,#0x628+var_514]
4BE9A6:  LDR             R0, [SP,#0x628+var_3E0]
4BE9A8:  STR             R0, [SP,#0x628+var_510]
4BE9AA:  LDR             R0, [SP,#0x628+var_3DC]
4BE9AC:  STR             R0, [SP,#0x628+var_50C]
4BE9AE:  LDR             R0, [SP,#0x628+var_4A0]
4BE9B0:  STR             R0, [SP,#0x628+var_548]
4BE9B2:  LDR             R0, [SP,#0x628+var_3E8]
4BE9B4:  STR             R0, [SP,#0x628+var_544]
4BE9B6:  LDR             R0, [SP,#0x628+var_3E4]
4BE9B8:  STR             R0, [SP,#0x628+var_540]
4BE9BA:  LDR             R0, [SP,#0x628+var_430]
4BE9BC:  STR             R0, [SP,#0x628+var_53C]
4BE9BE:  LDR             R0, [SP,#0x628+var_42C]
4BE9C0:  STR             R0, [SP,#0x628+var_538]
4BE9C2:  LDR             R0, [SP,#0x628+var_428]
4BE9C4:  STR             R0, [SP,#0x628+var_534]
4BE9C6:  LDR             R0, [SP,#0x628+var_424]
4BE9C8:  STR             R0, [SP,#0x628+var_530]
4BE9CA:  LDR             R0, [SP,#0x628+var_420]
4BE9CC:  STR             R0, [SP,#0x628+var_52C]
4BE9CE:  LDR             R0, [SP,#0x628+var_440]
4BE9D0:  STR             R0, [SP,#0x628+var_568]
4BE9D2:  LDR             R0, [SP,#0x628+var_43C]
4BE9D4:  STR             R0, [SP,#0x628+var_564]
4BE9D6:  LDR             R0, [SP,#0x628+var_438]
4BE9D8:  STR             R0, [SP,#0x628+var_560]
4BE9DA:  LDR             R0, [SP,#0x628+var_434]
4BE9DC:  STR             R0, [SP,#0x628+var_55C]
4BE9DE:  LDR             R0, [SP,#0x628+var_3CC]
4BE9E0:  STR             R0, [SP,#0x628+var_558]
4BE9E2:  LDR             R0, [SP,#0x628+var_4AC]
4BE9E4:  STR             R0, [SP,#0x628+var_554]
4BE9E6:  LDR             R0, [SP,#0x628+var_4A8]
4BE9E8:  STR             R0, [SP,#0x628+var_550]
4BE9EA:  LDR             R0, [SP,#0x628+var_4A4]
4BE9EC:  STR             R0, [SP,#0x628+var_54C]
4BE9EE:  LDR             R0, [SP,#0x628+var_4BC]
4BE9F0:  STR             R0, [SP,#0x628+var_588]
4BE9F2:  LDR             R0, [SP,#0x628+var_4B8]
4BE9F4:  STR             R0, [SP,#0x628+var_584]
4BE9F6:  LDR             R0, [SP,#0x628+var_4B4]
4BE9F8:  STR             R0, [SP,#0x628+var_580]
4BE9FA:  LDR             R0, [SP,#0x628+var_4B0]
4BE9FC:  STR             R0, [SP,#0x628+var_57C]
4BE9FE:  LDR             R0, [SP,#0x628+var_3F0]
4BEA00:  STR             R0, [SP,#0x628+var_578]
4BEA02:  LDR             R0, [SP,#0x628+var_3EC]
4BEA04:  STR             R0, [SP,#0x628+var_574]
4BEA06:  LDR             R0, [SP,#0x628+var_448]
4BEA08:  STR             R0, [SP,#0x628+var_570]
4BEA0A:  LDR             R0, [SP,#0x628+var_444]
4BEA0C:  STR             R0, [SP,#0x628+var_56C]
4BEA0E:  LDR             R0, [SP,#0x628+var_3F4]
4BEA10:  STR             R0, [SP,#0x628+var_5A8]
4BEA12:  LDR             R0, [SP,#0x628+var_460]
4BEA14:  STR             R0, [SP,#0x628+var_5A4]
4BEA16:  LDR             R0, [SP,#0x628+var_45C]
4BEA18:  STR             R0, [SP,#0x628+var_5A0]
4BEA1A:  LDR             R0, [SP,#0x628+var_458]
4BEA1C:  STR             R0, [SP,#0x628+var_59C]
4BEA1E:  LDR             R0, [SP,#0x628+var_454]
4BEA20:  STR             R0, [SP,#0x628+var_598]
4BEA22:  LDR             R0, [SP,#0x628+var_450]
4BEA24:  STR             R0, [SP,#0x628+var_594]
4BEA26:  LDR             R0, [SP,#0x628+var_44C]
4BEA28:  STR             R0, [SP,#0x628+var_590]
4BEA2A:  LDR             R0, [SP,#0x628+var_3D0]
4BEA2C:  STR             R0, [SP,#0x628+var_58C]
4BEA2E:  LDR             R0, [SP,#0x628+var_468]
4BEA30:  STR             R0, [SP,#0x628+var_5C8]
4BEA32:  LDR             R0, [SP,#0x628+var_464]
4BEA34:  STR             R0, [SP,#0x628+var_5C4]
4BEA36:  LDR             R0, [SP,#0x628+var_3D4]
4BEA38:  STR             R0, [SP,#0x628+var_5C0]
4BEA3A:  LDR             R0, [SP,#0x628+var_4CC]
4BEA3C:  STR             R0, [SP,#0x628+var_5BC]
4BEA3E:  LDR             R0, [SP,#0x628+var_4C8]
4BEA40:  STR             R0, [SP,#0x628+var_5B8]
4BEA42:  LDR             R0, [SP,#0x628+var_4C4]
4BEA44:  STR             R0, [SP,#0x628+var_5B4]
4BEA46:  LDR             R0, [SP,#0x628+var_4C0]
4BEA48:  STR             R0, [SP,#0x628+var_5B0]
4BEA4A:  LDR             R0, [SP,#0x628+var_3F8]
4BEA4C:  STR             R0, [SP,#0x628+var_5AC]
4BEA4E:  LDR             R0, [SP,#0x628+var_4D4]
4BEA50:  STR             R0, [SP,#0x628+var_5E8]
4BEA52:  LDR             R0, [SP,#0x628+var_4D0]
4BEA54:  STR             R0, [SP,#0x628+var_5E4]
4BEA56:  LDR             R0, [SP,#0x628+var_400]
4BEA58:  STR             R0, [SP,#0x628+var_5E0]
4BEA5A:  LDR             R0, [SP,#0x628+var_3FC]
4BEA5C:  STR             R0, [SP,#0x628+var_5DC]
4BEA5E:  LDR             R0, [SP,#0x628+var_478]
4BEA60:  STR             R0, [SP,#0x628+var_5D8]
4BEA62:  LDR             R0, [SP,#0x628+var_474]
4BEA64:  STR             R0, [SP,#0x628+var_5D4]
4BEA66:  LDR             R0, [SP,#0x628+var_470]
4BEA68:  STR             R0, [SP,#0x628+var_5D0]
4BEA6A:  LDR             R0, [SP,#0x628+var_46C]
4BEA6C:  STR             R0, [SP,#0x628+var_5CC]
4BEA6E:  LDR             R0, [SP,#0x628+var_48C]
4BEA70:  STR             R0, [SP,#0x628+var_608]
4BEA72:  LDR             R0, [SP,#0x628+var_488]
4BEA74:  STR             R0, [SP,#0x628+var_604]
4BEA76:  LDR             R0, [SP,#0x628+var_484]
4BEA78:  STR             R0, [SP,#0x628+var_600]
4BEA7A:  LDR             R0, [SP,#0x628+var_480]
4BEA7C:  STR             R0, [SP,#0x628+var_5FC]
4BEA7E:  LDR             R0, [SP,#0x628+var_47C]
4BEA80:  STR             R0, [SP,#0x628+var_5F8]
4BEA82:  LDR             R0, [SP,#0x628+var_3D8]
4BEA84:  STR             R0, [SP,#0x628+var_5F4]
4BEA86:  LDR             R0, [SP,#0x628+var_4DC]
4BEA88:  STR             R0, [SP,#0x628+var_5F0]
4BEA8A:  LDR             R0, [SP,#0x628+var_4D8]
4BEA8C:  STR             R0, [SP,#0x628+var_5EC]
4BEA8E:  ADD             R0, SP, #0x628+var_258
4BEA90:  MOV             R6, R0
4BEA92:  STRD.W          R6, R9, [SP,#0x628+var_628]
4BEA96:  LDR             R0, [SP,#0x628+var_4E4]
4BEA98:  STR             R0, [SP,#0x628+var_620]
4BEA9A:  LDR             R0, [SP,#0x628+var_4E0]
4BEA9C:  STR             R0, [SP,#0x628+var_61C]
4BEA9E:  ADD             R0, SP, #0x628+var_2B8
4BEAA0:  STRD.W          R0, R8, [SP,#0x628+var_618]
4BEAA4:  ADD             R0, SP, #0x628+var_2E8
4BEAA6:  STR             R0, [SP,#0x628+var_610]
4BEAA8:  ADD             R0, SP, #0x628+var_378
4BEAAA:  STR             R0, [SP,#0x628+var_60C]
4BEAAC:  MOV             R0, R1; s
4BEAAE:  LDR             R1, =(aDDDFFFFDDFFFFF - 0x4BEAB4); "%d, %d, %d, %f, %f, %f, %f, %d, %d, %f,"...
4BEAB0:  ADD             R1, PC; "%d, %d, %d, %f, %f, %f, %f, %d, %d, %f,"...
4BEAB2:  BLX             sscanf
4BEAB6:  LDR             R1, [SP,#0x628+var_3C4]
4BEAB8:  MOVS            R0, #0
4BEABA:  STRH.W          R0, [SP,#0x628+var_384]
4BEABE:  MOV             R2, R8
4BEAC0:  STR             R0, [SP,#0x628+var_388]
4BEAC2:  VST1.32         {D8-D9}, [R1]
4BEAC6:  MOV             R1, R6
4BEAC8:  VLD1.64         {D16-D17}, [R1]!
4BEACC:  VLDR            D18, [R1]
4BEAD0:  MOV             R1, R5
4BEAD2:  VST1.64         {D16-D17}, [R1]!
4BEAD6:  VSTR            D18, [R1]
4BEADA:  MOV             R1, R9
4BEADC:  STR             R0, [SP,#0x628+var_390]
4BEADE:  STR.W           R0, [SP,#0x628+var_382]
4BEAE2:  STR             R0, [SP,#0x628+var_38C]
4BEAE4:  STRH.W          R0, [SP,#0x628+var_37E]
4BEAE8:  VLDR            S0, [R1,#-8]
4BEAEC:  VLDR            S2, [R1,#-4]
4BEAF0:  VLDR            S4, [R1]
4BEAF4:  VLDR            S6, [R1,#4]
4BEAF8:  VCVT.U32.F32    S8, S0
4BEAFC:  VCVT.U32.F32    S10, S4
4BEB00:  ADDS            R1, #0x10
4BEB02:  VCVT.U32.F32    S12, S2
4BEB06:  VCVT.U32.F32    S14, S6
4BEB0A:  VMOV            R3, S8
4BEB0E:  VMOV            R6, S12
4BEB12:  ADD             R3, R6
4BEB14:  VMOV            R6, S10
4BEB18:  ADD             R3, R6
4BEB1A:  VMOV            R6, S14
4BEB1E:  ADD             R3, R6
4BEB20:  UMULL.W         R3, R6, R3, R10
4BEB24:  ADD.W           R3, R11, R6,LSR#7
4BEB28:  VMOV            S8, R3
4BEB2C:  ADD.W           R3, R5, R0,LSL#1
4BEB30:  VCVT.F32.U32    S8, S8
4BEB34:  VDIV.F32        S6, S6, S8
4BEB38:  VDIV.F32        S4, S4, S8
4BEB3C:  VDIV.F32        S2, S2, S8
4BEB40:  VDIV.F32        S0, S0, S8
4BEB44:  VCVT.U32.F32    S6, S6
4BEB48:  VCVT.U32.F32    S4, S4
4BEB4C:  VCVT.U32.F32    S2, S2
4BEB50:  VCVT.U32.F32    S0, S0
4BEB54:  VMOV            R6, S2
4BEB58:  STRB            R6, [R3,#0x19]
4BEB5A:  VMOV            R6, S0
4BEB5E:  STRB            R6, [R3,#0x18]
4BEB60:  VMOV            R6, S4
4BEB64:  STRB            R6, [R3,#0x1A]
4BEB66:  VMOV            R6, S6
4BEB6A:  STRB            R6, [R3,#0x1B]
4BEB6C:  ADDS            R6, R5, R0
4BEB6E:  LDR.W           R3, [R2,#-4]
4BEB72:  ADDS            R0, #2
4BEB74:  CMP             R3, #0
4BEB76:  IT NE
4BEB78:  MOVNE           R3, #1
4BEB7A:  STRB.W          R3, [R6,#0x30]
4BEB7E:  LDR             R3, [R2]
4BEB80:  ADDS            R2, #8
4BEB82:  CMP             R3, #0
4BEB84:  IT NE
4BEB86:  MOVNE           R3, #1
4BEB88:  CMP             R0, #0xC
4BEB8A:  STRB.W          R3, [R6,#0x31]
4BEB8E:  BNE             loc_4BEAE8
4BEB90:  LDR             R0, [SP,#0x628+var_4E8]
4BEB92:  LDR             R0, [R0]
4BEB94:  CBNZ            R0, loc_4BEBA6
4BEB96:  MOVW            R0, #0xF1C0; unsigned int
4BEB9A:  BLX             _Znwj; operator new(uint)
4BEB9E:  BLX             j__ZN19CDecisionMakerTypesC2Ev; CDecisionMakerTypes::CDecisionMakerTypes(void)
4BEBA2:  LDR             R1, [SP,#0x628+var_4EC]
4BEBA4:  STR             R0, [R1]
4BEBA6:  LDR             R1, [SP,#0x628+var_238]
4BEBA8:  LDR             R2, [SP,#0x628+var_3C0]
4BEBAA:  ADD.W           R0, R0, R1,LSL#2
4BEBAE:  MOVW            R1, #0xC034
4BEBB2:  LDR             R0, [R0,R1]
4BEBB4:  LDR             R1, [SP,#0x628+var_3B8]
4BEBB6:  RSB.W           R0, R0, R0,LSL#4
4BEBBA:  STR.W           R1, [R2,R0,LSL#2]
4BEBBE:  ADD.W           R0, R2, R0,LSL#2
4BEBC2:  MOV.W           R2, #(elf_hash_bucket+0x104); char *
4BEBC6:  LDRB.W          R1, [SP,#0x628+var_3A0]
4BEBCA:  STRB            R1, [R0,#0x18]
4BEBCC:  LDRB.W          R1, [SP,#0x628+var_39F]
4BEBD0:  STRB            R1, [R0,#0x19]
4BEBD2:  LDRB.W          R1, [SP,#0x628+var_39E]
4BEBD6:  STRB            R1, [R0,#0x1A]
4BEBD8:  LDRB.W          R1, [SP,#0x628+var_39D]
4BEBDC:  STRB            R1, [R0,#0x1B]
4BEBDE:  LDRB.W          R1, [SP,#0x628+var_388]
4BEBE2:  STRB.W          R1, [R0,#0x30]
4BEBE6:  LDRB.W          R1, [SP,#0x628+var_388+1]
4BEBEA:  STRB.W          R1, [R0,#0x31]
4BEBEE:  LDR             R1, [SP,#0x628+var_3B4]
4BEBF0:  STR             R1, [R0,#4]
4BEBF2:  LDRB.W          R1, [SP,#0x628+var_39C]
4BEBF6:  STRB            R1, [R0,#0x1C]
4BEBF8:  LDRB.W          R1, [SP,#0x628+var_39B]
4BEBFC:  STRB            R1, [R0,#0x1D]
4BEBFE:  LDRB.W          R1, [SP,#0x628+var_39A]
4BEC02:  STRB            R1, [R0,#0x1E]
4BEC04:  LDRB.W          R1, [SP,#0x628+var_399]
4BEC08:  STRB            R1, [R0,#0x1F]
4BEC0A:  LDRB.W          R1, [SP,#0x628+var_388+2]
4BEC0E:  STRB.W          R1, [R0,#0x32]
4BEC12:  LDRB.W          R1, [SP,#0x628+var_388+3]
4BEC16:  STRB.W          R1, [R0,#0x33]
4BEC1A:  LDR             R1, [SP,#0x628+var_3B0]
4BEC1C:  STR             R1, [R0,#8]
4BEC1E:  LDRB.W          R1, [SP,#0x628+var_398]
4BEC22:  STRB.W          R1, [R0,#0x20]
4BEC26:  LDRB.W          R1, [SP,#0x628+var_397]
4BEC2A:  STRB.W          R1, [R0,#0x21]
4BEC2E:  LDRB.W          R1, [SP,#0x628+var_396]
4BEC32:  STRB.W          R1, [R0,#0x22]
4BEC36:  LDRB.W          R1, [SP,#0x628+var_395]
4BEC3A:  STRB.W          R1, [R0,#0x23]
4BEC3E:  LDRB.W          R1, [SP,#0x628+var_384]
4BEC42:  STRB.W          R1, [R0,#0x34]
4BEC46:  LDRB.W          R1, [SP,#0x628+var_384+1]
4BEC4A:  STRB.W          R1, [R0,#0x35]
4BEC4E:  LDR             R1, [SP,#0x628+var_3AC]
4BEC50:  STR             R1, [R0,#0xC]
4BEC52:  LDRB.W          R1, [SP,#0x628+var_394]
4BEC56:  STRB.W          R1, [R0,#0x24]
4BEC5A:  LDRB.W          R1, [SP,#0x628+var_393]
4BEC5E:  STRB.W          R1, [R0,#0x25]
4BEC62:  LDRB.W          R1, [SP,#0x628+var_392]
4BEC66:  STRB.W          R1, [R0,#0x26]
4BEC6A:  LDRB.W          R1, [SP,#0x628+var_391]
4BEC6E:  STRB.W          R1, [R0,#0x27]
4BEC72:  LDRB.W          R1, [SP,#0x628+var_382]
4BEC76:  STRB.W          R1, [R0,#0x36]
4BEC7A:  LDRB.W          R1, [SP,#0x628+var_382+1]
4BEC7E:  STRB.W          R1, [R0,#0x37]
4BEC82:  LDR             R1, [SP,#0x628+var_3A8]
4BEC84:  STR             R1, [R0,#0x10]
4BEC86:  LDRB.W          R1, [SP,#0x628+var_390]
4BEC8A:  STRB.W          R1, [R0,#0x28]
4BEC8E:  LDRB.W          R1, [SP,#0x628+var_390+1]
4BEC92:  STRB.W          R1, [R0,#0x29]
4BEC96:  LDRB.W          R1, [SP,#0x628+var_390+2]
4BEC9A:  STRB.W          R1, [R0,#0x2A]
4BEC9E:  LDRB.W          R1, [SP,#0x628+var_390+3]
4BECA2:  STRB.W          R1, [R0,#0x2B]
4BECA6:  LDRB.W          R1, [SP,#0x628+var_382+2]
4BECAA:  STRB.W          R1, [R0,#0x38]
4BECAE:  LDRB.W          R1, [SP,#0x628+var_382+3]
4BECB2:  STRB.W          R1, [R0,#0x39]
4BECB6:  LDR             R1, [SP,#0x628+var_3A4]
4BECB8:  STR             R1, [R0,#0x14]
4BECBA:  LDRB.W          R1, [SP,#0x628+var_38C]
4BECBE:  STRB.W          R1, [R0,#0x2C]
4BECC2:  LDRB.W          R1, [SP,#0x628+var_38C+1]
4BECC6:  STRB.W          R1, [R0,#0x2D]
4BECCA:  LDRB.W          R1, [SP,#0x628+var_38C+2]
4BECCE:  STRB.W          R1, [R0,#0x2E]
4BECD2:  LDRB.W          R1, [SP,#0x628+var_38C+3]
4BECD6:  STRB.W          R1, [R0,#0x2F]
4BECDA:  LDRB.W          R1, [SP,#0x628+var_37E]
4BECDE:  STRB.W          R1, [R0,#0x3A]
4BECE2:  LDRB.W          R1, [SP,#0x628+var_37E+1]
4BECE6:  STRB.W          R1, [R0,#0x3B]
4BECEA:  MOV             R1, R4; unsigned int
4BECEC:  LDR             R0, [SP,#0x628+var_3BC]; this
4BECEE:  BLX             j__ZN8CFileMgr8ReadLineEjPci; CFileMgr::ReadLine(uint,char *,int)
4BECF2:  MOV             R1, R4; unsigned int
4BECF4:  CMP             R0, #0
4BECF6:  BNE.W           loc_4BE970
4BECFA:  LDR             R0, [SP,#0x628+var_3BC]; this
4BECFC:  BLX             j__ZN8CFileMgr9CloseFileEj; CFileMgr::CloseFile(uint)
4BED00:  MOVS            R0, #1
4BED02:  B               loc_4BED06
4BED04:  MOVS            R0, #0
4BED06:  LDR             R1, =(__stack_chk_guard_ptr - 0x4BED10)
4BED08:  LDR.W           R2, [R7,#var_34]
4BED0C:  ADD             R1, PC; __stack_chk_guard_ptr
4BED0E:  LDR             R1, [R1]; __stack_chk_guard
4BED10:  LDR             R1, [R1]
4BED12:  SUBS            R1, R1, R2
4BED14:  ITTTT EQ
4BED16:  ADDEQ.W         SP, SP, #0x5F8
4BED1A:  VPOPEQ          {D8-D9}
4BED1E:  ADDEQ           SP, SP, #4
4BED20:  POPEQ.W         {R8-R11}
4BED24:  IT EQ
4BED26:  POPEQ           {R4-R7,PC}
4BED28:  BLX             __stack_chk_fail
