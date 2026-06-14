; =========================================================
; Game Engine Function: _ZN10Interior_c17Shop_FurnishEdgesEv
; Address            : 0x44DB34 - 0x44DF5A
; =========================================================

44DB34:  PUSH            {R4-R7,LR}
44DB36:  ADD             R7, SP, #0xC
44DB38:  PUSH.W          {R8-R11}
44DB3C:  SUB             SP, SP, #4
44DB3E:  VPUSH           {D8-D10}
44DB42:  SUB             SP, SP, #0x18
44DB44:  MOV             R4, R0
44DB46:  LDR             R0, [R4,#0x14]
44DB48:  LDRB            R1, [R0,#2]
44DB4A:  STR             R1, [SP,#0x50+var_40]
44DB4C:  LDRB.W          R11, [R0,#3]
44DB50:  BLX             rand
44DB54:  UXTH            R0, R0
44DB56:  VLDR            S16, =0.000015259
44DB5A:  VMOV            S0, R0
44DB5E:  VLDR            S18, =100.0
44DB62:  VCVT.F32.S32    S0, S0
44DB66:  VMUL.F32        S0, S0, S16
44DB6A:  VMUL.F32        S0, S0, S18
44DB6E:  VCVT.S32.F32    S0, S0
44DB72:  VMOV            R0, S0
44DB76:  CMP             R0, #0x32 ; '2'
44DB78:  BLE             loc_44DB80
44DB7A:  MOV.W           R9, #0
44DB7E:  B               loc_44DB96
44DB80:  CMP             R0, #0x19
44DB82:  BLE             loc_44DB8A
44DB84:  MOV.W           R9, #3
44DB88:  B               loc_44DB96
44DB8A:  MOV.W           R9, #9
44DB8E:  CMP             R0, #0xA
44DB90:  IT GT
44DB92:  MOVGT.W         R9, #6
44DB96:  LDR             R0, [SP,#0x50+var_40]
44DB98:  SUB.W           R8, R0, #1
44DB9C:  CMP             R0, #3
44DB9E:  BCC             loc_44DBC0
44DBA0:  SUB.W           R5, R11, #1
44DBA4:  MOVS            R6, #1
44DBA6:  MOV.W           R10, #0
44DBAA:  MOV             R0, R4; this
44DBAC:  MOV             R1, R9; int
44DBAE:  MOV             R2, R6; int
44DBB0:  MOV             R3, R5; int
44DBB2:  STR.W           R10, [SP,#0x50+var_50]; int
44DBB6:  BLX             j__ZN10Interior_c19Shop_PlaceEdgeUnitsEiiii; Interior_c::Shop_PlaceEdgeUnits(int,int,int,int)
44DBBA:  ADD             R6, R0
44DBBC:  CMP             R6, R8
44DBBE:  BLT             loc_44DBAA
44DBC0:  BLX             rand
44DBC4:  UXTH            R0, R0
44DBC6:  VMOV            S0, R0
44DBCA:  VCVT.F32.S32    S0, S0
44DBCE:  VMUL.F32        S0, S0, S16
44DBD2:  VMUL.F32        S0, S0, S18
44DBD6:  VCVT.S32.F32    S0, S0
44DBDA:  VMOV            R0, S0
44DBDE:  CMP             R0, #0x32 ; '2'
44DBE0:  BLE             loc_44DBE8
44DBE2:  MOV.W           R9, #0
44DBE6:  B               loc_44DBFE
44DBE8:  CMP             R0, #0x19
44DBEA:  BLE             loc_44DBF2
44DBEC:  MOV.W           R9, #3
44DBF0:  B               loc_44DBFE
44DBF2:  MOV.W           R9, #9
44DBF6:  CMP             R0, #0xA
44DBF8:  IT GT
44DBFA:  MOVGT.W         R9, #6
44DBFE:  SUB.W           R6, R11, #2
44DC02:  CMP.W           R11, #3
44DC06:  BCC             loc_44DC24
44DC08:  MOV.W           R10, #1
44DC0C:  MOVS            R5, #1
44DC0E:  MOV             R0, R4; this
44DC10:  MOV             R1, R9; int
44DC12:  MOVS            R2, #0; int
44DC14:  MOV             R3, R5; int
44DC16:  STR.W           R10, [SP,#0x50+var_50]; int
44DC1A:  BLX             j__ZN10Interior_c19Shop_PlaceEdgeUnitsEiiii; Interior_c::Shop_PlaceEdgeUnits(int,int,int,int)
44DC1E:  ADD             R5, R0
44DC20:  CMP             R5, R6
44DC22:  BLE             loc_44DC0E
44DC24:  BLX             rand
44DC28:  UXTH            R0, R0
44DC2A:  VMOV            S0, R0
44DC2E:  VCVT.F32.S32    S0, S0
44DC32:  VMUL.F32        S0, S0, S16
44DC36:  VMUL.F32        S0, S0, S18
44DC3A:  VCVT.S32.F32    S0, S0
44DC3E:  VMOV            R0, S0
44DC42:  CMP             R0, #0x32 ; '2'
44DC44:  BLE             loc_44DC4C
44DC46:  MOV.W           R9, #0
44DC4A:  B               loc_44DC62
44DC4C:  CMP             R0, #0x19
44DC4E:  BLE             loc_44DC56
44DC50:  MOV.W           R9, #3
44DC54:  B               loc_44DC62
44DC56:  MOV.W           R9, #9
44DC5A:  CMP             R0, #0xA
44DC5C:  IT GT
44DC5E:  MOVGT.W         R9, #6
44DC62:  CMP.W           R11, #3
44DC66:  STR.W           R11, [SP,#0x50+var_44]
44DC6A:  BCC             loc_44DC88
44DC6C:  MOVS            R5, #1
44DC6E:  MOV.W           R10, #3
44DC72:  MOV             R0, R4; this
44DC74:  MOV             R1, R9; int
44DC76:  MOV             R2, R8; int
44DC78:  MOV             R3, R5; int
44DC7A:  STR.W           R10, [SP,#0x50+var_50]; int
44DC7E:  BLX             j__ZN10Interior_c19Shop_PlaceEdgeUnitsEiiii; Interior_c::Shop_PlaceEdgeUnits(int,int,int,int)
44DC82:  ADD             R5, R0
44DC84:  CMP             R5, R6
44DC86:  BLE             loc_44DC72
44DC88:  LDR             R0, [SP,#0x50+var_40]
44DC8A:  SUBS            R5, R0, #2
44DC8C:  CMP             R0, #3
44DC8E:  BCC             loc_44DD52
44DC90:  VMOV            S0, R6
44DC94:  LDR.W           R10, =(dword_6AE3FC - 0x44DCA8)
44DC98:  LDR.W           R9, =(dword_6AE3FC - 0x44DCAA)
44DC9C:  MOV.W           R11, #2
44DCA0:  VCVT.F32.S32    S0, S0
44DCA4:  ADD             R10, PC; dword_6AE3FC
44DCA6:  ADD             R9, PC; dword_6AE3FC
44DCA8:  MOVS            R6, #0
44DCAA:  VMOV            R0, S0
44DCAE:  STR             R0, [SP,#0x50+var_3C]
44DCB0:  LDR             R0, [R4,#0x14]
44DCB2:  ADDS            R6, #1
44DCB4:  LDRSB.W         R1, [R0,#0xA]
44DCB8:  ADDS            R2, R1, #1
44DCBA:  BEQ             loc_44DCC8
44DCBC:  CMP             R6, R1
44DCBE:  BLT             loc_44DCC8
44DCC0:  LDRSB.W         R0, [R0,#0xB]
44DCC4:  CMP             R6, R0
44DCC6:  BLE             loc_44DD2C
44DCC8:  LDR.W           R8, [R10]
44DCCC:  CMP.W           R8, #2
44DCD0:  BLT             loc_44DD24
44DCD2:  BLX             rand
44DCD6:  UXTH            R0, R0
44DCD8:  VMOV            S0, R0
44DCDC:  VCVT.F32.S32    S0, S0
44DCE0:  VMUL.F32        S0, S0, S16
44DCE4:  VMUL.F32        S0, S0, S18
44DCE8:  VCVT.S32.F32    S0, S0
44DCEC:  VMOV            R0, S0
44DCF0:  CMP             R0, #0x3C ; '<'
44DCF2:  BLE             loc_44DD1C
44DCF4:  VMOV            S0, R6
44DCF8:  MOV.W           R8, #0
44DCFC:  MOV             R0, R4; this
44DCFE:  MOVS            R1, #8; int
44DD00:  VCVT.F32.S32    S0, S0
44DD04:  STRD.W          R11, R8, [SP,#0x50+var_50]; int
44DD08:  LDR             R3, [SP,#0x50+var_3C]; float
44DD0A:  VMOV            R2, S0; float
44DD0E:  BLX             j__ZN10Interior_c15AddInteriorInfoEiffiP7CEntity; Interior_c::AddInteriorInfo(int,float,float,int,CEntity *)
44DD12:  LDR             R0, =(dword_6AE3FC - 0x44DD18)
44DD14:  ADD             R0, PC; dword_6AE3FC
44DD16:  STR.W           R8, [R0]
44DD1A:  B               loc_44DD24
44DD1C:  LDR             R0, =(dword_6AE3FC - 0x44DD22)
44DD1E:  ADD             R0, PC; dword_6AE3FC
44DD20:  LDR.W           R8, [R0]
44DD24:  ADD.W           R0, R8, #1
44DD28:  STR.W           R0, [R9]
44DD2C:  MOV             R0, R4; this
44DD2E:  MOV             R1, R6; int
44DD30:  MOVS            R2, #1; int
44DD32:  BLX             j__ZN10Interior_c13GetTileStatusEii; Interior_c::GetTileStatus(int,int)
44DD36:  CBNZ            R0, loc_44DD4E
44DD38:  MOVS            R0, #1
44DD3A:  MOV             R1, R6; int
44DD3C:  STRD.W          R0, R11, [SP,#0x50+var_50]; int
44DD40:  MOVS            R0, #0
44DD42:  STR             R0, [SP,#0x50+var_48]; unsigned __int8
44DD44:  MOV             R0, R4; this
44DD46:  MOVS            R2, #1; int
44DD48:  MOVS            R3, #1; int
44DD4A:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44DD4E:  CMP             R5, R6
44DD50:  BNE             loc_44DCB0
44DD52:  LDR             R0, [SP,#0x50+var_44]
44DD54:  CMP             R0, #5
44DD56:  BCC.W           loc_44DE80
44DD5A:  VMOV            S0, R5
44DD5E:  LDR.W           R11, =(dword_6AE3FC - 0x44DD6E)
44DD62:  MOVS            R6, #0
44DD64:  VCVT.F32.S32    S20, S0
44DD68:  LDR             R0, [SP,#0x50+var_44]
44DD6A:  ADD             R11, PC; dword_6AE3FC
44DD6C:  SUB.W           R10, R0, #4
44DD70:  LDR             R0, [R4,#0x14]
44DD72:  ADD.W           R8, R6, #2
44DD76:  LDRSB.W         R1, [R0,#6]
44DD7A:  ADDS            R2, R1, #1
44DD7C:  BEQ             loc_44DD8A
44DD7E:  CMP             R8, R1
44DD80:  BLT             loc_44DD8A
44DD82:  LDRSB.W         R1, [R0,#7]
44DD86:  CMP             R8, R1
44DD88:  BLE             loc_44DDFA
44DD8A:  LDR             R0, =(dword_6AE3FC - 0x44DD90)
44DD8C:  ADD             R0, PC; dword_6AE3FC
44DD8E:  LDR.W           R9, [R0]
44DD92:  CMP.W           R9, #2
44DD96:  BLT             loc_44DDEE
44DD98:  BLX             rand
44DD9C:  UXTH            R0, R0
44DD9E:  VMOV            S0, R0
44DDA2:  VCVT.F32.S32    S0, S0
44DDA6:  VMUL.F32        S0, S0, S16
44DDAA:  VMUL.F32        S0, S0, S18
44DDAE:  VCVT.S32.F32    S0, S0
44DDB2:  VMOV            R0, S0
44DDB6:  CMP             R0, #0x3C ; '<'
44DDB8:  BLE             loc_44DDE6
44DDBA:  VMOV            S0, R8
44DDBE:  MOV.W           R9, #0
44DDC2:  MOVS            R0, #3
44DDC4:  MOVS            R1, #8; int
44DDC6:  VCVT.F32.S32    S0, S0
44DDCA:  STRD.W          R0, R9, [SP,#0x50+var_50]; int
44DDCE:  MOV             R0, R4; this
44DDD0:  MOV.W           R2, #0x3F800000; float
44DDD4:  VMOV            R3, S0; float
44DDD8:  BLX             j__ZN10Interior_c15AddInteriorInfoEiffiP7CEntity; Interior_c::AddInteriorInfo(int,float,float,int,CEntity *)
44DDDC:  LDR             R0, =(dword_6AE3FC - 0x44DDE2)
44DDDE:  ADD             R0, PC; dword_6AE3FC
44DDE0:  STR.W           R9, [R0]
44DDE4:  B               loc_44DDEE
44DDE6:  LDR             R0, =(dword_6AE3FC - 0x44DDEC)
44DDE8:  ADD             R0, PC; dword_6AE3FC
44DDEA:  LDR.W           R9, [R0]
44DDEE:  LDR             R1, =(dword_6AE3FC - 0x44DDF8)
44DDF0:  ADD.W           R0, R9, #1
44DDF4:  ADD             R1, PC; dword_6AE3FC
44DDF6:  STR             R0, [R1]
44DDF8:  LDR             R0, [R4,#0x14]
44DDFA:  LDRSB.W         R1, [R0,#8]
44DDFE:  ADDS            R2, R1, #1
44DE00:  BEQ             loc_44DE0E
44DE02:  CMP             R8, R1
44DE04:  BLT             loc_44DE0E
44DE06:  LDRSB.W         R0, [R0,#9]
44DE0A:  CMP             R8, R0
44DE0C:  BLE             loc_44DE78
44DE0E:  LDR             R0, =(dword_6AE3FC - 0x44DE14)
44DE10:  ADD             R0, PC; dword_6AE3FC
44DE12:  LDR             R5, [R0]
44DE14:  CMP             R5, #2
44DE16:  BLT             loc_44DE72
44DE18:  BLX             rand
44DE1C:  UXTH            R0, R0
44DE1E:  VMOV            S0, R0
44DE22:  VCVT.F32.S32    S0, S0
44DE26:  VMUL.F32        S0, S0, S16
44DE2A:  VMUL.F32        S0, S0, S18
44DE2E:  VCVT.S32.F32    S0, S0
44DE32:  VMOV            R0, S0
44DE36:  CMP             R0, #0x3C ; '<'
44DE38:  BLE             loc_44DE6C
44DE3A:  VMOV            S0, R8
44DE3E:  MOVS            R5, #0
44DE40:  VMOV            R2, S20; float
44DE44:  MOVS            R0, #1
44DE46:  VCVT.F32.S32    S0, S0
44DE4A:  STRD.W          R0, R5, [SP,#0x50+var_50]; int
44DE4E:  MOV             R0, R4; this
44DE50:  MOVS            R1, #8; int
44DE52:  VMOV            R3, S0; float
44DE56:  BLX             j__ZN10Interior_c15AddInteriorInfoEiffiP7CEntity; Interior_c::AddInteriorInfo(int,float,float,int,CEntity *)
44DE5A:  LDR             R0, =(dword_6AE3FC - 0x44DE60)
44DE5C:  ADD             R0, PC; dword_6AE3FC
44DE5E:  STR             R5, [R0]
44DE60:  B               loc_44DE72
44DE62:  ALIGN 4
44DE64:  DCFS 0.000015259
44DE68:  DCFS 100.0
44DE6C:  LDR             R0, =(dword_6AE3FC - 0x44DE72)
44DE6E:  ADD             R0, PC; dword_6AE3FC
44DE70:  LDR             R5, [R0]
44DE72:  ADDS            R0, R5, #1
44DE74:  STR.W           R0, [R11]
44DE78:  ADDS            R6, #1
44DE7A:  CMP             R10, R6
44DE7C:  BNE.W           loc_44DD70
44DE80:  LDR             R0, [SP,#0x50+var_40]
44DE82:  CMP             R0, #5
44DE84:  BCC             loc_44DEE0
44DE86:  LDR             R0, [SP,#0x50+var_44]
44DE88:  MOV.W           R9, #0
44DE8C:  MOV.W           R11, #1
44DE90:  MOV.W           R10, #0
44DE94:  SUB.W           R8, R0, #3
44DE98:  LDR             R0, [SP,#0x50+var_40]
44DE9A:  SUBS            R5, R0, #4
44DE9C:  ADD.W           R6, R10, #2
44DEA0:  MOV             R0, R4; this
44DEA2:  MOVS            R2, #2; int
44DEA4:  MOV             R1, R6; int
44DEA6:  BLX             j__ZN10Interior_c13GetTileStatusEii; Interior_c::GetTileStatus(int,int)
44DEAA:  CBNZ            R0, loc_44DEC2
44DEAC:  MOVS            R0, #2
44DEAE:  STR.W           R11, [SP,#0x50+var_50]; int
44DEB2:  STRD.W          R0, R9, [SP,#0x50+var_4C]; int
44DEB6:  MOV             R0, R4; this
44DEB8:  MOV             R1, R6; int
44DEBA:  MOVS            R2, #2; int
44DEBC:  MOVS            R3, #1; int
44DEBE:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44DEC2:  MOVS            R0, #3
44DEC4:  STR.W           R11, [SP,#0x50+var_50]; int
44DEC8:  STRD.W          R0, R9, [SP,#0x50+var_4C]; int
44DECC:  MOV             R0, R4; this
44DECE:  MOV             R1, R6; int
44DED0:  MOV             R2, R8; int
44DED2:  MOVS            R3, #1; int
44DED4:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44DED8:  ADD.W           R10, R10, #1
44DEDC:  CMP             R5, R10
44DEDE:  BNE             loc_44DE9C
44DEE0:  LDR             R1, [SP,#0x50+var_44]
44DEE2:  CMP             R1, #7
44DEE4:  BCC             loc_44DF32
44DEE6:  LDR             R0, [SP,#0x50+var_40]
44DEE8:  SUB.W           R9, R1, #6
44DEEC:  MOV.W           R10, #0
44DEF0:  MOV.W           R11, #3
44DEF4:  MOVS            R5, #1
44DEF6:  MOV.W           R8, #0
44DEFA:  SUBS            R0, #3
44DEFC:  STR             R0, [SP,#0x50+var_3C]
44DEFE:  ADD.W           R6, R8, #3
44DF02:  MOV             R0, R4; this
44DF04:  MOVS            R1, #2; int
44DF06:  MOVS            R3, #1; int
44DF08:  MOV             R2, R6; int
44DF0A:  STRD.W          R5, R11, [SP,#0x50+var_50]; int
44DF0E:  STR.W           R10, [SP,#0x50+var_48]; unsigned __int8
44DF12:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44DF16:  STRD.W          R5, R11, [SP,#0x50+var_50]; int
44DF1A:  MOV             R0, R4; this
44DF1C:  LDR             R1, [SP,#0x50+var_3C]; int
44DF1E:  MOV             R2, R6; int
44DF20:  MOVS            R3, #1; int
44DF22:  STR.W           R10, [SP,#0x50+var_48]; unsigned __int8
44DF26:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44DF2A:  ADD.W           R8, R8, #1
44DF2E:  CMP             R9, R8
44DF30:  BNE             loc_44DEFE
44DF32:  MOVS            R1, #3
44DF34:  MOVS            R2, #1
44DF36:  STRD.W          R2, R1, [SP,#0x50+var_50]; int
44DF3A:  MOVS            R0, #0
44DF3C:  STR             R0, [SP,#0x50+var_48]; unsigned __int8
44DF3E:  MOVS            R1, #3; int
44DF40:  LDR             R0, [SP,#0x50+var_40]
44DF42:  MOVS            R2, #3; int
44DF44:  SUBS            R3, R0, #6; int
44DF46:  MOV             R0, R4; this
44DF48:  BLX             j__ZN10Interior_c14SetTilesStatusEiiiiih; Interior_c::SetTilesStatus(int,int,int,int,int,uchar)
44DF4C:  ADD             SP, SP, #0x18
44DF4E:  VPOP            {D8-D10}
44DF52:  ADD             SP, SP, #4
44DF54:  POP.W           {R8-R11}
44DF58:  POP             {R4-R7,PC}
