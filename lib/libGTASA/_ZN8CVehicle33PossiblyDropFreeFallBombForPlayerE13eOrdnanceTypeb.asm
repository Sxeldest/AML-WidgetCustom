; =========================================================
; Game Engine Function: _ZN8CVehicle33PossiblyDropFreeFallBombForPlayerE13eOrdnanceTypeb
; Address            : 0x58EB28 - 0x58ED48
; =========================================================

58EB28:  PUSH            {R4-R7,LR}
58EB2A:  ADD             R7, SP, #0xC
58EB2C:  PUSH.W          {R8}
58EB30:  SUB             SP, SP, #0x10; int
58EB32:  MOV             R4, R0
58EB34:  ADD.W           R8, R4, #0x510
58EB38:  CMP             R1, #1
58EB3A:  IT EQ
58EB3C:  ADDWEQ          R8, R4, #0x50C
58EB40:  CBZ             R2, loc_58EB62
58EB42:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x58EB4C)
58EB44:  LDR.W           R12, [R8]
58EB48:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
58EB4A:  LDR             R2, [R0]; CTimer::m_snTimeInMilliseconds ...
58EB4C:  LDR.W           R0, [R4,#0x5A4]
58EB50:  LDR.W           LR, [R2]; CTimer::m_snTimeInMilliseconds
58EB54:  CMP             R0, #3
58EB56:  BEQ             loc_58EB66
58EB58:  CMP             R0, #4
58EB5A:  BNE             loc_58EB7E
58EB5C:  ADDW            R0, R4, #0x9EC
58EB60:  B               loc_58EB6A
58EB62:  LDRH            R3, [R4,#0x26]
58EB64:  B               loc_58EBDC
58EB66:  ADDW            R0, R4, #0xA24
58EB6A:  LDRB            R0, [R0]
58EB6C:  VLDR            S2, =0.0625
58EB70:  VMOV            S0, R0
58EB74:  VCVT.F32.U32    S0, S0
58EB78:  VMUL.F32        S0, S0, S2
58EB7C:  B               loc_58EB82
58EB7E:  VMOV.F32        S0, #1.0
58EB82:  LDRSH.W         R0, [R4,#0x26]
58EB86:  CMP.W           R0, #0x1DC
58EB8A:  UXTH            R3, R0
58EB8C:  BGE             loc_58EBA4
58EB8E:  MOVW            R2, #0x1A9
58EB92:  CMP             R0, R2
58EB94:  BEQ             loc_58EBB6
58EB96:  MOVW            R2, #0x1BF
58EB9A:  CMP             R0, R2
58EB9C:  BEQ             loc_58EBB0
58EB9E:  VLDR            S2, =350.0
58EBA2:  B               loc_58EBC8
58EBA4:  CMP.W           R0, #0x208
58EBA8:  BEQ             loc_58EBBC
58EBAA:  CMP.W           R0, #0x1DC
58EBAE:  BNE             loc_58EB9E
58EBB0:  VLDR            S2, =1000.0
58EBB4:  B               loc_58EBC8
58EBB6:  VLDR            S2, =500.0
58EBBA:  B               loc_58EBC8
58EBBC:  ADR             R0, dword_58ED54
58EBBE:  CMP             R1, #1
58EBC0:  IT EQ
58EBC2:  ADDEQ           R0, #4
58EBC4:  VLDR            S2, [R0]
58EBC8:  VDIV.F32        S0, S2, S0
58EBCC:  VCVT.S32.F32    S0, S0
58EBD0:  VMOV            R0, S0
58EBD4:  ADD             R0, R12
58EBD6:  CMP             LR, R0
58EBD8:  BLS.W           loc_58ED40
58EBDC:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x58EBE4)
58EBDE:  SXTH            R2, R3
58EBE0:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
58EBE2:  LDR             R5, [R0]; CModelInfo::ms_modelInfoPtrs ...
58EBE4:  LDR             R0, [R4,#0x14]
58EBE6:  LDR.W           R3, [R5,R2,LSL#2]
58EBEA:  ADD.W           R5, R0, #0x30 ; '0'
58EBEE:  CMP             R0, #0
58EBF0:  LDR             R3, [R3,#0x74]
58EBF2:  IT EQ
58EBF4:  ADDEQ           R5, R4, #4
58EBF6:  VLDR            S2, [R5]
58EBFA:  VLDR            S4, [R5,#4]
58EBFE:  VLDR            S6, [R3,#0x9C]
58EC02:  VLDR            S0, [R5,#8]
58EC06:  VCMP.F32        S6, #0.0
58EC0A:  VLDR            S8, [R3,#0xA0]
58EC0E:  VLDR            S12, [R3,#0xA4]
58EC12:  VMRS            APSR_nzcv, FPSCR
58EC16:  BNE             loc_58EC5A
58EC18:  VCMP.F32        S8, #0.0
58EC1C:  VMRS            APSR_nzcv, FPSCR
58EC20:  BNE             loc_58EC5A
58EC22:  VCMP.F32        S12, #0.0
58EC26:  VMRS            APSR_nzcv, FPSCR
58EC2A:  BNE             loc_58EC5A
58EC2C:  VLDR            S10, =0.0
58EC30:  CMP.W           R2, #0x1DC
58EC34:  BGE             loc_58EC60
58EC36:  MOVW            R1, #0x1A9
58EC3A:  CMP             R2, R1
58EC3C:  BEQ             loc_58EC7C
58EC3E:  MOVW            R1, #0x1BF
58EC42:  CMP             R2, R1
58EC44:  BEQ             loc_58EC88
58EC46:  VMOV.F32        S8, S10
58EC4A:  CMP.W           R2, #0x1D0
58EC4E:  VMOV.F32        S6, S10
58EC52:  BNE             loc_58ECB0
58EC54:  LDR             R1, =(dword_A131E8 - 0x58EC5A)
58EC56:  ADD             R1, PC; dword_A131E8
58EC58:  B               loc_58ECA4
58EC5A:  VMOV.F32        S10, S12
58EC5E:  B               loc_58ECB0
58EC60:  BEQ             loc_58EC82
58EC62:  CMP.W           R2, #0x208
58EC66:  BEQ             loc_58EC8E
58EC68:  VMOV.F32        S8, S10
58EC6C:  CMP.W           R2, #0x240
58EC70:  VMOV.F32        S6, S10
58EC74:  BNE             loc_58ECB0
58EC76:  LDR             R1, =(dword_A131D8 - 0x58EC7C)
58EC78:  ADD             R1, PC; dword_A131D8
58EC7A:  B               loc_58ECA4
58EC7C:  LDR             R1, =(dword_A13188 - 0x58EC82)
58EC7E:  ADD             R1, PC; dword_A13188
58EC80:  B               loc_58ECA4
58EC82:  LDR             R1, =(dword_A131A8 - 0x58EC88)
58EC84:  ADD             R1, PC; dword_A131A8
58EC86:  B               loc_58ECA4
58EC88:  LDR             R1, =(dword_A13198 - 0x58EC8E)
58EC8A:  ADD             R1, PC; dword_A13198
58EC8C:  B               loc_58ECA4
58EC8E:  CMP             R1, #2
58EC90:  BEQ             loc_58ECA0
58EC92:  VMOV.F32        S10, S12
58EC96:  CMP             R1, #1
58EC98:  BNE             loc_58ECB0
58EC9A:  LDR             R1, =(dword_A131B8 - 0x58ECA0)
58EC9C:  ADD             R1, PC; dword_A131B8
58EC9E:  B               loc_58ECA4
58ECA0:  LDR             R1, =(unk_A131C8 - 0x58ECA6)
58ECA2:  ADD             R1, PC; unk_A131C8
58ECA4:  VLDR            S6, [R1]
58ECA8:  VLDR            S8, [R1,#4]
58ECAC:  VLDR            S10, [R1,#8]
58ECB0:  LDRB.W          R1, [R4,#0x4B3]
58ECB4:  VNEG.F32        S12, S6
58ECB8:  VADD.F32        S4, S4, S8
58ECBC:  ADDS            R0, #0x10
58ECBE:  ANDS.W          R5, R1, #0xC
58ECC2:  VADD.F32        S0, S0, S10
58ECC6:  IT EQ
58ECC8:  VMOVEQ.F32      S12, S6
58ECCC:  CMP             R5, #0
58ECCE:  VADD.F32        S2, S2, S12
58ECD2:  MOV.W           R5, #0
58ECD6:  IT EQ
58ECD8:  MOVEQ           R5, #1
58ECDA:  AND.W           R1, R1, #0xF3
58ECDE:  ORR.W           R1, R1, R5,LSL#2
58ECE2:  MOVS            R6, #0
58ECE4:  STRB.W          R1, [R4,#0x4B3]
58ECE8:  MOVS            R1, #0x15; float
58ECEA:  VMOV            R3, S4; int
58ECEE:  STRD.W          R6, R0, [SP,#0x20+var_1C]; float
58ECF2:  MOV             R0, R4; this
58ECF4:  STR             R6, [SP,#0x20+var_14]; CEntity *
58ECF6:  VSTR            S0, [SP,#0x20+var_20]
58ECFA:  VMOV            R2, S2; int
58ECFE:  BLX             j__ZN15CProjectileInfo13AddProjectileEP7CEntity11eWeaponType7CVectorfPS3_S1_; CProjectileInfo::AddProjectile(CEntity *,eWeaponType,CVector,float,CVector*,CEntity *)
58ED02:  LDR.W           R0, [R4,#0x464]; this
58ED06:  CMP             R0, #0
58ED08:  BEQ             loc_58ED34
58ED0A:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
58ED0E:  CMP             R0, #1
58ED10:  BNE             loc_58ED34
58ED12:  LDR.W           R0, [R4,#0x464]
58ED16:  LDR.W           R0, [R0,#0x59C]
58ED1A:  CMP             R0, #1
58ED1C:  BEQ             loc_58ED24
58ED1E:  CBNZ            R0, loc_58ED34
58ED20:  MOVS            R0, #0
58ED22:  B               loc_58ED26
58ED24:  MOVS            R0, #(stderr+1); this
58ED26:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
58ED2A:  MOVS            R1, #0xF0; __int16
58ED2C:  MOVS            R2, #0xA0; unsigned __int8
58ED2E:  MOVS            R3, #0; unsigned int
58ED30:  BLX             j__ZN4CPad10StartShakeEshj; CPad::StartShake(short,uchar,uint)
58ED34:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x58ED3A)
58ED36:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
58ED38:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
58ED3A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
58ED3C:  STR.W           R0, [R8]
58ED40:  ADD             SP, SP, #0x10
58ED42:  POP.W           {R8}
58ED46:  POP             {R4-R7,PC}
