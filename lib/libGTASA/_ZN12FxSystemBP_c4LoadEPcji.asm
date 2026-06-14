; =========================================================
; Game Engine Function: _ZN12FxSystemBP_c4LoadEPcji
; Address            : 0x46DAF4 - 0x46DE4A
; =========================================================

46DAF4:  PUSH            {R4-R7,LR}
46DAF6:  ADD             R7, SP, #0xC
46DAF8:  PUSH.W          {R8-R11}
46DAFC:  SUB.W           SP, SP, #0x5E0
46DB00:  SUB             SP, SP, #4
46DB02:  MOV             R8, R0
46DB04:  LDR             R0, =(__stack_chk_guard_ptr - 0x46DB10)
46DB06:  MOV             R11, R2
46DB08:  ADDW            R1, SP, #0x600+var_124; char *
46DB0C:  ADD             R0, PC; __stack_chk_guard_ptr
46DB0E:  MOV.W           R2, #0x100; int
46DB12:  MOV             R10, R3
46DB14:  LDR             R0, [R0]; __stack_chk_guard
46DB16:  LDR             R0, [R0]
46DB18:  STR.W           R0, [R7,#var_24]
46DB1C:  MOV             R0, R11; unsigned int
46DB1E:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46DB22:  CMP.W           R10, #0x65 ; 'e'
46DB26:  BLT             loc_46DB4A
46DB28:  ADDW            R4, SP, #0x600+var_124
46DB2C:  MOV             R0, R11; unsigned int
46DB2E:  MOV.W           R2, #0x100; int
46DB32:  MOV             R1, R4; char *
46DB34:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46DB38:  LDR             R1, =(aSFFFFSS+0xF - 0x46DB48); "%s %s"
46DB3A:  ADDW            R2, SP, #0x600+var_144
46DB3E:  ADDW            R3, SP, #0x600+var_1C4
46DB42:  MOV             R0, R4; s
46DB44:  ADD             R1, PC; "%s %s" ; format
46DB46:  BLX             sscanf
46DB4A:  ADDW            R4, SP, #0x600+var_124
46DB4E:  MOV             R0, R11; unsigned int
46DB50:  MOV.W           R2, #0x100; int
46DB54:  MOV             R1, R4; char *
46DB56:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46DB5A:  LDR             R1, =(aSFFFFSS+0xF - 0x46DB6A); "%s %s"
46DB5C:  ADDW            R5, SP, #0x600+var_144
46DB60:  ADDW            R6, SP, #0x600+var_1E4
46DB64:  MOV             R0, R4; s
46DB66:  ADD             R1, PC; "%s %s" ; format
46DB68:  MOV             R2, R5
46DB6A:  MOV             R3, R6
46DB6C:  BLX             sscanf
46DB70:  MOV             R0, R6; this
46DB72:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
46DB76:  STR.W           R0, [R8,#8]
46DB7A:  MOV             R0, R11; unsigned int
46DB7C:  MOV             R1, R4; char *
46DB7E:  MOV.W           R2, #0x100; int
46DB82:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46DB86:  LDR             R1, =(aSF_0 - 0x46DB94); "%s %f"
46DB88:  ADD.W           R3, R8, #0xC
46DB8C:  MOV             R0, R4; s
46DB8E:  MOV             R2, R5
46DB90:  ADD             R1, PC; "%s %f"
46DB92:  BLX             sscanf
46DB96:  CMP.W           R10, #0x6A ; 'j'
46DB9A:  BLT             loc_46DBDE
46DB9C:  ADDW            R4, SP, #0x600+var_124
46DBA0:  MOV             R0, R11; unsigned int
46DBA2:  MOV.W           R2, #0x100; int
46DBA6:  MOV             R1, R4; char *
46DBA8:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46DBAC:  LDR             R5, =(aSF_0 - 0x46DBBC); "%s %f"
46DBAE:  ADDW            R6, SP, #0x600+var_144
46DBB2:  ADD.W           R3, R8, #0x10
46DBB6:  MOV             R0, R4; s
46DBB8:  ADD             R5, PC; "%s %f"
46DBBA:  MOV             R2, R6
46DBBC:  MOV             R1, R5; format
46DBBE:  BLX             sscanf
46DBC2:  MOV             R0, R11; unsigned int
46DBC4:  MOV             R1, R4; char *
46DBC6:  MOV.W           R2, #0x100; int
46DBCA:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46DBCE:  ADD.W           R3, R8, #0x14
46DBD2:  MOV             R0, R4; s
46DBD4:  MOV             R1, R5; format
46DBD6:  MOV             R2, R6
46DBD8:  BLX             sscanf
46DBDC:  B               loc_46DBE4
46DBDE:  MOVS            R0, #0
46DBE0:  STRD.W          R0, R0, [R8,#0x10]
46DBE4:  ADDW            R4, SP, #0x600+var_124
46DBE8:  MOV             R0, R11; unsigned int
46DBEA:  MOV.W           R2, #0x100; int
46DBEE:  MOV             R1, R4; char *
46DBF0:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46DBF4:  LDR             R1, =(aDFFFDFFFFFFFDD+0x2A - 0x46DC04); "%s %d"
46DBF6:  ADDW            R6, SP, #0x600+var_144
46DBFA:  ADD.W           R3, SP, #0x600+var_1E8
46DBFE:  MOV             R0, R4; s
46DC00:  ADD             R1, PC; "%s %d" ; format
46DC02:  MOV             R2, R6
46DC04:  BLX             sscanf
46DC08:  LDR.W           R0, [SP,#0x600+var_1E8]
46DC0C:  MOV             R1, R4; char *
46DC0E:  STRB.W          R0, [R8,#0x1A]
46DC12:  MOV             R0, R11; unsigned int
46DC14:  MOV.W           R2, #0x100; int
46DC18:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46DC1C:  LDR             R1, =(aSF_0 - 0x46DC2A); "%s %f"
46DC1E:  ADDW            R3, SP, #0x600+var_1EC
46DC22:  MOV             R0, R4; s
46DC24:  MOV             R2, R6
46DC26:  ADD             R1, PC; "%s %f"
46DC28:  BLX             sscanf
46DC2C:  ADD.W           LR, SP, #0x600+var_200
46DC30:  VLDR            S0, =256.0
46DC34:  CMP.W           R10, #0x68 ; 'h'
46DC38:  VLDR            S2, [LR,#0x14]
46DC3C:  VMUL.F32        S0, S2, S0
46DC40:  VCVT.U32.F32    S0, S0
46DC44:  VMOV            R0, S0
46DC48:  STRH.W          R0, [R8,#0x18]
46DC4C:  STR.W           R10, [SP,#0x600+var_5F4]
46DC50:  BLT             loc_46DC94
46DC52:  ADDW            R4, SP, #0x600+var_124
46DC56:  MOV             R0, R11; unsigned int
46DC58:  MOV.W           R2, #0x100; int
46DC5C:  MOV             R1, R4; char *
46DC5E:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46DC62:  ADD             R6, SP, #0x600+var_5F0
46DC64:  ADD.W           R0, SP, #0x600+var_1F0
46DC68:  ADD.W           R1, R6, #8
46DC6C:  ADDS            R2, R6, #4
46DC6E:  MOV             R3, R6
46DC70:  STRD.W          R2, R1, [SP,#0x600+var_600]
46DC74:  ADR             R1, aSFFFF; "%s %f %f %f %f"
46DC76:  ADDW            R2, SP, #0x600+var_144
46DC7A:  STR             R0, [SP,#0x600+var_5F8]
46DC7C:  MOV             R0, R4; s
46DC7E:  BLX             sscanf
46DC82:  MOVS            R0, #0
46DC84:  MOV             R1, R6
46DC86:  STR.W           R0, [R8,#0x20]
46DC8A:  MOV             R0, R8
46DC8C:  LDR.W           R2, [SP,#0x600+var_1F0]
46DC90:  BLX             j__ZN12FxSystemBP_c17SetBoundingSphereEP5RwV3df; FxSystemBP_c::SetBoundingSphere(RwV3d *,float)
46DC94:  ADDW            R4, SP, #0x600+var_124
46DC98:  MOV             R0, R11; unsigned int
46DC9A:  MOV.W           R2, #0x100; int
46DC9E:  MOV             R1, R4; char *
46DCA0:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46DCA4:  LDR             R1, =(aDFFFDFFFFFFFDD+0x2A - 0x46DCB4); "%s %d"
46DCA6:  ADDW            R2, SP, #0x600+var_144
46DCAA:  ADD.W           R3, SP, #0x600+var_1E8
46DCAE:  MOV             R0, R4; s
46DCB0:  ADD             R1, PC; "%s %d" ; format
46DCB2:  BLX             sscanf
46DCB6:  LDR             R0, =(g_fxMan_ptr - 0x46DCC2)
46DCB8:  MOVS            R2, #4; int
46DCBA:  LDR.W           R1, [SP,#0x600+var_1E8]
46DCBE:  ADD             R0, PC; g_fxMan_ptr
46DCC0:  STRB.W          R1, [R8,#0x1B]
46DCC4:  LDR             R0, [R0]; g_fxMan
46DCC6:  LSLS            R1, R1, #0x18
46DCC8:  ASRS            R1, R1, #0x16; int
46DCCA:  ADDS            R0, #0xAC; this
46DCCC:  BLX             j__ZN14FxMemoryPool_c6GetMemEii; FxMemoryPool_c::GetMem(int,int)
46DCD0:  STR.W           R0, [R8,#0x1C]
46DCD4:  LDRSB.W         R0, [R8,#0x1B]
46DCD8:  CMP             R0, #1
46DCDA:  BLT             loc_46DDAE
46DCDC:  ADD             R4, SP, #0x600+var_5F0
46DCDE:  ADDW            R6, SP, #0x600+var_124
46DCE2:  ADR.W           R9, dword_46DE84
46DCE6:  ADDW            R5, SP, #0x600+var_144
46DCEA:  MOV.W           R10, #0
46DCEE:  MOV             R0, R11; unsigned int
46DCF0:  MOV             R1, R6; char *
46DCF2:  MOV.W           R2, #0x100; int
46DCF6:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46DCFA:  MOV             R0, R6; s
46DCFC:  MOV             R1, R9; format
46DCFE:  MOV             R2, R5
46DD00:  BLX             sscanf
46DD04:  ADR             R1, aFxPrimEmitterD; "FX_PRIM_EMITTER_DATA:"
46DD06:  MOV             R0, R5; char *
46DD08:  BLX             strcmp
46DD0C:  CMP             R0, #0
46DD0E:  BNE             loc_46DDA0
46DD10:  MOVS            R0, #dword_40; this
46DD12:  BLX             j__ZN13FxEmitterBP_cnwEj; FxEmitterBP_c::operator new(uint)
46DD16:  BLX             j__ZN13FxEmitterBP_cC2Ev; FxEmitterBP_c::FxEmitterBP_c(void)
46DD1A:  LDR.W           R1, [R8,#0x1C]
46DD1E:  MOV.W           R2, #0x100; int
46DD22:  STR.W           R0, [R1,R10,LSL#2]
46DD26:  MOVS            R1, #0
46DD28:  LDR.W           R0, [R8,#0x1C]
46DD2C:  LDR.W           R0, [R0,R10,LSL#2]
46DD30:  STRB.W          R1, [R0,#0x3C]
46DD34:  LDR.W           R0, [R8,#0x1C]
46DD38:  LDR.W           R0, [R0,R10,LSL#2]
46DD3C:  STRB.W          R1, [R0,#0x3D]
46DD40:  MOV             R0, R11; unsigned int
46DD42:  MOV             R1, R6; char *
46DD44:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46DD48:  LDR.W           R0, [R8,#0x1C]
46DD4C:  MOV             R5, R8
46DD4E:  MOV             R8, R6
46DD50:  LDR             R2, [SP,#0x600+var_5F4]
46DD52:  MOV             R3, R4
46DD54:  LDR.W           R0, [R0,R10,LSL#2]
46DD58:  LDR             R1, [R0]
46DD5A:  LDR             R6, [R1,#8]
46DD5C:  MOV             R1, R11
46DD5E:  BLX             R6
46DD60:  MOV             R6, R8
46DD62:  MOV             R8, R5
46DD64:  LDR.W           R0, [R8,#0x1C]
46DD68:  MOVW            R1, #0x4020; int
46DD6C:  ADDW            R5, SP, #0x600+var_144
46DD70:  LDR.W           R0, [R0,R10,LSL#2]; this
46DD74:  BLX             j__ZN13FxEmitterBP_c15IsFxInfoPresentEi; FxEmitterBP_c::IsFxInfoPresent(int)
46DD78:  LDR.W           R1, [R8,#0x1C]
46DD7C:  LDR.W           R1, [R1,R10,LSL#2]
46DD80:  STRB.W          R0, [R1,#0x3C]
46DD84:  MOVW            R1, #0x4008; int
46DD88:  LDR.W           R0, [R8,#0x1C]
46DD8C:  LDR.W           R0, [R0,R10,LSL#2]; this
46DD90:  BLX             j__ZN13FxEmitterBP_c15IsFxInfoPresentEi; FxEmitterBP_c::IsFxInfoPresent(int)
46DD94:  LDR.W           R1, [R8,#0x1C]
46DD98:  LDR.W           R1, [R1,R10,LSL#2]
46DD9C:  STRB.W          R0, [R1,#0x3D]
46DDA0:  LDRSB.W         R0, [R8,#0x1B]
46DDA4:  ADD.W           R10, R10, #1
46DDA8:  ADDS            R4, #0x80
46DDAA:  CMP             R10, R0
46DDAC:  BLT             loc_46DCEE
46DDAE:  LDR             R5, [SP,#0x600+var_5F4]
46DDB0:  CMP             R5, #0x6B ; 'k'
46DDB2:  BLE             loc_46DDFC
46DDB4:  ADDW            R4, SP, #0x600+var_124
46DDB8:  MOV             R0, R11; unsigned int
46DDBA:  MOV.W           R2, #0x100; int
46DDBE:  MOV             R1, R4; char *
46DDC0:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46DDC4:  LDR             R1, =(aDFFFDFFFFFFFDD+0x2A - 0x46DDD4); "%s %d"
46DDC6:  ADDW            R2, SP, #0x600+var_144
46DDCA:  ADD.W           R3, SP, #0x600+var_1F0
46DDCE:  MOV             R0, R4; s
46DDD0:  ADD             R1, PC; "%s %d" ; format
46DDD2:  BLX             sscanf
46DDD6:  CMP             R5, #0x6C ; 'l'
46DDD8:  BEQ             loc_46DDFC
46DDDA:  ADDW            R4, SP, #0x600+var_124
46DDDE:  MOV             R0, R11; unsigned int
46DDE0:  MOV.W           R2, #0x100; int
46DDE4:  MOV             R1, R4; char *
46DDE6:  BLX             j__Z8ReadLinejPci; ReadLine(uint,char *,int)
46DDEA:  LDR             R1, =(aSFFFFSS+0xF - 0x46DDFA); "%s %s"
46DDEC:  ADDW            R2, SP, #0x600+var_144
46DDF0:  ADDW            R3, SP, #0x600+var_1C4
46DDF4:  MOV             R0, R4; s
46DDF6:  ADD             R1, PC; "%s %s" ; format
46DDF8:  BLX             sscanf
46DDFC:  LDRSB.W         R0, [R8,#0x1B]
46DE00:  CMP             R0, #1
46DE02:  BLT             loc_46DE26
46DE04:  ADD             R4, SP, #0x600+var_5F0
46DE06:  MOVS            R6, #0
46DE08:  LDR.W           R0, [R8,#0x1C]
46DE0C:  MOV             R2, R5
46DE0E:  LDR.W           R0, [R0,R6,LSL#2]
46DE12:  LDR             R1, [R0]
46DE14:  LDR             R3, [R1,#0xC]
46DE16:  MOV             R1, R4
46DE18:  BLX             R3
46DE1A:  LDRSB.W         R0, [R8,#0x1B]
46DE1E:  ADDS            R6, #1
46DE20:  ADDS            R4, #0x80
46DE22:  CMP             R6, R0
46DE24:  BLT             loc_46DE08
46DE26:  LDR             R0, =(__stack_chk_guard_ptr - 0x46DE30)
46DE28:  LDR.W           R1, [R7,#var_24]
46DE2C:  ADD             R0, PC; __stack_chk_guard_ptr
46DE2E:  LDR             R0, [R0]; __stack_chk_guard
46DE30:  LDR             R0, [R0]
46DE32:  SUBS            R0, R0, R1
46DE34:  ITTTT EQ
46DE36:  MOVEQ           R0, #0
46DE38:  ADDEQ.W         SP, SP, #0x5E0
46DE3C:  ADDEQ           SP, SP, #4
46DE3E:  POPEQ.W         {R8-R11}
46DE42:  IT EQ
46DE44:  POPEQ           {R4-R7,PC}
46DE46:  BLX             __stack_chk_fail
