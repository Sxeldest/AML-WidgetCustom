; =========================================================
; Game Engine Function: _ZN13CCarEnterExit22IsRoomForPedToLeaveCarERK8CVehicleiP7CVector
; Address            : 0x5078E0 - 0x507C6A
; =========================================================

5078E0:  PUSH            {R4-R7,LR}
5078E2:  ADD             R7, SP, #0xC
5078E4:  PUSH.W          {R8}
5078E8:  VPUSH           {D8-D9}
5078EC:  SUB             SP, SP, #0xA0
5078EE:  MOV             R4, R0
5078F0:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x5078FC)
5078F2:  MOV             R5, R1
5078F4:  LDRSH.W         R1, [R4,#0x26]
5078F8:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
5078FA:  MOV             R6, R2
5078FC:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
5078FE:  LDR.W           R0, [R0,R1,LSL#2]
507902:  MOVS            R1, #0
507904:  STRD.W          R1, R1, [SP,#0xC0+var_98]
507908:  STRD.W          R1, R1, [SP,#0xC0+var_A0]
50790C:  LDR.W           R1, [R4,#0x5A0]
507910:  CMP             R1, #9
507912:  BEQ             loc_507948
507914:  LDR.W           R1, [R4,#0x388]
507918:  LDRB.W          R1, [R1,#0xCD]
50791C:  LSLS            R1, R1, #0x1E
50791E:  BMI             loc_507948
507920:  SUB.W           R1, R5, #8; switch 4 cases
507924:  CMP             R1, #3
507926:  BHI.W           def_50792A; jumptable 0050792A default case
50792A:  TBH.W           [PC,R1,LSL#1]; switch jump
50792E:  DCW 4; jump table for switch statement
507930:  DCW 0x17B
507932:  DCW 0x183
507934:  DCW 0x190
507936:  LDR             R1, [R0,#0x54]; jumptable 0050792A case 8
507938:  LDR             R0, [R0,#0x74]
50793A:  CMP             R1, #5
50793C:  IT NE
50793E:  ADDNE           R0, #0x30 ; '0'
507940:  VLDR            D16, [R0]
507944:  LDR             R0, [R0,#8]
507946:  B               loc_507C2C
507948:  ORR.W           R1, R5, #2
50794C:  CMP             R1, #0xB
50794E:  BNE             loc_50795A
507950:  LDR             R0, [R0,#0x74]
507952:  VLDR            D16, [R0,#0x3C]
507956:  LDR             R0, [R0,#0x44]
507958:  B               loc_50796A
50795A:  LDR             R1, [R0,#0x54]
50795C:  LDR             R0, [R0,#0x74]
50795E:  CMP             R1, #5
507960:  IT NE
507962:  ADDNE           R0, #0x30 ; '0'
507964:  VLDR            D16, [R0]
507968:  LDR             R0, [R0,#8]
50796A:  STR             R0, [SP,#0xC0+var_28]
50796C:  ORR.W           R0, R5, #1
507970:  VSTR            D16, [SP,#0xC0+var_30]
507974:  CMP             R0, #0xB
507976:  ITTT EQ
507978:  VLDREQ          S0, [SP,#0xC0+var_30]
50797C:  VNEGEQ.F32      S0, S0
507980:  VSTREQ          S0, [SP,#0xC0+var_30]
507984:  ADD.W           R8, SP, #0xC0+var_50
507988:  LDR             R1, [R4,#0x14]
50798A:  ADD             R2, SP, #0xC0+var_30
50798C:  MOV             R0, R8
50798E:  BLX             j__ZmlRK7CMatrixRK7CVector; operator*(CMatrix const&,CVector const&)
507992:  LDR             R0, [SP,#0xC0+var_48]
507994:  MOV             R1, R4; CVehicle *
507996:  STR             R0, [SP,#0xC0+var_38]
507998:  ADD             R0, SP, #0xC0+var_60; this
50799A:  VLDR            D16, [SP,#0xC0+var_50]
50799E:  MOV             R2, R5; int
5079A0:  VSTR            D16, [SP,#0xC0+var_40]
5079A4:  BLX             j__ZN13CCarEnterExit24GetPositionToOpenCarDoorERK8CVehiclei; CCarEnterExit::GetPositionToOpenCarDoor(CVehicle const&,int)
5079A8:  VLDR            D16, [SP,#0xC0+var_60]
5079AC:  CMP             R6, #0
5079AE:  LDR             R0, [SP,#0xC0+var_58]
5079B0:  STR             R0, [SP,#0xC0+var_48]
5079B2:  VSTR            D16, [SP,#0xC0+var_50]
5079B6:  BEQ             loc_507A12
5079B8:  VLDR            D16, [R6]
5079BC:  ADD             R2, SP, #0xC0+var_70
5079BE:  LDR             R0, [R6,#8]
5079C0:  STR             R0, [SP,#0xC0+var_68]
5079C2:  ORR.W           R0, R5, #1
5079C6:  CMP             R0, #9
5079C8:  VSTR            D16, [SP,#0xC0+var_70]
5079CC:  ITTT EQ
5079CE:  VLDREQ          S0, [SP,#0xC0+var_70]
5079D2:  VNEGEQ.F32      S0, S0
5079D6:  VSTREQ          S0, [SP,#0xC0+var_70]
5079DA:  ADD             R0, SP, #0xC0+var_60; CMatrix *
5079DC:  LDR             R1, [R4,#0x14]; CVector *
5079DE:  BLX             j__Z11Multiply3x3RK7CMatrixRK7CVector; Multiply3x3(CMatrix const&,CVector const&)
5079E2:  VLDR            S0, [SP,#0xC0+var_60]
5079E6:  VLDR            S6, [SP,#0xC0+var_50]
5079EA:  VLDR            S2, [SP,#0xC0+var_60+4]
5079EE:  VLDR            S8, [SP,#0xC0+var_50+4]
5079F2:  VADD.F32        S0, S0, S6
5079F6:  VLDR            S10, [SP,#0xC0+var_48]
5079FA:  VLDR            S4, [SP,#0xC0+var_58]
5079FE:  VADD.F32        S2, S2, S8
507A02:  VADD.F32        S4, S4, S10
507A06:  VSTR            S0, [SP,#0xC0+var_50]
507A0A:  VSTR            S2, [SP,#0xC0+var_50+4]
507A0E:  VSTR            S4, [SP,#0xC0+var_48]
507A12:  LDR             R0, [R4,#0x14]
507A14:  VLDR            S0, [R0,#0x28]
507A18:  VCMPE.F32       S0, #0.0
507A1C:  VMRS            APSR_nzcv, FPSCR
507A20:  BGE             loc_507A3E
507A22:  VMOV.F32        S0, #0.5
507A26:  VLDR            S2, [SP,#0xC0+var_38]
507A2A:  VADD.F32        S2, S2, S0
507A2E:  VSTR            S2, [SP,#0xC0+var_38]
507A32:  VLDR            S2, [SP,#0xC0+var_48]
507A36:  VADD.F32        S0, S2, S0
507A3A:  VSTR            S0, [SP,#0xC0+var_48]
507A3E:  LDR.W           R1, [R4,#0x5A0]
507A42:  ADD.W           R0, R8, #8
507A46:  VLDR            S16, [SP,#0xC0+var_50]
507A4A:  VLDR            S18, [SP,#0xC0+var_50+4]
507A4E:  CMP             R1, #9
507A50:  BNE             loc_507A80
507A52:  VLDR            S0, =0.2
507A56:  VLDR            S2, [SP,#0xC0+var_48]
507A5A:  VLDR            D16, [SP,#0xC0+var_50]
507A5E:  VADD.F32        S0, S2, S0
507A62:  VLDR            S2, =0.35
507A66:  VADD.F32        S2, S0, S2
507A6A:  VSTR            S0, [SP,#0xC0+var_48]
507A6E:  LDR             R0, [SP,#0xC0+var_48]
507A70:  STR             R0, [SP,#0xC0+var_58]
507A72:  VSTR            D16, [SP,#0xC0+var_60]
507A76:  VMOV            R8, S2
507A7A:  VSTR            S2, [SP,#0xC0+var_48]
507A7E:  B               loc_507AD4
507A80:  VLDR            S0, [SP,#0xC0+var_40]
507A84:  VLDR            S2, [SP,#0xC0+var_40+4]
507A88:  VSUB.F32        S6, S16, S0
507A8C:  LDR.W           R8, [R0]
507A90:  VSUB.F32        S4, S18, S2
507A94:  VMUL.F32        S10, S6, S6
507A98:  VMUL.F32        S8, S4, S4
507A9C:  VADD.F32        S8, S10, S8
507AA0:  VLDR            S10, =0.0
507AA4:  VADD.F32        S8, S8, S10
507AA8:  VLDR            S10, =0.35
507AAC:  VSQRT.F32       S8, S8
507AB0:  VADD.F32        S10, S8, S10
507AB4:  VDIV.F32        S8, S10, S8
507AB8:  VMUL.F32        S4, S4, S8
507ABC:  VMUL.F32        S6, S6, S8
507AC0:  VADD.F32        S2, S2, S4
507AC4:  VADD.F32        S0, S0, S6
507AC8:  VSTR            S2, [SP,#0xC0+var_60+4]
507ACC:  VSTR            S0, [SP,#0xC0+var_60]
507AD0:  STR.W           R8, [SP,#0xC0+var_58]
507AD4:  ADD             R0, SP, #0xC0+var_40; this
507AD6:  ADD             R1, SP, #0xC0+var_60; CVector *
507AD8:  MOVS            R5, #0
507ADA:  MOVS            R6, #1
507ADC:  MOVS            R2, #(stderr+1); CVector *
507ADE:  MOVS            R3, #0; bool
507AE0:  STRD.W          R5, R6, [SP,#0xC0+var_C0]; bool
507AE4:  STRD.W          R5, R5, [SP,#0xC0+var_B8]; bool
507AE8:  STR             R5, [SP,#0xC0+var_B0]; bool
507AEA:  BLX             j__ZN6CWorld21GetIsLineOfSightClearERK7CVectorS2_bbbbbbb; CWorld::GetIsLineOfSightClear(CVector const&,CVector const&,bool,bool,bool,bool,bool,bool,bool)
507AEE:  CMP             R0, #1
507AF0:  BNE.W           loc_507C16
507AF4:  VMOV            R1, S18
507AF8:  LDR.W           R2, [R4,#0x5A0]
507AFC:  VMOV            R0, S16
507B00:  MOVW            R3, #0x3333
507B04:  CMP             R2, #6
507B06:  MOV.W           R2, #0
507B0A:  IT NE
507B0C:  MOVNE           R2, #1
507B0E:  MOVT            R3, #0x3EB3
507B12:  STRD.W          R4, R2, [SP,#0xC0+var_C0]
507B16:  MOV             R2, R8
507B18:  STRD.W          R6, R5, [SP,#0xC0+var_B8]
507B1C:  STRD.W          R6, R5, [SP,#0xC0+var_B0]
507B20:  STR             R5, [SP,#0xC0+var_A8]
507B22:  BLX             j__ZN6CWorld22TestSphereAgainstWorldE7CVectorfP7CEntitybbbbbb; CWorld::TestSphereAgainstWorld(CVector,float,CEntity *,bool,bool,bool,bool,bool,bool)
507B26:  CBZ             R0, loc_507B42
507B28:  LDRH            R1, [R0,#0x26]
507B2A:  CMP.W           R1, #0x260
507B2E:  BNE             loc_507B3A
507B30:  LDRH            R1, [R4,#0x26]
507B32:  MOVW            R2, #0x241
507B36:  CMP             R1, R2
507B38:  BEQ             loc_507B42
507B3A:  LDR.W           R1, [R4,#0x100]
507B3E:  CMP             R0, R1
507B40:  BNE             def_50792A; jumptable 0050792A default case
507B42:  MOVS            R0, #0
507B44:  MOVS            R1, #1
507B46:  STRD.W          R1, R0, [SP,#0xC0+var_C0]; int
507B4A:  ADD             R2, SP, #0xC0+var_9C; int
507B4C:  STRD.W          R0, R1, [SP,#0xC0+var_B8]; int
507B50:  MOVS            R1, #0
507B52:  STRD.W          R0, R0, [SP,#0xC0+var_B0]; int
507B56:  ADD             R3, SP, #0xC0+var_A0; int
507B58:  STR             R0, [SP,#0xC0+var_A8]; int
507B5A:  ADD             R0, SP, #0xC0+var_50; CVector *
507B5C:  MOVT            R1, #0x447A; int
507B60:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
507B64:  VLDR            S16, [SP,#0xC0+var_94]
507B68:  CMP             R0, #1
507B6A:  BNE             loc_507B90
507B6C:  VLDR            S0, [SP,#0xC0+var_48]
507B70:  VCMPE.F32       S16, S0
507B74:  VMRS            APSR_nzcv, FPSCR
507B78:  BLE             loc_507B90
507B7A:  VLDR            S2, =0.6
507B7E:  VADD.F32        S0, S0, S2
507B82:  VCMPE.F32       S16, S0
507B86:  VMRS            APSR_nzcv, FPSCR
507B8A:  BGE             loc_507B90
507B8C:  MOVS            R5, #0; jumptable 0050792A default case
507B8E:  B               loc_507C16
507B90:  LDR.W           R0, [R4,#0x5A0]
507B94:  CMP             R0, #5
507B96:  BEQ             loc_507BEC
507B98:  LDRSH.W         R0, [R4,#0x26]
507B9C:  CMP.W           R0, #0x1CC
507BA0:  BGE             loc_507BDE
507BA2:  MOVW            R1, #0x1A1
507BA6:  CMP             R0, R1
507BA8:  ITT NE
507BAA:  MOVWNE          R1, #0x1BF
507BAE:  CMPNE           R0, R1
507BB0:  BEQ             loc_507BEC
507BB2:  MOVS            R5, #0
507BB4:  MOVS            R0, #1
507BB6:  MOVS            R1, #0
507BB8:  STRD.W          R0, R5, [SP,#0xC0+var_C0]; int
507BBC:  STRD.W          R5, R0, [SP,#0xC0+var_B8]; int
507BC0:  ADD             R0, SP, #0xC0+var_50; CVector *
507BC2:  ADD             R2, SP, #0xC0+var_9C; int
507BC4:  ADD             R3, SP, #0xC0+var_A0; int
507BC6:  MOVT            R1, #0xC47A; int
507BCA:  STRD.W          R5, R5, [SP,#0xC0+var_B0]; int
507BCE:  STR             R5, [SP,#0xC0+var_A8]; int
507BD0:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
507BD4:  CMP             R0, #1
507BD6:  BNE             loc_507C16
507BD8:  VLDR            S0, [SP,#0xC0+var_94]
507BDC:  B               loc_507BF4
507BDE:  MOVW            R1, #0x21B
507BE2:  CMP             R0, R1
507BE4:  IT NE
507BE6:  CMPNE.W         R0, #0x1CC
507BEA:  BNE             loc_507BB2
507BEC:  VMOV.F32        S0, #-1.0
507BF0:  VADD.F32        S0, S16, S0
507BF4:  VCMPE.F32       S16, S0
507BF8:  MOVS            R1, #0
507BFA:  VMRS            APSR_nzcv, FPSCR
507BFE:  VCMP.F32        S16, #0.0
507C02:  MOV.W           R0, #0
507C06:  IT GE
507C08:  MOVGE           R1, #1
507C0A:  VMRS            APSR_nzcv, FPSCR
507C0E:  IT EQ
507C10:  MOVEQ           R0, #1
507C12:  ORR.W           R5, R0, R1
507C16:  MOV             R0, R5
507C18:  ADD             SP, SP, #0xA0
507C1A:  VPOP            {D8-D9}
507C1E:  POP.W           {R8}
507C22:  POP             {R4-R7,PC}
507C24:  LDR             R0, [R0,#0x74]; jumptable 0050792A case 9
507C26:  VLDR            D16, [R0,#0x3C]
507C2A:  LDR             R0, [R0,#0x44]
507C2C:  STR             R0, [SP,#0xC0+var_28]
507C2E:  VSTR            D16, [SP,#0xC0+var_30]
507C32:  B               loc_507984
507C34:  LDR             R1, [R0,#0x54]; jumptable 0050792A case 10
507C36:  LDR             R0, [R0,#0x74]
507C38:  CMP             R1, #5
507C3A:  IT NE
507C3C:  ADDNE           R0, #0x30 ; '0'
507C3E:  VLDR            D16, [R0]
507C42:  VSTR            D16, [SP,#0xC0+var_30]
507C46:  VLDR            S0, [SP,#0xC0+var_30]
507C4A:  LDR             R0, [R0,#8]
507C4C:  B               loc_507C5E
507C4E:  LDR             R0, [R0,#0x74]; jumptable 0050792A case 11
507C50:  VLDR            D16, [R0,#0x3C]
507C54:  VSTR            D16, [SP,#0xC0+var_30]
507C58:  VLDR            S0, [SP,#0xC0+var_30]
507C5C:  LDR             R0, [R0,#0x44]
507C5E:  VNEG.F32        S0, S0
507C62:  STR             R0, [SP,#0xC0+var_28]
507C64:  VSTR            S0, [SP,#0xC0+var_30]
507C68:  B               loc_507984
