; =========================================================
; Game Engine Function: _Z10LoadBriefsv
; Address            : 0x48FC04 - 0x48FE4E
; =========================================================

48FC04:  PUSH            {R4-R7,LR}
48FC06:  ADD             R7, SP, #0xC
48FC08:  PUSH.W          {R8-R11}
48FC0C:  SUB             SP, SP, #0x74
48FC0E:  LDR             R0, =(UseDataFence_ptr - 0x48FC1C)
48FC10:  ADD             R6, SP, #0x90+var_24
48FC12:  LDR             R1, =(UseDataFence_ptr - 0x48FC22)
48FC14:  SUB.W           R11, R7, #-var_1E
48FC18:  ADD             R0, PC; UseDataFence_ptr
48FC1A:  MOV.W           R9, #0
48FC1E:  ADD             R1, PC; UseDataFence_ptr
48FC20:  MOV.W           R8, #0
48FC24:  LDR             R0, [R0]; UseDataFence
48FC26:  STR             R0, [SP,#0x90+var_28]
48FC28:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x48FC2E)
48FC2A:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
48FC2C:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
48FC2E:  STR             R0, [SP,#0x90+var_2C]
48FC30:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x48FC36)
48FC32:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
48FC34:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
48FC36:  STR             R0, [SP,#0x90+var_30]
48FC38:  LDR             R0, [R1]; UseDataFence
48FC3A:  STR             R0, [SP,#0x90+var_34]
48FC3C:  LDR             R0, =(TheText_ptr - 0x48FC44)
48FC3E:  LDR             R1, =(UseDataFence_ptr - 0x48FC46)
48FC40:  ADD             R0, PC; TheText_ptr
48FC42:  ADD             R1, PC; UseDataFence_ptr
48FC44:  LDR             R0, [R0]; TheText
48FC46:  STR             R0, [SP,#0x90+var_38]
48FC48:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x48FC4E)
48FC4A:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
48FC4C:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
48FC4E:  STR             R0, [SP,#0x90+var_3C]
48FC50:  LDR             R0, [R1]; UseDataFence
48FC52:  STR             R0, [SP,#0x90+var_40]
48FC54:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x48FC5A)
48FC56:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
48FC58:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
48FC5A:  STR             R0, [SP,#0x90+var_44]
48FC5C:  LDR             R0, =(UseDataFence_ptr - 0x48FC62)
48FC5E:  ADD             R0, PC; UseDataFence_ptr
48FC60:  LDR             R0, [R0]; UseDataFence
48FC62:  STR             R0, [SP,#0x90+var_48]
48FC64:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x48FC6A)
48FC66:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
48FC68:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
48FC6A:  STR             R0, [SP,#0x90+var_4C]
48FC6C:  LDR             R0, =(UseDataFence_ptr - 0x48FC72)
48FC6E:  ADD             R0, PC; UseDataFence_ptr
48FC70:  LDR             R0, [R0]; UseDataFence
48FC72:  STR             R0, [SP,#0x90+var_50]
48FC74:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x48FC7A)
48FC76:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
48FC78:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
48FC7A:  STR             R0, [SP,#0x90+var_54]
48FC7C:  LDR             R0, =(UseDataFence_ptr - 0x48FC82)
48FC7E:  ADD             R0, PC; UseDataFence_ptr
48FC80:  LDR             R0, [R0]; UseDataFence
48FC82:  STR             R0, [SP,#0x90+var_58]
48FC84:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x48FC8A)
48FC86:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
48FC88:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
48FC8A:  STR             R0, [SP,#0x90+var_5C]
48FC8C:  LDR             R0, =(UseDataFence_ptr - 0x48FC92)
48FC8E:  ADD             R0, PC; UseDataFence_ptr
48FC90:  LDR             R0, [R0]; UseDataFence
48FC92:  STR             R0, [SP,#0x90+var_60]
48FC94:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x48FC9A)
48FC96:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
48FC98:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
48FC9A:  STR             R0, [SP,#0x90+var_64]
48FC9C:  LDR             R0, =(UseDataFence_ptr - 0x48FCA2)
48FC9E:  ADD             R0, PC; UseDataFence_ptr
48FCA0:  LDR             R0, [R0]; UseDataFence
48FCA2:  STR             R0, [SP,#0x90+var_68]
48FCA4:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x48FCAA)
48FCA6:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
48FCA8:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
48FCAA:  STR             R0, [SP,#0x90+var_6C]
48FCAC:  LDR             R0, =(UseDataFence_ptr - 0x48FCB2)
48FCAE:  ADD             R0, PC; UseDataFence_ptr
48FCB0:  LDR             R0, [R0]; UseDataFence
48FCB2:  STR             R0, [SP,#0x90+var_74]
48FCB4:  LDR             R0, =(UseDataFence_ptr - 0x48FCBA)
48FCB6:  ADD             R0, PC; UseDataFence_ptr
48FCB8:  LDR             R0, [R0]; UseDataFence
48FCBA:  STR             R0, [SP,#0x90+var_78]
48FCBC:  LDR             R0, =(UseDataFence_ptr - 0x48FCC2)
48FCBE:  ADD             R0, PC; UseDataFence_ptr
48FCC0:  LDR             R0, [R0]; UseDataFence
48FCC2:  STR             R0, [SP,#0x90+var_7C]
48FCC4:  LDR             R0, =(UseDataFence_ptr - 0x48FCCA)
48FCC6:  ADD             R0, PC; UseDataFence_ptr
48FCC8:  LDR             R0, [R0]; UseDataFence
48FCCA:  STR             R0, [SP,#0x90+var_80]
48FCCC:  LDR             R0, =(UseDataFence_ptr - 0x48FCD2)
48FCCE:  ADD             R0, PC; UseDataFence_ptr
48FCD0:  LDR             R0, [R0]; UseDataFence
48FCD2:  STR             R0, [SP,#0x90+var_84]
48FCD4:  LDR             R0, =(UseDataFence_ptr - 0x48FCDA)
48FCD6:  ADD             R0, PC; UseDataFence_ptr
48FCD8:  LDR             R0, [R0]; UseDataFence
48FCDA:  STR             R0, [SP,#0x90+var_88]
48FCDC:  LDR             R0, =(UseDataFence_ptr - 0x48FCE2)
48FCDE:  ADD             R0, PC; UseDataFence_ptr
48FCE0:  LDR             R0, [R0]; UseDataFence
48FCE2:  STR             R0, [SP,#0x90+var_8C]
48FCE4:  LDR             R0, =(_ZN9CMessages14PreviousBriefsE_ptr - 0x48FCEA)
48FCE6:  ADD             R0, PC; _ZN9CMessages14PreviousBriefsE_ptr
48FCE8:  LDR             R0, [R0]; CMessages::PreviousBriefs ...
48FCEA:  STR             R0, [SP,#0x90+var_90]
48FCEC:  LDR             R0, =(UseDataFence_ptr - 0x48FCF2)
48FCEE:  ADD             R0, PC; UseDataFence_ptr
48FCF0:  LDR             R0, [R0]; UseDataFence
48FCF2:  STR             R0, [SP,#0x90+var_70]
48FCF4:  LDR             R0, [SP,#0x90+var_28]
48FCF6:  LDRB            R5, [R0]
48FCF8:  CBZ             R5, loc_48FD0A
48FCFA:  LDR             R4, [SP,#0x90+var_70]
48FCFC:  MOV             R0, R6; this
48FCFE:  MOVS            R1, #(stderr+2); void *
48FD00:  STRB.W          R9, [R4]
48FD04:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48FD08:  STRB            R5, [R4]
48FD0A:  MOV             R0, R6; this
48FD0C:  MOVS            R1, #byte_4; void *
48FD0E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48FD12:  LDR             R1, [SP,#0x90+var_24]
48FD14:  CMP             R1, #1
48FD16:  BLT.W           loc_48FE2E
48FD1A:  LDR             R0, [SP,#0x90+var_2C]
48FD1C:  ADD.W           R5, R0, R8
48FD20:  LDR             R0, [SP,#0x90+var_30]
48FD22:  STR.W           R9, [R0,R8]
48FD26:  ADD             R0, R8
48FD28:  STR.W           R9, [R0,#4]
48FD2C:  LDR             R0, [SP,#0x90+var_34]
48FD2E:  LDRB.W          R10, [R0]
48FD32:  CMP.W           R10, #0
48FD36:  BEQ             loc_48FD4C
48FD38:  LDR             R4, [SP,#0x90+var_8C]
48FD3A:  MOV             R0, R11; this
48FD3C:  MOVS            R1, #(stderr+2); void *
48FD3E:  STRB.W          R9, [R4]
48FD42:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48FD46:  LDR             R1, [SP,#0x90+var_24]; void *
48FD48:  STRB.W          R10, [R4]
48FD4C:  MOV             R0, R5; this
48FD4E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48FD52:  LDR             R0, [SP,#0x90+var_38]; this
48FD54:  MOV             R1, R5; CKeyGen *
48FD56:  BLX             j__ZN5CText3GetEPKc; CText::Get(char const*)
48FD5A:  LDR             R1, [SP,#0x90+var_3C]
48FD5C:  ADD             R1, R8
48FD5E:  STR             R0, [R1,#8]
48FD60:  LDR             R0, [SP,#0x90+var_40]
48FD62:  LDRB            R5, [R0]
48FD64:  CBZ             R5, loc_48FD76
48FD66:  LDR             R4, [SP,#0x90+var_88]
48FD68:  MOV             R0, R11; this
48FD6A:  MOVS            R1, #(stderr+2); void *
48FD6C:  STRB.W          R9, [R4]
48FD70:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48FD74:  STRB            R5, [R4]
48FD76:  LDR             R0, [SP,#0x90+var_44]
48FD78:  MOVS            R1, #byte_4; void *
48FD7A:  ADD             R0, R8
48FD7C:  ADDS            R0, #0xC; this
48FD7E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48FD82:  LDR             R0, [SP,#0x90+var_48]
48FD84:  LDRB            R5, [R0]
48FD86:  CBZ             R5, loc_48FD98
48FD88:  LDR             R4, [SP,#0x90+var_84]
48FD8A:  MOV             R0, R11; this
48FD8C:  MOVS            R1, #(stderr+2); void *
48FD8E:  STRB.W          R9, [R4]
48FD92:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48FD96:  STRB            R5, [R4]
48FD98:  LDR             R0, [SP,#0x90+var_4C]
48FD9A:  MOVS            R1, #byte_4; void *
48FD9C:  ADD             R0, R8
48FD9E:  ADDS            R0, #0x10; this
48FDA0:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48FDA4:  LDR             R0, [SP,#0x90+var_50]
48FDA6:  LDRB            R5, [R0]
48FDA8:  CBZ             R5, loc_48FDBA
48FDAA:  LDR             R4, [SP,#0x90+var_80]
48FDAC:  MOV             R0, R11; this
48FDAE:  MOVS            R1, #(stderr+2); void *
48FDB0:  STRB.W          R9, [R4]
48FDB4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48FDB8:  STRB            R5, [R4]
48FDBA:  LDR             R0, [SP,#0x90+var_54]
48FDBC:  MOVS            R1, #byte_4; void *
48FDBE:  ADD             R0, R8
48FDC0:  ADDS            R0, #0x14; this
48FDC2:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48FDC6:  LDR             R0, [SP,#0x90+var_58]
48FDC8:  LDRB            R5, [R0]
48FDCA:  CBZ             R5, loc_48FDDC
48FDCC:  LDR             R4, [SP,#0x90+var_7C]
48FDCE:  MOV             R0, R11; this
48FDD0:  MOVS            R1, #(stderr+2); void *
48FDD2:  STRB.W          R9, [R4]
48FDD6:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48FDDA:  STRB            R5, [R4]
48FDDC:  LDR             R0, [SP,#0x90+var_5C]
48FDDE:  MOVS            R1, #byte_4; void *
48FDE0:  ADD             R0, R8
48FDE2:  ADDS            R0, #0x18; this
48FDE4:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48FDE8:  LDR             R0, [SP,#0x90+var_60]
48FDEA:  LDRB            R5, [R0]
48FDEC:  CBZ             R5, loc_48FDFE
48FDEE:  LDR             R4, [SP,#0x90+var_78]
48FDF0:  MOV             R0, R11; this
48FDF2:  MOVS            R1, #(stderr+2); void *
48FDF4:  STRB.W          R9, [R4]
48FDF8:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48FDFC:  STRB            R5, [R4]
48FDFE:  LDR             R0, [SP,#0x90+var_64]
48FE00:  MOVS            R1, #byte_4; void *
48FE02:  ADD             R0, R8
48FE04:  ADDS            R0, #0x1C; this
48FE06:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48FE0A:  LDR             R0, [SP,#0x90+var_68]
48FE0C:  LDRB            R5, [R0]
48FE0E:  CBZ             R5, loc_48FE20
48FE10:  LDR             R4, [SP,#0x90+var_74]
48FE12:  MOV             R0, R11; this
48FE14:  MOVS            R1, #(stderr+2); void *
48FE16:  STRB.W          R9, [R4]
48FE1A:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48FE1E:  STRB            R5, [R4]
48FE20:  LDR             R0, [SP,#0x90+var_6C]
48FE22:  MOVS            R1, #byte_4; void *
48FE24:  ADD             R0, R8
48FE26:  ADDS            R0, #0x20 ; ' '; this
48FE28:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48FE2C:  B               loc_48FE3A
48FE2E:  LDR             R0, [SP,#0x90+var_90]
48FE30:  STRB.W          R9, [R0,R8]
48FE34:  ADD             R0, R8
48FE36:  STR.W           R9, [R0,#8]
48FE3A:  ADD.W           R8, R8, #0x28 ; '('
48FE3E:  CMP.W           R8, #0x320
48FE42:  BNE.W           loc_48FCF4
48FE46:  ADD             SP, SP, #0x74 ; 't'
48FE48:  POP.W           {R8-R11}
48FE4C:  POP             {R4-R7,PC}
