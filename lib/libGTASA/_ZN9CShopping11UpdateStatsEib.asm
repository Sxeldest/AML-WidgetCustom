; =========================================================
; Game Engine Function: _ZN9CShopping11UpdateStatsEib
; Address            : 0x36088C - 0x360990
; =========================================================

36088C:  PUSH            {R4,R6,R7,LR}
36088E:  ADD             R7, SP, #8
360890:  MOV             R4, R0
360892:  LDR             R0, =(_ZN9CShopping16ms_statModifiersE_ptr - 0x36089A)
360894:  CMP             R1, #1
360896:  ADD             R0, PC; _ZN9CShopping16ms_statModifiersE_ptr
360898:  LDR             R0, [R0]; CShopping::ms_statModifiers ...
36089A:  LDRSB.W         R2, [R0,R4,LSL#2]
36089E:  ADD.W           R0, R0, R4,LSL#2
3608A2:  LDRSB.W         R0, [R0,#1]
3608A6:  UXTB            R3, R2
3608A8:  BNE             loc_36090A
3608AA:  CMP             R3, #0xFF
3608AC:  BEQ             loc_3608DA
3608AE:  LDR             R1, =(unk_6101A8 - 0x3608B4)
3608B0:  ADD             R1, PC; unk_6101A8
3608B2:  LDR.W           R2, [R1,R2,LSL#2]; float
3608B6:  ADDS            R1, R2, #1
3608B8:  BEQ             loc_3608DA
3608BA:  CMP             R2, #0x50 ; 'P'
3608BC:  IT NE
3608BE:  CMPNE           R2, #0x42 ; 'B'
3608C0:  BNE             loc_3608C8
3608C2:  ADD.W           R0, R0, R0,LSL#2
3608C6:  LSLS            R0, R0, #1
3608C8:  VMOV            S0, R0
3608CC:  UXTH            R0, R2; this
3608CE:  VCVT.F32.S32    S0, S0
3608D2:  VMOV            R1, S0; unsigned __int16
3608D6:  BLX             j__ZN6CStats10ModifyStatEtf; CStats::ModifyStat(ushort,float)
3608DA:  LDR             R0, =(_ZN9CShopping16ms_statModifiersE_ptr - 0x3608E0)
3608DC:  ADD             R0, PC; _ZN9CShopping16ms_statModifiersE_ptr
3608DE:  LDR             R0, [R0]; CShopping::ms_statModifiers ...
3608E0:  ADD.W           R1, R0, R4,LSL#2
3608E4:  LDRSB.W         R0, [R1,#2]
3608E8:  ADDS            R2, R0, #1
3608EA:  BEQ             locret_360976
3608EC:  LDR             R2, =(unk_6101A8 - 0x3608F2)
3608EE:  ADD             R2, PC; unk_6101A8
3608F0:  LDR.W           R0, [R2,R0,LSL#2]
3608F4:  ADDS            R2, R0, #1
3608F6:  BEQ             locret_360976
3608F8:  LDRSB.W         R1, [R1,#3]
3608FC:  CMP             R0, #0x50 ; 'P'
3608FE:  IT NE
360900:  CMPNE           R0, #0x42 ; 'B'
360902:  BNE             loc_36097A
360904:  ADD.W           R1, R1, R1,LSL#2
360908:  B               loc_360972
36090A:  CMP             R3, #0xFF
36090C:  BEQ             loc_360940
36090E:  LDR             R1, =(unk_6101A8 - 0x360914)
360910:  ADD             R1, PC; unk_6101A8
360912:  LDR.W           R2, [R1,R2,LSL#2]; float
360916:  ADDS            R1, R2, #1
360918:  BEQ             loc_360940
36091A:  CMP             R2, #0x50 ; 'P'
36091C:  IT NE
36091E:  CMPNE           R2, #0x42 ; 'B'
360920:  BNE             loc_36092C
360922:  ADD.W           R0, R0, R0,LSL#2
360926:  NEGS            R0, R0
360928:  LSLS            R0, R0, #1
36092A:  B               loc_36092E
36092C:  NEGS            R0, R0
36092E:  VMOV            S0, R0
360932:  UXTH            R0, R2; this
360934:  VCVT.F32.S32    S0, S0
360938:  VMOV            R1, S0; unsigned __int16
36093C:  BLX             j__ZN6CStats10ModifyStatEtf; CStats::ModifyStat(ushort,float)
360940:  LDR             R0, =(_ZN9CShopping16ms_statModifiersE_ptr - 0x360946)
360942:  ADD             R0, PC; _ZN9CShopping16ms_statModifiersE_ptr
360944:  LDR             R0, [R0]; CShopping::ms_statModifiers ...
360946:  ADD.W           R1, R0, R4,LSL#2
36094A:  LDRSB.W         R0, [R1,#2]
36094E:  ADDS            R2, R0, #1
360950:  IT EQ
360952:  POPEQ           {R4,R6,R7,PC}
360954:  LDR             R2, =(unk_6101A8 - 0x36095A)
360956:  ADD             R2, PC; unk_6101A8
360958:  LDR.W           R0, [R2,R0,LSL#2]
36095C:  ADDS            R2, R0, #1; float
36095E:  BEQ             locret_360976
360960:  LDRSB.W         R1, [R1,#3]
360964:  CMP             R0, #0x50 ; 'P'
360966:  IT NE
360968:  CMPNE           R0, #0x42 ; 'B'
36096A:  BNE             loc_360978
36096C:  ADD.W           R1, R1, R1,LSL#2
360970:  NEGS            R1, R1
360972:  LSLS            R1, R1, #1
360974:  B               loc_36097A
360976:  POP             {R4,R6,R7,PC}
360978:  NEGS            R1, R1
36097A:  VMOV            S0, R1
36097E:  UXTH            R0, R0; this
360980:  VCVT.F32.S32    S0, S0
360984:  VMOV            R1, S0; unsigned __int16
360988:  POP.W           {R4,R6,R7,LR}
36098C:  B.W             sub_1983FC
