; =========================================================
; Game Engine Function: _ZN6CStats13IncrementStatEtf
; Address            : 0x4159C0 - 0x415D48
; =========================================================

4159C0:  PUSH            {R4,R5,R7,LR}
4159C2:  ADD             R7, SP, #8
4159C4:  VPUSH           {D8-D9}
4159C8:  VMOV            S16, R1; unsigned __int16
4159CC:  MOV             R4, R0
4159CE:  VCMPE.F32       S16, #0.0
4159D2:  VMRS            APSR_nzcv, FPSCR
4159D6:  ITT LE
4159D8:  VPOPLE          {D8-D9}
4159DC:  POPLE           {R4,R5,R7,PC}; float
4159DE:  CMP             R4, #0x51 ; 'Q'
4159E0:  BHI             loc_415A1E
4159E2:  LDR.W           R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x4159F0)
4159E6:  SUB.W           R1, R4, #0x41 ; 'A'
4159EA:  CMP             R1, #0xF
4159EC:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
4159EE:  LDR             R0, [R0]; CStats::StatTypesFloat ...
4159F0:  ADD.W           R0, R0, R4,LSL#2
4159F4:  VLDR            S0, [R0]
4159F8:  VADD.F32        S0, S0, S16
4159FC:  VSTR            S0, [R0]
415A00:  BHI             loc_415A06
415A02:  CMP             R1, #3
415A04:  BNE             loc_415A10
415A06:  SUB.W           R1, R4, #0x15
415A0A:  CMP             R1, #5
415A0C:  BCS.W           def_415C34; jumptable 00415C34 default case, cases 161-163,166-222,224,226-228,231,232,234-240
415A10:  VLDR            S2, =1000.0
415A14:  VMIN.F32        D0, D0, D1
415A18:  VSTR            S0, [R0]
415A1C:  B               def_415C34; jumptable 00415C34 default case, cases 161-163,166-222,224,226-228,231,232,234-240
415A1E:  LDR.W           R0, =(_ZN6CWorld13PlayerInFocusE_ptr - 0x415A2A)
415A22:  LDR.W           R3, =(_ZN6CWorld7PlayersE_ptr - 0x415A2C)
415A26:  ADD             R0, PC; _ZN6CWorld13PlayerInFocusE_ptr
415A28:  ADD             R3, PC; _ZN6CWorld7PlayersE_ptr
415A2A:  LDR             R0, [R0]; CWorld::PlayerInFocus ...
415A2C:  LDR             R2, [R0]; CWorld::PlayerInFocus
415A2E:  LDR             R0, [R3]; CWorld::Players ...
415A30:  MOV.W           R3, #0x194
415A34:  SMLABB.W        R12, R2, R3, R0
415A38:  MOVW            R0, #0x14F
415A3C:  CMP             R4, R0
415A3E:  BEQ             loc_415ACA
415A40:  CMP             R4, #0xF5
415A42:  BNE.W           loc_415C0E
415A46:  LDR.W           R0, =(_ZN6CWorld7PlayersE_ptr - 0x415A56)
415A4A:  MOV.W           LR, #0x194
415A4E:  LDR.W           R3, [R12]
415A52:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
415A54:  LDR             R0, [R0]; CWorld::Players ...
415A56:  SMLABB.W        R0, R2, LR, R0
415A5A:  ADDW            R2, R3, #0x544; float
415A5E:  VLDR            S18, [R2]
415A62:  LDRB.W          R5, [R0,#0x14F]
415A66:  MOVW            R0, #(elf_hash_bucket+0x53); this
415A6A:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
415A6E:  VMOV            S0, R5
415A72:  VCVT.F32.U32    S0, S0
415A76:  VSUB.F32        S0, S0, S18
415A7A:  VCVT.S32.F32    S0, S0
415A7E:  VCVT.F32.S32    S0, S0
415A82:  VCMPE.F32       S0, S16
415A86:  VMRS            APSR_nzcv, FPSCR
415A8A:  BGE.W           def_415C34; jumptable 00415C34 default case, cases 161-163,166-222,224,226-228,231,232,234-240
415A8E:  VMOV.F32        S2, #0.5
415A92:  VSUB.F32        S0, S16, S0
415A96:  VMUL.F32        S0, S0, S2
415A9A:  VCMPE.F32       S0, #0.0
415A9E:  VMRS            APSR_nzcv, FPSCR
415AA2:  BLE.W           def_415C34; jumptable 00415C34 default case, cases 161-163,166-222,224,226-228,231,232,234-240
415AA6:  LDR.W           R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x415AB2)
415AAA:  VLDR            S4, =1000.0
415AAE:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
415AB0:  LDR             R0, [R0]; CStats::StatTypesFloat ...
415AB2:  VLDR            S2, [R0,#0x54]
415AB6:  VADD.F32        S0, S0, S2
415ABA:  VMIN.F32        D0, D0, D2
415ABE:  VSTR            S0, [R0,#0x54]
415AC2:  MOVS            R0, #0; this
415AC4:  BLX             j__ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
415AC8:  B               def_415C34; jumptable 00415C34 default case, cases 161-163,166-222,224,226-228,231,232,234-240
415ACA:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x415AD8)
415ACC:  VMOV.F32        S0, #-0.5
415AD0:  VLDR            S6, =0.0
415AD4:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
415AD6:  VLDR            S4, =36.0
415ADA:  LDR             R0, [R0]; CWorld::Players ...
415ADC:  SMLABB.W        R1, R2, R3, R0
415AE0:  VMUL.F32        S0, S16, S0
415AE4:  LDRSH.W         R0, [R1,#0x144]
415AE8:  VMOV            S2, R0
415AEC:  VCVT.F32.S32    S2, S2
415AF0:  LDRB.W          R0, [R1,#0x14F]
415AF4:  VADD.F32        S0, S2, S0
415AF8:  VMOV            S2, R0
415AFC:  VMAX.F32        D16, D0, D3
415B00:  VMIN.F32        D0, D16, D2
415B04:  VCVT.S32.F32    S0, S0
415B08:  VCVT.F32.U32    S2, S2
415B0C:  VMOV            R0, S0
415B10:  STRH.W          R0, [R1,#0x144]
415B14:  LDR.W           R0, [R12]
415B18:  ADDW            R0, R0, #0x544
415B1C:  VLDR            S0, [R0]
415B20:  VSUB.F32        S2, S2, S0
415B24:  VCVT.S32.F32    S2, S2
415B28:  VCVT.F32.S32    S2, S2
415B2C:  VCMPE.F32       S2, S16
415B30:  VMRS            APSR_nzcv, FPSCR
415B34:  BGT             loc_415B46
415B36:  VMOV.F32        S16, S2
415B3A:  ADD.W           R1, R1, #0x144
415B3E:  MOVS            R2, #0
415B40:  STRH            R2, [R1]
415B42:  VLDR            S0, [R0]
415B46:  VADD.F32        S0, S16, S0
415B4A:  LDR             R1, =(_ZN6CStats20m_AddToHealthCounterE_ptr - 0x415B52)
415B4C:  LDR             R2, =(_ZN6CStats17StatReactionValueE_ptr - 0x415B54)
415B4E:  ADD             R1, PC; _ZN6CStats20m_AddToHealthCounterE_ptr
415B50:  ADD             R2, PC; _ZN6CStats17StatReactionValueE_ptr
415B52:  LDR             R1, [R1]; bool
415B54:  LDR             R2, [R2]; CStats::StatReactionValue ...
415B56:  VSTR            S0, [R0]
415B5A:  LDR             R0, [R1]; CStats::m_AddToHealthCounter
415B5C:  VCVT.U32.F32    S0, S16
415B60:  VMOV            R3, S0
415B64:  ADD             R0, R3
415B66:  VMOV            S0, R0
415B6A:  VCVT.F32.U32    S0, S0
415B6E:  VLDR            S2, [R2,#0xE8]
415B72:  STR             R0, [R1]; CStats::m_AddToHealthCounter
415B74:  VCMPE.F32       S2, S0
415B78:  VMRS            APSR_nzcv, FPSCR
415B7C:  BGE.W           def_415C34; jumptable 00415C34 default case, cases 161-163,166-222,224,226-228,231,232,234-240
415B80:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x415B86)
415B82:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
415B84:  LDR             R0, [R0]; CStats::StatReactionValue ...
415B86:  VLDR            S0, [R0,#0x2C]
415B8A:  VCMPE.F32       S0, #0.0
415B8E:  VMRS            APSR_nzcv, FPSCR
415B92:  BLE             loc_415BBE
415B94:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x415B9E)
415B96:  VLDR            S4, =1000.0
415B9A:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
415B9C:  LDR             R0, [R0]; CStats::StatTypesFloat ...
415B9E:  VLDR            S2, [R0,#0x60]
415BA2:  VADD.F32        S0, S0, S2
415BA6:  VMIN.F32        D0, D0, D2
415BAA:  VSTR            S0, [R0,#0x60]
415BAE:  MOVS            R0, #0; this
415BB0:  BLX             j__ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
415BB4:  LDR             R0, =(_ZN6CStats17StatReactionValueE_ptr - 0x415BBA)
415BB6:  ADD             R0, PC; _ZN6CStats17StatReactionValueE_ptr
415BB8:  LDR             R0, [R0]; CStats::StatReactionValue ...
415BBA:  VLDR            S0, [R0,#0x2C]
415BBE:  VMOV.F32        S2, #1.0
415BC2:  VCMPE.F32       S0, S2
415BC6:  VMRS            APSR_nzcv, FPSCR
415BCA:  BLE             loc_415C02
415BCC:  LDR             R0, =(_ZN6CStats16bShowUpdateStatsE_ptr - 0x415BD2)
415BCE:  ADD             R0, PC; _ZN6CStats16bShowUpdateStatsE_ptr
415BD0:  LDR             R0, [R0]; CStats::bShowUpdateStats ...
415BD2:  LDRB            R0, [R0]; CStats::bShowUpdateStats
415BD4:  CBZ             R0, loc_415C02
415BD6:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x415BE0)
415BD8:  VLDR            S4, =1000.0
415BDC:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
415BDE:  LDR             R0, [R0]; CStats::StatTypesFloat ...
415BE0:  VLDR            S2, [R0,#0x60]
415BE4:  VCMPE.F32       S2, S4
415BE8:  VMRS            APSR_nzcv, FPSCR
415BEC:  ITTTT LT
415BEE:  VMOVLT          R2, S0; unsigned __int16
415BF2:  MOVLT           R3, #0
415BF4:  MOVTLT          R3, #0x447A; float
415BF8:  MOVLT           R0, #(stderr+1); this
415BFA:  ITT LT
415BFC:  MOVLT           R1, #0x18; unsigned __int8
415BFE:  BLXLT           j__ZN4CHud24SetHelpMessageStatUpdateEhtff; CHud::SetHelpMessageStatUpdate(uchar,ushort,float,float)
415C02:  LDR             R0, =(_ZN6CStats20m_AddToHealthCounterE_ptr - 0x415C0A)
415C04:  MOVS            R1, #0
415C06:  ADD             R0, PC; _ZN6CStats20m_AddToHealthCounterE_ptr
415C08:  LDR             R0, [R0]; CStats::m_AddToHealthCounter ...
415C0A:  STR             R1, [R0]; CStats::m_AddToHealthCounter
415C0C:  B               def_415C34; jumptable 00415C34 default case, cases 161-163,166-222,224,226-228,231,232,234-240
415C0E:  VCVT.S32.F32    S0, S16
415C12:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x415C18)
415C14:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
415C16:  LDR             R2, [R0]; CStats::StatTypesInt ...
415C18:  SUB.W           R0, R4, #0x78 ; 'x'
415C1C:  VMOV            R3, S0
415C20:  LDR.W           R1, [R2,R0,LSL#2]
415C24:  ADD             R1, R3
415C26:  STR.W           R1, [R2,R0,LSL#2]
415C2A:  SUB.W           R2, R4, #0xA0; switch 85 cases
415C2E:  CMP             R2, #0x54 ; 'T'
415C30:  BHI.W           def_415C34; jumptable 00415C34 default case, cases 161-163,166-222,224,226-228,231,232,234-240
415C34:  TBB.W           [PC,R2]; switch jump
415C38:  DCB 0x2E; jump table for switch statement
415C39:  DCB 0x3F
415C3A:  DCB 0x3F
415C3B:  DCB 0x3F
415C3C:  DCB 0x2E
415C3D:  DCB 0x2E
415C3E:  DCB 0x3F
415C3F:  DCB 0x3F
415C40:  DCB 0x3F
415C41:  DCB 0x3F
415C42:  DCB 0x3F
415C43:  DCB 0x3F
415C44:  DCB 0x3F
415C45:  DCB 0x3F
415C46:  DCB 0x3F
415C47:  DCB 0x3F
415C48:  DCB 0x3F
415C49:  DCB 0x3F
415C4A:  DCB 0x3F
415C4B:  DCB 0x3F
415C4C:  DCB 0x3F
415C4D:  DCB 0x3F
415C4E:  DCB 0x3F
415C4F:  DCB 0x3F
415C50:  DCB 0x3F
415C51:  DCB 0x3F
415C52:  DCB 0x3F
415C53:  DCB 0x3F
415C54:  DCB 0x3F
415C55:  DCB 0x3F
415C56:  DCB 0x3F
415C57:  DCB 0x3F
415C58:  DCB 0x3F
415C59:  DCB 0x3F
415C5A:  DCB 0x3F
415C5B:  DCB 0x3F
415C5C:  DCB 0x3F
415C5D:  DCB 0x3F
415C5E:  DCB 0x3F
415C5F:  DCB 0x3F
415C60:  DCB 0x3F
415C61:  DCB 0x3F
415C62:  DCB 0x3F
415C63:  DCB 0x3F
415C64:  DCB 0x3F
415C65:  DCB 0x3F
415C66:  DCB 0x3F
415C67:  DCB 0x3F
415C68:  DCB 0x3F
415C69:  DCB 0x3F
415C6A:  DCB 0x3F
415C6B:  DCB 0x3F
415C6C:  DCB 0x3F
415C6D:  DCB 0x3F
415C6E:  DCB 0x3F
415C6F:  DCB 0x3F
415C70:  DCB 0x3F
415C71:  DCB 0x3F
415C72:  DCB 0x3F
415C73:  DCB 0x3F
415C74:  DCB 0x3F
415C75:  DCB 0x3F
415C76:  DCB 0x3F
415C77:  DCB 0x2E
415C78:  DCB 0x3F
415C79:  DCB 0x2E
415C7A:  DCB 0x3F
415C7B:  DCB 0x3F
415C7C:  DCB 0x3F
415C7D:  DCB 0x2E
415C7E:  DCB 0x2E
415C7F:  DCB 0x3F
415C80:  DCB 0x3F
415C81:  DCB 0x2E
415C82:  DCB 0x3F
415C83:  DCB 0x3F
415C84:  DCB 0x3F
415C85:  DCB 0x3F
415C86:  DCB 0x3F
415C87:  DCB 0x3F
415C88:  DCB 0x3F
415C89:  DCB 0x2E
415C8A:  DCB 0x2E
415C8B:  DCB 0x2E
415C8C:  DCB 0x2E
415C8D:  ALIGN 2
415C8E:  ALIGN 0x10
415C90:  DCFS 1000.0
415C94:  VMOV            S2, R1; jumptable 00415C34 cases 160,164,165,223,225,229,230,233,241-244
415C98:  VLDR            S0, =1000.0
415C9C:  LDR             R2, =(_ZN6CStats12StatTypesIntE_ptr - 0x415CA6)
415C9E:  VCVT.F32.S32    S2, S2
415CA2:  ADD             R2, PC; _ZN6CStats12StatTypesIntE_ptr
415CA4:  LDR             R1, [R2]; bool
415CA6:  VMIN.F32        D0, D1, D0
415CAA:  VCVT.S32.F32    S0, S0
415CAE:  VMOV            R2, S0
415CB2:  STR.W           R2, [R1,R0,LSL#2]
415CB6:  UXTB            R0, R4; jumptable 00415C34 default case, cases 161-163,166-222,224,226-228,231,232,234-240
415CB8:  CMP             R0, #0x16
415CBA:  IT NE
415CBC:  CMPNE           R0, #0xE1
415CBE:  BEQ             loc_415D06
415CC0:  CMP             R0, #0xA5
415CC2:  BNE             loc_415D3A
415CC4:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x415CCA)
415CC6:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
415CC8:  LDR             R0, [R0]; CStats::StatTypesInt ...
415CCA:  LDR.W           R0, [R0,#(dword_9649E0 - 0x96492C)]
415CCE:  CMP.W           R0, #0x3E8
415CD2:  BLE             loc_415D3A
415CD4:  VMOV            S0, R0
415CD8:  VLDR            S2, =-1000.0
415CDC:  VCVT.F32.S32    S0, S0
415CE0:  VADD.F32        S0, S0, S2
415CE4:  VCMPE.F32       S0, #0.0
415CE8:  VMRS            APSR_nzcv, FPSCR
415CEC:  BLE             loc_415D3A
415CEE:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x415CF8)
415CF0:  VLDR            S4, =1000.0
415CF4:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
415CF6:  LDR             R0, [R0]; CStats::StatTypesFloat ...
415CF8:  VLDR            S2, [R0,#0x54]
415CFC:  VADD.F32        S0, S0, S2
415D00:  VMIN.F32        D0, D0, D2
415D04:  B               loc_415D30
415D06:  LDR             R0, =(_ZN6CStats12StatTypesIntE_ptr - 0x415D0C)
415D08:  ADD             R0, PC; _ZN6CStats12StatTypesIntE_ptr
415D0A:  LDR             R0, [R0]; CStats::StatTypesInt ...
415D0C:  LDR.W           R0, [R0,#(dword_9649E0 - 0x96492C)]
415D10:  CMP.W           R0, #0xFFFFFFFF
415D14:  BGT             loc_415D3A
415D16:  LDR             R0, =(_ZN6CStats14StatTypesFloatE_ptr - 0x415D24)
415D18:  VMOV.F32        S0, #-23.0
415D1C:  VLDR            S4, =0.0
415D20:  ADD             R0, PC; _ZN6CStats14StatTypesFloatE_ptr
415D22:  LDR             R0, [R0]; CStats::StatTypesFloat ...
415D24:  VLDR            S2, [R0,#0x54]
415D28:  VADD.F32        S0, S2, S0
415D2C:  VMAX.F32        D0, D0, D2
415D30:  VSTR            S0, [R0,#0x54]
415D34:  MOVS            R0, #0; this
415D36:  BLX             j__ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
415D3A:  MOVS            R0, #0; this
415D3C:  VPOP            {D8-D9}
415D40:  POP.W           {R4,R5,R7,LR}
415D44:  B.W             _ZN6CStats20CheckForStatsMessageEb; CStats::CheckForStatsMessage(bool)
