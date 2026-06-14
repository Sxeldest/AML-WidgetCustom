; =========================================================
; Game Engine Function: _ZN11CFileLoader12LoadCullZoneEPKc
; Address            : 0x46AF48 - 0x46B050
; =========================================================

46AF48:  PUSH            {R4-R7,LR}
46AF4A:  ADD             R7, SP, #0xC
46AF4C:  PUSH.W          {R8-R11}
46AF50:  SUB             SP, SP, #0x6C
46AF52:  MOV             R4, R0
46AF54:  MOVS            R0, #0
46AF56:  STR             R0, [SP,#0x88+var_48]
46AF58:  ADD             R0, SP, #0x88+var_58
46AF5A:  ADD             R2, SP, #0x88+var_50
46AF5C:  ADD             R3, SP, #0x88+var_4C
46AF5E:  ADD             R1, SP, #0x88+var_54
46AF60:  ADD             R6, SP, #0x88+var_34
46AF62:  STRD.W          R3, R2, [SP,#0x88+var_68]; float
46AF66:  ADD             R2, SP, #0x88+var_28
46AF68:  STRD.W          R1, R0, [SP,#0x88+var_60]
46AF6C:  ADD             R0, SP, #0x88+var_44
46AF6E:  ADD             R3, SP, #0x88+var_3C
46AF70:  ADD.W           R9, SP, #0x88+var_2C
46AF74:  ADD             R1, SP, #0x88+var_40
46AF76:  ADDS            R5, R2, #4
46AF78:  ADD.W           R10, R2, #8
46AF7C:  ADD.W           R11, SP, #0x88+var_38
46AF80:  ADD.W           R8, SP, #0x88+var_30
46AF84:  STRD.W          R10, R9, [SP,#0x88+var_88]; float
46AF88:  STRD.W          R8, R6, [SP,#0x88+var_80]; float
46AF8C:  STRD.W          R11, R3, [SP,#0x88+var_78]; float
46AF90:  MOV             R3, R5
46AF92:  STRD.W          R1, R0, [SP,#0x88+var_70]; float
46AF96:  ADR             R1, aFFFFFFFFFDFFFF; "%f %f %f %f %f %f %f %f %f %d %f %f %f "...
46AF98:  MOV             R0, R4; s
46AF9A:  BLX             sscanf
46AF9E:  CMP             R0, #0xE
46AFA0:  BNE             loc_46AFEE
46AFA2:  LDRD.W          R3, R2, [SP,#0x88+var_34]; float
46AFA6:  VLDR            S6, [SP,#0x88+var_58]
46AFAA:  VLDR            S8, [SP,#0x88+var_4C]
46AFAE:  VLDR            S10, [SP,#0x88+var_50]
46AFB2:  VLDR            S12, [SP,#0x88+var_54]
46AFB6:  LDR             R1, [SP,#0x88+var_2C]; CVector *
46AFB8:  LDRH.W          R0, [SP,#0x88+var_44]
46AFBC:  VSTR            S6, [SP,#0x88+var_78]
46AFC0:  VSTR            S8, [SP,#0x88+var_74]
46AFC4:  VSTR            S10, [SP,#0x88+var_70]
46AFC8:  VSTR            S12, [SP,#0x88+var_6C]
46AFCC:  STR             R0, [SP,#0x88+var_7C]; float
46AFCE:  ADD             R0, SP, #0x88+var_28; this
46AFD0:  VLDR            S0, [SP,#0x88+var_38]
46AFD4:  VLDR            S2, [SP,#0x88+var_3C]
46AFD8:  VLDR            S4, [SP,#0x88+var_40]
46AFDC:  VSTR            S0, [SP,#0x88+var_88]
46AFE0:  VSTR            S2, [SP,#0x88+var_84]
46AFE4:  VSTR            S4, [SP,#0x88+var_80]
46AFE8:  BLX             j__ZN10CCullZones22AddMirrorAttributeZoneERK7CVectorfffffftffff; CCullZones::AddMirrorAttributeZone(CVector const&,float,float,float,float,float,float,ushort,float,float,float,float)
46AFEC:  B               loc_46B048
46AFEE:  ADD             R0, SP, #0x88+var_48
46AFF0:  STR             R0, [SP,#0x88+var_68]
46AFF2:  ADD             R0, SP, #0x88+var_3C
46AFF4:  STRD.W          R10, R9, [SP,#0x88+var_88]; float
46AFF8:  STRD.W          R8, R6, [SP,#0x88+var_80]; float
46AFFC:  ADD             R6, SP, #0x88+var_28
46AFFE:  STR.W           R11, [SP,#0x88+var_78]; unsigned __int16
46B002:  ADR             R1, aFFFFFFFFFDD; "%f %f %f %f %f %f %f %f %f %d %d"
46B004:  STR             R0, [SP,#0x88+var_74]; __int16
46B006:  ADD             R0, SP, #0x88+var_40
46B008:  STR             R0, [SP,#0x88+var_70]
46B00A:  ADD             R0, SP, #0x88+var_44
46B00C:  STR             R0, [SP,#0x88+var_6C]
46B00E:  MOV             R0, R4; s
46B010:  MOV             R2, R6
46B012:  MOV             R3, R5
46B014:  BLX             sscanf
46B018:  LDRD.W          R3, R2, [SP,#0x88+var_34]; float
46B01C:  LDRSH.W         R5, [SP,#0x88+var_48]
46B020:  LDR             R1, [SP,#0x88+var_2C]; CVector *
46B022:  VLDR            S0, [SP,#0x88+var_38]
46B026:  VLDR            S2, [SP,#0x88+var_3C]
46B02A:  VLDR            S4, [SP,#0x88+var_40]
46B02E:  LDRH.W          R0, [SP,#0x88+var_44]
46B032:  STRD.W          R0, R5, [SP,#0x88+var_7C]; float
46B036:  MOV             R0, R6; this
46B038:  VSTR            S0, [SP,#0x88+var_88]
46B03C:  VSTR            S2, [SP,#0x88+var_84]
46B040:  VSTR            S4, [SP,#0x88+var_80]
46B044:  BLX             j__ZN10CCullZones11AddCullZoneERK7CVectorffffffts; CCullZones::AddCullZone(CVector const&,float,float,float,float,float,float,ushort,short)
46B048:  ADD             SP, SP, #0x6C ; 'l'
46B04A:  POP.W           {R8-R11}
46B04E:  POP             {R4-R7,PC}
