; =========================================================
; Game Engine Function: _ZN4CPed23DeadPedMakesTyresBloodyEv
; Address            : 0x55DB68 - 0x55DCC2
; =========================================================

55DB68:  PUSH            {R4-R7,LR}
55DB6A:  ADD             R7, SP, #0xC
55DB6C:  PUSH.W          {R8-R11}
55DB70:  SUB             SP, SP, #4
55DB72:  VPUSH           {D8-D12}
55DB76:  SUB             SP, SP, #8
55DB78:  MOV             R4, R0
55DB7A:  VMOV.F32        S0, #-2.0
55DB7E:  LDR             R0, [R4,#0x14]
55DB80:  VLDR            S16, =50.0
55DB84:  ADD.W           R1, R0, #0x30 ; '0'
55DB88:  CMP             R0, #0
55DB8A:  IT EQ
55DB8C:  ADDEQ           R1, R4, #4
55DB8E:  VLDR            S18, =60.0
55DB92:  VLDR            S2, [R1]
55DB96:  VLDR            S4, [R1,#4]
55DB9A:  VADD.F32        S6, S2, S0
55DB9E:  VADD.F32        S0, S4, S0
55DBA2:  VDIV.F32        S6, S6, S16
55DBA6:  VDIV.F32        S0, S0, S16
55DBAA:  VADD.F32        S6, S6, S18
55DBAE:  VADD.F32        S0, S0, S18
55DBB2:  VMOV            R0, S6; x
55DBB6:  VMOV            R5, S0
55DBBA:  VMOV.F32        S0, #2.0
55DBBE:  VADD.F32        S20, S2, S0
55DBC2:  VADD.F32        S22, S4, S0
55DBC6:  BLX             floorf
55DBCA:  VMOV            S24, R0
55DBCE:  MOV             R0, R5; x
55DBD0:  BLX             floorf
55DBD4:  VDIV.F32        S0, S20, S16
55DBD8:  MOV             R5, R0
55DBDA:  VADD.F32        S0, S0, S18
55DBDE:  VMOV            R0, S0; x
55DBE2:  BLX             floorf
55DBE6:  VDIV.F32        S0, S22, S16
55DBEA:  LDR             R6, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x55DBF0)
55DBEC:  ADD             R6, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
55DBEE:  VADD.F32        S0, S0, S18
55DBF2:  VMOV            S16, R0
55DBF6:  VMOV            R1, S0
55DBFA:  MOV             R0, R1; x
55DBFC:  BLX             floorf
55DC00:  VMOV            S0, R0
55DC04:  LDR             R0, [R6]; CWorld::ms_nCurrentScanCode ...
55DC06:  VCVT.S32.F32    S4, S24
55DC0A:  MOV.W           R9, #0
55DC0E:  VCVT.S32.F32    S0, S0
55DC12:  LDRH            R0, [R0]; this
55DC14:  VCVT.S32.F32    S6, S16
55DC18:  VMOV            S2, R5
55DC1C:  MOVS            R5, #0x77 ; 'w'
55DC1E:  VCVT.S32.F32    S2, S2
55DC22:  VMOV            R1, S0
55DC26:  VMOV            R11, S2
55DC2A:  CMP             R1, #0x77 ; 'w'
55DC2C:  IT GE
55DC2E:  MOVGE           R1, R5
55DC30:  STR             R1, [SP,#0x50+var_4C]
55DC32:  VMOV            R1, S6
55DC36:  CMP             R1, #0x77 ; 'w'
55DC38:  IT LT
55DC3A:  MOVLT           R5, R1
55DC3C:  VMOV            R1, S4
55DC40:  CMP.W           R11, #0
55DC44:  IT LE
55DC46:  MOVLE           R11, R9
55DC48:  CMP             R1, #0
55DC4A:  IT GT
55DC4C:  MOVGT           R9, R1
55DC4E:  MOVW            R1, #0xFFFF
55DC52:  CMP             R0, R1
55DC54:  BEQ             loc_55DC5A
55DC56:  ADDS            R0, #1
55DC58:  B               loc_55DC60
55DC5A:  BLX             j__ZN6CWorld14ClearScanCodesEv; CWorld::ClearScanCodes(void)
55DC5E:  MOVS            R0, #1
55DC60:  LDR             R1, =(_ZN6CWorld19ms_nCurrentScanCodeE_ptr - 0x55DC66)
55DC62:  ADD             R1, PC; _ZN6CWorld19ms_nCurrentScanCodeE_ptr
55DC64:  LDR             R1, [R1]; CWorld::ms_nCurrentScanCode ...
55DC66:  STRH            R0, [R1]; CWorld::ms_nCurrentScanCode
55DC68:  LDR             R0, [SP,#0x50+var_4C]
55DC6A:  CMP             R11, R0
55DC6C:  BGT             loc_55DCB4
55DC6E:  SUB.W           R0, R9, #1
55DC72:  STR             R0, [SP,#0x50+var_50]
55DC74:  LDR             R0, =(_ZN6CWorld17ms_aRepeatSectorsE_ptr - 0x55DC7A)
55DC76:  ADD             R0, PC; _ZN6CWorld17ms_aRepeatSectorsE_ptr
55DC78:  LDR             R6, [R0]; CWorld::ms_aRepeatSectors ...
55DC7A:  CMP             R9, R5
55DC7C:  BGT             loc_55DCA8
55DC7E:  LDR.W           R8, [SP,#0x50+var_50]
55DC82:  MOV.W           R0, R11,LSL#4
55DC86:  UXTB.W          R10, R0
55DC8A:  ADD.W           R8, R8, #1
55DC8E:  AND.W           R0, R8, #0xF
55DC92:  ORR.W           R0, R0, R10
55DC96:  ADD.W           R0, R0, R0,LSL#1
55DC9A:  ADD.W           R1, R6, R0,LSL#2; CPtrList *
55DC9E:  MOV             R0, R4; this
55DCA0:  BLX             j__ZN4CPed24MakeTyresMuddySectorListER8CPtrList; CPed::MakeTyresMuddySectorList(CPtrList &)
55DCA4:  CMP             R8, R5
55DCA6:  BLT             loc_55DC8A
55DCA8:  LDR             R1, [SP,#0x50+var_4C]
55DCAA:  ADD.W           R0, R11, #1
55DCAE:  CMP             R11, R1
55DCB0:  MOV             R11, R0
55DCB2:  BLT             loc_55DC7A
55DCB4:  ADD             SP, SP, #8
55DCB6:  VPOP            {D8-D12}
55DCBA:  ADD             SP, SP, #4
55DCBC:  POP.W           {R8-R11}
55DCC0:  POP             {R4-R7,PC}
