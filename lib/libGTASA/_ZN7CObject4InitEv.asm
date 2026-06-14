; =========================================================
; Game Engine Function: _ZN7CObject4InitEv
; Address            : 0x452C48 - 0x452F46
; =========================================================

452C48:  PUSH            {R4-R7,LR}
452C4A:  ADD             R7, SP, #0xC
452C4C:  PUSH.W          {R11}
452C50:  MOV             R4, R0
452C52:  LDR             R0, =(_ZN11CObjectData14ms_aObjectInfoE_ptr - 0x452C60)
452C54:  MOVS            R1, #0
452C56:  MOVS            R2, #1
452C58:  STRB.W          R1, [R4,#0x148]
452C5C:  ADD             R0, PC; _ZN11CObjectData14ms_aObjectInfoE_ptr
452C5E:  STRB.W          R1, [R4,#0x149]
452C62:  LDRB.W          R1, [R4,#0x3A]
452C66:  STRB.W          R2, [R4,#0x140]
452C6A:  LDR             R2, [R4]
452C6C:  AND.W           R1, R1, #0xF8
452C70:  LDR             R0, [R0]; CObjectData::ms_aObjectInfo ...
452C72:  ORR.W           R1, R1, #4
452C76:  STRB.W          R1, [R4,#0x3A]
452C7A:  MOVS            R1, #1
452C7C:  STR.W           R0, [R4,#0x164]
452C80:  MOV             R0, R4
452C82:  LDR             R2, [R2,#0x14]
452C84:  BLX             R2
452C86:  LDR.W           R1, [R4,#0x144]
452C8A:  MOV.W           R2, #0x40000
452C8E:  LDRSH.W         R0, [R4,#0x26]; this
452C92:  MOVW            R5, #0xFFFF
452C96:  BFI.W           R1, R2, #0, #0x1A
452C9A:  STR.W           R1, [R4,#0x144]
452C9E:  ADDS            R2, R0, #1; CObject *
452CA0:  BNE             loc_452CA8
452CA2:  STR.W           R1, [R4,#0x144]
452CA6:  B               loc_452D34
452CA8:  MOV             R1, R4; int
452CAA:  BLX             j__ZN11CObjectData13SetObjectDataEiR7CObject; CObjectData::SetObjectData(int,CObject &)
452CAE:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x452CB8)
452CB0:  LDRSH.W         R1, [R4,#0x26]
452CB4:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
452CB6:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
452CB8:  LDR.W           R0, [R0,R1,LSL#2]
452CBC:  LDR             R6, [R0,#0x2C]
452CBE:  LDRB.W          R1, [R6,#0x29]
452CC2:  LSLS            R1, R1, #0x1F; int
452CC4:  BEQ             loc_452CE8
452CC6:  LDRB.W          R0, [R6,#0x28]; this
452CCA:  BLX             j__ZN9CColStore6AddRefEi; CColStore::AddRef(int)
452CCE:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x452CD8)
452CD0:  LDR.W           R2, [R4,#0x144]
452CD4:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
452CD6:  LDRSH.W         R1, [R4,#0x26]
452CDA:  ORR.W           R2, R2, #0x10000
452CDE:  STR.W           R2, [R4,#0x144]
452CE2:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
452CE4:  LDR.W           R0, [R0,R1,LSL#2]
452CE8:  LDR             R1, [R0]
452CEA:  LDR             R1, [R1,#8]
452CEC:  BLX             R1
452CEE:  CBZ             R0, loc_452D34
452CF0:  LDRH            R0, [R0,#0x28]
452CF2:  MOVS            R2, #0
452CF4:  MOVS            R1, #0
452CF6:  AND.W           R0, R0, #0x7800
452CFA:  CMP.W           R0, #0x800
452CFE:  IT NE
452D00:  MOVNE           R2, #1
452D02:  CMP.W           R0, #0x1000
452D06:  IT EQ
452D08:  MOVEQ           R1, #1
452D0A:  TEQ.W           R1, R2
452D0E:  BNE             loc_452D34
452D10:  LDRB.W          R0, [R4,#0x44]
452D14:  LSLS            R0, R0, #0x1D
452D16:  BMI             loc_452D34
452D18:  VLDR            S0, [R6,#8]
452D1C:  VLDR            S2, [R6,#0x14]
452D20:  VLDR            S4, =0.2
452D24:  VSUB.F32        S2, S2, S0
452D28:  VMUL.F32        S2, S2, S4
452D2C:  VADD.F32        S0, S0, S2
452D30:  VSTR            S0, [R4,#0xB0]
452D34:  LDRB.W          R0, [R4,#0x44]
452D38:  LSLS            R0, R0, #0x1A
452D3A:  BPL             loc_452D4C
452D3C:  MOV             R0, R4; this
452D3E:  BLX             j__ZN7CEntity11GetColModelEv; CEntity::GetColModel(void)
452D42:  LDR             R0, [R0,#0x2C]
452D44:  CMP             R0, #0
452D46:  ITT NE
452D48:  MOVNE           R1, #0
452D4A:  STRHNE          R1, [R0]
452D4C:  LDR             R0, =(MI_BUOY_ptr - 0x452D5C)
452D4E:  MOVW            R1, #0x4000
452D52:  MOVS            R2, #0
452D54:  MOVT            R1, #0xC47A
452D58:  ADD             R0, PC; MI_BUOY_ptr
452D5A:  MOVT            R2, #0x447A
452D5E:  MOVS            R3, #0
452D60:  LDR             R0, [R0]; MI_BUOY
452D62:  STRD.W          R3, R2, [R4,#0x154]
452D66:  MOVS            R2, #0xFF
452D68:  STR.W           R1, [R4,#0x15C]
452D6C:  STRB.W          R3, [R4,#0x141]
452D70:  STRH.W          R3, [R4,#0x142]
452D74:  STRB.W          R3, [R4,#0x151]
452D78:  STRB.W          R3, [R4,#0x150]
452D7C:  STRH.W          R5, [R4,#0x14E]
452D80:  LDRH            R1, [R4,#0x26]
452D82:  STRB.W          R2, [R4,#0x14B]
452D86:  STRB.W          R2, [R4,#0x14C]
452D8A:  STR.W           R3, [R4,#0x168]
452D8E:  LDRH            R2, [R0]
452D90:  SXTH            R0, R1
452D92:  CMP             R0, R2
452D94:  ITTT EQ
452D96:  LDREQ           R2, [R4,#0x44]
452D98:  ORREQ.W         R2, R2, #0x8000000
452D9C:  STREQ           R2, [R4,#0x44]
452D9E:  CMP             R1, R5
452DA0:  BEQ             loc_452DBE
452DA2:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x452DA8)
452DA4:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
452DA6:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
452DA8:  LDR.W           R0, [R1,R0,LSL#2]
452DAC:  LDR             R1, [R0]
452DAE:  LDR             R1, [R1,#0x14]
452DB0:  BLX             R1
452DB2:  CMP             R0, #4
452DB4:  ITTT EQ
452DB6:  LDREQ           R0, [R4,#0x1C]
452DB8:  ORREQ.W         R0, R0, #0x10000000
452DBC:  STREQ           R0, [R4,#0x1C]
452DBE:  LDR             R1, =(MI_TRAFFICLIGHTS_MIAMI_ptr - 0x452DC8)
452DC0:  LDRSH.W         R0, [R4,#0x26]
452DC4:  ADD             R1, PC; MI_TRAFFICLIGHTS_MIAMI_ptr
452DC6:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_MIAMI
452DC8:  LDRH            R1, [R1]
452DCA:  CMP             R0, R1
452DCC:  BEQ             loc_452E22
452DCE:  LDR             R1, =(MI_MLAMPPOST_ptr - 0x452DD4)
452DD0:  ADD             R1, PC; MI_MLAMPPOST_ptr
452DD2:  LDR             R1, [R1]; MI_MLAMPPOST
452DD4:  LDRH            R1, [R1]
452DD6:  CMP             R0, R1
452DD8:  BEQ             loc_452E22
452DDA:  LDR             R1, =(MI_SINGLESTREETLIGHTS1_ptr - 0x452DE0)
452DDC:  ADD             R1, PC; MI_SINGLESTREETLIGHTS1_ptr
452DDE:  LDR             R1, [R1]; MI_SINGLESTREETLIGHTS1
452DE0:  LDRH            R1, [R1]
452DE2:  CMP             R0, R1
452DE4:  BEQ             loc_452E22
452DE6:  LDR             R1, =(MI_SINGLESTREETLIGHTS2_ptr - 0x452DEC)
452DE8:  ADD             R1, PC; MI_SINGLESTREETLIGHTS2_ptr
452DEA:  LDR             R1, [R1]; MI_SINGLESTREETLIGHTS2
452DEC:  LDRH            R1, [R1]
452DEE:  CMP             R0, R1
452DF0:  BEQ             loc_452E22
452DF2:  LDR             R1, =(MI_SINGLESTREETLIGHTS3_ptr - 0x452DF8)
452DF4:  ADD             R1, PC; MI_SINGLESTREETLIGHTS3_ptr
452DF6:  LDR             R1, [R1]; MI_SINGLESTREETLIGHTS3
452DF8:  LDRH            R1, [R1]
452DFA:  CMP             R0, R1
452DFC:  BEQ             loc_452E22
452DFE:  LDR             R1, =(MI_DOUBLESTREETLIGHTS_ptr - 0x452E04)
452E00:  ADD             R1, PC; MI_DOUBLESTREETLIGHTS_ptr
452E02:  LDR             R1, [R1]; MI_DOUBLESTREETLIGHTS
452E04:  LDRH            R1, [R1]
452E06:  CMP             R0, R1
452E08:  BEQ             loc_452E22
452E0A:  LDR             R1, =(MI_TRAFFICLIGHTS_TWOVERTICAL_ptr - 0x452E10)
452E0C:  ADD             R1, PC; MI_TRAFFICLIGHTS_TWOVERTICAL_ptr
452E0E:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_TWOVERTICAL
452E10:  LDRH            R1, [R1]
452E12:  CMP             R0, R1
452E14:  BEQ             loc_452E22
452E16:  LDR             R1, =(MI_TRAFFICLIGHTS_VEGAS_ptr - 0x452E1C)
452E18:  ADD             R1, PC; MI_TRAFFICLIGHTS_VEGAS_ptr
452E1A:  LDR             R1, [R1]; MI_TRAFFICLIGHTS_VEGAS
452E1C:  LDRH            R1, [R1]
452E1E:  CMP             R0, R1
452E20:  BNE             loc_452EEE
452E22:  LDR.W           R0, [R4,#0x144]
452E26:  ORR.W           R0, R0, #0x100
452E2A:  LDR             R1, =(MI_SAMSITE_ptr - 0x452E3A)
452E2C:  BIC.W           R0, R0, #0x200
452E30:  STR.W           R0, [R4,#0x144]
452E34:  MOVS            R0, #0xD
452E36:  ADD             R1, PC; MI_SAMSITE_ptr
452E38:  STRB.W          R0, [R4,#0x33]
452E3C:  LDR             R2, [R4,#0x44]
452E3E:  MOVS            R6, #0
452E40:  LDR             R1, [R1]; MI_SAMSITE
452E42:  STRD.W          R6, R6, [R4,#0x170]
452E46:  BIC.W           R2, R2, #0x2000000
452E4A:  STR.W           R6, [R4,#0x13C]
452E4E:  LDRSH.W         R0, [R4,#0x26]; this
452E52:  STR             R2, [R4,#0x44]
452E54:  LDRH            R1, [R1]
452E56:  CMP             R0, R1
452E58:  BEQ             loc_452EAA
452E5A:  LDR             R1, =(MI_SAMSITE2_ptr - 0x452E60)
452E5C:  ADD             R1, PC; MI_SAMSITE2_ptr
452E5E:  LDR             R1, [R1]; MI_SAMSITE2
452E60:  LDRH            R1, [R1]
452E62:  CMP             R0, R1
452E64:  BEQ             loc_452EAA
452E66:  LDR             R1, =(MI_TRAINCROSSING_ptr - 0x452E6C)
452E68:  ADD             R1, PC; MI_TRAINCROSSING_ptr
452E6A:  LDR             R1, [R1]; MI_TRAINCROSSING
452E6C:  LDRH            R1, [R1]
452E6E:  CMP             R0, R1
452E70:  BEQ             loc_452EAA
452E72:  LDR             R1, =(MI_TRAINCROSSING1_ptr - 0x452E78)
452E74:  ADD             R1, PC; MI_TRAINCROSSING1_ptr
452E76:  LDR             R1, [R1]; MI_TRAINCROSSING1
452E78:  LDRH            R1, [R1]
452E7A:  CMP             R0, R1
452E7C:  BEQ             loc_452EAA
452E7E:  LDR             R1, =(MI_MAGNOCRANE_ptr - 0x452E84)
452E80:  ADD             R1, PC; MI_MAGNOCRANE_ptr
452E82:  LDR             R1, [R1]; MI_MAGNOCRANE
452E84:  LDRH            R1, [R1]
452E86:  CMP             R0, R1
452E88:  BEQ             loc_452EAA
452E8A:  LDR             R1, =(MI_CRANETROLLEY_ptr - 0x452E90)
452E8C:  ADD             R1, PC; MI_CRANETROLLEY_ptr
452E8E:  LDR             R1, [R1]; MI_CRANETROLLEY
452E90:  LDRH            R1, [R1]
452E92:  CMP             R0, R1
452E94:  BEQ             loc_452EAA
452E96:  LDR             R1, =(MI_QUARRYCRANE_ARM_ptr - 0x452E9C)
452E98:  ADD             R1, PC; MI_QUARRYCRANE_ARM_ptr
452E9A:  LDR             R1, [R1]; MI_QUARRYCRANE_ARM
452E9C:  LDRH            R1, [R1]; int
452E9E:  CMP             R0, R1
452EA0:  BEQ             loc_452EAA
452EA2:  BLX             j__ZN8CGarages17IsModelIndexADoorEi; CGarages::IsModelIndexADoor(int)
452EA6:  CMP             R0, #1
452EA8:  BNE             loc_452ED0
452EAA:  MOVS            R0, #(byte_9+3); this
452EAC:  BLX             j__ZN18CPtrNodeDoubleLinknwEj; CPtrNodeDoubleLink::operator new(uint)
452EB0:  LDR             R1, =(_ZN6CWorld29ms_listObjectsWithControlCodeE_ptr - 0x452EB8)
452EB2:  STR             R4, [R0]
452EB4:  ADD             R1, PC; _ZN6CWorld29ms_listObjectsWithControlCodeE_ptr
452EB6:  STR.W           R0, [R4,#0x13C]
452EBA:  STR             R6, [R0,#8]
452EBC:  LDR             R1, [R1]; CWorld::ms_listObjectsWithControlCode ...
452EBE:  LDR             R1, [R1]; CWorld::ms_listObjectsWithControlCode
452EC0:  STR             R1, [R0,#4]
452EC2:  CMP             R1, #0
452EC4:  IT NE
452EC6:  STRNE           R0, [R1,#8]
452EC8:  LDR             R1, =(_ZN6CWorld29ms_listObjectsWithControlCodeE_ptr - 0x452ECE)
452ECA:  ADD             R1, PC; _ZN6CWorld29ms_listObjectsWithControlCodeE_ptr
452ECC:  LDR             R1, [R1]; CWorld::ms_listObjectsWithControlCode ...
452ECE:  STR             R0, [R1]; CWorld::ms_listObjectsWithControlCode
452ED0:  MOV.W           R0, #0x3F800000
452ED4:  STR.W           R0, [R4,#0x160]
452ED8:  MOVS            R0, #0
452EDA:  STR.W           R0, [R4,#0x17C]
452EDE:  MOVS            R0, #0x48 ; 'H'
452EE0:  STRB.W          R0, [R4,#0x14D]
452EE4:  STRH.W          R5, [R4,#0x16C]
452EE8:  POP.W           {R11}
452EEC:  POP             {R4-R7,PC}
452EEE:  UXTH            R1, R0
452EF0:  CMP             R1, R5
452EF2:  BEQ             loc_452F3C
452EF4:  LDR             R1, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x452EFA)
452EF6:  ADD             R1, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
452EF8:  LDR             R1, [R1]; CModelInfo::ms_modelInfoPtrs ...
452EFA:  LDR.W           R0, [R1,R0,LSL#2]
452EFE:  LDR             R1, [R0]
452F00:  LDR             R1, [R1,#8]
452F02:  BLX             R1
452F04:  CBZ             R0, loc_452F3C
452F06:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x452F10)
452F08:  LDRSH.W         R1, [R4,#0x26]
452F0C:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
452F0E:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
452F10:  LDR.W           R0, [R0,R1,LSL#2]
452F14:  LDR             R1, [R0]
452F16:  LDR             R1, [R1,#8]
452F18:  BLX             R1
452F1A:  LDRH            R0, [R0,#0x28]
452F1C:  MOVS            R2, #0
452F1E:  MOVS            R1, #0
452F20:  AND.W           R0, R0, #0x7800
452F24:  CMP.W           R0, #0x800
452F28:  IT NE
452F2A:  MOVNE           R2, #1
452F2C:  CMP.W           R0, #0x1000
452F30:  IT EQ
452F32:  MOVEQ           R1, #1
452F34:  TEQ.W           R1, R2
452F38:  BEQ.W           loc_452E22
452F3C:  LDR.W           R0, [R4,#0x144]
452F40:  BIC.W           R0, R0, #0x100
452F44:  B               loc_452E2A
