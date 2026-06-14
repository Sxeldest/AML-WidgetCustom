; =========================================================
; Game Engine Function: sub_AE838
; Address            : 0xAE838 - 0xAE9B0
; =========================================================

AE838:  PUSH            {R4-R7,LR}
AE83A:  ADD             R7, SP, #0xC
AE83C:  PUSH.W          {R8}
AE840:  SUB             SP, SP, #0x38
AE842:  MOV             R8, R0
AE844:  LDR             R0, =(__stack_chk_guard_ptr - 0xAE84A)
AE846:  ADD             R0, PC; __stack_chk_guard_ptr
AE848:  LDR             R0, [R0]; __stack_chk_guard
AE84A:  LDR             R0, [R0]
AE84C:  STR             R0, [SP,#0x48+var_14]
AE84E:  LDR.W           R4, [R8]
AE852:  CMP             R4, #0x1F
AE854:  BHI             loc_AE87C
AE856:  SUB.W           R0, R4, #0xA
AE85A:  CLZ.W           R0, R0
AE85E:  LSRS            R0, R0, #5
AE860:  TST.W           R0, R1,LSR#20
AE864:  ITTTT EQ
AE866:  SUBEQ.W         R0, R4, #9
AE86A:  CLZEQ.W         R0, R0
AE86E:  LSREQ           R0, R0, #5
AE870:  ANDEQ.W         R0, R0, R1,LSR#10
AE874:  IT EQ
AE876:  CMPEQ           R0, #0
AE878:  BNE             loc_AE888
AE87A:  B               loc_AE994
AE87C:  SUB.W           R0, R4, #0xE000
AE880:  CMP.W           R0, #0x1900
AE884:  BCC.W           loc_AE994
AE888:  MOVS            R0, #0x2000F
AE88E:  TST             R1, R0
AE890:  BEQ.W           loc_AE94E
AE894:  LSLS            R0, R1, #0x1F
AE896:  BEQ             loc_AE8B8
AE898:  SUB.W           R0, R4, #0x3A ; ':'
AE89C:  CMN.W           R0, #0xB
AE8A0:  BHI             loc_AE8B8
AE8A2:  SUB.W           R12, R4, #0x2A ; '*'
AE8A6:  MOVS            R0, #0
AE8A8:  CMP.W           R12, #5
AE8AC:  BHI.W           def_AE8D8; jumptable 000AE8D8 default case, cases 44,48-68,70-100
AE8B0:  CMP.W           R12, #2
AE8B4:  BEQ.W           def_AE8D8; jumptable 000AE8D8 default case, cases 44,48-68,70-100
AE8B8:  LSLS            R0, R1, #0xE
AE8BA:  BPL.W           loc_AE918; jumptable 000AE8D8 cases 42,43,45-47,69,101
AE8BE:  SUB.W           R0, R4, #0x3A ; ':'
AE8C2:  CMN.W           R0, #0xB
AE8C6:  BHI.W           loc_AE918; jumptable 000AE8D8 cases 42,43,45-47,69,101
AE8CA:  SUB.W           R12, R4, #0x2A ; '*'; switch 60 cases
AE8CE:  MOVS            R0, #0
AE8D0:  CMP.W           R12, #0x3B ; ';'
AE8D4:  BHI.W           def_AE8D8; jumptable 000AE8D8 default case, cases 44,48-68,70-100
AE8D8:  TBB.W           [PC,R12]; switch jump
AE8DC:  DCB 0x1E; jump table for switch statement
AE8DD:  DCB 0x1E
AE8DE:  DCB 0x5D
AE8DF:  DCB 0x1E
AE8E0:  DCB 0x1E
AE8E1:  DCB 0x1E
AE8E2:  DCB 0x5D
AE8E3:  DCB 0x5D
AE8E4:  DCB 0x5D
AE8E5:  DCB 0x5D
AE8E6:  DCB 0x5D
AE8E7:  DCB 0x5D
AE8E8:  DCB 0x5D
AE8E9:  DCB 0x5D
AE8EA:  DCB 0x5D
AE8EB:  DCB 0x5D
AE8EC:  DCB 0x5D
AE8ED:  DCB 0x5D
AE8EE:  DCB 0x5D
AE8EF:  DCB 0x5D
AE8F0:  DCB 0x5D
AE8F1:  DCB 0x5D
AE8F2:  DCB 0x5D
AE8F3:  DCB 0x5D
AE8F4:  DCB 0x5D
AE8F5:  DCB 0x5D
AE8F6:  DCB 0x5D
AE8F7:  DCB 0x1E
AE8F8:  DCB 0x5D
AE8F9:  DCB 0x5D
AE8FA:  DCB 0x5D
AE8FB:  DCB 0x5D
AE8FC:  DCB 0x5D
AE8FD:  DCB 0x5D
AE8FE:  DCB 0x5D
AE8FF:  DCB 0x5D
AE900:  DCB 0x5D
AE901:  DCB 0x5D
AE902:  DCB 0x5D
AE903:  DCB 0x5D
AE904:  DCB 0x5D
AE905:  DCB 0x5D
AE906:  DCB 0x5D
AE907:  DCB 0x5D
AE908:  DCB 0x5D
AE909:  DCB 0x5D
AE90A:  DCB 0x5D
AE90B:  DCB 0x5D
AE90C:  DCB 0x5D
AE90D:  DCB 0x5D
AE90E:  DCB 0x5D
AE90F:  DCB 0x5D
AE910:  DCB 0x5D
AE911:  DCB 0x5D
AE912:  DCB 0x5D
AE913:  DCB 0x5D
AE914:  DCB 0x5D
AE915:  DCB 0x5D
AE916:  DCB 0x5D
AE917:  DCB 0x1E
AE918:  SUB.W           R0, R4, #0x61 ; 'a'; jumptable 000AE8D8 cases 42,43,45-47,69,101
AE91C:  LSLS            R5, R1, #0x1E
AE91E:  BPL             loc_AE92C
AE920:  SUB.W           R5, R4, #0x30 ; '0'
AE924:  CMP             R5, #0xA
AE926:  IT CS
AE928:  CMPCS           R0, #6
AE92A:  BCS             loc_AE98C
AE92C:  LSLS            R5, R1, #0x1D
AE92E:  BPL             loc_AE93A
AE930:  CMP             R0, #0x19
AE932:  ITT LS
AE934:  SUBLS           R4, #0x20 ; ' '
AE936:  STRLS.W         R4, [R8]
AE93A:  LSLS            R0, R1, #0x1C
AE93C:  BPL             loc_AE94E
AE93E:  MOVS            R0, #0
AE940:  CMP             R4, #9
AE942:  BEQ             def_AE8D8; jumptable 000AE8D8 default case, cases 44,48-68,70-100
AE944:  CMP             R4, #0x20 ; ' '
AE946:  IT NE
AE948:  CMPNE.W         R4, #0x3000
AE94C:  BEQ             def_AE8D8; jumptable 000AE8D8 default case, cases 44,48-68,70-100
AE94E:  LSLS            R0, R1, #0x16
AE950:  BMI             loc_AE956
AE952:  MOVS            R0, #1
AE954:  B               def_AE8D8; jumptable 000AE8D8 default case, cases 44,48-68,70-100
AE956:  VMOV.I32        Q8, #0
AE95A:  ADD             R0, SP, #0x48+var_44
AE95C:  ADD.W           R5, R0, #0xC
AE960:  MOVS            R6, #0
AE962:  STR             R3, [SP,#0x48+var_3C]
AE964:  VST1.32         {D16-D17}, [R5]!
AE968:  VST1.32         {D16-D17}, [R5]!
AE96C:  STR             R6, [R5]
AE96E:  MOV.W           R6, #0x200
AE972:  STRD.W          R6, R1, [SP,#0x48+var_44]
AE976:  STRH.W          R4, [SP,#0x48+var_38]
AE97A:  BLX             R2
AE97C:  CBNZ            R0, loc_AE994
AE97E:  LDRH.W          R0, [SP,#0x48+var_38]
AE982:  STR.W           R0, [R8]
AE986:  CMP             R0, #0
AE988:  BNE             loc_AE952
AE98A:  B               loc_AE994
AE98C:  SUB.W           R5, R4, #0x41 ; 'A'
AE990:  CMP             R5, #5
AE992:  BLS             loc_AE92C
AE994:  MOVS            R0, #0
AE996:  LDR             R1, [SP,#0x48+var_14]; jumptable 000AE8D8 default case, cases 44,48-68,70-100
AE998:  LDR             R2, =(__stack_chk_guard_ptr - 0xAE99E)
AE99A:  ADD             R2, PC; __stack_chk_guard_ptr
AE99C:  LDR             R2, [R2]; __stack_chk_guard
AE99E:  LDR             R2, [R2]
AE9A0:  CMP             R2, R1
AE9A2:  ITTT EQ
AE9A4:  ADDEQ           SP, SP, #0x38 ; '8'
AE9A6:  POPEQ.W         {R8}
AE9AA:  POPEQ           {R4-R7,PC}
AE9AC:  BLX             __stack_chk_fail
