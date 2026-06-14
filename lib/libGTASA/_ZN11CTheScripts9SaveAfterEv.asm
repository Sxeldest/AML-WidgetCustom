; =========================================================
; Game Engine Function: _ZN11CTheScripts9SaveAfterEv
; Address            : 0x489D28 - 0x489FE6
; =========================================================

489D28:  PUSH            {R4-R7,LR}
489D2A:  ADD             R7, SP, #0xC
489D2C:  PUSH.W          {R8-R11}
489D30:  SUB             SP, SP, #0x6C
489D32:  LDR             R0, =(_ZN11CTheScripts29EntitiesWaitingForScriptBrainE_ptr - 0x489D42)
489D34:  MOV.W           R11, #0
489D38:  LDR             R1, =(UseDataFence_ptr - 0x489D46)
489D3A:  MOV.W           R8, #0
489D3E:  ADD             R0, PC; _ZN11CTheScripts29EntitiesWaitingForScriptBrainE_ptr
489D40:  LDR             R2, =(DataFence_ptr - 0x489D4A)
489D42:  ADD             R1, PC; UseDataFence_ptr
489D44:  LDR             R0, [R0]; CTheScripts::EntitiesWaitingForScriptBrain ...
489D46:  ADD             R2, PC; DataFence_ptr
489D48:  STR             R0, [SP,#0x88+var_20]
489D4A:  LDR             R0, =(UseDataFence_ptr - 0x489D50)
489D4C:  ADD             R0, PC; UseDataFence_ptr
489D4E:  LDR             R0, [R0]; UseDataFence
489D50:  STR             R0, [SP,#0x88+var_4C]
489D52:  LDR             R0, =(currentSaveFenceCount_ptr - 0x489D58)
489D54:  ADD             R0, PC; currentSaveFenceCount_ptr
489D56:  LDR             R0, [R0]; currentSaveFenceCount
489D58:  STR             R0, [SP,#0x88+var_50]
489D5A:  LDR             R0, [R1]; UseDataFence
489D5C:  STR             R0, [SP,#0x88+var_54]
489D5E:  LDR             R0, [R2]; DataFence
489D60:  STR             R0, [SP,#0x88+var_58]
489D62:  LDR             R0, =(UseDataFence_ptr - 0x489D6A)
489D64:  LDR             R1, =(UseDataFence_ptr - 0x489D6E)
489D66:  ADD             R0, PC; UseDataFence_ptr
489D68:  LDR             R2, =(DataFence_ptr - 0x489D72)
489D6A:  ADD             R1, PC; UseDataFence_ptr
489D6C:  LDR             R0, [R0]; UseDataFence
489D6E:  ADD             R2, PC; DataFence_ptr
489D70:  STR             R0, [SP,#0x88+var_24]
489D72:  LDR             R0, =(_ZN11CTheScripts29EntitiesWaitingForScriptBrainE_ptr - 0x489D78)
489D74:  ADD             R0, PC; _ZN11CTheScripts29EntitiesWaitingForScriptBrainE_ptr
489D76:  LDR             R0, [R0]; CTheScripts::EntitiesWaitingForScriptBrain ...
489D78:  STR             R0, [SP,#0x88+var_28]
489D7A:  LDR             R0, =(currentSaveFenceCount_ptr - 0x489D80)
489D7C:  ADD             R0, PC; currentSaveFenceCount_ptr
489D7E:  LDR             R0, [R0]; currentSaveFenceCount
489D80:  STR             R0, [SP,#0x88+var_2C]
489D82:  LDR             R0, [R1]; UseDataFence
489D84:  STR             R0, [SP,#0x88+var_30]
489D86:  LDR             R0, [R2]; DataFence
489D88:  STR             R0, [SP,#0x88+var_34]
489D8A:  LDR             R0, =(UseDataFence_ptr - 0x489D92)
489D8C:  LDR             R1, =(UseDataFence_ptr - 0x489D96)
489D8E:  ADD             R0, PC; UseDataFence_ptr
489D90:  LDR             R2, =(DataFence_ptr - 0x489D9A)
489D92:  ADD             R1, PC; UseDataFence_ptr
489D94:  LDR             R0, [R0]; UseDataFence
489D96:  ADD             R2, PC; DataFence_ptr
489D98:  STR             R0, [SP,#0x88+var_38]
489D9A:  LDR             R0, =(_ZN11CTheScripts29EntitiesWaitingForScriptBrainE_ptr - 0x489DA0)
489D9C:  ADD             R0, PC; _ZN11CTheScripts29EntitiesWaitingForScriptBrainE_ptr
489D9E:  LDR             R0, [R0]; CTheScripts::EntitiesWaitingForScriptBrain ...
489DA0:  STR             R0, [SP,#0x88+var_3C]
489DA2:  LDR             R0, =(UseDataFence_ptr - 0x489DA8)
489DA4:  ADD             R0, PC; UseDataFence_ptr
489DA6:  LDR             R0, [R0]; UseDataFence
489DA8:  STR             R0, [SP,#0x88+var_60]
489DAA:  LDR             R0, =(currentSaveFenceCount_ptr - 0x489DB0)
489DAC:  ADD             R0, PC; currentSaveFenceCount_ptr
489DAE:  LDR             R0, [R0]; currentSaveFenceCount
489DB0:  STR             R0, [SP,#0x88+var_74]
489DB2:  LDR             R0, [R1]; UseDataFence
489DB4:  STR             R0, [SP,#0x88+var_78]
489DB6:  LDR             R0, [R2]; DataFence
489DB8:  STR             R0, [SP,#0x88+var_7C]
489DBA:  LDR             R0, =(UseDataFence_ptr - 0x489DC2)
489DBC:  LDR             R1, =(UseDataFence_ptr - 0x489DC6)
489DBE:  ADD             R0, PC; UseDataFence_ptr
489DC0:  LDR             R2, =(DataFence_ptr - 0x489DCA)
489DC2:  ADD             R1, PC; UseDataFence_ptr
489DC4:  LDR             R0, [R0]; UseDataFence
489DC6:  ADD             R2, PC; DataFence_ptr
489DC8:  STR             R0, [SP,#0x88+var_5C]
489DCA:  LDR             R0, =(currentSaveFenceCount_ptr - 0x489DD0)
489DCC:  ADD             R0, PC; currentSaveFenceCount_ptr
489DCE:  LDR             R0, [R0]; currentSaveFenceCount
489DD0:  STR             R0, [SP,#0x88+var_68]
489DD2:  LDR             R0, [R1]; UseDataFence
489DD4:  STR             R0, [SP,#0x88+var_6C]
489DD6:  LDR             R0, [R2]; DataFence
489DD8:  STR             R0, [SP,#0x88+var_70]
489DDA:  LDR             R0, =(UseDataFence_ptr - 0x489DE2)
489DDC:  LDR             R1, =(UseDataFence_ptr - 0x489DE6)
489DDE:  ADD             R0, PC; UseDataFence_ptr
489DE0:  LDR             R2, =(DataFence_ptr - 0x489DEA)
489DE2:  ADD             R1, PC; UseDataFence_ptr
489DE4:  LDR             R0, [R0]; UseDataFence
489DE6:  ADD             R2, PC; DataFence_ptr
489DE8:  STR             R0, [SP,#0x88+var_64]
489DEA:  LDR             R0, =(currentSaveFenceCount_ptr - 0x489DF0)
489DEC:  ADD             R0, PC; currentSaveFenceCount_ptr
489DEE:  LDR             R0, [R0]; currentSaveFenceCount
489DF0:  STR             R0, [SP,#0x88+var_80]
489DF2:  LDR             R0, [R1]; UseDataFence
489DF4:  STR             R0, [SP,#0x88+var_84]
489DF6:  LDR             R0, [R2]; DataFence
489DF8:  STR             R0, [SP,#0x88+var_88]
489DFA:  LDR             R0, =(currentSaveFenceCount_ptr - 0x489E02)
489DFC:  LDR             R1, =(UseDataFence_ptr - 0x489E06)
489DFE:  ADD             R0, PC; currentSaveFenceCount_ptr
489E00:  LDR             R2, =(DataFence_ptr - 0x489E0A)
489E02:  ADD             R1, PC; UseDataFence_ptr
489E04:  LDR             R0, [R0]; currentSaveFenceCount
489E06:  ADD             R2, PC; DataFence_ptr
489E08:  STR             R0, [SP,#0x88+var_40]
489E0A:  LDR             R0, [R1]; UseDataFence
489E0C:  STR             R0, [SP,#0x88+var_44]
489E0E:  LDR             R0, [R2]; DataFence
489E10:  STR             R0, [SP,#0x88+var_48]
489E12:  LDR             R0, [SP,#0x88+var_20]
489E14:  LDR.W           R0, [R0,R8,LSL#3]
489E18:  CMP             R0, #0
489E1A:  BEQ             loc_489EA6
489E1C:  LDR             R1, [SP,#0x88+var_38]
489E1E:  MOV.W           R5, R8,LSL#1
489E22:  LDRB.W          R0, [R0,#0x3A]
489E26:  LDRB.W          R10, [R1]
489E2A:  AND.W           R9, R0, #7
489E2E:  CMP.W           R10, #0
489E32:  BEQ             loc_489E6A
489E34:  LDR             R1, [SP,#0x88+var_48]
489E36:  LDR             R3, [SP,#0x88+var_40]
489E38:  LDR             R6, [SP,#0x88+var_44]
489E3A:  LDRH            R1, [R1]
489E3C:  LDR             R0, [R3]
489E3E:  STRB.W          R11, [R6]
489E42:  ADDS            R2, R0, #1
489E44:  ADD.W           R11, R0, R1
489E48:  MOVS            R0, #2; byte_count
489E4A:  STR             R2, [R3]
489E4C:  BLX             malloc
489E50:  MOV             R4, R0
489E52:  MOVS            R1, #(stderr+2); void *
489E54:  STRH.W          R11, [R4]
489E58:  MOV.W           R11, #0
489E5C:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489E60:  MOV             R0, R4; p
489E62:  BLX             free
489E66:  STRB.W          R10, [R6]
489E6A:  MOVS            R0, #4; byte_count
489E6C:  BLX             malloc
489E70:  MOV             R4, R0
489E72:  MOVS            R1, #byte_4; void *
489E74:  STR.W           R9, [R4]
489E78:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489E7C:  MOV             R0, R4; p
489E7E:  BLX             free
489E82:  LDR             R0, [SP,#0x88+var_3C]
489E84:  LDR.W           R0, [R0,R5,LSL#2]; this
489E88:  LDRB.W          R1, [R0,#0x3A]
489E8C:  AND.W           R1, R1, #7; CVehicle *
489E90:  CMP             R1, #2
489E92:  BEQ             loc_489EFC
489E94:  CMP             R1, #4
489E96:  BEQ             loc_489EF2
489E98:  CMP             R1, #3
489E9A:  BNE             loc_489F7C
489E9C:  CBZ             R0, loc_489F18
489E9E:  BLX             j__ZN6CPools9GetPedRefEP4CPed; CPools::GetPedRef(CPed *)
489EA2:  MOV             R9, R0
489EA4:  B               loc_489F1C
489EA6:  LDR             R0, [SP,#0x88+var_4C]
489EA8:  LDRB            R5, [R0]
489EAA:  CBZ             R5, loc_489EDC
489EAC:  LDR             R1, [SP,#0x88+var_58]
489EAE:  LDR             R3, [SP,#0x88+var_50]
489EB0:  LDR             R6, [SP,#0x88+var_54]
489EB2:  LDRH            R1, [R1]
489EB4:  LDR             R0, [R3]
489EB6:  STRB.W          R11, [R6]
489EBA:  ADDS            R2, R0, #1
489EBC:  ADD.W           R9, R0, R1
489EC0:  MOVS            R0, #2; byte_count
489EC2:  STR             R2, [R3]
489EC4:  BLX             malloc
489EC8:  MOV             R4, R0
489ECA:  MOVS            R1, #(stderr+2); void *
489ECC:  STRH.W          R9, [R4]
489ED0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489ED4:  MOV             R0, R4; p
489ED6:  BLX             free
489EDA:  STRB            R5, [R6]
489EDC:  MOVS            R0, #4; byte_count
489EDE:  BLX             malloc
489EE2:  MOV             R4, R0
489EE4:  MOVS            R1, #byte_4; void *
489EE6:  STR.W           R11, [R4]
489EEA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489EEE:  MOV             R0, R4
489EF0:  B               loc_489F78
489EF2:  CBZ             R0, loc_489F06
489EF4:  BLX             j__ZN6CPools12GetObjectRefEP7CObject; CPools::GetObjectRef(CObject *)
489EF8:  MOV             R9, R0
489EFA:  B               loc_489F0A
489EFC:  CBZ             R0, loc_489F2A
489EFE:  BLX             j__ZN6CPools13GetVehicleRefEP8CVehicle; CPools::GetVehicleRef(CVehicle *)
489F02:  MOV             R9, R0
489F04:  B               loc_489F2E
489F06:  MOV.W           R9, #0xFFFFFFFF
489F0A:  LDR             R0, [SP,#0x88+var_5C]
489F0C:  LDRB            R4, [R0]
489F0E:  CBZ             R4, loc_489F64
489F10:  LDR             R3, [SP,#0x88+var_68]
489F12:  LDR             R6, [SP,#0x88+var_6C]
489F14:  LDR             R1, [SP,#0x88+var_70]
489F16:  B               loc_489F3A
489F18:  MOV.W           R9, #0xFFFFFFFF
489F1C:  LDR             R0, [SP,#0x88+var_64]
489F1E:  LDRB            R4, [R0]
489F20:  CBZ             R4, loc_489F64
489F22:  LDR             R3, [SP,#0x88+var_80]
489F24:  LDR             R6, [SP,#0x88+var_84]
489F26:  LDR             R1, [SP,#0x88+var_88]
489F28:  B               loc_489F3A
489F2A:  MOV.W           R9, #0xFFFFFFFF
489F2E:  LDR             R0, [SP,#0x88+var_60]
489F30:  LDRB            R4, [R0]
489F32:  CBZ             R4, loc_489F64
489F34:  LDR             R3, [SP,#0x88+var_74]
489F36:  LDR             R6, [SP,#0x88+var_78]
489F38:  LDR             R1, [SP,#0x88+var_7C]
489F3A:  LDR             R0, [R3]
489F3C:  STRB.W          R11, [R6]
489F40:  LDRH            R1, [R1]
489F42:  ADDS            R2, R0, #1
489F44:  STR             R2, [R3]
489F46:  ADD.W           R10, R0, R1
489F4A:  MOVS            R0, #2; byte_count
489F4C:  BLX             malloc
489F50:  MOV             R5, R0
489F52:  MOVS            R1, #(stderr+2); void *
489F54:  STRH.W          R10, [R5]
489F58:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489F5C:  MOV             R0, R5; p
489F5E:  BLX             free
489F62:  STRB            R4, [R6]
489F64:  MOVS            R0, #4; byte_count
489F66:  BLX             malloc
489F6A:  MOV             R5, R0
489F6C:  MOVS            R1, #byte_4; void *
489F6E:  STR.W           R9, [R5]
489F72:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489F76:  MOV             R0, R5; p
489F78:  BLX             free
489F7C:  LDR             R0, [SP,#0x88+var_24]
489F7E:  LDRB            R5, [R0]
489F80:  CBZ             R5, loc_489FB2
489F82:  LDR             R1, [SP,#0x88+var_34]
489F84:  LDR             R3, [SP,#0x88+var_2C]
489F86:  LDR             R6, [SP,#0x88+var_30]
489F88:  LDRH            R1, [R1]
489F8A:  LDR             R0, [R3]
489F8C:  STRB.W          R11, [R6]
489F90:  ADDS            R2, R0, #1
489F92:  ADD.W           R9, R0, R1
489F96:  MOVS            R0, #2; byte_count
489F98:  STR             R2, [R3]
489F9A:  BLX             malloc
489F9E:  MOV             R4, R0
489FA0:  MOVS            R1, #(stderr+2); void *
489FA2:  STRH.W          R9, [R4]
489FA6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489FAA:  MOV             R0, R4; p
489FAC:  BLX             free
489FB0:  STRB            R5, [R6]
489FB2:  LDR             R0, [SP,#0x88+var_28]
489FB4:  ADD.W           R5, R0, R8,LSL#3
489FB8:  MOVS            R0, #2; byte_count
489FBA:  BLX             malloc
489FBE:  MOV             R4, R0
489FC0:  LDRH            R0, [R5,#4]
489FC2:  STRH            R0, [R4]
489FC4:  MOV             R0, R4; this
489FC6:  MOVS            R1, #(stderr+2); void *
489FC8:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
489FCC:  MOV             R0, R4; p
489FCE:  BLX             free
489FD2:  ADD.W           R8, R8, #1
489FD6:  CMP.W           R8, #0x96
489FDA:  BNE.W           loc_489E12
489FDE:  ADD             SP, SP, #0x6C ; 'l'
489FE0:  POP.W           {R8-R11}
489FE4:  POP             {R4-R7,PC}
