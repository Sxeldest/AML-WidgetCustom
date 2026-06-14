; =========================================================
; Game Engine Function: _ZN12CPlantLocTri3AddERK5RwV3dS2_S2_hhhh
; Address            : 0x2CEB70 - 0x2CEE64
; =========================================================

2CEB70:  PUSH            {R4-R7,LR}
2CEB72:  ADD             R7, SP, #0xC
2CEB74:  PUSH.W          {R8,R9,R11}
2CEB78:  VPUSH           {D8-D9}
2CEB7C:  SUB             SP, SP, #0x28
2CEB7E:  VLDR            D16, [R1]
2CEB82:  MOV             R4, R0
2CEB84:  LDR             R0, [R1,#8]
2CEB86:  STR             R0, [R4,#8]
2CEB88:  VSTR            D16, [R4]
2CEB8C:  VLDR            D16, [R2]
2CEB90:  LDR             R0, [R2,#8]
2CEB92:  STR             R0, [R4,#0x14]
2CEB94:  VSTR            D16, [R4,#0xC]
2CEB98:  LDR.W           R12, [R7,#arg_8]
2CEB9C:  LDR             R5, [R3,#8]
2CEB9E:  LDRB.W          LR, [R4,#0x48]
2CEBA2:  LDR             R6, [R7,#arg_C]
2CEBA4:  VLDR            D16, [R3]
2CEBA8:  STR             R5, [R4,#0x20]
2CEBAA:  AND.W           R5, R12, #1
2CEBAE:  BFI.W           R5, R6, #1, #1
2CEBB2:  AND.W           R6, LR, #0xF8
2CEBB6:  LDR             R0, [R7,#arg_0]; this
2CEBB8:  ORRS            R6, R5
2CEBBA:  LDR.W           R12, [R7,#arg_4]
2CEBBE:  CMP             R5, #2
2CEBC0:  STRB.W          R6, [R4,#0x48]
2CEBC4:  STRB.W          R0, [R4,#0x46]
2CEBC8:  STRB.W          R12, [R4,#0x47]
2CEBCC:  VSTR            D16, [R4,#0x18]
2CEBD0:  VLDR            S0, [R2]
2CEBD4:  VLDR            S6, [R1]
2CEBD8:  VLDR            S2, [R2,#4]
2CEBDC:  VLDR            S8, [R1,#4]
2CEBE0:  VADD.F32        S0, S6, S0
2CEBE4:  VLDR            S4, [R2,#8]
2CEBE8:  VLDR            S10, [R1,#8]
2CEBEC:  VADD.F32        S2, S8, S2
2CEBF0:  VLDR            S6, [R3]
2CEBF4:  VADD.F32        S4, S10, S4
2CEBF8:  VLDR            S8, [R3,#4]
2CEBFC:  VLDR            S10, [R3,#8]
2CEC00:  VADD.F32        S0, S0, S6
2CEC04:  VLDR            S6, =0.33333
2CEC08:  VADD.F32        S2, S2, S8
2CEC0C:  VADD.F32        S4, S4, S10
2CEC10:  VMUL.F32        S0, S0, S6
2CEC14:  VMUL.F32        S2, S2, S6
2CEC18:  VMUL.F32        S4, S4, S6
2CEC1C:  VSTR            S4, [R4,#0x2C]
2CEC20:  VSTR            S2, [R4,#0x28]
2CEC24:  VSTR            S0, [R4,#0x24]
2CEC28:  VLDR            S6, [R4]
2CEC2C:  VLDR            S8, [R4,#4]
2CEC30:  VSUB.F32        S0, S0, S6
2CEC34:  VLDR            S10, [R4,#8]
2CEC38:  VSUB.F32        S2, S2, S8
2CEC3C:  VSUB.F32        S4, S4, S10
2CEC40:  VMUL.F32        S0, S0, S0
2CEC44:  VMUL.F32        S2, S2, S2
2CEC48:  VMUL.F32        S4, S4, S4
2CEC4C:  VADD.F32        S0, S0, S2
2CEC50:  VMOV.F32        S2, #1.75
2CEC54:  VADD.F32        S0, S0, S4
2CEC58:  VSQRT.F32       S0, S0
2CEC5C:  VMUL.F32        S0, S0, S2
2CEC60:  VSTR            S0, [R4,#0x30]
2CEC64:  BNE             loc_2CEC82
2CEC66:  LDRD.W          R1, R0, [R4,#0x4C]
2CEC6A:  CMP             R0, #0
2CEC6C:  BEQ             loc_2CED5C
2CEC6E:  CMP             R1, #0
2CEC70:  ITTE NE
2CEC72:  STRNE           R0, [R1,#0x50]
2CEC74:  LDRDNE.W        R1, R0, [R4,#0x4C]
2CEC78:  MOVEQ           R1, #0; unsigned __int16
2CEC7A:  STR             R1, [R0,#0x4C]
2CEC7C:  LDR             R0, =(_ZN9CPlantMgr21m_CloseLocTriListHeadE_ptr - 0x2CEC82)
2CEC7E:  ADD             R0, PC; _ZN9CPlantMgr21m_CloseLocTriListHeadE_ptr
2CEC80:  B               loc_2CEE44
2CEC82:  BLX             j__ZN17CPlantSurfPropMgr17GetSurfPropertiesEt; CPlantSurfPropMgr::GetSurfProperties(ushort)
2CEC86:  MOV             R5, R0
2CEC88:  CMP             R5, #0
2CEC8A:  BEQ             loc_2CED58
2CEC8C:  VLDR            S0, [R4]
2CEC90:  ADD             R0, SP, #0x50+var_4C; CVector *
2CEC92:  VLDR            S6, [R4,#0xC]
2CEC96:  ADD             R1, SP, #0x50+var_34; CVector *
2CEC98:  VLDR            S2, [R4,#4]
2CEC9C:  ADD             R2, SP, #0x50+var_40
2CEC9E:  VLDR            S8, [R4,#0x10]
2CECA2:  VSUB.F32        S6, S6, S0
2CECA6:  VLDR            S4, [R4,#8]
2CECAA:  VLDR            S10, [R4,#0x14]
2CECAE:  VSUB.F32        S8, S8, S2
2CECB2:  VLDR            S12, [R4,#0x18]
2CECB6:  VSUB.F32        S10, S10, S4
2CECBA:  VLDR            S14, [R4,#0x1C]
2CECBE:  VSUB.F32        S0, S12, S0
2CECC2:  VSUB.F32        S2, S14, S2
2CECC6:  VSTR            S8, [SP,#0x50+var_30]
2CECCA:  VSTR            S6, [SP,#0x50+var_34]
2CECCE:  VSTR            S10, [SP,#0x50+var_2C]
2CECD2:  VLDR            S6, [R4,#0x20]
2CECD6:  VSTR            S2, [SP,#0x50+var_3C]
2CECDA:  VSUB.F32        S4, S6, S4
2CECDE:  VSTR            S0, [SP,#0x50+var_40]
2CECE2:  VSTR            S4, [SP,#0x50+var_38]
2CECE6:  BLX             j__Z12CrossProductRK7CVectorS1_; CrossProduct(CVector const&,CVector const&)
2CECEA:  VLDR            S0, [SP,#0x50+var_4C]
2CECEE:  VLDR            S2, [SP,#0x50+var_48]
2CECF2:  VMUL.F32        S0, S0, S0
2CECF6:  VLDR            S4, [SP,#0x50+var_44]
2CECFA:  VMUL.F32        S2, S2, S2
2CECFE:  VLDR            S6, [R5,#0x70]
2CED02:  VMUL.F32        S4, S4, S4
2CED06:  VADD.F32        S0, S0, S2
2CED0A:  VMOV.F32        S2, #0.5
2CED0E:  VADD.F32        S0, S0, S4
2CED12:  VLDR            S4, [R5,#0x48]
2CED16:  VSQRT.F32       S0, S0
2CED1A:  VMUL.F32        S0, S0, S2
2CED1E:  VLDR            S2, [R5,#0x20]
2CED22:  VMUL.F32        S2, S0, S2
2CED26:  VMUL.F32        S4, S0, S4
2CED2A:  VMUL.F32        S0, S0, S6
2CED2E:  VCVT.U32.F32    S2, S2
2CED32:  VCVT.U32.F32    S4, S4
2CED36:  VCVT.U32.F32    S0, S0
2CED3A:  VMOV            R8, S2
2CED3E:  VMOV            R9, S4
2CED42:  VMOV            R6, S0
2CED46:  ADD.W           R0, R9, R8
2CED4A:  CMN             R0, R6
2CED4C:  BNE             loc_2CED72
2CED4E:  LDRB.W          R2, [R4,#0x48]
2CED52:  TST.W           R2, #2
2CED56:  BNE             loc_2CEDE8
2CED58:  MOVS            R4, #0
2CED5A:  B               loc_2CEE56
2CED5C:  LDR             R0, =(_ZN9CPlantMgr22m_UnusedLocTriListHeadE_ptr - 0x2CED64)
2CED5E:  CMP             R1, #0
2CED60:  ADD             R0, PC; _ZN9CPlantMgr22m_UnusedLocTriListHeadE_ptr
2CED62:  LDR             R0, [R0]; CPlantMgr::m_UnusedLocTriListHead ...
2CED64:  STR             R1, [R0]; CPlantMgr::m_UnusedLocTriListHead
2CED66:  BEQ             loc_2CEC7C
2CED68:  MOVS            R0, #0
2CED6A:  STR             R0, [R1,#0x50]
2CED6C:  LDR             R0, =(_ZN9CPlantMgr21m_CloseLocTriListHeadE_ptr - 0x2CED72)
2CED6E:  ADD             R0, PC; _ZN9CPlantMgr21m_CloseLocTriListHeadE_ptr
2CED70:  B               loc_2CEE44
2CED72:  BLX             rand
2CED76:  VMOV            S0, R0
2CED7A:  VLDR            S16, =4.6566e-10
2CED7E:  VLDR            S18, =0.0
2CED82:  VCVT.F32.S32    S0, S0
2CED86:  VMUL.F32        S0, S0, S16
2CED8A:  VADD.F32        S0, S0, S18
2CED8E:  VSTR            S0, [R4,#0x34]
2CED92:  BLX             rand
2CED96:  VMOV            S0, R0
2CED9A:  VCVT.F32.S32    S0, S0
2CED9E:  VMUL.F32        S0, S0, S16
2CEDA2:  VADD.F32        S0, S0, S18
2CEDA6:  VSTR            S0, [R4,#0x38]
2CEDAA:  BLX             rand
2CEDAE:  VMOV            S0, R0
2CEDB2:  VCVT.F32.S32    S0, S0
2CEDB6:  LDRD.W          R2, R1, [R4,#0x4C]
2CEDBA:  STRH.W          R6, [R4,#0x44]
2CEDBE:  CMP             R1, #0
2CEDC0:  STRH.W          R9, [R4,#0x42]
2CEDC4:  STRH.W          R8, [R4,#0x40]
2CEDC8:  VMUL.F32        S0, S0, S16
2CEDCC:  VADD.F32        S0, S0, S18
2CEDD0:  VSTR            S0, [R4,#0x3C]
2CEDD4:  LDRH            R0, [R5]
2CEDD6:  BEQ             loc_2CEE08
2CEDD8:  CMP             R2, #0
2CEDDA:  ITTE NE
2CEDDC:  STRNE           R1, [R2,#0x50]
2CEDDE:  LDRDNE.W        R2, R1, [R4,#0x4C]
2CEDE2:  MOVEQ           R2, #0
2CEDE4:  STR             R2, [R1,#0x4C]
2CEDE6:  B               loc_2CEE18
2CEDE8:  LDRD.W          R1, R0, [R4,#0x4C]
2CEDEC:  CMP             R0, #0
2CEDEE:  AND.W           R2, R2, #0xFE
2CEDF2:  STRB.W          R2, [R4,#0x48]
2CEDF6:  BEQ             loc_2CEE30
2CEDF8:  CMP             R1, #0
2CEDFA:  ITTE NE
2CEDFC:  STRNE           R0, [R1,#0x50]
2CEDFE:  LDRDNE.W        R1, R0, [R4,#0x4C]
2CEE02:  MOVEQ           R1, #0
2CEE04:  STR             R1, [R0,#0x4C]
2CEE06:  B               loc_2CEE40
2CEE08:  LDR             R1, =(_ZN9CPlantMgr22m_UnusedLocTriListHeadE_ptr - 0x2CEE10)
2CEE0A:  CMP             R2, #0
2CEE0C:  ADD             R1, PC; _ZN9CPlantMgr22m_UnusedLocTriListHeadE_ptr
2CEE0E:  LDR             R1, [R1]; CPlantMgr::m_UnusedLocTriListHead ...
2CEE10:  STR             R2, [R1]; CPlantMgr::m_UnusedLocTriListHead
2CEE12:  ITT NE
2CEE14:  MOVNE           R1, #0
2CEE16:  STRNE           R1, [R2,#0x50]
2CEE18:  LDR             R1, =(_ZN9CPlantMgr21m_CloseLocTriListHeadE_ptr - 0x2CEE20)
2CEE1A:  MOVS            R2, #0
2CEE1C:  ADD             R1, PC; _ZN9CPlantMgr21m_CloseLocTriListHeadE_ptr
2CEE1E:  LDR             R1, [R1]; CPlantMgr::m_CloseLocTriListHead ...
2CEE20:  LDR.W           R3, [R1,R0,LSL#2]
2CEE24:  STRD.W          R3, R2, [R4,#0x4C]
2CEE28:  STR.W           R4, [R1,R0,LSL#2]
2CEE2C:  LDR             R0, [R4,#0x4C]
2CEE2E:  B               loc_2CEE50
2CEE30:  LDR             R0, =(_ZN9CPlantMgr22m_UnusedLocTriListHeadE_ptr - 0x2CEE38)
2CEE32:  CMP             R1, #0
2CEE34:  ADD             R0, PC; _ZN9CPlantMgr22m_UnusedLocTriListHeadE_ptr
2CEE36:  LDR             R0, [R0]; CPlantMgr::m_UnusedLocTriListHead ...
2CEE38:  STR             R1, [R0]; CPlantMgr::m_UnusedLocTriListHead
2CEE3A:  ITT NE
2CEE3C:  MOVNE           R0, #0
2CEE3E:  STRNE           R0, [R1,#0x50]
2CEE40:  LDR             R0, =(_ZN9CPlantMgr21m_CloseLocTriListHeadE_ptr - 0x2CEE46)
2CEE42:  ADD             R0, PC; _ZN9CPlantMgr21m_CloseLocTriListHeadE_ptr
2CEE44:  LDR             R1, [R0]; CPlantMgr::m_CloseLocTriListHead ...
2CEE46:  MOVS            R2, #0
2CEE48:  LDR             R0, [R1,#(dword_70CB38 - 0x70CB2C)]
2CEE4A:  STR             R0, [R4,#0x4C]
2CEE4C:  STR             R2, [R4,#0x50]
2CEE4E:  STR             R4, [R1,#(dword_70CB38 - 0x70CB2C)]
2CEE50:  CMP             R0, #0
2CEE52:  IT NE
2CEE54:  STRNE           R4, [R0,#0x50]
2CEE56:  MOV             R0, R4
2CEE58:  ADD             SP, SP, #0x28 ; '('
2CEE5A:  VPOP            {D8-D9}
2CEE5E:  POP.W           {R8,R9,R11}
2CEE62:  POP             {R4-R7,PC}
