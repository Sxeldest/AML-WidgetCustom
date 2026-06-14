; =========================================================
; Game Engine Function: _ZN7CCamera20UpdateSoundDistancesEv
; Address            : 0x3DEB88 - 0x3DECF2
; =========================================================

3DEB88:  PUSH            {R4,R5,R7,LR}
3DEB8A:  ADD             R7, SP, #8
3DEB8C:  VPUSH           {D8}
3DEB90:  SUB             SP, SP, #0x58
3DEB92:  MOV             R4, R0
3DEB94:  VMOV.F32        S0, #5.0
3DEB98:  LDRB.W          R0, [R4,#0x57]
3DEB9C:  ADD.W           R0, R0, R0,LSL#5
3DEBA0:  ADD.W           R0, R4, R0,LSL#4
3DEBA4:  LDRH.W          R0, [R0,#0x17E]
3DEBA8:  SUBS            R0, #7; switch 46 cases
3DEBAA:  CMP             R0, #0x2D ; '-'
3DEBAC:  BHI             def_3DEBAE; jumptable 003DEBAE default case, cases 9-15,17-33,35-38,44,47-50
3DEBAE:  TBB.W           [PC,R0]; switch jump
3DEBB2:  DCB 0x17; jump table for switch statement
3DEBB3:  DCB 0x17
3DEBB4:  DCB 0x25
3DEBB5:  DCB 0x25
3DEBB6:  DCB 0x25
3DEBB7:  DCB 0x25
3DEBB8:  DCB 0x25
3DEBB9:  DCB 0x25
3DEBBA:  DCB 0x25
3DEBBB:  DCB 0x17
3DEBBC:  DCB 0x25
3DEBBD:  DCB 0x25
3DEBBE:  DCB 0x25
3DEBBF:  DCB 0x25
3DEBC0:  DCB 0x25
3DEBC1:  DCB 0x25
3DEBC2:  DCB 0x25
3DEBC3:  DCB 0x25
3DEBC4:  DCB 0x25
3DEBC5:  DCB 0x25
3DEBC6:  DCB 0x25
3DEBC7:  DCB 0x25
3DEBC8:  DCB 0x25
3DEBC9:  DCB 0x25
3DEBCA:  DCB 0x25
3DEBCB:  DCB 0x25
3DEBCC:  DCB 0x25
3DEBCD:  DCB 0x17
3DEBCE:  DCB 0x25
3DEBCF:  DCB 0x25
3DEBD0:  DCB 0x25
3DEBD1:  DCB 0x25
3DEBD2:  DCB 0x17
3DEBD3:  DCB 0x17
3DEBD4:  DCB 0x17
3DEBD5:  DCB 0x17
3DEBD6:  DCB 0x17
3DEBD7:  DCB 0x25
3DEBD8:  DCB 0x17
3DEBD9:  DCB 0x17
3DEBDA:  DCB 0x25
3DEBDB:  DCB 0x25
3DEBDC:  DCB 0x25
3DEBDD:  DCB 0x25
3DEBDE:  DCB 0x17
3DEBDF:  DCB 0x17
3DEBE0:  LDR.W           R0, [R4,#0x8DC]; jumptable 003DEBAE cases 7,8,16,34,39-43,45,46,51,52
3DEBE4:  VMOV.F32        S2, #0.5
3DEBE8:  VMOV.F32        S0, #5.0
3DEBEC:  LDRB.W          R0, [R0,#0x3A]
3DEBF0:  AND.W           R0, R0, #7
3DEBF4:  CMP             R0, #3
3DEBF6:  IT EQ
3DEBF8:  VMOVEQ.F32      S0, S2
3DEBFC:  LDR             R0, =(_ZN6CTimer14m_FrameCounterE_ptr - 0x3DEC0C); jumptable 003DEBAE default case, cases 9-15,17-33,35-38,44,47-50
3DEBFE:  ADDW            R3, R4, #0x914
3DEC02:  ADDW            R2, R4, #0x90C
3DEC06:  LDR             R1, [R4,#0x14]
3DEC08:  ADD             R0, PC; _ZN6CTimer14m_FrameCounterE_ptr
3DEC0A:  VLDR            S2, [R3]
3DEC0E:  ADD.W           R3, R4, #0x910
3DEC12:  VLDR            S6, [R2]
3DEC16:  LDR             R0, [R0]; CTimer::m_FrameCounter ...
3DEC18:  ADD.W           R2, R1, #0x30 ; '0'
3DEC1C:  VLDR            S4, [R3]
3DEC20:  CMP             R1, #0
3DEC22:  IT EQ
3DEC24:  ADDEQ           R2, R4, #4
3DEC26:  VMUL.F32        S2, S0, S2
3DEC2A:  VMUL.F32        S4, S0, S4
3DEC2E:  LDR             R0, [R0]; CTimer::m_FrameCounter
3DEC30:  VMUL.F32        S6, S0, S6
3DEC34:  MOV             R1, #0xAAAAAAAB
3DEC3C:  VLDR            S0, [R2,#8]
3DEC40:  VLDR            S8, [R2]
3DEC44:  VLDR            S10, [R2,#4]
3DEC48:  UMULL.W         R1, R2, R0, R1
3DEC4C:  VADD.F32        S0, S2, S0
3DEC50:  VADD.F32        S2, S4, S10
3DEC54:  VADD.F32        S4, S6, S8
3DEC58:  LSRS            R1, R2, #3
3DEC5A:  ADD.W           R1, R1, R1,LSL#1
3DEC5E:  SUB.W           R5, R0, R1,LSL#2
3DEC62:  CMP             R5, #0
3DEC64:  VSTR            S2, [SP,#0x68+var_18]
3DEC68:  VSTR            S4, [SP,#0x68+var_1C]
3DEC6C:  VSTR            S0, [SP,#0x68+var_14]
3DEC70:  BEQ             loc_3DEC78
3DEC72:  VLDR            S16, [R4,#0x158]
3DEC76:  B               loc_3DECBC
3DEC78:  VMOV.F32        S16, #20.0
3DEC7C:  LDR.W           R0, [R4,#0x158]
3DEC80:  STR.W           R0, [R4,#0x15C]
3DEC84:  MOVS            R0, #0
3DEC86:  MOVS            R2, #1
3DEC88:  ADD             R3, SP, #0x68+var_4C; int
3DEC8A:  STRD.W          R2, R0, [SP,#0x68+var_68]; int
3DEC8E:  STRD.W          R0, R0, [SP,#0x68+var_60]; int
3DEC92:  STRD.W          R2, R0, [SP,#0x68+var_58]; int
3DEC96:  ADD             R2, SP, #0x68+var_48; int
3DEC98:  STR             R0, [SP,#0x68+var_50]; int
3DEC9A:  ADD             R0, SP, #0x68+var_1C; CVector *
3DEC9C:  VADD.F32        S0, S0, S16
3DECA0:  VMOV            R1, S0; int
3DECA4:  BLX             j__ZN6CWorld19ProcessVerticalLineERK7CVectorfR9CColPointRP7CEntitybbbbbbP15CStoredCollPoly; CWorld::ProcessVerticalLine(CVector const&,float,CColPoint &,CEntity *&,bool,bool,bool,bool,bool,bool,CStoredCollPoly *)
3DECA8:  CMP             R0, #1
3DECAA:  ITTT EQ
3DECAC:  VLDREQ          S0, [SP,#0x68+var_14]
3DECB0:  VLDREQ          S2, [SP,#0x68+var_40]
3DECB4:  VSUBEQ.F32      S16, S2, S0
3DECB8:  VSTR            S16, [R4,#0x158]
3DECBC:  ADDS            R0, R5, #1
3DECBE:  VMOV.F32        S0, #6.0
3DECC2:  VMOV            S2, R0
3DECC6:  VCVT.F32.S32    S2, S2
3DECCA:  VLDR            S4, [R4,#0x15C]
3DECCE:  VDIV.F32        S0, S2, S0
3DECD2:  VMOV.F32        S2, #1.0
3DECD6:  VSUB.F32        S2, S2, S0
3DECDA:  VMUL.F32        S0, S0, S16
3DECDE:  VMUL.F32        S2, S2, S4
3DECE2:  VADD.F32        S0, S0, S2
3DECE6:  VSTR            S0, [R4,#0x154]
3DECEA:  ADD             SP, SP, #0x58 ; 'X'
3DECEC:  VPOP            {D8}
3DECF0:  POP             {R4,R5,R7,PC}
