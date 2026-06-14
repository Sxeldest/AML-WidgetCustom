; =========================================================
; Game Engine Function: _ZN21CTaskSimpleHoldEntity19ChoosePutDownHeightEP4CPed
; Address            : 0x541C60 - 0x541D6E
; =========================================================

541C60:  PUSH            {R4-R7,LR}
541C62:  ADD             R7, SP, #0xC
541C64:  PUSH.W          {R11}
541C68:  SUB             SP, SP, #0x58
541C6A:  MOV             R5, R1
541C6C:  MOV             R4, R0
541C6E:  LDR             R0, [R5,#0x14]
541C70:  ADDS            R6, R5, #4
541C72:  VLDR            S0, =0.65
541C76:  VMOV.F32        S14, #-1.5
541C7A:  CMP             R0, #0
541C7C:  MOV             R1, R6
541C7E:  VLDR            S6, [R0,#0x18]
541C82:  MOV.W           R2, #1
541C86:  VLDR            S4, [R0,#0x14]
541C8A:  ADD             R3, SP, #0x68+var_4C; int
541C8C:  VMUL.F32        S6, S6, S0
541C90:  VLDR            S2, [R0,#0x10]
541C94:  IT NE
541C96:  ADDNE.W         R1, R0, #0x30 ; '0'
541C9A:  VMUL.F32        S4, S4, S0
541C9E:  VLDR            S12, [R1,#8]
541CA2:  VMUL.F32        S0, S2, S0
541CA6:  VLDR            S8, [R1]
541CAA:  MOVS            R0, #0
541CAC:  VLDR            S10, [R1,#4]
541CB0:  STR             R0, [SP,#0x68+var_4C]
541CB2:  VADD.F32        S6, S6, S12
541CB6:  VLDR            S12, =0.2
541CBA:  VADD.F32        S4, S4, S10
541CBE:  VADD.F32        S0, S0, S8
541CC2:  VADD.F32        S6, S6, S12
541CC6:  VSTR            S4, [SP,#0x68+var_18]
541CCA:  VSTR            S0, [SP,#0x68+var_1C]
541CCE:  VADD.F32        S2, S6, S14
541CD2:  VSTR            S6, [SP,#0x68+var_14]
541CD6:  STRD.W          R2, R0, [SP,#0x68+var_68]; int
541CDA:  STRD.W          R0, R2, [SP,#0x68+var_60]; int
541CDE:  ADD             R2, SP, #0x68+var_48; int
541CE0:  STRD.W          R0, R0, [SP,#0x68+var_58]; int
541CE4:  STR             R0, [SP,#0x68+var_50]; int
541CE6:  ADD             R0, SP, #0x68+var_1C; CVector *
541CE8:  VMOV            R1, S2; int
541CEC:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
541CF0:  CMP             R0, #1
541CF2:  BNE             loc_541D30
541CF4:  LDR             R0, [R5,#0x14]
541CF6:  VLDR            S0, =-0.2
541CFA:  CMP             R0, #0
541CFC:  IT NE
541CFE:  ADDNE.W         R6, R0, #0x30 ; '0'
541D02:  VLDR            S2, [R6,#8]
541D06:  VADD.F32        S4, S2, S0
541D0A:  VLDR            S0, [SP,#0x68+var_40]
541D0E:  VCMPE.F32       S0, S4
541D12:  VMRS            APSR_nzcv, FPSCR
541D16:  BGE             loc_541D34
541D18:  VLDR            S4, =-0.7
541D1C:  MOVS            R0, #0x51 ; 'Q'
541D1E:  VADD.F32        S2, S2, S4
541D22:  VCMPE.F32       S0, S2
541D26:  VMRS            APSR_nzcv, FPSCR
541D2A:  IT GE
541D2C:  MOVGE           R0, #0x52 ; 'R'
541D2E:  B               loc_541D36
541D30:  MOVS            R0, #0x51 ; 'Q'
541D32:  B               loc_541D36
541D34:  MOVS            R0, #0x53 ; 'S'
541D36:  STR             R0, [R4,#0x24]
541D38:  LDR             R0, [R4]
541D3A:  LDR             R1, [R0,#0x14]
541D3C:  MOV             R0, R4
541D3E:  BLX             R1
541D40:  MOVW            R1, #0x135
541D44:  CMP             R0, R1
541D46:  BNE             loc_541D66
541D48:  LDR             R0, [R4,#0x24]
541D4A:  ADR             R1, dword_541D80
541D4C:  VLDR            S2, =0.43333
541D50:  CMP             R0, #0x52 ; 'R'
541D52:  IT EQ
541D54:  ADDEQ           R1, #4
541D56:  CMP             R0, #0x53 ; 'S'
541D58:  VLDR            S0, [R1]
541D5C:  IT EQ
541D5E:  VMOVEQ.F32      S0, S2
541D62:  VSTR            S0, [R4,#0x3C]
541D66:  ADD             SP, SP, #0x58 ; 'X'
541D68:  POP.W           {R11}
541D6C:  POP             {R4-R7,PC}
