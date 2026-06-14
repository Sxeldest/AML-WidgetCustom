; =========================================================
; Game Engine Function: _ZN11CFileLoader17LoadVehicleObjectEPKc
; Address            : 0x4699EC - 0x469D4A
; =========================================================

4699EC:  PUSH            {R4-R7,LR}
4699EE:  ADD             R7, SP, #0xC
4699F0:  PUSH.W          {R8-R10}
4699F4:  SUB             SP, SP, #0xE0
4699F6:  MOV             R4, R0
4699F8:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x469A02)
4699FC:  MOVS            R2, #0
4699FE:  ADD             R0, PC; __stack_chk_guard_ptr
469A00:  LDR             R0, [R0]; __stack_chk_guard
469A02:  LDR             R1, [R0]
469A04:  LDR.W           R0, =(aVehicle_0 - 0x469A12); "vehicle"
469A08:  STR             R1, [SP,#0xF8+var_1C]
469A0A:  MOV.W           R1, #0xFFFFFFFF; char *
469A0E:  ADD             R0, PC; "vehicle"
469A10:  STR             R2, [SP,#0xF8+var_AC]
469A12:  MOV.W           R2, #0x3F800000
469A16:  STR             R1, [SP,#0xF8+var_A8]
469A18:  STR             R2, [SP,#0xF8+var_B0]
469A1A:  STRD.W          R1, R2, [SP,#0xF8+var_B8]
469A1E:  BLX             j__ZN9CTxdStore11FindTxdSlotEPKc; CTxdStore::FindTxdSlot(char const*)
469A22:  MOV             R5, R0
469A24:  ADDS            R0, R5, #1
469A26:  BNE             loc_469A36
469A28:  LDR             R0, =(aVehicle_0 - 0x469A32); "vehicle"
469A2A:  ADR             R1, off_469D58; char *
469A2C:  MOVS            R2, #(stderr+1); char *
469A2E:  ADD             R0, PC; "vehicle"
469A30:  BLX             j__ZN9CTxdStore10AddTxdSlotEPKcS1_b; CTxdStore::AddTxdSlot(char const*,char const*,bool)
469A34:  MOV             R5, R0
469A36:  ADD             R3, SP, #0xF8+var_AC
469A38:  ADD             R6, SP, #0xF8+var_C4
469A3A:  ADD             R1, SP, #0xF8+var_B4
469A3C:  ADD             R0, SP, #0xF8+var_B8
469A3E:  STRD.W          R6, R3, [SP,#0xF8+var_D8]
469A42:  ADD             R2, SP, #0xF8+var_B0
469A44:  ADD             R6, SP, #0xF8+var_54
469A46:  STRD.W          R2, R1, [SP,#0xF8+var_D0]
469A4A:  STR             R0, [SP,#0xF8+var_C8]
469A4C:  ADD             R0, SP, #0xF8+var_C0
469A4E:  ADD             R2, SP, #0xF8+var_A4
469A50:  ADD.W           R10, SP, #0xF8+var_94
469A54:  ADD.W           R9, SP, #0xF8+var_4C
469A58:  STRD.W          R9, R6, [SP,#0xF8+var_F8]
469A5C:  ADD             R1, SP, #0xF8+var_BC
469A5E:  ADD             R6, SP, #0xF8+var_34
469A60:  ADD             R3, SP, #0xF8+var_64
469A62:  STRD.W          R3, R10, [SP,#0xF8+var_F0]
469A66:  ADD.W           R8, SP, #0xF8+var_74
469A6A:  STRD.W          R8, R2, [SP,#0xF8+var_E8]
469A6E:  STRD.W          R1, R0, [SP,#0xF8+var_E0]
469A72:  ADR             R1, aDSSSSSSSDDXDFF; "%d %s %s %s %s %s %s %s %d %d %x %d %f "...
469A74:  ADD             R2, SP, #0xF8+var_A8
469A76:  MOV             R0, R4; s
469A78:  MOV             R3, R6
469A7A:  BLX             sscanf
469A7E:  LDR             R0, [SP,#0xF8+var_A8]; this
469A80:  BLX             j__ZN10CModelInfo15AddVehicleModelEi; CModelInfo::AddVehicleModel(int)
469A84:  MOV             R4, R0
469A86:  MOV             R0, R6; this
469A88:  BLX             j__ZN7CKeyGen15GetUppercaseKeyEPKc; CKeyGen::GetUppercaseKey(char const*)
469A8C:  STR             R0, [R4,#4]
469A8E:  ADD.W           R0, R4, #8; char *
469A92:  MOV             R1, R6; char *
469A94:  BLX             strcpy
469A98:  LDR             R0, [SP,#0xF8+var_A8]; this
469A9A:  BLX             j__ZN10CStreaming14GetModelCDNameEi; CStreaming::GetModelCDName(int)
469A9E:  MOV             R2, R0; char *
469AA0:  MOV             R0, R4; this
469AA2:  MOV             R1, R9; CTxdStore *
469AA4:  BLX             j__ZN14CBaseModelInfo16SetTexDictionaryEPKcS1_; CBaseModelInfo::SetTexDictionary(char const*,char const*)
469AA8:  LDR             R0, =(_ZN9CTxdStore11ms_pTxdPoolE_ptr - 0x469AB2)
469AAA:  LDRSH.W         R1, [R4,#0x20]
469AAE:  ADD             R0, PC; _ZN9CTxdStore11ms_pTxdPoolE_ptr
469AB0:  LDR             R0, [R0]; CTxdStore::ms_pTxdPool ...
469AB2:  RSB.W           R1, R1, R1,LSL#3
469AB6:  LDR             R0, [R0]; CTxdStore::ms_pTxdPool
469AB8:  LDR             R0, [R0]
469ABA:  ADD.W           R0, R0, R1,LSL#3
469ABE:  MOV             R1, R8
469AC0:  STRH            R5, [R0,#6]
469AC2:  LDR             R0, [R4]
469AC4:  LDR             R2, [R0,#0x34]
469AC6:  MOV             R0, R4
469AC8:  BLX             R2
469ACA:  LDRB.W          R0, [SP,#0xF8+var_94]
469ACE:  CMP             R0, #0
469AD0:  BEQ             loc_469AEC
469AD2:  ADD.W           R0, R10, #1
469AD6:  MOVS            R1, #0x20 ; ' '
469AD8:  B               loc_469ADC
469ADA:  ADDS            R0, #1
469ADC:  LDRB            R2, [R0]
469ADE:  CMP             R2, #0x5F ; '_'
469AE0:  BEQ             loc_469AE8
469AE2:  CMP             R2, #0
469AE4:  BNE             loc_469ADA
469AE6:  B               loc_469AEC
469AE8:  STRB            R1, [R0]
469AEA:  B               loc_469ADA
469AEC:  ADD.W           R0, R4, #0x4A ; 'J'; char *
469AF0:  ADD             R1, SP, #0xF8+var_94; char *
469AF2:  MOVS            R2, #8; size_t
469AF4:  BLX             strncpy
469AF8:  LDR             R0, [SP,#0xF8+var_C0]
469AFA:  ADR             R1, dword_469D90; char *
469AFC:  STRB.W          R0, [R4,#0x66]
469B00:  LDR             R0, [SP,#0xF8+var_C4]
469B02:  STR             R0, [R4,#0x6C]
469B04:  ADD             R0, SP, #0xF8+var_54; char *
469B06:  BLX             strcmp
469B0A:  CMP             R0, #0
469B0C:  BEQ             loc_469BA4
469B0E:  ADD             R0, SP, #0xF8+var_54; char *
469B10:  ADR             R1, aMtruck; "mtruck"
469B12:  BLX             strcmp
469B16:  CMP             R0, #0
469B18:  BEQ             loc_469BB6
469B1A:  ADD             R0, SP, #0xF8+var_54; char *
469B1C:  ADR             R1, aQuad; "quad"
469B1E:  BLX             strcmp
469B22:  CMP             R0, #0
469B24:  BEQ             loc_469BC8
469B26:  ADD             R0, SP, #0xF8+var_54; char *
469B28:  ADR             R1, aHeli; "heli"
469B2A:  BLX             strcmp
469B2E:  CMP             R0, #0
469B30:  BEQ             loc_469BDA
469B32:  ADD             R0, SP, #0xF8+var_54; char *
469B34:  ADR             R1, aPlane; "plane"
469B36:  BLX             strcmp
469B3A:  CMP             R0, #0
469B3C:  BEQ             loc_469BEC
469B3E:  ADD             R0, SP, #0xF8+var_54; char *
469B40:  ADR             R1, aBoat; "boat"
469B42:  BLX             strcmp
469B46:  CMP             R0, #0
469B48:  BEQ             loc_469BFE
469B4A:  ADD             R0, SP, #0xF8+var_54; char *
469B4C:  ADR             R1, aTrain; "train"
469B4E:  BLX             strcmp
469B52:  CMP             R0, #0
469B54:  BEQ             loc_469C02
469B56:  ADD             R0, SP, #0xF8+var_54; char *
469B58:  ADR             R1, aFHeli; "f_heli"
469B5A:  BLX             strcmp
469B5E:  CMP             R0, #0
469B60:  BEQ             loc_469C06
469B62:  ADD             R0, SP, #0xF8+var_54; char *
469B64:  ADR             R1, aFPlane; "f_plane"
469B66:  BLX             strcmp
469B6A:  CMP             R0, #0
469B6C:  BEQ             loc_469C0A
469B6E:  ADD             R0, SP, #0xF8+var_54; char *
469B70:  ADR             R1, aBike; "bike"
469B72:  BLX             strcmp
469B76:  CMP             R0, #0
469B78:  BEQ             loc_469C1C
469B7A:  ADD             R0, SP, #0xF8+var_54; char *
469B7C:  ADR             R1, aBmx; "bmx"
469B7E:  BLX             strcmp
469B82:  CMP             R0, #0
469B84:  BEQ             loc_469C30
469B86:  ADD             R0, SP, #0xF8+var_54; char *
469B88:  ADR             R1, aTrailer; "trailer"
469B8A:  BLX             strcmp
469B8E:  CMP             R0, #0
469B90:  BNE             loc_469C48
469B92:  LDR             R1, [SP,#0xF8+var_AC]
469B94:  LDRD.W          R0, R2, [SP,#0xF8+var_B4]
469B98:  STRH.W          R1, [R4,#0x60]
469B9C:  STRD.W          R2, R0, [R4,#0x58]
469BA0:  MOVS            R0, #0xB
469BA2:  B               loc_469C46
469BA4:  LDR             R1, [SP,#0xF8+var_AC]
469BA6:  LDRD.W          R0, R2, [SP,#0xF8+var_B4]
469BAA:  STRH.W          R1, [R4,#0x60]
469BAE:  STRD.W          R2, R0, [R4,#0x58]
469BB2:  MOVS            R0, #0
469BB4:  B               loc_469C46
469BB6:  LDR             R1, [SP,#0xF8+var_AC]
469BB8:  LDRD.W          R0, R2, [SP,#0xF8+var_B4]
469BBC:  STRH.W          R1, [R4,#0x60]
469BC0:  STRD.W          R2, R0, [R4,#0x58]
469BC4:  MOVS            R0, #1
469BC6:  B               loc_469C46
469BC8:  LDR             R1, [SP,#0xF8+var_AC]
469BCA:  LDRD.W          R0, R2, [SP,#0xF8+var_B4]
469BCE:  STRH.W          R1, [R4,#0x60]
469BD2:  STRD.W          R2, R0, [R4,#0x58]
469BD6:  MOVS            R0, #2
469BD8:  B               loc_469C46
469BDA:  LDR             R1, [SP,#0xF8+var_AC]
469BDC:  LDRD.W          R0, R2, [SP,#0xF8+var_B4]
469BE0:  STRH.W          R1, [R4,#0x60]
469BE4:  STRD.W          R2, R0, [R4,#0x58]
469BE8:  MOVS            R0, #3
469BEA:  B               loc_469C46
469BEC:  LDR             R1, [SP,#0xF8+var_AC]
469BEE:  LDRD.W          R0, R2, [SP,#0xF8+var_B4]
469BF2:  STRH.W          R1, [R4,#0x60]
469BF6:  STRD.W          R2, R0, [R4,#0x58]
469BFA:  MOVS            R0, #4
469BFC:  B               loc_469C46
469BFE:  MOVS            R0, #5
469C00:  B               loc_469C46
469C02:  MOVS            R0, #6
469C04:  B               loc_469C46
469C06:  MOVS            R0, #3
469C08:  B               loc_469C46
469C0A:  LDR             R0, [SP,#0xF8+var_AC]
469C0C:  MOV.W           R1, #0x3F800000
469C10:  STRH.W          R0, [R4,#0x60]
469C14:  MOVS            R0, #8
469C16:  STRD.W          R1, R1, [R4,#0x58]
469C1A:  B               loc_469C46
469C1C:  VLDR            S0, [SP,#0xF8+var_AC]
469C20:  VCVT.F32.S32    S0, S0
469C24:  LDRD.W          R0, R1, [SP,#0xF8+var_B4]
469C28:  STRD.W          R1, R0, [R4,#0x58]
469C2C:  MOVS            R0, #9
469C2E:  B               loc_469C42
469C30:  VLDR            S0, [SP,#0xF8+var_AC]
469C34:  VCVT.F32.S32    S0, S0
469C38:  LDRD.W          R0, R1, [SP,#0xF8+var_B4]
469C3C:  STRD.W          R1, R0, [R4,#0x58]
469C40:  MOVS            R0, #0xA
469C42:  VSTR            S0, [R4,#0x70]
469C46:  STR             R0, [R4,#0x54]
469C48:  LDR             R0, =(mod_HandlingManager_ptr - 0x469C50)
469C4A:  ADD             R1, SP, #0xF8+var_64; char *
469C4C:  ADD             R0, PC; mod_HandlingManager_ptr
469C4E:  LDR             R0, [R0]; mod_HandlingManager ; this
469C50:  BLX             j__ZN16cHandlingDataMgr13GetHandlingIdEPKc; cHandlingDataMgr::GetHandlingId(char const*)
469C54:  STRH.W          R0, [R4,#0x62]
469C58:  ADR             R1, aNormal_0; "normal"
469C5A:  LDR             R0, [SP,#0xF8+var_B8]
469C5C:  STRB.W          R0, [R4,#0x67]
469C60:  ADD             R0, SP, #0xF8+var_A4; char *
469C62:  BLX             strcmp
469C66:  CMP             R0, #0
469C68:  BEQ             loc_469CF6
469C6A:  ADD             R0, SP, #0xF8+var_A4; char *
469C6C:  ADR             R1, aPoorfamily; "poorfamily"
469C6E:  BLX             strcmp
469C72:  CMP             R0, #0
469C74:  BEQ             loc_469CFA
469C76:  ADD             R0, SP, #0xF8+var_A4; char *
469C78:  ADR             R1, aRichfamily; "richfamily"
469C7A:  BLX             strcmp
469C7E:  CBZ             R0, loc_469CFE
469C80:  ADD             R0, SP, #0xF8+var_A4; char *
469C82:  ADR             R1, aExecutive; "executive"
469C84:  BLX             strcmp
469C88:  CBZ             R0, loc_469D02
469C8A:  ADD             R0, SP, #0xF8+var_A4; char *
469C8C:  ADR             R1, aWorker; "worker"
469C8E:  BLX             strcmp
469C92:  CBZ             R0, loc_469D06
469C94:  ADD             R0, SP, #0xF8+var_A4; char *
469C96:  ADR             R1, aBig; "big"
469C98:  BLX             strcmp
469C9C:  CBZ             R0, loc_469D0A
469C9E:  ADD             R0, SP, #0xF8+var_A4; char *
469CA0:  ADR             R1, aTaxi; "taxi"
469CA2:  BLX             strcmp
469CA6:  CBZ             R0, loc_469D0E
469CA8:  ADD             R0, SP, #0xF8+var_A4; char *
469CAA:  ADR             R1, aMoped; "moped"
469CAC:  BLX             strcmp
469CB0:  CBZ             R0, loc_469D12
469CB2:  LDR             R1, =(aMotorbike - 0x469CBA); "motorbike"
469CB4:  ADD             R0, SP, #0xF8+var_A4; char *
469CB6:  ADD             R1, PC; "motorbike"
469CB8:  BLX             strcmp
469CBC:  CBZ             R0, loc_469D16
469CBE:  LDR             R1, =(aLeisureboat - 0x469CC6); "leisureboat"
469CC0:  ADD             R0, SP, #0xF8+var_A4; char *
469CC2:  ADD             R1, PC; "leisureboat"
469CC4:  BLX             strcmp
469CC8:  CBZ             R0, loc_469D1A
469CCA:  LDR             R1, =(aWorkerboat - 0x469CD2); "workerboat"
469CCC:  ADD             R0, SP, #0xF8+var_A4; char *
469CCE:  ADD             R1, PC; "workerboat"
469CD0:  BLX             strcmp
469CD4:  CBZ             R0, loc_469D1E
469CD6:  LDR             R1, =(aHudBicycle_0+4 - 0x469CDE); "bicycle"
469CD8:  ADD             R0, SP, #0xF8+var_A4; char *
469CDA:  ADD             R1, PC; "bicycle" ; char *
469CDC:  BLX             strcmp
469CE0:  CBZ             R0, loc_469D22
469CE2:  LDR             R1, =(aIgnore_0 - 0x469CEA); "ignore"
469CE4:  ADD             R0, SP, #0xF8+var_A4; char *
469CE6:  ADD             R1, PC; "ignore"
469CE8:  BLX             strcmp
469CEC:  CBNZ            R0, loc_469D28
469CEE:  MOVS            R0, #0xFF
469CF0:  STRB.W          R0, [R4,#0x65]
469CF4:  B               loc_469D2E
469CF6:  MOVS            R0, #0
469CF8:  B               loc_469D24
469CFA:  MOVS            R0, #1
469CFC:  B               loc_469D24
469CFE:  MOVS            R0, #2
469D00:  B               loc_469D24
469D02:  MOVS            R0, #3
469D04:  B               loc_469D24
469D06:  MOVS            R0, #4
469D08:  B               loc_469D24
469D0A:  MOVS            R0, #5
469D0C:  B               loc_469D24
469D0E:  MOVS            R0, #6
469D10:  B               loc_469D24
469D12:  MOVS            R0, #7
469D14:  B               loc_469D24
469D16:  MOVS            R0, #8
469D18:  B               loc_469D24
469D1A:  MOVS            R0, #9
469D1C:  B               loc_469D24
469D1E:  MOVS            R0, #0xA
469D20:  B               loc_469D24
469D22:  MOVS            R0, #0xB
469D24:  STRB.W          R0, [R4,#0x65]
469D28:  LDR             R0, [SP,#0xF8+var_BC]
469D2A:  STRH.W          R0, [R4,#0x6A]
469D2E:  LDR             R1, =(__stack_chk_guard_ptr - 0x469D36)
469D30:  LDR             R0, [SP,#0xF8+var_A8]
469D32:  ADD             R1, PC; __stack_chk_guard_ptr
469D34:  LDR             R2, [SP,#0xF8+var_1C]
469D36:  LDR             R1, [R1]; __stack_chk_guard
469D38:  LDR             R1, [R1]
469D3A:  SUBS            R1, R1, R2
469D3C:  ITTT EQ
469D3E:  ADDEQ           SP, SP, #0xE0
469D40:  POPEQ.W         {R8-R10}
469D44:  POPEQ           {R4-R7,PC}
469D46:  BLX             __stack_chk_fail
