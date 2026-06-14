; =========================================================
; Game Engine Function: _ZN14CLoadingScreen12LoadSplashesEhh
; Address            : 0x43AB9C - 0x43AD44
; =========================================================

43AB9C:  PUSH            {R4-R7,LR}
43AB9E:  ADD             R7, SP, #0xC
43ABA0:  PUSH.W          {R8-R11}
43ABA4:  SUB             SP, SP, #4
43ABA6:  VPUSH           {D8}
43ABAA:  SUB             SP, SP, #0x30
43ABAC:  MOV             R9, R0
43ABAE:  LDR             R0, =(__stack_chk_guard_ptr - 0x43ABB6)
43ABB0:  STR             R1, [SP,#0x58+var_54]
43ABB2:  ADD             R0, PC; __stack_chk_guard_ptr
43ABB4:  LDR             R0, [R0]; __stack_chk_guard
43ABB6:  LDR             R0, [R0]
43ABB8:  STR             R0, [SP,#0x58+var_2C]
43ABBA:  ADR             R0, aModelsTxd; "MODELS\\TXD\\"
43ABBC:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
43ABC0:  LDR             R0, =(aLoadscs - 0x43ABCC); "loadscs"
43ABC2:  ADR             R1, off_43AD58; char *
43ABC4:  MOVS            R2, #0; char *
43ABC6:  MOVS            R4, #0
43ABC8:  ADD             R0, PC; "loadscs"
43ABCA:  BLX             j__ZN9CTxdStore10AddTxdSlotEPKcS1_b; CTxdStore::AddTxdSlot(char const*,char const*,bool)
43ABCE:  ADR             R1, aLoadscsTxd; "loadscs.txd"
43ABD0:  MOV             R6, R0
43ABD2:  BLX             j__ZN9CTxdStore7LoadTxdEiPKc; CTxdStore::LoadTxd(int,char const*)
43ABD6:  MOV             R0, R6; this
43ABD8:  BLX             j__ZN9CTxdStore6AddRefEi; CTxdStore::AddRef(int)
43ABDC:  BLX             j__ZN9CTxdStore14PushCurrentTxdEv; CTxdStore::PushCurrentTxd(void)
43ABE0:  MOV             R0, R6; this
43ABE2:  MOVS            R1, #0; int
43ABE4:  BLX             j__ZN9CTxdStore13SetCurrentTxdEiPKc; CTxdStore::SetCurrentTxd(int,char const*)
43ABE8:  MOVW            R0, #0x100
43ABEC:  MOVS            R5, #6
43ABEE:  MOVT            R0, #0x302
43ABF2:  STR.W           R0, [R7,#var_4E]
43ABF6:  MOVW            R0, #0x504
43ABFA:  STRH.W          R0, [R7,#var_4A]
43ABFE:  ADR             R0, aMenu; "menu"
43AC00:  STRB.W          R5, [R7,#var_48]
43AC04:  BLX             j__ZN22TextureDatabaseRuntime11GetDatabaseEPKc; TextureDatabaseRuntime::GetDatabase(char const*)
43AC08:  MOV             R10, R0
43AC0A:  BLX             j__ZN22TextureDatabaseRuntime8RegisterEPS_; TextureDatabaseRuntime::Register(TextureDatabaseRuntime*)
43AC0E:  SUB.W           R11, R7, #-var_47
43AC12:  SUB.W           R8, R7, #-var_4E
43AC16:  VLDR            S16, =0.000015259
43AC1A:  MOVS            R6, #7
43AC1C:  CBZ             R4, loc_43AC46
43AC1E:  BLX             rand
43AC22:  UXTH            R0, R0
43AC24:  VMOV            S2, R6
43AC28:  VMOV            S0, R0
43AC2C:  VCVT.F32.S32    S0, S0
43AC30:  VCVT.F32.S32    S2, S2
43AC34:  VMUL.F32        S0, S0, S16
43AC38:  VMUL.F32        S0, S0, S2
43AC3C:  VCVT.S32.F32    S0, S0
43AC40:  VMOV            R2, S0
43AC44:  B               loc_43AC48
43AC46:  MOVS            R2, #0
43AC48:  SUBS            R6, #1
43AC4A:  LDRB.W          R0, [R8,R2]
43AC4E:  CMP             R2, R6
43AC50:  STRB.W          R0, [R11,R4]
43AC54:  BGE             loc_43ACA8
43AC56:  RSB.W           R0, R4, #6
43AC5A:  SUB.W           LR, R0, R2
43AC5E:  CMP.W           LR, #0x10
43AC62:  BCS             loc_43AC68
43AC64:  MOV             R0, R2
43AC66:  B               loc_43AC96
43AC68:  BIC.W           R12, LR, #0xF
43AC6C:  CMP.W           R12, #0
43AC70:  BEQ             loc_43AC94
43AC72:  ADD.W           R0, R2, R12
43AC76:  ADD.W           R3, R8, R2
43AC7A:  SUBS            R2, R5, R2
43AC7C:  BIC.W           R2, R2, #0xF
43AC80:  ADDS            R1, R3, #1
43AC82:  SUBS            R2, #0x10
43AC84:  VLD1.8          {D16-D17}, [R1]
43AC88:  VST1.8          {D16-D17}, [R3]!
43AC8C:  BNE             loc_43AC80
43AC8E:  CMP             LR, R12
43AC90:  BNE             loc_43AC96
43AC92:  B               loc_43ACA8
43AC94:  MOV             R0, R2
43AC96:  ADD.W           R1, R8, R0
43AC9A:  LDRB            R1, [R1,#1]
43AC9C:  STRB.W          R1, [R8,R0]
43ACA0:  ADDS            R0, #1
43ACA2:  ADDS            R1, R4, R0
43ACA4:  CMP             R1, #6
43ACA6:  BNE             loc_43AC96
43ACA8:  ADDS            R4, #1
43ACAA:  SUBS            R5, #1
43ACAC:  CMP             R4, #7
43ACAE:  BNE             loc_43AC1C
43ACB0:  LDRB.W          R0, [R7,#var_4E]
43ACB4:  CMP.W           R9, #0
43ACB8:  STRB.W          R0, [R7,#var_41]
43ACBC:  BEQ             loc_43ACDE
43ACBE:  LDR             R0, [SP,#0x58+var_54]
43ACC0:  CMP             R0, #1
43ACC2:  BNE             loc_43AD06
43ACC4:  MOV             R0, #0x6469766E
43ACCC:  STR             R0, [SP,#0x58+var_40]
43ACCE:  MOVS            R0, #0
43ACD0:  STRB.W          R0, [SP,#0x58+var_3A]
43ACD4:  MOVW            R0, #0x6169
43ACD8:  STRH.W          R0, [SP,#0x58+var_3C]
43ACDC:  B               loc_43AD10
43ACDE:  LDR             R0, =(_ZN14CLoadingScreen11m_aSplashesE_ptr - 0x43ACE6)
43ACE0:  MOVS            R1, #0; char *
43ACE2:  ADD             R0, PC; _ZN14CLoadingScreen11m_aSplashesE_ptr
43ACE4:  LDR             R4, [R0]; CLoadingScreen::m_aSplashes ...
43ACE6:  MOV             R0, R4; this
43ACE8:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
43ACEC:  LDR             R1, =(aMobilescD - 0x43ACF8); "mobilesc%d"
43ACEE:  ADD             R5, SP, #0x58+var_40
43ACF0:  LDRB.W          R2, [R7,#var_46]
43ACF4:  ADD             R1, PC; "mobilesc%d"
43ACF6:  MOV             R0, R5
43ACF8:  BL              sub_5E6BC0
43ACFC:  ADDS            R0, R4, #4; this
43ACFE:  MOV             R1, R5; char *
43AD00:  BLX             j__ZN9CSprite2d10SetTextureEPc; CSprite2d::SetTexture(char *)
43AD04:  B               loc_43AD10
43AD06:  MOV             R0, #unk_786165; this
43AD0E:  STR             R0, [SP,#0x58+var_40]
43AD10:  BLX             j__ZN9CTxdStore13PopCurrentTxdEv; CTxdStore::PopCurrentTxd(void)
43AD14:  MOV             R0, R10; this
43AD16:  BLX             j__ZN22TextureDatabaseRuntime10UnregisterEPS_; TextureDatabaseRuntime::Unregister(TextureDatabaseRuntime*)
43AD1A:  LDR             R0, =(byte_61CD7E - 0x43AD20)
43AD1C:  ADD             R0, PC; byte_61CD7E ; this
43AD1E:  BLX             j__ZN8CFileMgr6SetDirEPKc; CFileMgr::SetDir(char const*)
43AD22:  LDR             R0, =(__stack_chk_guard_ptr - 0x43AD2A)
43AD24:  LDR             R1, [SP,#0x58+var_2C]
43AD26:  ADD             R0, PC; __stack_chk_guard_ptr
43AD28:  LDR             R0, [R0]; __stack_chk_guard
43AD2A:  LDR             R0, [R0]
43AD2C:  SUBS            R0, R0, R1
43AD2E:  ITTTT EQ
43AD30:  ADDEQ           SP, SP, #0x30 ; '0'
43AD32:  VPOPEQ          {D8}
43AD36:  ADDEQ           SP, SP, #4
43AD38:  POPEQ.W         {R8-R11}
43AD3C:  IT EQ
43AD3E:  POPEQ           {R4-R7,PC}
43AD40:  BLX             __stack_chk_fail
