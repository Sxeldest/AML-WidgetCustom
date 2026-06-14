; =========================================================
; Game Engine Function: _ZN11CWaterLevel14GetGroundLevelERK7CVectorPfP7ColDataf
; Address            : 0x59BC5C - 0x59BCDC
; =========================================================

59BC5C:  PUSH            {R4-R7,LR}
59BC5E:  ADD             R7, SP, #0xC
59BC60:  PUSH.W          {R11}
59BC64:  SUB             SP, SP, #0x58
59BC66:  VLDR            S0, =0.0
59BC6A:  VMOV            S8, R3
59BC6E:  VLDR            S4, [R0,#4]
59BC72:  MOVS            R6, #0
59BC74:  VLDR            S2, [R0]
59BC78:  MOV             R4, R2
59BC7A:  VLDR            S6, [R0,#8]
59BC7E:  VADD.F32        S4, S4, S0
59BC82:  VADD.F32        S0, S2, S0
59BC86:  MOVS            R0, #1
59BC88:  VADD.F32        S2, S6, S8
59BC8C:  MOV             R5, R1
59BC8E:  EOR.W           R1, R3, #0x80000000; int
59BC92:  ADD             R2, SP, #0x68+var_3C; int
59BC94:  ADD             R3, SP, #0x68+var_40; int
59BC96:  VSTR            S4, [SP,#0x68+var_48]
59BC9A:  VSTR            S0, [SP,#0x68+var_4C]
59BC9E:  VSTR            S2, [SP,#0x68+var_44]
59BCA2:  STRD.W          R0, R6, [SP,#0x68+var_68]; int
59BCA6:  STRD.W          R6, R6, [SP,#0x68+var_60]; int
59BCAA:  STRD.W          R0, R6, [SP,#0x68+var_58]; int
59BCAE:  ADD             R0, SP, #0x68+var_4C; CVector *
59BCB0:  STR             R6, [SP,#0x68+var_50]; int
59BCB2:  BLX.W           j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
59BCB6:  CMP             R0, #1
59BCB8:  BNE             loc_59BCD2
59BCBA:  LDR             R0, [SP,#0x68+var_34]
59BCBC:  CMP             R4, #0
59BCBE:  STR             R0, [R5]
59BCC0:  MOV.W           R6, #1
59BCC4:  ITTTT NE
59BCC6:  LDRBNE.W        R0, [SP,#0x68+var_19]
59BCCA:  STRBNE          R0, [R4]
59BCCC:  LDRBNE.W        R0, [SP,#0x68+var_18]
59BCD0:  STRBNE          R0, [R4,#1]
59BCD2:  MOV             R0, R6
59BCD4:  ADD             SP, SP, #0x58 ; 'X'
59BCD6:  POP.W           {R11}
59BCDA:  POP             {R4-R7,PC}
