; =========================================================
; Game Engine Function: _ZN15InteriorGroup_c6UpdateEv
; Address            : 0x448B50 - 0x448C94
; =========================================================

448B50:  PUSH            {R4-R7,LR}
448B52:  ADD             R7, SP, #0xC
448B54:  PUSH.W          {R11}
448B58:  MOV             R4, R0
448B5A:  LDRSB.W         R0, [R4,#0xF]
448B5E:  LDRB.W          R1, [R4,#0x34]
448B62:  STRB.W          R1, [R4,#0x35]
448B66:  MOVS            R1, #0
448B68:  CMP             R0, #1
448B6A:  STRB.W          R1, [R4,#0x34]
448B6E:  BLT             loc_448B92
448B70:  ADD.W           R5, R4, #0x10
448B74:  MOVS            R6, #0
448B76:  LDR.W           R0, [R5,R6,LSL#2]; this
448B7A:  BLX             j__ZN10Interior_c9IsVisibleEv; Interior_c::IsVisible(void)
448B7E:  CBNZ            R0, loc_448B8C
448B80:  LDRSB.W         R0, [R4,#0xF]
448B84:  ADDS            R6, #1
448B86:  CMP             R6, R0
448B88:  BLT             loc_448B76
448B8A:  B               loc_448B92
448B8C:  MOVS            R0, #1
448B8E:  STRB.W          R0, [R4,#0x34]
448B92:  LDRB.W          R0, [R4,#0xB8]
448B96:  CBNZ            R0, loc_448BA4
448B98:  MOV             R0, R4; this
448B9A:  BLX             j__ZN15InteriorGroup_c10SetupPathsEv; InteriorGroup_c::SetupPaths(void)
448B9E:  LDRB.W          R0, [R4,#0xB8]
448BA2:  CBZ             R0, loc_448BD4
448BA4:  LDRB.W          R0, [R4,#0xB9]
448BA8:  CBNZ            R0, loc_448BFC
448BAA:  LDR             R0, [R4,#0x30]
448BAC:  CMP             R0, #0
448BAE:  BEQ             loc_448C40
448BB0:  LDR             R0, =(g_interiorMan_ptr - 0x448BBA)
448BB2:  MOVW            R1, #(byte_99D8E6 - 0x999194); int
448BB6:  ADD             R0, PC; g_interiorMan_ptr
448BB8:  LDR             R0, [R0]; g_interiorMan
448BBA:  LDRB            R0, [R0,R1]
448BBC:  CMP             R0, #0
448BBE:  BEQ             loc_448C40
448BC0:  LDRB            R0, [R4,#0xE]
448BC2:  CMP             R0, #2
448BC4:  BEQ             loc_448BDC
448BC6:  CMP             R0, #1
448BC8:  BEQ             loc_448BF0
448BCA:  CBNZ            R0, loc_448BF6
448BCC:  MOV             R0, R4; this
448BCE:  BLX             j__ZN15InteriorGroup_c14SetupHousePedsEv; InteriorGroup_c::SetupHousePeds(void)
448BD2:  B               loc_448BF6
448BD4:  LDRB.W          R0, [R4,#0xB9]
448BD8:  CBNZ            R0, loc_448BFC
448BDA:  B               loc_448C40
448BDC:  MOVS            R0, #(stderr+2); this
448BDE:  BLX             j__ZN10CStreaming21StreamPedsForInteriorEi; CStreaming::StreamPedsForInterior(int)
448BE2:  MOVS            R0, #0; this
448BE4:  MOVS            R5, #0
448BE6:  BLX             j__ZN10CStreaming22LoadAllRequestedModelsEb; CStreaming::LoadAllRequestedModels(bool)
448BEA:  STRB.W          R5, [R4,#0x36]
448BEE:  B               loc_448BF6
448BF0:  MOV             R0, R4; this
448BF2:  BLX             j__ZN15InteriorGroup_c13SetupShopPedsEv; InteriorGroup_c::SetupShopPeds(void)
448BF6:  MOVS            R0, #1
448BF8:  STRB.W          R0, [R4,#0xB9]
448BFC:  LDR             R0, [R4,#0x30]
448BFE:  CBZ             R0, loc_448C40
448C00:  LDR             R0, =(g_interiorMan_ptr - 0x448C0A)
448C02:  MOVW            R1, #(byte_99D8E6 - 0x999194)
448C06:  ADD             R0, PC; g_interiorMan_ptr
448C08:  LDR             R0, [R0]; g_interiorMan
448C0A:  LDRB            R0, [R0,R1]
448C0C:  CBZ             R0, loc_448C40
448C0E:  MOVS            R5, #0x1E
448C10:  MOVS            R6, #0
448C12:  LDR.W           R0, [R4,R5,LSL#2]; this
448C16:  CBZ             R0, loc_448C2E
448C18:  BLX             j__ZN4CPed14IsPointerValidEv; CPed::IsPointerValid(void)
448C1C:  CMP             R0, #1
448C1E:  BNE             loc_448C2A
448C20:  LDR.W           R1, [R4,R5,LSL#2]; CPed *
448C24:  MOV             R0, R4; this
448C26:  BLX             j__ZN15InteriorGroup_c9RemovePedEP4CPed; InteriorGroup_c::RemovePed(CPed *)
448C2A:  STR.W           R6, [R4,R5,LSL#2]
448C2E:  ADDS            R5, #1
448C30:  CMP             R5, #0x2E ; '.'
448C32:  BNE             loc_448C12
448C34:  LDRB            R0, [R4,#0xE]
448C36:  CMP             R0, #2
448C38:  ITT EQ
448C3A:  MOVEQ           R0, R4; this
448C3C:  BLXEQ           j__ZN15InteriorGroup_c16UpdateOfficePedsEv; InteriorGroup_c::UpdateOfficePeds(void)
448C40:  LDRB.W          R0, [R4,#0xBA]
448C44:  CBZ             R0, loc_448C4C
448C46:  POP.W           {R11}
448C4A:  POP             {R4-R7,PC}
448C4C:  LDRSB.W         R1, [R4,#0xE]; char *
448C50:  CMP             R1, #2
448C52:  BHI             loc_448C60
448C54:  LDR             R0, =(off_667D9C - 0x448C5A); "int_house" ...
448C56:  ADD             R0, PC; off_667D9C
448C58:  LDR.W           R0, [R0,R1,LSL#2]; this
448C5C:  BLX             j__ZN12CAnimManager22GetAnimationBlockIndexEPKc; CAnimManager::GetAnimationBlockIndex(char const*)
448C60:  LDR             R1, =(_ZN12CAnimManager14ms_aAnimBlocksE_ptr - 0x448C66)
448C62:  ADD             R1, PC; _ZN12CAnimManager14ms_aAnimBlocksE_ptr
448C64:  LDR             R1, [R1]; CAnimManager::ms_aAnimBlocks ...
448C66:  ADD.W           R1, R1, R0,LSL#5
448C6A:  LDRB            R1, [R1,#0x10]; int
448C6C:  CMP             R1, #1
448C6E:  BNE             loc_448C80
448C70:  BLX             j__ZN12CAnimManager15AddAnimBlockRefEi; CAnimManager::AddAnimBlockRef(int)
448C74:  MOVS            R0, #1
448C76:  STRB.W          R0, [R4,#0xBA]
448C7A:  POP.W           {R11}
448C7E:  POP             {R4-R7,PC}
448C80:  MOVW            R1, #0x63E7
448C84:  ADD             R0, R1; this
448C86:  MOVS            R1, #8; int
448C88:  POP.W           {R11}
448C8C:  POP.W           {R4-R7,LR}
448C90:  B.W             j_j__ZN10CStreaming12RequestModelEii; j_CStreaming::RequestModel(int,int)
