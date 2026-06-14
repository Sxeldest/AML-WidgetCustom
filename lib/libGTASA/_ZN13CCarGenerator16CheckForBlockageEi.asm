; =========================================================
; Game Engine Function: _ZN13CCarGenerator16CheckForBlockageEi
; Address            : 0x56DD90 - 0x56DF30
; =========================================================

56DD90:  PUSH            {R4-R7,LR}
56DD92:  ADD             R7, SP, #0xC
56DD94:  PUSH.W          {R8-R11}
56DD98:  SUB             SP, SP, #4
56DD9A:  VPUSH           {D8}
56DD9E:  SUB             SP, SP, #0x50
56DDA0:  MOV             R11, R0
56DDA2:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x56DDAE)
56DDA4:  MOV             R10, R1
56DDA6:  VMOV.F32        S16, #0.125
56DDAA:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
56DDAC:  ADD.W           R8, SP, #0x78+var_48
56DDB0:  MOVS            R6, #0
56DDB2:  SUB.W           R3, R7, #-var_4A; bool
56DDB6:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
56DDB8:  LDR.W           R9, [R0,R10,LSL#2]
56DDBC:  LDR.W           R0, [R9,#0x2C]
56DDC0:  CMP             R0, #0
56DDC2:  ITE NE
56DDC4:  VLDRNE          S0, [R0,#0x24]
56DDC8:  VMOVEQ.F32      S0, #2.0
56DDCC:  LDRSH.W         R1, [R11,#6]
56DDD0:  LDRSH.W         R0, [R11,#4]
56DDD4:  LDRSH.W         R2, [R11,#8]
56DDD8:  VMOV            S2, R1
56DDDC:  VMOV            R1, S0; CVector *
56DDE0:  VMOV            S4, R0
56DDE4:  MOVS            R0, #1
56DDE6:  VMOV            S6, R2
56DDEA:  MOVS            R2, #byte_8
56DDEC:  VCVT.F32.S32    S2, S2
56DDF0:  VCVT.F32.S32    S4, S4
56DDF4:  VCVT.F32.S32    S6, S6
56DDF8:  VMUL.F32        S2, S2, S16
56DDFC:  VMUL.F32        S4, S4, S16
56DE00:  VMUL.F32        S0, S6, S16
56DE04:  VSTR            S2, [SP,#0x78+var_54]
56DE08:  VSTR            S4, [SP,#0x78+var_58]
56DE0C:  VSTR            S0, [SP,#0x78+var_50]
56DE10:  STRD.W          R2, R8, [SP,#0x78+var_78]; __int16 *
56DE14:  MOVS            R2, #1; float
56DE16:  STRD.W          R6, R0, [SP,#0x78+var_70]; CEntity **
56DE1A:  STRD.W          R0, R6, [SP,#0x78+var_68]; bool
56DE1E:  ADD             R0, SP, #0x78+var_58; this
56DE20:  STR             R6, [SP,#0x78+var_60]; bool
56DE22:  BLX             j__ZN6CWorld25FindObjectsKindaCollidingERK7CVectorfbPssPP7CEntitybbbbb; CWorld::FindObjectsKindaColliding(CVector const&,float,bool,short *,short,CEntity **,bool,bool,bool,bool,bool)
56DE26:  LDRSH.W         R0, [R7,#var_4A]
56DE2A:  CMP             R0, #1
56DE2C:  BLT             loc_56DF20
56DE2E:  LDR             R3, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x56DE3E)
56DE30:  VMOV.F32        S0, #1.0
56DE34:  LDR             R6, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x56DE44)
56DE36:  VMOV.F32        S2, #-1.0
56DE3A:  ADD             R3, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
56DE3C:  LDR.W           LR, [R9,#0x2C]
56DE40:  ADD             R6, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
56DE42:  MOVS            R2, #0
56DE44:  LDR             R3, [R3]; CModelInfo::ms_modelInfoPtrs ...
56DE46:  LDR.W           R12, [R6]; CModelInfo::ms_modelInfoPtrs ...
56DE4A:  LDR.W           R6, [R8,R2,LSL#2]
56DE4E:  CMP.W           LR, #0
56DE52:  LDRSH.W         R5, [R6,#0x26]
56DE56:  LDR.W           R5, [R3,R5,LSL#2]
56DE5A:  LDR             R5, [R5,#0x2C]
56DE5C:  BEQ             loc_56DEB4
56DE5E:  LDRSH.W         R1, [R11,#8]
56DE62:  LDR             R4, [R6,#0x14]
56DE64:  VLDR            S6, [R5,#0x14]
56DE68:  VMOV            S4, R1
56DE6C:  ADD.W           R1, R4, #0x30 ; '0'
56DE70:  CMP             R4, #0
56DE72:  VCVT.F32.S32    S8, S4
56DE76:  IT EQ
56DE78:  ADDEQ           R1, R6, #4
56DE7A:  VLDR            S4, [R1,#8]
56DE7E:  LDR.W           R1, [R12,R10,LSL#2]
56DE82:  VADD.F32        S10, S4, S6
56DE86:  LDR             R6, [R1,#0x2C]
56DE88:  VMUL.F32        S6, S8, S16
56DE8C:  VLDR            S8, [R6,#8]
56DE90:  VADD.F32        S10, S10, S0
56DE94:  VADD.F32        S8, S8, S6
56DE98:  VCMPE.F32       S8, S10
56DE9C:  VMRS            APSR_nzcv, FPSCR
56DEA0:  BGE             loc_56DF08
56DEA2:  VLDR            S8, [R5,#8]
56DEA6:  VADD.F32        S4, S4, S8
56DEAA:  VLDR            S8, [R6,#0x14]
56DEAE:  VADD.F32        S6, S6, S8
56DEB2:  B               loc_56DEFA
56DEB4:  LDRSH.W         R4, [R11,#8]
56DEB8:  LDR             R1, [R6,#0x14]
56DEBA:  VLDR            S6, [R5,#0x14]
56DEBE:  VMOV            S4, R4
56DEC2:  ADD.W           R4, R1, #0x30 ; '0'
56DEC6:  CMP             R1, #0
56DEC8:  VCVT.F32.S32    S8, S4
56DECC:  IT EQ
56DECE:  ADDEQ           R4, R6, #4
56DED0:  VLDR            S4, [R4,#8]
56DED4:  VADD.F32        S10, S4, S6
56DED8:  VMUL.F32        S6, S8, S16
56DEDC:  VADD.F32        S8, S10, S0
56DEE0:  VADD.F32        S10, S6, S2
56DEE4:  VCMPE.F32       S10, S8
56DEE8:  VMRS            APSR_nzcv, FPSCR
56DEEC:  BGE             loc_56DF08
56DEEE:  VLDR            S8, [R5,#8]
56DEF2:  VADD.F32        S6, S6, S0
56DEF6:  VADD.F32        S4, S4, S8
56DEFA:  VADD.F32        S4, S4, S2
56DEFE:  VCMPE.F32       S6, S4
56DF02:  VMRS            APSR_nzcv, FPSCR
56DF06:  BGT             loc_56DF12
56DF08:  ADDS            R2, #1
56DF0A:  CMP             R2, R0
56DF0C:  BLT             loc_56DE4A
56DF0E:  MOVS            R6, #0
56DF10:  B               loc_56DF20
56DF12:  LDRB.W          R0, [R11,#0xD]
56DF16:  MOVS            R6, #1
56DF18:  ORR.W           R0, R0, #1
56DF1C:  STRB.W          R0, [R11,#0xD]
56DF20:  MOV             R0, R6
56DF22:  ADD             SP, SP, #0x50 ; 'P'
56DF24:  VPOP            {D8}
56DF28:  ADD             SP, SP, #4
56DF2A:  POP.W           {R8-R11}
56DF2E:  POP             {R4-R7,PC}
