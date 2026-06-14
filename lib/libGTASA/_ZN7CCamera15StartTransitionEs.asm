; =========================================================
; Game Engine Function: _ZN7CCamera15StartTransitionEs
; Address            : 0x3DA9CC - 0x3DB0E2
; =========================================================

3DA9CC:  PUSH            {R4-R7,LR}
3DA9CE:  ADD             R7, SP, #0xC
3DA9D0:  PUSH.W          {R8-R11}
3DA9D4:  SUB             SP, SP, #4
3DA9D6:  VPUSH           {D8}
3DA9DA:  SUB             SP, SP, #0x10
3DA9DC:  MOV             R4, R0
3DA9DE:  MOV             R9, R1
3DA9E0:  LDRB.W          R1, [R4,#0x57]
3DA9E4:  MOV.W           R3, #0x3F400000
3DA9E8:  ADD.W           R0, R1, R1,LSL#5
3DA9EC:  ADD.W           R2, R4, R0,LSL#4; float
3DA9F0:  MOVS            R0, #0
3DA9F2:  LDRH.W          R6, [R2,#0x17E]
3DA9F6:  STRB.W          R0, [R4,#0x39]
3DA9FA:  STRB.W          R0, [R4,#0x35]
3DA9FE:  MOV.W           R0, #0x3E800000
3DAA02:  STR.W           R0, [R4,#0xB98]
3DAA06:  STR.W           R3, [R4,#0xB9C]
3DAA0A:  LDRH.W          R0, [R2,#0x17E]
3DAA0E:  STR             R6, [SP,#0x38+var_30]
3DAA10:  SUBS            R0, #7; switch 46 cases
3DAA12:  CMP             R0, #0x2D ; '-'
3DAA14:  BHI.W           def_3DAA18; jumptable 003DAA18 default case, cases 9-33,35-38,44,47-50
3DAA18:  TBB.W           [PC,R0]; switch jump
3DAA1C:  DCB 0x17; jump table for switch statement
3DAA1D:  DCB 0x17
3DAA1E:  DCB 0x37
3DAA1F:  DCB 0x37
3DAA20:  DCB 0x37
3DAA21:  DCB 0x37
3DAA22:  DCB 0x37
3DAA23:  DCB 0x37
3DAA24:  DCB 0x37
3DAA25:  DCB 0x37
3DAA26:  DCB 0x37
3DAA27:  DCB 0x37
3DAA28:  DCB 0x37
3DAA29:  DCB 0x37
3DAA2A:  DCB 0x37
3DAA2B:  DCB 0x37
3DAA2C:  DCB 0x37
3DAA2D:  DCB 0x37
3DAA2E:  DCB 0x37
3DAA2F:  DCB 0x37
3DAA30:  DCB 0x37
3DAA31:  DCB 0x37
3DAA32:  DCB 0x37
3DAA33:  DCB 0x37
3DAA34:  DCB 0x37
3DAA35:  DCB 0x37
3DAA36:  DCB 0x37
3DAA37:  DCB 0x17
3DAA38:  DCB 0x37
3DAA39:  DCB 0x37
3DAA3A:  DCB 0x37
3DAA3B:  DCB 0x37
3DAA3C:  DCB 0x17
3DAA3D:  DCB 0x17
3DAA3E:  DCB 0x17
3DAA3F:  DCB 0x17
3DAA40:  DCB 0x17
3DAA41:  DCB 0x37
3DAA42:  DCB 0x17
3DAA43:  DCB 0x17
3DAA44:  DCB 0x37
3DAA45:  DCB 0x37
3DAA46:  DCB 0x37
3DAA47:  DCB 0x37
3DAA48:  DCB 0x17
3DAA49:  DCB 0x17
3DAA4A:  LDR.W           R0, [R4,#0x8DC]; jumptable 003DAA18 cases 7,8,34,39-43,45,46,51,52
3DAA4E:  LDRB.W          R0, [R0,#0x3A]
3DAA52:  AND.W           R0, R0, #7
3DAA56:  CMP             R0, #3
3DAA58:  BNE             def_3DAA18; jumptable 003DAA18 default case, cases 9-33,35-38,44,47-50
3DAA5A:  LDRD.W          R0, R1, [R2,#0x2D8]; float
3DAA5E:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3DAA62:  VMOV            S2, R0
3DAA66:  VLDR            S0, =-1.5708
3DAA6A:  LDR.W           R0, [R4,#0x8DC]
3DAA6E:  VADD.F32        S0, S2, S0
3DAA72:  ADDW            R0, R0, #0x55C
3DAA76:  VSTR            S0, [R0]
3DAA7A:  LDR.W           R0, [R4,#0x8DC]
3DAA7E:  ADD.W           R0, R0, #0x560
3DAA82:  VSTR            S0, [R0]
3DAA86:  LDRB.W          R1, [R4,#0x57]
3DAA8A:  ADD.W           R2, R1, R1,LSL#5; jumptable 003DAA18 default case, cases 9-33,35-38,44,47-50
3DAA8E:  ADDW            R5, R4, #0x7E4
3DAA92:  LDR.W           R0, [R4,#0x7EC]
3DAA96:  VLDR            D16, [R5]
3DAA9A:  ADD.W           R2, R4, R2,LSL#4
3DAA9E:  STR.W           R0, [R2,#0x2A4]
3DAAA2:  VSTR            D16, [R2,#0x29C]
3DAAA6:  LDR.W           R0, [R2,#0x364]; this
3DAAAA:  CBZ             R0, loc_3DAAB8
3DAAAC:  ADD.W           R1, R2, #0x364; CEntity **
3DAAB0:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3DAAB4:  LDRB.W          R1, [R4,#0x57]
3DAAB8:  ADD.W           R1, R1, R1,LSL#5
3DAABC:  ADD.W           R8, R4, #0x170
3DAAC0:  LDR.W           R0, [R4,#0x8DC]; this
3DAAC4:  ADD.W           R1, R8, R1,LSL#4
3DAAC8:  STR.W           R0, [R1,#0x1F4]
3DAACC:  ADD.W           R1, R1, #0x1F4; CEntity **
3DAAD0:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3DAAD4:  LDRB.W          LR, [R4,#0x57]
3DAAD8:  ADD.W           R1, R4, #0x7F0
3DAADC:  LDR.W           R3, [R4,#0x7F8]
3DAAE0:  ADDW            R10, R4, #0x7FC
3DAAE4:  VLDR            D16, [R1]
3DAAE8:  ADD.W           R0, LR, LR,LSL#5
3DAAEC:  ADD.W           R2, R8, R0,LSL#4; float
3DAAF0:  STR.W           R3, [R2,#0x140]
3DAAF4:  VSTR            D16, [R2,#0x138]
3DAAF8:  VLDR            D16, [R10]
3DAAFC:  LDR.W           R3, [R4,#0x804]
3DAB00:  STR.W           R3, [R2,#0x14C]
3DAB04:  VSTR            D16, [R2,#0x144]
3DAB08:  LDRB.W          R3, [R4,#0x2A]
3DAB0C:  STRB            R3, [R2,#2]
3DAB0E:  SUB.W           R3, R9, #3; switch 50 cases
3DAB12:  CMP             R3, #0x31 ; '1'
3DAB14:  STR             R1, [SP,#0x38+var_2C]
3DAB16:  BHI.W           def_3DAB1A; jumptable 003DAB1A default case, cases 5,6,9-17,19-21,23-28,30-33,35-38,44,47-50
3DAB1A:  TBH.W           [PC,R3,LSL#1]; switch jump
3DAB1E:  DCW 0x1F2; jump table for switch statement
3DAB20:  DCW 0x21C
3DAB22:  DCW 0x68
3DAB24:  DCW 0x68
3DAB26:  DCW 0x32
3DAB28:  DCW 0x32
3DAB2A:  DCW 0x68
3DAB2C:  DCW 0x68
3DAB2E:  DCW 0x68
3DAB30:  DCW 0x68
3DAB32:  DCW 0x68
3DAB34:  DCW 0x68
3DAB36:  DCW 0x68
3DAB38:  DCW 0x68
3DAB3A:  DCW 0x68
3DAB3C:  DCW 0x25E
3DAB3E:  DCW 0x68
3DAB40:  DCW 0x68
3DAB42:  DCW 0x68
3DAB44:  DCW 0x1F2
3DAB46:  DCW 0x68
3DAB48:  DCW 0x68
3DAB4A:  DCW 0x68
3DAB4C:  DCW 0x68
3DAB4E:  DCW 0x68
3DAB50:  DCW 0x68
3DAB52:  DCW 0x277
3DAB54:  DCW 0x68
3DAB56:  DCW 0x68
3DAB58:  DCW 0x68
3DAB5A:  DCW 0x68
3DAB5C:  DCW 0x32
3DAB5E:  DCW 0x68
3DAB60:  DCW 0x68
3DAB62:  DCW 0x68
3DAB64:  DCW 0x68
3DAB66:  DCW 0x32
3DAB68:  DCW 0x32
3DAB6A:  DCW 0x32
3DAB6C:  DCW 0x32
3DAB6E:  DCW 0x32
3DAB70:  DCW 0x68
3DAB72:  DCW 0x32
3DAB74:  DCW 0x32
3DAB76:  DCW 0x68
3DAB78:  DCW 0x68
3DAB7A:  DCW 0x68
3DAB7C:  DCW 0x68
3DAB7E:  DCW 0x32
3DAB80:  DCW 0x32
3DAB82:  MOV.W           R0, #0xFFFFFFFF; jumptable 003DAB1A cases 7,8,34,39-43,45,46,51,52
3DAB86:  MOVS            R1, #0; bool
3DAB88:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3DAB8C:  CBZ             R0, loc_3DABAC
3DAB8E:  MOV.W           R0, #0xFFFFFFFF; int
3DAB92:  MOVS            R1, #0; bool
3DAB94:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3DAB98:  LDR             R0, [R0,#0x14]
3DAB9A:  MOVS            R1, #0; bool
3DAB9C:  VLDR            S16, [R0,#0x10]
3DABA0:  MOV.W           R0, #0xFFFFFFFF; int
3DABA4:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3DABA8:  LDR             R1, [R0,#0x14]
3DABAA:  B               loc_3DABCE
3DABAC:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x3DABBC)
3DABB0:  MOV.W           R2, #0x194
3DABB4:  LDR.W           R1, =(_ZN6CWorld7PlayersE_ptr - 0x3DABBE)
3DABB8:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
3DABBA:  ADD             R1, PC; _ZN6CWorld7PlayersE_ptr
3DABBC:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
3DABBE:  LDR             R1, [R1]; CWorld::Players ...
3DABC0:  LDR             R0, [R0]; CWorld::PlayerInFocus
3DABC2:  SMULBB.W        R0, R0, R2
3DABC6:  LDR             R0, [R1,R0]
3DABC8:  LDR             R1, [R0,#0x14]
3DABCA:  VLDR            S16, [R1,#0x10]
3DABCE:  VMOV            R0, S16; y
3DABD2:  LDR             R1, [R1,#0x14]; x
3DABD4:  BLX             atan2f
3DABD8:  LDRB.W          LR, [R4,#0x57]
3DABDC:  MOVS            R3, #0
3DABDE:  ADD.W           R2, LR, LR,LSL#5
3DABE2:  ADD.W           R2, R4, R2,LSL#4
3DABE6:  STR.W           R3, [R2,#0x1F4]
3DABEA:  STR.W           R0, [R2,#0x204]
3DABEE:  ADDW            R0, R4, #0xB9C; jumptable 003DAB1A default case, cases 5,6,9-17,19-21,23-28,30-33,35-38,44,47-50
3DABF2:  STR             R0, [SP,#0x38+var_34]
3DABF4:  ADD.W           R0, LR, LR,LSL#5
3DABF8:  CMP.W           R9, #0x12
3DABFC:  ADD.W           R2, R4, R0,LSL#4
3DAC00:  LDRH.W          R3, [R2,#0x17E]
3DAC04:  LDR.W           R11, [R2,#0x204]
3DAC08:  IT EQ
3DAC0A:  CMPEQ           R3, #4
3DAC0C:  BEQ             loc_3DAC1A
3DAC0E:  CMP.W           R9, #4
3DAC12:  IT EQ
3DAC14:  CMPEQ           R3, #0x12
3DAC16:  BNE.W           loc_3DAE98
3DAC1A:  ADD.W           R0, R2, #0x17E
3DAC1E:  STRH.W          R9, [R0]
3DAC22:  ADD.W           R0, LR, LR,LSL#5
3DAC26:  LDR             R1, [SP,#0x38+var_30]
3DAC28:  CMP.W           R9, #0xB
3DAC2C:  ADD.W           R2, R4, R0,LSL#4
3DAC30:  MOV.W           R0, #1
3DAC34:  STRB.W          R0, [R2,#0x17B]
3DAC38:  MOVW            R0, #0x546
3DAC3C:  STR             R0, [R4,#0x78]
3DAC3E:  IT EQ
3DAC40:  CMPEQ           R1, #0x1C
3DAC42:  BNE.W           loc_3DAE32
3DAC46:  MOV.W           R0, #0x708
3DAC4A:  STR             R0, [R4,#0x78]
3DAC4C:  MOV.W           R11, #0x258
3DAC50:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3DAC5E)
3DAC54:  MOVS            R3, #1
3DAC56:  STRB.W          R3, [R4,#0x56]
3DAC5A:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3DAC5C:  LDRB.W          R6, [R4,#0x4D]
3DAC60:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3DAC62:  CMP             R6, #0
3DAC64:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3DAC66:  STRB.W          R3, [R4,#0x55]
3DAC6A:  STR             R0, [R4,#0x74]
3DAC6C:  BEQ             loc_3DACCC
3DAC6E:  LDR.W           R0, [R4,#0x8A0]
3DAC72:  MOV             R1, R5
3DAC74:  LDR.W           R3, [R4,#0x8AC]
3DAC78:  LDR.W           R6, [R4,#0x8B8]
3DAC7C:  LDR.W           R5, [R4,#0xFC]
3DAC80:  STR.W           R0, [R4,#0x81C]
3DAC84:  ADDW            R0, R4, #0x814
3DAC88:  STR.W           R3, [R4,#0x828]
3DAC8C:  ADDW            R3, R4, #0x898
3DAC90:  STR.W           R6, [R4,#0x834]
3DAC94:  ADD.W           R6, R4, #0x8B0
3DAC98:  STR.W           R5, [R4,#0x118]
3DAC9C:  MOV             R5, R1
3DAC9E:  VLDR            D17, [R3]
3DACA2:  ADDW            R3, R4, #0x8A4
3DACA6:  VLDR            D16, [R6]
3DACAA:  VLDR            D18, [R3]
3DACAE:  VSTR            D17, [R0]
3DACB2:  ADD.W           R0, R4, #0x820
3DACB6:  VSTR            D18, [R0]
3DACBA:  ADDW            R0, R4, #0x82C
3DACBE:  VSTR            D16, [R0]
3DACC2:  ADD.W           R0, R4, #0x100
3DACC6:  B               loc_3DAD14
3DACC8:  DCFS -1.5708
3DACCC:  LDR.W           R0, [R2,#0x2EC]
3DACD0:  VLDR            D16, [R2,#0x2E4]
3DACD4:  STR.W           R0, [R4,#0x81C]
3DACD8:  ADDW            R0, R4, #0x814
3DACDC:  VSTR            D16, [R0]
3DACE0:  LDR.W           R0, [R2,#0x298]
3DACE4:  VLDR            D16, [R2,#0x290]
3DACE8:  STR.W           R0, [R4,#0x828]
3DACEC:  ADD.W           R0, R4, #0x820
3DACF0:  VSTR            D16, [R0]
3DACF4:  LDR.W           R0, [R2,#0x304]
3DACF8:  VLDR            D16, [R2,#0x2FC]
3DACFC:  STR.W           R0, [R4,#0x834]
3DAD00:  ADDW            R0, R4, #0x82C
3DAD04:  VSTR            D16, [R0]
3DAD08:  LDR.W           R0, [R2,#0x1EC]
3DAD0C:  STR.W           R0, [R4,#0x118]
3DAD10:  ADD.W           R0, R2, #0x1E8
3DAD14:  LDR             R0, [R0]
3DAD16:  LDRB.W          R3, [R4,#0x2A]
3DAD1A:  STR.W           R0, [R4,#0x114]
3DAD1E:  STRB.W          R3, [R2,#0x172]
3DAD22:  VLDR            D16, [R5]
3DAD26:  LDR             R0, [R5,#8]
3DAD28:  STR.W           R0, [R2,#0x2A4]
3DAD2C:  VSTR            D16, [R2,#0x29C]
3DAD30:  LDR             R0, [SP,#0x38+var_2C]
3DAD32:  VLDR            D16, [R0]
3DAD36:  LDR             R0, [R0,#8]
3DAD38:  STR.W           R0, [R2,#0x2B0]
3DAD3C:  VSTR            D16, [R2,#0x2A8]
3DAD40:  VLDR            D16, [R10]
3DAD44:  LDR.W           R0, [R10,#8]
3DAD48:  STR.W           R0, [R2,#0x2BC]
3DAD4C:  VSTR            D16, [R2,#0x2B4]
3DAD50:  STRH.W          R9, [R2,#0x17E]
3DAD54:  LDR.W           R0, [R2,#0x364]; this
3DAD58:  CBZ             R0, loc_3DAD66
3DAD5A:  ADD.W           R1, R2, #0x364; CEntity **
3DAD5E:  BLX             j__ZN7CEntity19CleanUpOldReferenceEPPS_; CEntity::CleanUpOldReference(CEntity**)
3DAD62:  LDRB.W          LR, [R4,#0x57]
3DAD66:  ADD.W           R1, LR, LR,LSL#5
3DAD6A:  LDR.W           R0, [R4,#0x8DC]; this
3DAD6E:  ADD.W           R1, R8, R1,LSL#4
3DAD72:  STR.W           R0, [R1,#0x1F4]
3DAD76:  ADD.W           R1, R1, #0x1F4; CEntity **
3DAD7A:  BLX             j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
3DAD7E:  LDR.W           R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3DAD8C)
3DAD82:  MOVS            R2, #1
3DAD84:  LDRB.W          R1, [R4,#0x57]
3DAD88:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3DAD8A:  STRB.W          R2, [R4,#0x56]
3DAD8E:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3DAD90:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3DAD92:  STRB.W          R2, [R4,#0x55]
3DAD96:  STR             R0, [R4,#0x74]
3DAD98:  ADD.W           R0, R1, R1,LSL#5
3DAD9C:  ADD.W           R0, R8, R0,LSL#4
3DADA0:  LDR.W           R1, [R0,#0x8C]
3DADA4:  STR.W           R1, [R4,#0x16C]
3DADA8:  LDR.W           R1, [R0,#0x104]
3DADAC:  VLDR            D16, [R0,#0xFC]
3DADB0:  STR.W           R1, [R4,#0x840]
3DADB4:  ADDW            R1, R4, #0x838
3DADB8:  VSTR            D16, [R1]
3DADBC:  LDR.W           R1, [R0,#0x110]
3DADC0:  VLDR            D16, [R0,#0x108]
3DADC4:  STR.W           R1, [R4,#0x84C]
3DADC8:  ADDW            R1, R4, #0x844
3DADCC:  VSTR            D16, [R1]
3DADD0:  LDR.W           R1, [R0,#0x11C]
3DADD4:  VLDR            D16, [R0,#0x114]
3DADD8:  STR.W           R1, [R4,#0x858]
3DADDC:  ADD.W           R1, R4, #0x850
3DADE0:  VSTR            D16, [R1]
3DADE4:  LDRD.W          R1, R2, [R0,#0x28]
3DADE8:  STR.W           R1, [R4,#0xF4]
3DADEC:  STR.W           R2, [R4,#0x104]
3DADF0:  LDR             R0, [R0,#0x50]
3DADF2:  STR.W           R0, [R4,#0x110]
3DADF6:  LDRB.W          R0, [R4,#0x29]
3DADFA:  CBZ             R0, loc_3DAE0C
3DADFC:  VMOV.F32        S0, #1.0
3DAE00:  MOVS            R0, #0
3DAE02:  STR.W           R0, [R4,#0xBA0]
3DAE06:  STR.W           R11, [R4,#0x7C]
3DAE0A:  B               loc_3DAEEC
3DAE0C:  LDRB.W          R0, [R4,#0x4E]
3DAE10:  CMP             R0, #0
3DAE12:  BEQ.W           loc_3DAEDA
3DAE16:  LDR.W           R2, [R4,#0xBB0]
3DAE1A:  LDR.W           R0, [R4,#0xBAC]
3DAE1E:  LDR.W           R1, [R4,#0xBB4]
3DAE22:  VMOV            S0, R2
3DAE26:  STR.W           R0, [R4,#0xB98]
3DAE2A:  STR.W           R2, [R4,#0xB9C]
3DAE2E:  STR             R1, [R4,#0x78]
3DAE30:  B               loc_3DAEE6
3DAE32:  ADDW            R0, R4, #0xB98
3DAE36:  CMP.W           R9, #0x12
3DAE3A:  BNE.W           loc_3DAEB6
3DAE3E:  SUBS            R3, R1, #4; switch 50 cases
3DAE40:  CMP             R3, #0x31 ; '1'
3DAE42:  BHI.W           def_3DAE46; jumptable 003DAE46 default case, cases 5-10,12-14,16-27,29-34,36-52
3DAE46:  TBB.W           [PC,R3]; switch jump
3DAE4A:  DCB 0x19; jump table for switch statement
3DAE4B:  DCB 0x6C
3DAE4C:  DCB 0x6C
3DAE4D:  DCB 0x6C
3DAE4E:  DCB 0x6C
3DAE4F:  DCB 0x6C
3DAE50:  DCB 0x6C
3DAE51:  DCB 0x19
3DAE52:  DCB 0x6C
3DAE53:  DCB 0x6C
3DAE54:  DCB 0x6C
3DAE55:  DCB 0x62
3DAE56:  DCB 0x6C
3DAE57:  DCB 0x6C
3DAE58:  DCB 0x6C
3DAE59:  DCB 0x6C
3DAE5A:  DCB 0x6C
3DAE5B:  DCB 0x6C
3DAE5C:  DCB 0x6C
3DAE5D:  DCB 0x6C
3DAE5E:  DCB 0x6C
3DAE5F:  DCB 0x6C
3DAE60:  DCB 0x6C
3DAE61:  DCB 0x6C
3DAE62:  DCB 0x19
3DAE63:  DCB 0x6C
3DAE64:  DCB 0x6C
3DAE65:  DCB 0x6C
3DAE66:  DCB 0x6C
3DAE67:  DCB 0x6C
3DAE68:  DCB 0x6C
3DAE69:  DCB 0x19
3DAE6A:  DCB 0x6C
3DAE6B:  DCB 0x6C
3DAE6C:  DCB 0x6C
3DAE6D:  DCB 0x6C
3DAE6E:  DCB 0x6C
3DAE6F:  DCB 0x6C
3DAE70:  DCB 0x6C
3DAE71:  DCB 0x6C
3DAE72:  DCB 0x6C
3DAE73:  DCB 0x6C
3DAE74:  DCB 0x6C
3DAE75:  DCB 0x6C
3DAE76:  DCB 0x6C
3DAE77:  DCB 0x6C
3DAE78:  DCB 0x6C
3DAE79:  DCB 0x6C
3DAE7A:  DCB 0x6C
3DAE7B:  DCB 0x19
3DAE7C:  MOV             R3, #0x3DCCCCCD; jumptable 003DAE46 cases 4,11,28,35,53
3DAE84:  STR             R3, [R0]
3DAE86:  MOVW            R0, #0x6666
3DAE8A:  LDR             R1, [SP,#0x38+var_34]
3DAE8C:  MOVT            R0, #0x3F66
3DAE90:  STR             R0, [R1]
3DAE92:  MOVW            R0, #0x2EE
3DAE96:  B               loc_3DAC4A
3DAE98:  ADD.W           R0, R8, R0,LSL#4; this
3DAE9C:  BLX             j__ZN4CCam4InitEv; CCam::Init(void)
3DAEA0:  LDRB.W          LR, [R4,#0x57]
3DAEA4:  ADD.W           R0, LR, LR,LSL#5
3DAEA8:  ADD.W           R0, R8, R0,LSL#4
3DAEAC:  STR.W           R11, [R0,#0x94]
3DAEB0:  STRH.W          R9, [R0,#0xE]
3DAEB4:  B               loc_3DAC22
3DAEB6:  CMP             R1, #0xF
3DAEB8:  BEQ             loc_3DAF0E; jumptable 003DAE46 case 15
3DAEBA:  CMP             R1, #0x23 ; '#'
3DAEBC:  BNE             def_3DAE46; jumptable 003DAE46 default case, cases 5-10,12-14,16-27,29-34,36-52
3DAEBE:  MOV             R3, #0x3E4CCCCD
3DAEC6:  STR             R3, [R0]
3DAEC8:  MOVW            R0, #0xCCCD
3DAECC:  LDR             R1, [SP,#0x38+var_34]
3DAECE:  MOVT            R0, #0x3F4C
3DAED2:  STR             R0, [R1]
3DAED4:  MOV.W           R0, #0x3E8
3DAED8:  B               loc_3DAC4A
3DAEDA:  LDR             R0, [SP,#0x38+var_34]
3DAEDC:  LDR             R1, [R4,#0x78]
3DAEDE:  VLDR            S0, [R0]
3DAEE2:  LDR.W           R0, [R4,#0xB98]
3DAEE6:  STR.W           R0, [R4,#0xBA0]
3DAEEA:  STR             R1, [R4,#0x7C]
3DAEEC:  ADDW            R0, R4, #0xBA4
3DAEF0:  VSTR            S0, [R0]
3DAEF4:  ADD             SP, SP, #0x10
3DAEF6:  VPOP            {D8}
3DAEFA:  ADD             SP, SP, #4
3DAEFC:  POP.W           {R8-R11}
3DAF00:  POP             {R4-R7,PC}
3DAF02:  ADD.W           R0, R4, R0,LSL#4; jumptable 003DAB1A cases 3,22
3DAF06:  MOVS            R2, #0
3DAF08:  STR.W           R2, [R0,#0x208]
3DAF0C:  B               def_3DAB1A; jumptable 003DAB1A default case, cases 5,6,9-17,19-21,23-28,30-33,35-38,44,47-50
3DAF0E:  MOV             R3, #0x3D4CCCCD; jumptable 003DAE46 case 15
3DAF16:  STR             R3, [R0]
3DAF18:  MOV             R0, #0x3F733333
3DAF20:  B               loc_3DAF4C
3DAF22:  CMP             R1, #0x12; jumptable 003DAE46 default case, cases 5-10,12-14,16-27,29-34,36-52
3DAF24:  IT EQ
3DAF26:  CMPEQ.W         R9, #4
3DAF2A:  BNE             loc_3DB01E
3DAF2C:  LDRB.W          R3, [R4,#0x25]
3DAF30:  CMP             R3, #0
3DAF32:  BEQ             loc_3DB01E
3DAF34:  MOV.W           R3, #0x320
3DAF38:  STR             R3, [R4,#0x78]
3DAF3A:  MOV             R3, #0x3CA3D70A
3DAF42:  STR             R3, [R0]
3DAF44:  MOV             R0, #0x3F7AE148
3DAF4C:  LDR             R1, [SP,#0x38+var_34]
3DAF4E:  MOV.W           R11, #0x258
3DAF52:  STR             R0, [R1]
3DAF54:  B               loc_3DAC50
3DAF56:  LDRB.W          R0, [R4,#0x26]; jumptable 003DAB1A case 4
3DAF5A:  CBZ             R0, loc_3DAF84
3DAF5C:  LDRD.W          R0, R1, [R2,#0x168]; float
3DAF60:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3DAF64:  VLDR            S0, =3.1416
3DAF68:  VMOV            S2, R0
3DAF6C:  LDRB.W          LR, [R4,#0x57]
3DAF70:  MOVS            R2, #0
3DAF72:  VADD.F32        S0, S2, S0
3DAF76:  ADD.W           R0, LR, LR,LSL#5
3DAF7A:  ADD.W           R0, R8, R0,LSL#4
3DAF7E:  STR             R2, [R0,#0x74]
3DAF80:  VSTR            S0, [R0,#0x94]
3DAF84:  LDRB.W          R0, [R4,#0x33]
3DAF88:  CMP             R0, #0
3DAF8A:  ITT NE
3DAF8C:  MOVNE           R0, #1
3DAF8E:  STRBNE          R0, [R4,#0x1B]
3DAF90:  ADD.W           R0, LR, LR,LSL#5
3DAF94:  ADD.W           R2, R4, R0,LSL#4
3DAF98:  LDRH.W          R2, [R2,#0x17E]; float
3DAF9C:  CMP             R2, #0x12
3DAF9E:  BNE.W           def_3DAB1A; jumptable 003DAB1A default case, cases 5,6,9-17,19-21,23-28,30-33,35-38,44,47-50
3DAFA2:  MOVS            R1, #1
3DAFA4:  STRB.W          R1, [R4,#0x35]
3DAFA8:  ADD.W           R1, R8, R0,LSL#4
3DAFAC:  LDRD.W          R0, R1, [R1,#0x168]; float
3DAFB0:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3DAFB4:  VLDR            S0, =3.1416
3DAFB8:  VMOV            S2, R0
3DAFBC:  LDRB.W          LR, [R4,#0x57]
3DAFC0:  VADD.F32        S0, S2, S0
3DAFC4:  VLDR            S2, =0.95993
3DAFC8:  ADD.W           R0, LR, LR,LSL#5
3DAFCC:  ADD.W           R0, R8, R0,LSL#4
3DAFD0:  VADD.F32        S0, S0, S2
3DAFD4:  VSTR            S0, [R0,#0x74]
3DAFD8:  B               def_3DAB1A; jumptable 003DAB1A default case, cases 5,6,9-17,19-21,23-28,30-33,35-38,44,47-50
3DAFDA:  LDRB.W          R0, [R4,#0x29]; jumptable 003DAB1A case 18
3DAFDE:  CMP             R0, #0
3DAFE0:  BEQ.W           def_3DAB1A; jumptable 003DAB1A default case, cases 5,6,9-17,19-21,23-28,30-33,35-38,44,47-50
3DAFE4:  LDRB.W          R0, [R4,#0x26]
3DAFE8:  CMP             R0, #0
3DAFEA:  BNE.W           def_3DAB1A; jumptable 003DAB1A default case, cases 5,6,9-17,19-21,23-28,30-33,35-38,44,47-50
3DAFEE:  MOVS            R0, #1
3DAFF0:  STRB.W          R0, [R4,#0x35]
3DAFF4:  LDRD.W          R0, R1, [R2,#0x168]; float
3DAFF8:  BLX             j__ZN8CGeneral11GetATanOfXYEff; CGeneral::GetATanOfXY(float,float)
3DAFFC:  LDRB.W          LR, [R4,#0x57]
3DB000:  ADD.W           R2, LR, LR,LSL#5
3DB004:  ADD.W           R2, R8, R2,LSL#4
3DB008:  STR             R0, [R2,#0x74]
3DB00A:  B               def_3DAB1A; jumptable 003DAB1A default case, cases 5,6,9-17,19-21,23-28,30-33,35-38,44,47-50
3DB00C:  MOVW            R2, #0xA92; jumptable 003DAB1A case 29
3DB010:  ADD.W           R0, R4, R0,LSL#4
3DB014:  MOVT            R2, #0x3E86
3DB018:  STR.W           R2, [R0,#0x1F4]
3DB01C:  B               def_3DAB1A; jumptable 003DAB1A default case, cases 5,6,9-17,19-21,23-28,30-33,35-38,44,47-50
3DB01E:  SUB.W           R3, R9, #4; switch 50 cases
3DB022:  CMP             R3, #0x31 ; '1'
3DB024:  BHI.W           def_3DB028; jumptable 003DB028 default case, cases 5-10,12-17,19-21,23-27,29-34,36-52
3DB028:  TBB.W           [PC,R3]; switch jump
3DB02C:  DCB 0x19; jump table for switch statement
3DB02D:  DCB 0x4C
3DB02E:  DCB 0x4C
3DB02F:  DCB 0x4C
3DB030:  DCB 0x4C
3DB031:  DCB 0x4C
3DB032:  DCB 0x4C
3DB033:  DCB 0x19
3DB034:  DCB 0x4C
3DB035:  DCB 0x4C
3DB036:  DCB 0x4C
3DB037:  DCB 0x4C
3DB038:  DCB 0x4C
3DB039:  DCB 0x4C
3DB03A:  DCB 0x35
3DB03B:  DCB 0x4C
3DB03C:  DCB 0x4C
3DB03D:  DCB 0x4C
3DB03E:  DCB 0x35
3DB03F:  DCB 0x4C
3DB040:  DCB 0x4C
3DB041:  DCB 0x4C
3DB042:  DCB 0x4C
3DB043:  DCB 0x4C
3DB044:  DCB 0x19
3DB045:  DCB 0x4C
3DB046:  DCB 0x4C
3DB047:  DCB 0x4C
3DB048:  DCB 0x4C
3DB049:  DCB 0x4C
3DB04A:  DCB 0x4C
3DB04B:  DCB 0x19
3DB04C:  DCB 0x4C
3DB04D:  DCB 0x4C
3DB04E:  DCB 0x4C
3DB04F:  DCB 0x4C
3DB050:  DCB 0x4C
3DB051:  DCB 0x4C
3DB052:  DCB 0x4C
3DB053:  DCB 0x4C
3DB054:  DCB 0x4C
3DB055:  DCB 0x4C
3DB056:  DCB 0x4C
3DB057:  DCB 0x4C
3DB058:  DCB 0x4C
3DB059:  DCB 0x4C
3DB05A:  DCB 0x4C
3DB05B:  DCB 0x4C
3DB05C:  DCB 0x4C
3DB05D:  DCB 0x4F
3DB05E:  CMP             R1, #0x1C; jumptable 003DB028 cases 4,11,28,35
3DB060:  BHI             loc_3DB072
3DB062:  MOVS            R3, #1
3DB064:  MOVW            R6, #0x810
3DB068:  LSLS            R3, R1
3DB06A:  MOVT            R6, #0x1000
3DB06E:  TST             R3, R6
3DB070:  BNE             loc_3DB076
3DB072:  CMP             R1, #0x35 ; '5'
3DB074:  BNE             def_3DB028; jumptable 003DB028 default case, cases 5-10,12-17,19-21,23-27,29-34,36-52
3DB076:  MOVW            R3, #0xCCCD
3DB07A:  MOV.W           R11, #0x15E
3DB07E:  MOVT            R3, #0x3DCC
3DB082:  STR             R3, [R0]
3DB084:  MOVW            R0, #0x6666
3DB088:  LDR             R1, [SP,#0x38+var_34]
3DB08A:  MOVT            R0, #0x3F66
3DB08E:  STR             R0, [R1]
3DB090:  STR.W           R11, [R4,#0x78]
3DB094:  B               loc_3DAC50
3DB096:  SUB.W           R3, R1, #0x27 ; '''; jumptable 003DB028 cases 18,22
3DB09A:  CMP             R3, #0xD
3DB09C:  BHI             def_3DB028; jumptable 003DB028 default case, cases 5-10,12-17,19-21,23-27,29-34,36-52
3DB09E:  MOV.W           R12, #1
3DB0A2:  MOVW            R6, #0x209F
3DB0A6:  LSL.W           R3, R12, R3
3DB0AA:  TST             R3, R6
3DB0AC:  BEQ             def_3DB028; jumptable 003DB028 default case, cases 5-10,12-17,19-21,23-27,29-34,36-52
3DB0AE:  MOVS            R3, #0
3DB0B0:  MOV.W           R11, #0x258
3DB0B4:  STR             R3, [R0]
3DB0B6:  MOV.W           R0, #0x3F800000
3DB0BA:  LDR             R1, [SP,#0x38+var_34]
3DB0BC:  STR             R0, [R1]
3DB0BE:  STR.W           R12, [R4,#0x78]
3DB0C2:  B               loc_3DAC50
3DB0C4:  MOVW            R0, #0x546; jumptable 003DB028 default case, cases 5-10,12-17,19-21,23-27,29-34,36-52
3DB0C8:  B               loc_3DAC4A
3DB0CA:  MOVS            R3, #0; jumptable 003DB028 case 53
3DB0CC:  MOV.W           R11, #0x15E
3DB0D0:  STR             R3, [R0]
3DB0D2:  MOV.W           R0, #0x3F800000
3DB0D6:  LDR             R1, [SP,#0x38+var_34]
3DB0D8:  STR             R0, [R1]
3DB0DA:  MOV.W           R0, #0x190
3DB0DE:  STR             R0, [R4,#0x78]
3DB0E0:  B               loc_3DAC50
