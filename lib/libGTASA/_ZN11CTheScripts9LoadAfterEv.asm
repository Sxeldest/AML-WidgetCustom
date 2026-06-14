; =========================================================
; Game Engine Function: _ZN11CTheScripts9LoadAfterEv
; Address            : 0x48AA04 - 0x48AB82
; =========================================================

48AA04:  PUSH            {R4-R7,LR}
48AA06:  ADD             R7, SP, #0xC
48AA08:  PUSH.W          {R8-R11}
48AA0C:  SUB             SP, SP, #0x2C
48AA0E:  LDR             R0, =(UseDataFence_ptr - 0x48AA1A)
48AA10:  ADD             R2, SP, #0x48+var_20; int
48AA12:  LDR             R1, =(UseDataFence_ptr - 0x48AA1C)
48AA14:  MOVS            R5, #0
48AA16:  ADD             R0, PC; UseDataFence_ptr
48AA18:  ADD             R1, PC; UseDataFence_ptr
48AA1A:  LDR             R0, [R0]; UseDataFence
48AA1C:  STR             R0, [SP,#0x48+var_28]
48AA1E:  LDR             R0, =(UseDataFence_ptr - 0x48AA28)
48AA20:  LDR.W           R10, [R1]; UseDataFence
48AA24:  ADD             R0, PC; UseDataFence_ptr
48AA26:  LDR             R0, [R0]; UseDataFence
48AA28:  STR             R0, [SP,#0x48+var_38]
48AA2A:  LDR             R0, =(UseDataFence_ptr - 0x48AA30)
48AA2C:  ADD             R0, PC; UseDataFence_ptr
48AA2E:  LDR             R0, [R0]; UseDataFence
48AA30:  STR             R0, [SP,#0x48+var_44]
48AA32:  LDR             R0, =(_ZN11CTheScripts29EntitiesWaitingForScriptBrainE_ptr - 0x48AA38)
48AA34:  ADD             R0, PC; _ZN11CTheScripts29EntitiesWaitingForScriptBrainE_ptr
48AA36:  LDR             R0, [R0]; CTheScripts::EntitiesWaitingForScriptBrain ...
48AA38:  STR             R0, [SP,#0x48+var_2C]
48AA3A:  LDR             R0, =(_ZN11CTheScripts29EntitiesWaitingForScriptBrainE_ptr - 0x48AA40)
48AA3C:  ADD             R0, PC; _ZN11CTheScripts29EntitiesWaitingForScriptBrainE_ptr
48AA3E:  LDR.W           R8, [R0]; CTheScripts::EntitiesWaitingForScriptBrain ...
48AA42:  LDR             R0, =(UseDataFence_ptr - 0x48AA48)
48AA44:  ADD             R0, PC; UseDataFence_ptr
48AA46:  LDR.W           R11, [R0]; UseDataFence
48AA4A:  LDR             R0, =(UseDataFence_ptr - 0x48AA50)
48AA4C:  ADD             R0, PC; UseDataFence_ptr
48AA4E:  LDR             R0, [R0]; UseDataFence
48AA50:  STR             R0, [SP,#0x48+var_34]
48AA52:  LDR             R0, =(UseDataFence_ptr - 0x48AA58)
48AA54:  ADD             R0, PC; UseDataFence_ptr
48AA56:  LDR             R0, [R0]; UseDataFence
48AA58:  STR             R0, [SP,#0x48+var_40]
48AA5A:  LDR             R0, =(UseDataFence_ptr - 0x48AA60)
48AA5C:  ADD             R0, PC; UseDataFence_ptr
48AA5E:  LDR             R0, [R0]; UseDataFence
48AA60:  STR             R0, [SP,#0x48+var_3C]
48AA62:  LDR             R0, =(UseDataFence_ptr - 0x48AA68)
48AA64:  ADD             R0, PC; UseDataFence_ptr
48AA66:  LDR             R0, [R0]; UseDataFence
48AA68:  STR             R0, [SP,#0x48+var_48]
48AA6A:  LDR             R0, =(UseDataFence_ptr - 0x48AA70)
48AA6C:  ADD             R0, PC; UseDataFence_ptr
48AA6E:  LDR             R0, [R0]; UseDataFence
48AA70:  STR             R0, [SP,#0x48+var_30]
48AA72:  LDR             R0, [SP,#0x48+var_28]
48AA74:  LDRB            R4, [R0]
48AA76:  CBZ             R4, loc_48AA8A
48AA78:  LDR             R6, [SP,#0x48+var_30]
48AA7A:  MOVS            R0, #0
48AA7C:  MOVS            R1, #(stderr+2); void *
48AA7E:  STRB            R0, [R6]
48AA80:  MOV             R0, R2; this
48AA82:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48AA86:  ADD             R2, SP, #0x48+var_20; int
48AA88:  STRB            R4, [R6]
48AA8A:  MOV             R0, R2; this
48AA8C:  MOVS            R1, #byte_4; void *
48AA8E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48AA92:  LDR             R0, [SP,#0x48+var_20]
48AA94:  CMP             R0, #2
48AA96:  BEQ             loc_48AB00
48AA98:  CMP             R0, #4
48AA9A:  BEQ             loc_48AACE
48AA9C:  CMP             R0, #3
48AA9E:  BNE             loc_48AB42
48AAA0:  LDR             R0, [SP,#0x48+var_3C]
48AAA2:  ADD.W           R9, SP, #0x48+var_24
48AAA6:  LDRB            R4, [R0]
48AAA8:  CBZ             R4, loc_48AABA
48AAAA:  LDR             R6, [SP,#0x48+var_48]
48AAAC:  MOVS            R0, #0
48AAAE:  MOVS            R1, #(stderr+2); void *
48AAB0:  STRB            R0, [R6]
48AAB2:  MOV             R0, R9; this
48AAB4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48AAB8:  STRB            R4, [R6]
48AABA:  MOV             R0, R9; this
48AABC:  MOVS            R1, #byte_4; void *
48AABE:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48AAC2:  LDR             R0, [SP,#0x48+var_24]; this
48AAC4:  ADDS            R1, R0, #1; int
48AAC6:  BEQ             loc_48AB42
48AAC8:  BLX             j__ZN6CPools6GetPedEi; CPools::GetPed(int)
48AACC:  B               loc_48AB44
48AACE:  LDR             R0, [SP,#0x48+var_34]
48AAD0:  ADD             R6, SP, #0x48+var_24
48AAD2:  LDRB            R4, [R0]
48AAD4:  CBZ             R4, loc_48AAEC
48AAD6:  LDR.W           R9, [SP,#0x48+var_40]
48AADA:  MOVS            R0, #0
48AADC:  MOVS            R1, #(stderr+2); void *
48AADE:  STRB.W          R0, [R9]
48AAE2:  MOV             R0, R6; this
48AAE4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48AAE8:  STRB.W          R4, [R9]
48AAEC:  MOV             R0, R6; this
48AAEE:  MOVS            R1, #byte_4; void *
48AAF0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48AAF4:  LDR             R0, [SP,#0x48+var_24]; this
48AAF6:  ADDS            R1, R0, #1; int
48AAF8:  BEQ             loc_48AB42
48AAFA:  BLX             j__ZN6CPools9GetObjectEi; CPools::GetObject(int)
48AAFE:  B               loc_48AB44
48AB00:  LDR             R0, [SP,#0x48+var_38]
48AB02:  ADD             R1, SP, #0x48+var_24
48AB04:  LDRB            R4, [R0]
48AB06:  CBZ             R4, loc_48AB2E
48AB08:  LDR.W           R9, [SP,#0x48+var_44]
48AB0C:  MOVS            R0, #0
48AB0E:  MOV             R6, R11
48AB10:  MOV             R11, R8
48AB12:  MOV             R8, R10
48AB14:  MOV             R10, R1
48AB16:  STRB.W          R0, [R9]
48AB1A:  MOV             R0, R1; this
48AB1C:  MOVS            R1, #(stderr+2); void *
48AB1E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48AB22:  MOV             R1, R10
48AB24:  MOV             R10, R8
48AB26:  MOV             R8, R11
48AB28:  MOV             R11, R6
48AB2A:  STRB.W          R4, [R9]
48AB2E:  MOV             R0, R1; this
48AB30:  MOVS            R1, #byte_4; void *
48AB32:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48AB36:  LDR             R0, [SP,#0x48+var_24]; this
48AB38:  ADDS            R1, R0, #1; int
48AB3A:  BEQ             loc_48AB42
48AB3C:  BLX             j__ZN6CPools10GetVehicleEi; CPools::GetVehicle(int)
48AB40:  B               loc_48AB44
48AB42:  MOVS            R0, #0
48AB44:  LDR             R1, [SP,#0x48+var_2C]
48AB46:  LDRB.W          R4, [R10]
48AB4A:  CMP             R4, #0
48AB4C:  STR             R0, [R1,R5]
48AB4E:  BEQ             loc_48AB62
48AB50:  MOVS            R0, #0
48AB52:  MOVS            R1, #(stderr+2); void *
48AB54:  STRB.W          R0, [R11]
48AB58:  ADD             R0, SP, #0x48+var_24; this
48AB5A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48AB5E:  STRB.W          R4, [R11]
48AB62:  ADD.W           R0, R8, R5
48AB66:  MOVS            R1, #(stderr+2); void *
48AB68:  ADDS            R0, #4; this
48AB6A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48AB6E:  ADDS            R5, #8
48AB70:  ADD             R2, SP, #0x48+var_20
48AB72:  CMP.W           R5, #0x4B0
48AB76:  BNE.W           loc_48AA72
48AB7A:  ADD             SP, SP, #0x2C ; ','
48AB7C:  POP.W           {R8-R11}
48AB80:  POP             {R4-R7,PC}
