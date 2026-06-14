; =========================================================
; Game Engine Function: _ZN6CWorld16TriggerExplosionERK7CVectorffP7CEntityS4_bf
; Address            : 0x426878 - 0x4269E0
; =========================================================

426878:  PUSH            {R4-R7,LR}
42687A:  ADD             R7, SP, #0xC
42687C:  PUSH.W          {R8-R11}
426880:  SUB             SP, SP, #4
426882:  VPUSH           {D8-D12}
426886:  SUB             SP, SP, #0x28
426888:  MOV             R10, R0
42688A:  MOV             R8, R1
42688C:  VLDR            S16, [R10]
426890:  VMOV            S20, R8
426894:  VLDR            S22, =50.0
426898:  MOV             R11, R3
42689A:  VSUB.F32        S0, S16, S20
42689E:  VLDR            S24, =60.0
4268A2:  MOV             R4, R2
4268A4:  VLDR            S18, [R10,#4]
4268A8:  VDIV.F32        S0, S0, S22
4268AC:  VADD.F32        S0, S0, S24
4268B0:  VMOV            R0, S0; x
4268B4:  BLX             floorf
4268B8:  VSUB.F32        S0, S18, S20
4268BC:  MOV             R9, R0
4268BE:  VDIV.F32        S0, S0, S22
4268C2:  VADD.F32        S0, S0, S24
4268C6:  VMOV            R0, S0; x
4268CA:  BLX             floorf
4268CE:  VADD.F32        S0, S16, S20
4268D2:  VADD.F32        S2, S18, S20
4268D6:  VMOV            S18, R0
4268DA:  VMOV            S16, R9
4268DE:  VDIV.F32        S0, S0, S22
4268E2:  VADD.F32        S0, S0, S24
4268E6:  VDIV.F32        S2, S2, S22
4268EA:  VMOV            R1, S0
4268EE:  VADD.F32        S2, S2, S24
4268F2:  VMOV            R5, S2
4268F6:  MOV             R0, R1; x
4268F8:  BLX             floorf
4268FC:  VMOV            S20, R0
426900:  MOV             R0, R5; x
426902:  BLX             floorf
426906:  VMOV            S0, R0
42690A:  VCVT.S32.F32    S4, S0
42690E:  VCVT.S32.F32    S0, S20
426912:  VCVT.S32.F32    S6, S18
426916:  VCVT.S32.F32    S2, S16
42691A:  VMOV            R0, S4
42691E:  VMOV            R1, S6
426922:  STR             R0, [SP,#0x70+var_60]; float
426924:  CMP             R1, R0
426926:  MOV             R2, R1
426928:  STR             R2, [SP,#0x70+var_58]
42692A:  BGT             loc_4269D2
42692C:  VMOV            R0, S2
426930:  LDRD.W          R6, R3, [R7,#arg_0]
426934:  VMOV            R2, S0
426938:  VLDR            S16, [R7,#arg_8]
42693C:  STR             R0, [SP,#0x70+var_5C]
42693E:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x426944)
426940:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
426942:  LDR             R5, [R0]; CWorld::ms_aRepeatSectors ...
426944:  STRD.W          R5, R2, [SP,#0x70+var_54]
426948:  LDR             R0, [SP,#0x70+var_5C]
42694A:  CMP             R0, R2
42694C:  BGT             loc_4269C2
42694E:  LDR             R0, [SP,#0x70+var_58]
426950:  LDR.W           R9, [SP,#0x70+var_5C]
426954:  LSLS            R0, R0, #4
426956:  UXTB            R0, R0
426958:  STR             R0, [SP,#0x70+var_4C]
42695A:  VSTR            S16, [SP,#0x70+var_64]
42695E:  AND.W           R0, R9, #0xF
426962:  STRD.W          R11, R6, [SP,#0x70+var_70]; float
426966:  MOV             R2, R8; CVector *
426968:  LDR             R1, [SP,#0x70+var_4C]
42696A:  STR             R3, [SP,#0x70+var_68]; CEntity *
42696C:  MOV             R3, R4; float
42696E:  ORRS            R0, R1
426970:  MOV             R1, R10; CPtrList *
426972:  ADD.W           R0, R0, R0,LSL#1
426976:  ADD.W           R5, R5, R0,LSL#2
42697A:  MOV             R0, R5; this
42697C:  BLX             j__ZN6CWorld26TriggerExplosionSectorListER8CPtrListRK7CVectorffP7CEntityS6_bf; CWorld::TriggerExplosionSectorList(CPtrList &,CVector const&,float,float,CEntity *,CEntity *,bool,float)
426980:  LDR             R0, [R7,#arg_4]
426982:  MOV             R1, R10; CPtrList *
426984:  VSTR            S16, [SP,#0x70+var_64]
426988:  MOV             R2, R8; CVector *
42698A:  STRD.W          R11, R6, [SP,#0x70+var_70]; float
42698E:  MOV             R3, R4; float
426990:  STR             R0, [SP,#0x70+var_68]; CEntity *
426992:  ADDS            R0, R5, #4; this
426994:  BLX             j__ZN6CWorld26TriggerExplosionSectorListER8CPtrListRK7CVectorffP7CEntityS6_bf; CWorld::TriggerExplosionSectorList(CPtrList &,CVector const&,float,float,CEntity *,CEntity *,bool,float)
426998:  LDR             R0, [R7,#arg_4]
42699A:  MOV             R1, R10; CPtrList *
42699C:  STR             R0, [SP,#0x70+var_68]; CEntity *
42699E:  ADD.W           R0, R5, #8; this
4269A2:  MOV             R2, R8; CVector *
4269A4:  MOV             R3, R4; float
4269A6:  VSTR            S16, [SP,#0x70+var_64]
4269AA:  STRD.W          R11, R6, [SP,#0x70+var_70]; float
4269AE:  BLX             j__ZN6CWorld26TriggerExplosionSectorListER8CPtrListRK7CVectorffP7CEntityS6_bf; CWorld::TriggerExplosionSectorList(CPtrList &,CVector const&,float,float,CEntity *,CEntity *,bool,float)
4269B2:  LDRD.W          R5, R2, [SP,#0x70+var_54]
4269B6:  ADD.W           R0, R9, #1
4269BA:  LDR             R3, [R7,#arg_4]
4269BC:  CMP             R9, R2
4269BE:  MOV             R9, R0
4269C0:  BLT             loc_42695A
4269C2:  LDR             R0, [SP,#0x70+var_58]
4269C4:  LDR             R1, [SP,#0x70+var_60]
4269C6:  ADD.W           R12, R0, #1
4269CA:  CMP             R0, R1
4269CC:  MOV             R0, R12
4269CE:  STR             R0, [SP,#0x70+var_58]
4269D0:  BLT             loc_426948
4269D2:  ADD             SP, SP, #0x28 ; '('
4269D4:  VPOP            {D8-D12}
4269D8:  ADD             SP, SP, #4
4269DA:  POP.W           {R8-R11}
4269DE:  POP             {R4-R7,PC}
