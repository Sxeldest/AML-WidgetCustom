; =========================================================
; Game Engine Function: _ZN6CPools15SaveVehiclePoolEv
; Address            : 0x487AAC - 0x488132
; =========================================================

487AAC:  PUSH            {R4-R7,LR}
487AAE:  ADD             R7, SP, #0xC
487AB0:  PUSH.W          {R8-R11}
487AB4:  SUB             SP, SP, #0x1C
487AB6:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x487ABE)
487ABA:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
487ABC:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
487ABE:  LDR             R0, [R0]; CPools::ms_pVehiclePool
487AC0:  LDR.W           R9, [R0,#8]
487AC4:  CMP.W           R9, #0
487AC8:  BEQ.W           loc_487E8E
487ACC:  LDR.W           R1, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x487ADC)
487AD0:  MOVS            R4, #0
487AD2:  MOVW            R10, #0xA2C
487AD6:  MOVS            R6, #0
487AD8:  ADD             R1, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
487ADA:  LDR             R5, [R1]; CPools::ms_pVehiclePool ...
487ADC:  LDR.W           R1, =(IsMissionSave_ptr - 0x487AE4)
487AE0:  ADD             R1, PC; IsMissionSave_ptr
487AE2:  LDR             R1, [R1]; IsMissionSave
487AE4:  STR             R1, [SP,#0x38+var_2C]
487AE6:  LDR.W           R1, =(IsMissionSave_ptr - 0x487AEE)
487AEA:  ADD             R1, PC; IsMissionSave_ptr
487AEC:  LDR             R1, [R1]; IsMissionSave
487AEE:  STR             R1, [SP,#0x38+var_20]
487AF0:  LDR.W           R1, =(IsMissionSave_ptr - 0x487AF8)
487AF4:  ADD             R1, PC; IsMissionSave_ptr
487AF6:  LDR             R1, [R1]; IsMissionSave
487AF8:  STR             R1, [SP,#0x38+var_28]
487AFA:  LDR.W           R1, =(IsMissionSave_ptr - 0x487B02)
487AFE:  ADD             R1, PC; IsMissionSave_ptr
487B00:  LDR.W           R8, [R1]; IsMissionSave
487B04:  B               loc_487B3A
487B06:  LDR.W           R0, [R11,#0x464]; this
487B0A:  CMP             R0, #0
487B0C:  MOV             R2, R0
487B0E:  IT NE
487B10:  MOVNE           R2, #1
487B12:  ORRS            R1, R2
487B14:  LSLS            R1, R1, #0x1F
487B16:  BEQ             loc_487B24
487B18:  CBZ             R0, loc_487B28
487B1A:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
487B1E:  LDR             R1, [SP,#0x38+var_20]
487B20:  LDRB            R1, [R1]
487B22:  CBZ             R1, loc_487B2C
487B24:  ADDS            R6, #1
487B26:  B               loc_487B32
487B28:  LDR             R0, [SP,#0x38+var_2C]
487B2A:  LDRB            R0, [R0]
487B2C:  CMP             R0, #0
487B2E:  IT NE
487B30:  ADDNE           R6, #1
487B32:  ADDS            R4, #1
487B34:  CMP             R4, R9
487B36:  BEQ             loc_487B96
487B38:  LDR             R0, [R5]; CPools::ms_pVehiclePool
487B3A:  LDR             R1, [R0,#4]
487B3C:  LDRSB           R1, [R1,R4]
487B3E:  CMP             R1, #0
487B40:  BLT             loc_487B32
487B42:  LDR             R0, [R0]
487B44:  MLA.W           R11, R4, R10, R0
487B48:  CMP.W           R11, #0
487B4C:  BEQ             loc_487B32
487B4E:  LDRB.W          R0, [R11,#0x4A8]
487B52:  CMP             R0, #2
487B54:  BEQ             loc_487B74
487B56:  LDR.W           R0, [R11,#0x464]; this
487B5A:  CBZ             R0, loc_487B6C
487B5C:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
487B60:  LDRB.W          R1, [R8]
487B64:  CBNZ            R1, loc_487B74
487B66:  CMP             R0, #0
487B68:  BEQ             loc_487B32
487B6A:  B               loc_487B74
487B6C:  LDR             R0, [SP,#0x38+var_28]
487B6E:  LDRB            R0, [R0]
487B70:  CMP             R0, #0
487B72:  BEQ             loc_487B32
487B74:  ADD.W           R0, R11, #0x468
487B78:  MOVS            R2, #0
487B7A:  MOVS            R1, #0
487B7C:  LDR.W           R3, [R0,R2,LSL#2]
487B80:  CMP             R3, #0
487B82:  IT NE
487B84:  MOVNE           R3, #1
487B86:  CMP             R2, #6
487B88:  ORR.W           R1, R1, R3
487B8C:  BGT             loc_487B06
487B8E:  ADDS            R2, #1
487B90:  LSLS            R3, R1, #0x1F
487B92:  BEQ             loc_487B7C
487B94:  B               loc_487B06
487B96:  MOVS            R0, #4; byte_count
487B98:  BLX             malloc
487B9C:  MOV             R4, R0
487B9E:  MOVS            R1, #byte_4; void *
487BA0:  STR             R6, [R4]
487BA2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
487BA6:  MOV             R0, R4; p
487BA8:  BLX             free
487BAC:  CMP.W           R9, #0
487BB0:  BEQ.W           loc_487EA8
487BB4:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x487BC2)
487BB8:  MOVS            R5, #0
487BBA:  MOVW            R11, #0xA2C
487BBE:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
487BC0:  LDR.W           R8, [R0]; CPools::ms_pVehiclePool ...
487BC4:  LDR.W           R0, =(IsMissionSave_ptr - 0x487BCC)
487BC8:  ADD             R0, PC; IsMissionSave_ptr
487BCA:  LDR             R0, [R0]; IsMissionSave
487BCC:  STR             R0, [SP,#0x38+var_38]
487BCE:  LDR.W           R0, =(IsMissionSave_ptr - 0x487BD6)
487BD2:  ADD             R0, PC; IsMissionSave_ptr
487BD4:  LDR             R0, [R0]; IsMissionSave
487BD6:  STR             R0, [SP,#0x38+var_2C]
487BD8:  LDR.W           R0, =(_ZN6CTrain20bDisableRandomTrainsE_ptr - 0x487BE0)
487BDC:  ADD             R0, PC; _ZN6CTrain20bDisableRandomTrainsE_ptr
487BDE:  LDR             R0, [R0]; CTrain::bDisableRandomTrains ...
487BE0:  STR             R0, [SP,#0x38+var_34]
487BE2:  LDR.W           R0, =(IsMissionSave_ptr - 0x487BEA)
487BE6:  ADD             R0, PC; IsMissionSave_ptr
487BE8:  LDR             R0, [R0]; IsMissionSave
487BEA:  STR             R0, [SP,#0x38+var_30]
487BEC:  LDR.W           R0, =(IsMissionSave_ptr - 0x487BF4)
487BF0:  ADD             R0, PC; IsMissionSave_ptr
487BF2:  LDR             R0, [R0]; IsMissionSave
487BF4:  STRD.W          R0, R9, [SP,#0x38+var_28]
487BF8:  LDR.W           R0, [R8]; CPools::ms_pVehiclePool
487BFC:  LDR             R1, [R0,#4]
487BFE:  LDRSB           R1, [R1,R5]
487C00:  CMP             R1, #0
487C02:  BLT.W           loc_487E84
487C06:  LDR             R0, [R0]
487C08:  MLA.W           R10, R5, R11, R0
487C0C:  CMP.W           R10, #0
487C10:  BEQ.W           loc_487E84
487C14:  LDRB.W          R0, [R10,#0x4A8]
487C18:  CMP             R0, #2
487C1A:  BEQ             loc_487C3E
487C1C:  LDR.W           R0, [R10,#0x464]; this
487C20:  CBZ             R0, loc_487C34
487C22:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
487C26:  LDR             R1, [SP,#0x38+var_28]
487C28:  LDRB            R1, [R1]
487C2A:  CBNZ            R1, loc_487C3E
487C2C:  CMP             R0, #0
487C2E:  BEQ.W           loc_487E84
487C32:  B               loc_487C3E
487C34:  LDR             R0, [SP,#0x38+var_30]
487C36:  LDRB            R0, [R0]
487C38:  CMP             R0, #0
487C3A:  BEQ.W           loc_487E84
487C3E:  ADD.W           R4, R10, #0x4A8
487C42:  ADD.W           R0, R10, #0x468
487C46:  MOVS            R2, #0
487C48:  MOVS            R1, #0
487C4A:  LDR.W           R3, [R0,R2,LSL#2]
487C4E:  CMP             R3, #0
487C50:  IT NE
487C52:  MOVNE           R3, #1
487C54:  CMP             R2, #6
487C56:  ORR.W           R1, R1, R3
487C5A:  BGT             loc_487C62
487C5C:  ADDS            R2, #1
487C5E:  LSLS            R3, R1, #0x1F
487C60:  BEQ             loc_487C4A
487C62:  LDR.W           R0, [R10,#0x464]; this
487C66:  CMP             R0, #0
487C68:  MOV             R2, R0
487C6A:  IT NE
487C6C:  MOVNE           R2, #1
487C6E:  ORRS            R1, R2
487C70:  LSLS            R1, R1, #0x1F; CVehicle *
487C72:  BEQ             loc_487C92
487C74:  CBZ             R0, loc_487C88
487C76:  BLX             j__ZNK4CPed8IsPlayerEv; CPed::IsPlayer(void)
487C7A:  LDR             R1, [SP,#0x38+var_2C]
487C7C:  LDRB            R1, [R1]
487C7E:  CBNZ            R1, loc_487C92
487C80:  CMP             R0, #0
487C82:  BEQ.W           loc_487E84
487C86:  B               loc_487C92
487C88:  LDR             R0, [SP,#0x38+var_38]
487C8A:  LDRB            R0, [R0]
487C8C:  CMP             R0, #0
487C8E:  BEQ.W           loc_487E84
487C92:  MOV             R0, R10; this
487C94:  STR             R4, [SP,#0x38+var_20]
487C96:  MOV             R9, R8
487C98:  ADDW            R11, R10, #0x464
487C9C:  BLX             j__ZN6CPools13GetVehicleRefEP8CVehicle; CPools::GetVehicleRef(CVehicle *)
487CA0:  MOV             R6, R0
487CA2:  MOVS            R0, #4; byte_count
487CA4:  LDRSH.W         R8, [R10,#0x26]
487CA8:  BLX             malloc
487CAC:  MOV             R4, R0
487CAE:  MOVS            R1, #byte_4; void *
487CB0:  STR             R6, [R4]
487CB2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
487CB6:  MOV             R0, R4; p
487CB8:  BLX             free
487CBC:  MOVS            R0, #4; byte_count
487CBE:  BLX             malloc
487CC2:  MOV             R4, R0
487CC4:  MOVS            R1, #byte_4; void *
487CC6:  STR.W           R8, [R4]
487CCA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
487CCE:  MOV             R0, R4; p
487CD0:  BLX             free
487CD4:  LDR.W           R0, [R10]
487CD8:  LDR.W           R1, [R0,#0x104]
487CDC:  MOV             R0, R10
487CDE:  BLX             R1
487CE0:  LDR.W           R0, [R10,#0x5A4]
487CE4:  CMP             R0, #6
487CE6:  BNE             loc_487D12
487CE8:  MOVS            R0, #2; byte_count
487CEA:  LDRH.W          R6, [R10,#0x5CC]
487CEE:  BLX             malloc
487CF2:  MOV             R4, R0
487CF4:  MOVS            R1, #(stderr+2); void *
487CF6:  STRH            R6, [R4]
487CF8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
487CFC:  MOV             R0, R4; p
487CFE:  BLX             free
487D02:  LDR             R0, [SP,#0x38+var_20]
487D04:  LDRB            R0, [R0]
487D06:  CMP             R0, #2
487D08:  BNE             loc_487D12
487D0A:  LDR             R0, [SP,#0x38+var_34]; this
487D0C:  MOVS            R1, #(stderr+1); void *
487D0E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
487D12:  LDR.W           R0, [R11]; this
487D16:  CBZ             R0, loc_487D20
487D18:  BLX             j__ZN6CPools9GetPedRefEP4CPed; CPools::GetPedRef(CPed *)
487D1C:  MOV             R6, R0
487D1E:  B               loc_487D24
487D20:  MOV.W           R6, #0xFFFFFFFF
487D24:  MOVS            R0, #4; byte_count
487D26:  MOV             R8, R9
487D28:  LDR.W           R9, [SP,#0x38+var_24]
487D2C:  MOVW            R11, #0xA2C
487D30:  BLX             malloc
487D34:  MOV             R4, R0
487D36:  MOVS            R1, #byte_4; void *
487D38:  STR             R6, [R4]
487D3A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
487D3E:  MOV             R0, R4; p
487D40:  BLX             free
487D44:  LDR.W           R0, [R10,#0x468]; this
487D48:  CBZ             R0, loc_487D52
487D4A:  BLX             j__ZN6CPools9GetPedRefEP4CPed; CPools::GetPedRef(CPed *)
487D4E:  MOV             R6, R0
487D50:  B               loc_487D56
487D52:  MOV.W           R6, #0xFFFFFFFF
487D56:  MOVS            R0, #4; byte_count
487D58:  BLX             malloc
487D5C:  MOV             R4, R0
487D5E:  MOVS            R1, #byte_4; void *
487D60:  STR             R6, [R4]
487D62:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
487D66:  MOV             R0, R4; p
487D68:  BLX             free
487D6C:  LDR.W           R0, [R10,#0x46C]; this
487D70:  CBZ             R0, loc_487D7A
487D72:  BLX             j__ZN6CPools9GetPedRefEP4CPed; CPools::GetPedRef(CPed *)
487D76:  MOV             R6, R0
487D78:  B               loc_487D7E
487D7A:  MOV.W           R6, #0xFFFFFFFF
487D7E:  MOVS            R0, #4; byte_count
487D80:  BLX             malloc
487D84:  MOV             R4, R0
487D86:  MOVS            R1, #byte_4; void *
487D88:  STR             R6, [R4]
487D8A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
487D8E:  MOV             R0, R4; p
487D90:  BLX             free
487D94:  LDR.W           R0, [R10,#0x470]; this
487D98:  CBZ             R0, loc_487DA2
487D9A:  BLX             j__ZN6CPools9GetPedRefEP4CPed; CPools::GetPedRef(CPed *)
487D9E:  MOV             R6, R0
487DA0:  B               loc_487DA6
487DA2:  MOV.W           R6, #0xFFFFFFFF
487DA6:  MOVS            R0, #4; byte_count
487DA8:  BLX             malloc
487DAC:  MOV             R4, R0
487DAE:  MOVS            R1, #byte_4; void *
487DB0:  STR             R6, [R4]
487DB2:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
487DB6:  MOV             R0, R4; p
487DB8:  BLX             free
487DBC:  LDR.W           R0, [R10,#0x474]; this
487DC0:  CBZ             R0, loc_487DCA
487DC2:  BLX             j__ZN6CPools9GetPedRefEP4CPed; CPools::GetPedRef(CPed *)
487DC6:  MOV             R6, R0
487DC8:  B               loc_487DCE
487DCA:  MOV.W           R6, #0xFFFFFFFF
487DCE:  MOVS            R0, #4; byte_count
487DD0:  BLX             malloc
487DD4:  MOV             R4, R0
487DD6:  MOVS            R1, #byte_4; void *
487DD8:  STR             R6, [R4]
487DDA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
487DDE:  MOV             R0, R4; p
487DE0:  BLX             free
487DE4:  LDR.W           R0, [R10,#0x478]; this
487DE8:  CBZ             R0, loc_487DF2
487DEA:  BLX             j__ZN6CPools9GetPedRefEP4CPed; CPools::GetPedRef(CPed *)
487DEE:  MOV             R6, R0
487DF0:  B               loc_487DF6
487DF2:  MOV.W           R6, #0xFFFFFFFF
487DF6:  MOVS            R0, #4; byte_count
487DF8:  BLX             malloc
487DFC:  MOV             R4, R0
487DFE:  MOVS            R1, #byte_4; void *
487E00:  STR             R6, [R4]
487E02:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
487E06:  MOV             R0, R4; p
487E08:  BLX             free
487E0C:  LDR.W           R0, [R10,#0x47C]; this
487E10:  CBZ             R0, loc_487E1A
487E12:  BLX             j__ZN6CPools9GetPedRefEP4CPed; CPools::GetPedRef(CPed *)
487E16:  MOV             R6, R0
487E18:  B               loc_487E1E
487E1A:  MOV.W           R6, #0xFFFFFFFF
487E1E:  MOVS            R0, #4; byte_count
487E20:  BLX             malloc
487E24:  MOV             R4, R0
487E26:  MOVS            R1, #byte_4; void *
487E28:  STR             R6, [R4]
487E2A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
487E2E:  MOV             R0, R4; p
487E30:  BLX             free
487E34:  LDR.W           R0, [R10,#0x480]; this
487E38:  CBZ             R0, loc_487E42
487E3A:  BLX             j__ZN6CPools9GetPedRefEP4CPed; CPools::GetPedRef(CPed *)
487E3E:  MOV             R6, R0
487E40:  B               loc_487E46
487E42:  MOV.W           R6, #0xFFFFFFFF
487E46:  MOVS            R0, #4; byte_count
487E48:  BLX             malloc
487E4C:  MOV             R4, R0
487E4E:  MOVS            R1, #byte_4; void *
487E50:  STR             R6, [R4]
487E52:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
487E56:  MOV             R0, R4; p
487E58:  BLX             free
487E5C:  LDR.W           R0, [R10,#0x484]; this
487E60:  CBZ             R0, loc_487E6A
487E62:  BLX             j__ZN6CPools9GetPedRefEP4CPed; CPools::GetPedRef(CPed *)
487E66:  MOV             R6, R0
487E68:  B               loc_487E6E
487E6A:  MOV.W           R6, #0xFFFFFFFF
487E6E:  MOVS            R0, #4; byte_count
487E70:  BLX             malloc
487E74:  MOV             R4, R0
487E76:  MOVS            R1, #byte_4; void *
487E78:  STR             R6, [R4]
487E7A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
487E7E:  MOV             R0, R4; p
487E80:  BLX             free
487E84:  ADDS            R5, #1
487E86:  CMP             R5, R9
487E88:  BNE.W           loc_487BF8
487E8C:  B               loc_487EA8
487E8E:  MOVS            R0, #4; byte_count
487E90:  BLX             malloc
487E94:  MOV             R4, R0
487E96:  MOVS            R0, #0
487E98:  STR             R0, [R4]
487E9A:  MOV             R0, R4; this
487E9C:  MOVS            R1, #byte_4; void *
487E9E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
487EA2:  MOV             R0, R4; p
487EA4:  BLX             free
487EA8:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x487EAE)
487EAA:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
487EAC:  LDR             R0, [R0]; CWorld::Players ...
487EAE:  LDR.W           R0, [R0,#(dword_96B74C - 0x96B69C)]; this
487EB2:  CBZ             R0, loc_487EBC
487EB4:  BLX             j__ZN6CPools13GetVehicleRefEP8CVehicle; CPools::GetVehicleRef(CVehicle *)
487EB8:  MOV             R8, R0
487EBA:  B               loc_487EC0
487EBC:  MOV.W           R8, #0xFFFFFFFF
487EC0:  LDR             R0, =(UseDataFence_ptr - 0x487EC6)
487EC2:  ADD             R0, PC; UseDataFence_ptr
487EC4:  LDR             R0, [R0]; UseDataFence
487EC6:  LDRB            R6, [R0]
487EC8:  CBZ             R6, loc_487F08
487ECA:  LDR             R0, =(currentSaveFenceCount_ptr - 0x487ED6)
487ECC:  MOVS            R3, #0
487ECE:  LDR             R1, =(UseDataFence_ptr - 0x487ED8)
487ED0:  LDR             R2, =(DataFence_ptr - 0x487EDA)
487ED2:  ADD             R0, PC; currentSaveFenceCount_ptr
487ED4:  ADD             R1, PC; UseDataFence_ptr
487ED6:  ADD             R2, PC; DataFence_ptr
487ED8:  LDR             R0, [R0]; currentSaveFenceCount
487EDA:  LDR.W           R9, [R1]; UseDataFence
487EDE:  LDR             R1, [R2]; DataFence
487EE0:  LDR             R2, [R0]
487EE2:  STRB.W          R3, [R9]
487EE6:  LDRH            R1, [R1]
487EE8:  ADDS            R3, R2, #1
487EEA:  STR             R3, [R0]
487EEC:  MOVS            R0, #2; byte_count
487EEE:  ADDS            R4, R2, R1
487EF0:  BLX             malloc
487EF4:  MOV             R5, R0
487EF6:  MOVS            R1, #(stderr+2); void *
487EF8:  STRH            R4, [R5]
487EFA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
487EFE:  MOV             R0, R5; p
487F00:  BLX             free
487F04:  STRB.W          R6, [R9]
487F08:  MOVS            R0, #4; byte_count
487F0A:  BLX             malloc
487F0E:  MOV             R5, R0
487F10:  MOVS            R1, #byte_4; void *
487F12:  STR.W           R8, [R5]
487F16:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
487F1A:  MOV             R0, R5; p
487F1C:  BLX             free
487F20:  LDR             R0, =(TheCamera_ptr - 0x487F26)
487F22:  ADD             R0, PC; TheCamera_ptr
487F24:  LDR             R0, [R0]; TheCamera
487F26:  LDR.W           R0, [R0,#(dword_952884 - 0x951FA8)]
487F2A:  CMP             R0, #0
487F2C:  BEQ.W           loc_488046
487F30:  LDR             R1, =(UseDataFence_ptr - 0x487F3A)
487F32:  LDRB.W          R0, [R0,#0x3A]
487F36:  ADD             R1, PC; UseDataFence_ptr
487F38:  AND.W           R8, R0, #7
487F3C:  LDR             R1, [R1]; UseDataFence
487F3E:  LDRB            R6, [R1]
487F40:  CBZ             R6, loc_487F80
487F42:  LDR             R0, =(currentSaveFenceCount_ptr - 0x487F4E)
487F44:  MOVS            R3, #0
487F46:  LDR             R1, =(UseDataFence_ptr - 0x487F50)
487F48:  LDR             R2, =(DataFence_ptr - 0x487F52)
487F4A:  ADD             R0, PC; currentSaveFenceCount_ptr
487F4C:  ADD             R1, PC; UseDataFence_ptr
487F4E:  ADD             R2, PC; DataFence_ptr
487F50:  LDR             R0, [R0]; currentSaveFenceCount
487F52:  LDR.W           R9, [R1]; UseDataFence
487F56:  LDR             R1, [R2]; DataFence
487F58:  LDR             R2, [R0]
487F5A:  STRB.W          R3, [R9]
487F5E:  LDRH            R1, [R1]
487F60:  ADDS            R3, R2, #1
487F62:  STR             R3, [R0]
487F64:  MOVS            R0, #2; byte_count
487F66:  ADDS            R5, R2, R1
487F68:  BLX             malloc
487F6C:  MOV             R4, R0
487F6E:  MOVS            R1, #(stderr+2); void *
487F70:  STRH            R5, [R4]
487F72:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
487F76:  MOV             R0, R4; p
487F78:  BLX             free
487F7C:  STRB.W          R6, [R9]
487F80:  MOVS            R0, #4; byte_count
487F82:  BLX             malloc
487F86:  MOV             R4, R0
487F88:  MOVS            R1, #byte_4; void *
487F8A:  STR.W           R8, [R4]
487F8E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
487F92:  MOV             R0, R4; p
487F94:  BLX             free
487F98:  LDR             R0, =(TheCamera_ptr - 0x487F9E)
487F9A:  ADD             R0, PC; TheCamera_ptr
487F9C:  LDR             R0, [R0]; TheCamera
487F9E:  LDR.W           R0, [R0,#(dword_952884 - 0x951FA8)]; this
487FA2:  LDRB.W          R1, [R0,#0x3A]
487FA6:  AND.W           R1, R1, #7; CVehicle *
487FAA:  CMP             R1, #2
487FAC:  BEQ             loc_487FBC
487FAE:  CMP             R1, #3
487FB0:  BNE             loc_488046
487FB2:  CBZ             R0, loc_487FC6
487FB4:  BLX             j__ZN6CPools9GetPedRefEP4CPed; CPools::GetPedRef(CPed *)
487FB8:  MOV             R8, R0
487FBA:  B               loc_487FCA
487FBC:  CBZ             R0, loc_487FE2
487FBE:  BLX             j__ZN6CPools13GetVehicleRefEP8CVehicle; CPools::GetVehicleRef(CVehicle *)
487FC2:  MOV             R8, R0
487FC4:  B               loc_487FE6
487FC6:  MOV.W           R8, #0xFFFFFFFF
487FCA:  LDR             R0, =(UseDataFence_ptr - 0x487FD0)
487FCC:  ADD             R0, PC; UseDataFence_ptr
487FCE:  LDR             R0, [R0]; UseDataFence
487FD0:  LDRB            R6, [R0]
487FD2:  CBZ             R6, loc_48802E
487FD4:  LDR             R0, =(currentSaveFenceCount_ptr - 0x487FDE)
487FD6:  LDR             R1, =(UseDataFence_ptr - 0x487FE0)
487FD8:  LDR             R2, =(DataFence_ptr - 0x487FE2)
487FDA:  ADD             R0, PC; currentSaveFenceCount_ptr
487FDC:  ADD             R1, PC; UseDataFence_ptr
487FDE:  ADD             R2, PC; DataFence_ptr
487FE0:  B               loc_487FFC
487FE2:  MOV.W           R8, #0xFFFFFFFF
487FE6:  LDR             R0, =(UseDataFence_ptr - 0x487FEC)
487FE8:  ADD             R0, PC; UseDataFence_ptr
487FEA:  LDR             R0, [R0]; UseDataFence
487FEC:  LDRB            R6, [R0]
487FEE:  CBZ             R6, loc_48802E
487FF0:  LDR             R0, =(currentSaveFenceCount_ptr - 0x487FFA)
487FF2:  LDR             R1, =(UseDataFence_ptr - 0x487FFC)
487FF4:  LDR             R2, =(DataFence_ptr - 0x487FFE)
487FF6:  ADD             R0, PC; currentSaveFenceCount_ptr
487FF8:  ADD             R1, PC; UseDataFence_ptr
487FFA:  ADD             R2, PC; DataFence_ptr
487FFC:  LDR             R0, [R0]; currentSaveFenceCount
487FFE:  MOVS            R3, #0
488000:  LDR.W           R9, [R1]; UseDataFence
488004:  LDR             R1, [R2]; DataFence
488006:  LDR             R2, [R0]
488008:  STRB.W          R3, [R9]
48800C:  LDRH            R1, [R1]
48800E:  ADDS            R3, R2, #1
488010:  STR             R3, [R0]
488012:  MOVS            R0, #2; byte_count
488014:  ADDS            R4, R2, R1
488016:  BLX             malloc
48801A:  MOV             R5, R0
48801C:  MOVS            R1, #(stderr+2); void *
48801E:  STRH            R4, [R5]
488020:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
488024:  MOV             R0, R5; p
488026:  BLX             free
48802A:  STRB.W          R6, [R9]
48802E:  MOVS            R0, #4; byte_count
488030:  BLX             malloc
488034:  MOV             R5, R0
488036:  MOVS            R1, #byte_4; void *
488038:  STR.W           R8, [R5]
48803C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
488040:  MOV             R0, R5; p
488042:  BLX             free
488046:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x48804C)
488048:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
48804A:  LDR             R0, [R0]; CWorld::Players ...
48804C:  LDR             R0, [R0]; CWorld::Players
48804E:  LDR.W           R0, [R0,#0x590]
488052:  CBZ             R0, loc_488062
488054:  LDR.W           R0, [R0,#0x4D4]; this
488058:  CBZ             R0, loc_4880C4
48805A:  BLX             j__ZN6CPools13GetVehicleRefEP8CVehicle; CPools::GetVehicleRef(CVehicle *)
48805E:  MOV             R8, R0
488060:  B               loc_4880C8
488062:  LDR             R0, =(UseDataFence_ptr - 0x488068)
488064:  ADD             R0, PC; UseDataFence_ptr
488066:  LDR             R0, [R0]; UseDataFence
488068:  LDRB            R5, [R0]
48806A:  CBZ             R5, loc_4880AA
48806C:  LDR             R0, =(currentSaveFenceCount_ptr - 0x488078)
48806E:  MOVS            R3, #0
488070:  LDR             R1, =(UseDataFence_ptr - 0x48807A)
488072:  LDR             R2, =(DataFence_ptr - 0x48807C)
488074:  ADD             R0, PC; currentSaveFenceCount_ptr
488076:  ADD             R1, PC; UseDataFence_ptr
488078:  ADD             R2, PC; DataFence_ptr
48807A:  LDR             R0, [R0]; currentSaveFenceCount
48807C:  LDR.W           R8, [R1]; UseDataFence
488080:  LDR             R1, [R2]; DataFence
488082:  LDR             R2, [R0]
488084:  STRB.W          R3, [R8]
488088:  LDRH            R1, [R1]
48808A:  ADDS            R3, R2, #1
48808C:  STR             R3, [R0]
48808E:  MOVS            R0, #2; byte_count
488090:  ADDS            R6, R2, R1
488092:  BLX             malloc
488096:  MOV             R4, R0
488098:  MOVS            R1, #(stderr+2); void *
48809A:  STRH            R6, [R4]
48809C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4880A0:  MOV             R0, R4; p
4880A2:  BLX             free
4880A6:  STRB.W          R5, [R8]
4880AA:  MOVS            R0, #4; byte_count
4880AC:  BLX             malloc
4880B0:  MOV             R4, R0
4880B2:  MOV.W           R0, #0xFFFFFFFF
4880B6:  STR             R0, [R4]
4880B8:  MOV             R0, R4; this
4880BA:  MOVS            R1, #byte_4; void *
4880BC:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
4880C0:  MOV             R0, R4
4880C2:  B               loc_488124
4880C4:  MOV.W           R8, #0xFFFFFFFF
4880C8:  LDR             R0, =(UseDataFence_ptr - 0x4880CE)
4880CA:  ADD             R0, PC; UseDataFence_ptr
4880CC:  LDR             R0, [R0]; UseDataFence
4880CE:  LDRB            R6, [R0]
4880D0:  CBZ             R6, loc_488110
4880D2:  LDR             R0, =(currentSaveFenceCount_ptr - 0x4880DE)
4880D4:  MOVS            R3, #0
4880D6:  LDR             R1, =(UseDataFence_ptr - 0x4880E0)
4880D8:  LDR             R2, =(DataFence_ptr - 0x4880E2)
4880DA:  ADD             R0, PC; currentSaveFenceCount_ptr
4880DC:  ADD             R1, PC; UseDataFence_ptr
4880DE:  ADD             R2, PC; DataFence_ptr
4880E0:  LDR             R0, [R0]; currentSaveFenceCount
4880E2:  LDR.W           R9, [R1]; UseDataFence
4880E6:  LDR             R1, [R2]; DataFence
4880E8:  LDR             R2, [R0]
4880EA:  STRB.W          R3, [R9]
4880EE:  LDRH            R1, [R1]
4880F0:  ADDS            R3, R2, #1
4880F2:  STR             R3, [R0]
4880F4:  MOVS            R0, #2; byte_count
4880F6:  ADDS            R4, R2, R1
4880F8:  BLX             malloc
4880FC:  MOV             R5, R0
4880FE:  MOVS            R1, #(stderr+2); void *
488100:  STRH            R4, [R5]
488102:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
488106:  MOV             R0, R5; p
488108:  BLX             free
48810C:  STRB.W          R6, [R9]
488110:  MOVS            R0, #4; byte_count
488112:  BLX             malloc
488116:  MOV             R5, R0
488118:  MOVS            R1, #byte_4; void *
48811A:  STR.W           R8, [R5]
48811E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
488122:  MOV             R0, R5; p
488124:  BLX             free
488128:  MOVS            R0, #1
48812A:  ADD             SP, SP, #0x1C
48812C:  POP.W           {R8-R11}
488130:  POP             {R4-R7,PC}
