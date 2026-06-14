; =========================================================
; Game Engine Function: _ZN22KeyboardControlsScreen16DoOnFootMappingsEv
; Address            : 0x29F964 - 0x2A0C2E
; =========================================================

29F964:  PUSH            {R4-R7,LR}
29F966:  ADD             R7, SP, #0xC
29F968:  PUSH.W          {R8-R11}
29F96C:  SUB.W           SP, SP, #0x224
29F970:  MOV             R11, R0
29F972:  LDR.W           R0, =(__stack_chk_guard_ptr - 0x29F97A)
29F976:  ADD             R0, PC; __stack_chk_guard_ptr
29F978:  LDR             R0, [R0]; __stack_chk_guard
29F97A:  LDR             R0, [R0]
29F97C:  STR             R0, [SP,#0x240+var_20]
29F97E:  LDR.W           R0, [R11,#0x38]
29F982:  CBZ             R0, loc_29F9B8
29F984:  MOV.W           R8, #0
29F988:  MOV.W           R4, #0x208
29F98C:  MOVS            R6, #0
29F98E:  LDR.W           R9, [R11,#0x3C]
29F992:  ADD.W           R5, R9, R4
29F996:  LDR             R0, [R5,#8]; p
29F998:  STR.W           R8, [R5,#4]
29F99C:  CBZ             R0, loc_29F9A6
29F99E:  BLX             free
29F9A2:  STR.W           R8, [R5,#8]
29F9A6:  STR.W           R8, [R9,R4]
29F9AA:  ADD.W           R4, R4, #0x214
29F9AE:  ADDS            R6, #1
29F9B0:  LDR.W           R0, [R11,#0x38]
29F9B4:  CMP             R6, R0
29F9B6:  BCC             loc_29F98E
29F9B8:  MOVS            R0, #0
29F9BA:  MOVW            R1, #:lower16:loc_303058
29F9BE:  STR.W           R0, [R11,#0x18]
29F9C2:  MOVW            R4, #0x4F4D
29F9C6:  STR.W           R0, [R11,#0x38]
29F9CA:  MOVT            R1, #:upper16:loc_303058
29F9CE:  STR             R0, [SP,#0x240+p]
29F9D0:  MOVT            R4, #0x5F42
29F9D4:  STRD.W          R0, R0, [SP,#0x240+var_30]
29F9D8:  MOVS            R0, #0x1F
29F9DA:  STR             R0, [SP,#0x240+var_38]
29F9DC:  MOV             R0, #0x201CF3
29F9E4:  STR             R4, [SP,#0x240+var_138]
29F9E6:  ADD             R0, R1
29F9E8:  STRD.W          R4, R0, [SP,#0x240+var_238]
29F9EC:  ADD.W           R0, R1, #0x70000
29F9F0:  ADD.W           R0, R0, #0x500
29F9F4:  STR             R0, [SP,#0x240+var_134]
29F9F6:  MOVS            R0, #1
29F9F8:  STRB.W          R0, [SP,#0x240+var_34]
29F9FC:  LDR.W           R0, [R11,#0x34]
29FA00:  CBZ             R0, loc_29FA0A
29FA02:  LDR.W           R5, [R11,#0x3C]
29FA06:  MOVS            R0, #0
29FA08:  B               loc_29FA32
29FA0A:  MOV.W           R0, #0x850; byte_count
29FA0E:  BLX             malloc
29FA12:  MOV             R5, R0
29FA14:  LDR.W           R0, [R11,#0x3C]; p
29FA18:  CMP             R0, #0
29FA1A:  BEQ             loc_29FA26
29FA1C:  BLX             free
29FA20:  LDR.W           R0, [R11,#0x38]
29FA24:  B               loc_29FA28
29FA26:  MOVS            R0, #0
29FA28:  MOVS            R1, #4
29FA2A:  STR.W           R5, [R11,#0x3C]
29FA2E:  STR.W           R1, [R11,#0x34]
29FA32:  MOV.W           R1, #0x214
29FA36:  ADD.W           R9, SP, #0x240+var_238
29FA3A:  MLA.W           R5, R0, R1, R5
29FA3E:  MOVW            R2, #0x205; size_t
29FA42:  MOV             R1, R9; void *
29FA44:  MOV             R0, R5; void *
29FA46:  BLX             memcpy_0
29FA4A:  ADD.W           R10, R9, #0x208
29FA4E:  ADD.W           R0, R5, #0x208
29FA52:  MOV             R1, R10
29FA54:  BLX             j__ZN7OSArrayIiEC2ERKS0_; OSArray<int>::OSArray(OSArray<int> const&)
29FA58:  LDR.W           R0, [R11,#0x38]
29FA5C:  MOVS            R5, #0
29FA5E:  ADD.W           R8, R0, #1
29FA62:  STR.W           R8, [R11,#0x38]
29FA66:  LDR             R0, [SP,#0x240+p]; p
29FA68:  STR             R5, [SP,#0x240+var_2C]
29FA6A:  CBZ             R0, loc_29FA76
29FA6C:  BLX             free
29FA70:  STR             R5, [SP,#0x240+p]
29FA72:  LDR.W           R8, [R11,#0x38]
29FA76:  MOVS            R0, #0x1E
29FA78:  STR             R5, [SP,#0x240+p]
29FA7A:  STRD.W          R5, R5, [SP,#0x240+var_30]
29FA7E:  MOVW            R1, #:lower16:loc_303058
29FA82:  STR             R0, [SP,#0x240+var_38]
29FA84:  MOV             R0, #0x1C1CF3
29FA8C:  MOVT            R1, #:upper16:loc_303058
29FA90:  ADD             R0, R1
29FA92:  STR             R4, [SP,#0x240+var_138]
29FA94:  STRD.W          R4, R0, [SP,#0x240+var_238]
29FA98:  ADD.W           R0, R1, #0x50000
29FA9C:  ADD.W           R0, R0, #0x500
29FAA0:  STR             R0, [SP,#0x240+var_134]
29FAA2:  MOVS            R0, #1
29FAA4:  STRB.W          R0, [SP,#0x240+var_34]
29FAA8:  ADD.W           R0, R8, #1
29FAAC:  LDR.W           R1, [R11,#0x34]
29FAB0:  STR.W           R10, [SP,#0x240+var_23C]
29FAB4:  CMP             R1, R0
29FAB6:  BCS             loc_29FB12
29FAB8:  MOVW            R1, #0xAAAB
29FABC:  LSLS            R0, R0, #2
29FABE:  MOVT            R1, #0xAAAA
29FAC2:  MOV.W           R4, #0x214
29FAC6:  UMULL.W         R0, R1, R0, R1
29FACA:  MOVS            R0, #3
29FACC:  ADD.W           R10, R0, R1,LSR#1
29FAD0:  MUL.W           R0, R10, R4; byte_count
29FAD4:  BLX             malloc
29FAD8:  LDR.W           R6, [R11,#0x3C]
29FADC:  MOV             R5, R0
29FADE:  CMP             R6, #0
29FAE0:  BEQ             loc_29FAF8
29FAE2:  MUL.W           R2, R8, R4; size_t
29FAE6:  MOV             R0, R5; void *
29FAE8:  MOV             R1, R6; void *
29FAEA:  BLX             memcpy_0
29FAEE:  MOV             R0, R6; p
29FAF0:  BLX             free
29FAF4:  LDR.W           R8, [R11,#0x38]
29FAF8:  STR.W           R5, [R11,#0x3C]
29FAFC:  MOVW            R4, #0x4F4D
29FB00:  STR.W           R10, [R11,#0x34]
29FB04:  ADD.W           R9, SP, #0x240+var_238
29FB08:  LDR.W           R10, [SP,#0x240+var_23C]
29FB0C:  MOVT            R4, #0x5F42
29FB10:  B               loc_29FB16
29FB12:  LDR.W           R5, [R11,#0x3C]
29FB16:  MOV.W           R0, #0x214
29FB1A:  MOV             R1, R9; void *
29FB1C:  MLA.W           R5, R8, R0, R5
29FB20:  MOVW            R2, #0x205; size_t
29FB24:  MOV             R0, R5; void *
29FB26:  BLX             memcpy_0
29FB2A:  ADD.W           R0, R5, #0x208
29FB2E:  MOV             R1, R10
29FB30:  BLX             j__ZN7OSArrayIiEC2ERKS0_; OSArray<int>::OSArray(OSArray<int> const&)
29FB34:  LDR.W           R0, [R11,#0x38]
29FB38:  MOVS            R5, #0
29FB3A:  ADDS            R6, R0, #1
29FB3C:  STR.W           R6, [R11,#0x38]
29FB40:  LDR             R0, [SP,#0x240+p]; p
29FB42:  STR             R5, [SP,#0x240+var_2C]
29FB44:  CBZ             R0, loc_29FB50
29FB46:  BLX             free
29FB4A:  STR             R5, [SP,#0x240+p]
29FB4C:  LDR.W           R6, [R11,#0x38]
29FB50:  MOVS            R0, #0x1F
29FB52:  STR             R5, [SP,#0x240+p]
29FB54:  STRD.W          R5, R5, [SP,#0x240+var_30]
29FB58:  MOVW            R1, #:lower16:loc_303058
29FB5C:  STR             R0, [SP,#0x240+var_38]
29FB5E:  MOV             R0, #0x121CF3
29FB66:  MOVT            R1, #:upper16:loc_303058
29FB6A:  ADD             R0, R1
29FB6C:  STR             R4, [SP,#0x240+var_138]
29FB6E:  STRD.W          R4, R0, [SP,#0x240+var_238]
29FB72:  ADD.W           R0, R1, #0x80000
29FB76:  ADD.W           R0, R0, #0x500
29FB7A:  STR             R0, [SP,#0x240+var_134]
29FB7C:  STRB.W          R5, [SP,#0x240+var_34]
29FB80:  ADDS            R0, R6, #1
29FB82:  LDR.W           R1, [R11,#0x34]
29FB86:  CMP             R1, R0
29FB88:  BCS             loc_29FBE6
29FB8A:  MOVW            R1, #0xAAAB
29FB8E:  LSLS            R0, R0, #2
29FB90:  MOVT            R1, #0xAAAA
29FB94:  MOV.W           R4, #0x214
29FB98:  UMULL.W         R0, R1, R0, R1
29FB9C:  MOVS            R0, #3
29FB9E:  ADD.W           R10, R0, R1,LSR#1
29FBA2:  MUL.W           R0, R10, R4; byte_count
29FBA6:  BLX             malloc
29FBAA:  LDR.W           R8, [R11,#0x3C]
29FBAE:  MOV             R5, R0
29FBB0:  CMP.W           R8, #0
29FBB4:  BEQ             loc_29FBCC
29FBB6:  MUL.W           R2, R6, R4; size_t
29FBBA:  MOV             R0, R5; void *
29FBBC:  MOV             R1, R8; void *
29FBBE:  BLX             memcpy_0
29FBC2:  MOV             R0, R8; p
29FBC4:  BLX             free
29FBC8:  LDR.W           R6, [R11,#0x38]
29FBCC:  STR.W           R5, [R11,#0x3C]
29FBD0:  MOVW            R4, #0x4F4D
29FBD4:  STR.W           R10, [R11,#0x34]
29FBD8:  ADD.W           R9, SP, #0x240+var_238
29FBDC:  LDR.W           R10, [SP,#0x240+var_23C]
29FBE0:  MOVT            R4, #0x5F42
29FBE4:  B               loc_29FBEA
29FBE6:  LDR.W           R5, [R11,#0x3C]
29FBEA:  MOV.W           R0, #0x214
29FBEE:  MOV             R1, R9; void *
29FBF0:  MLA.W           R5, R6, R0, R5
29FBF4:  MOVW            R2, #0x205; size_t
29FBF8:  MOV             R0, R5; void *
29FBFA:  BLX             memcpy_0
29FBFE:  ADD.W           R0, R5, #0x208
29FC02:  MOV             R1, R10
29FC04:  BLX             j__ZN7OSArrayIiEC2ERKS0_; OSArray<int>::OSArray(OSArray<int> const&)
29FC08:  LDR.W           R0, [R11,#0x38]
29FC0C:  MOVS            R5, #0
29FC0E:  ADDS            R6, R0, #1
29FC10:  STR.W           R6, [R11,#0x38]
29FC14:  LDR             R0, [SP,#0x240+p]; p
29FC16:  STR             R5, [SP,#0x240+var_2C]
29FC18:  CBZ             R0, loc_29FC24
29FC1A:  BLX             free
29FC1E:  STR             R5, [SP,#0x240+p]
29FC20:  LDR.W           R6, [R11,#0x38]
29FC24:  MOVS            R0, #0x1E
29FC26:  STR             R5, [SP,#0x240+p]
29FC28:  STRD.W          R5, R5, [SP,#0x240+var_30]
29FC2C:  MOVW            R1, #:lower16:loc_303058
29FC30:  STR             R0, [SP,#0x240+var_38]
29FC32:  MOV             R0, #0x221CF3
29FC3A:  MOVT            R1, #:upper16:loc_303058
29FC3E:  ADD             R0, R1
29FC40:  STR             R4, [SP,#0x240+var_138]
29FC42:  STRD.W          R4, R0, [SP,#0x240+var_238]
29FC46:  ADD.W           R0, R1, #0x60000
29FC4A:  ADD.W           R0, R0, #0x500
29FC4E:  STR             R0, [SP,#0x240+var_134]
29FC50:  STRB.W          R5, [SP,#0x240+var_34]
29FC54:  ADDS            R0, R6, #1
29FC56:  LDR.W           R1, [R11,#0x34]
29FC5A:  CMP             R1, R0
29FC5C:  BCS             loc_29FCBA
29FC5E:  MOVW            R1, #0xAAAB
29FC62:  LSLS            R0, R0, #2
29FC64:  MOVT            R1, #0xAAAA
29FC68:  MOV.W           R4, #0x214
29FC6C:  UMULL.W         R0, R1, R0, R1
29FC70:  MOVS            R0, #3
29FC72:  ADD.W           R10, R0, R1,LSR#1
29FC76:  MUL.W           R0, R10, R4; byte_count
29FC7A:  BLX             malloc
29FC7E:  LDR.W           R8, [R11,#0x3C]
29FC82:  MOV             R5, R0
29FC84:  CMP.W           R8, #0
29FC88:  BEQ             loc_29FCA0
29FC8A:  MUL.W           R2, R6, R4; size_t
29FC8E:  MOV             R0, R5; void *
29FC90:  MOV             R1, R8; void *
29FC92:  BLX             memcpy_0
29FC96:  MOV             R0, R8; p
29FC98:  BLX             free
29FC9C:  LDR.W           R6, [R11,#0x38]
29FCA0:  STR.W           R5, [R11,#0x3C]
29FCA4:  MOVW            R4, #0x4F4D
29FCA8:  STR.W           R10, [R11,#0x34]
29FCAC:  ADD.W           R9, SP, #0x240+var_238
29FCB0:  LDR.W           R10, [SP,#0x240+var_23C]
29FCB4:  MOVT            R4, #0x5F42
29FCB8:  B               loc_29FCBE
29FCBA:  LDR.W           R5, [R11,#0x3C]
29FCBE:  MOV.W           R0, #0x214
29FCC2:  MOV             R1, R9; void *
29FCC4:  MLA.W           R5, R6, R0, R5
29FCC8:  MOVW            R2, #0x205; size_t
29FCCC:  MOV             R0, R5; void *
29FCCE:  BLX             memcpy_0
29FCD2:  ADD.W           R0, R5, #0x208
29FCD6:  MOV             R1, R10
29FCD8:  BLX             j__ZN7OSArrayIiEC2ERKS0_; OSArray<int>::OSArray(OSArray<int> const&)
29FCDC:  LDR.W           R0, [R11,#0x38]
29FCE0:  MOVS            R5, #0
29FCE2:  ADDS            R6, R0, #1
29FCE4:  STR.W           R6, [R11,#0x38]
29FCE8:  LDR             R0, [SP,#0x240+p]; p
29FCEA:  STR             R5, [SP,#0x240+var_2C]
29FCEC:  CBZ             R0, loc_29FCF8
29FCEE:  BLX             free
29FCF2:  STR             R5, [SP,#0x240+p]
29FCF4:  LDR.W           R6, [R11,#0x38]
29FCF8:  MOVS            R0, #1
29FCFA:  STR             R5, [SP,#0x240+p]
29FCFC:  STRD.W          R5, R5, [SP,#0x240+var_30]
29FD00:  MOVW            R1, #:lower16:loc_303058
29FD04:  STR             R0, [SP,#0x240+var_38]
29FD06:  MOV             R0, #0x2410F3
29FD0E:  MOVT            R1, #:upper16:loc_303058
29FD12:  ADD             R0, R1
29FD14:  STR             R4, [SP,#0x240+var_138]
29FD16:  STRD.W          R4, R0, [SP,#0x240+var_238]
29FD1A:  ADDS            R0, R6, #1
29FD1C:  STR             R1, [SP,#0x240+var_134]
29FD1E:  STRB.W          R5, [SP,#0x240+var_34]
29FD22:  LDR.W           R1, [R11,#0x34]
29FD26:  CMP             R1, R0
29FD28:  BCS             loc_29FD86
29FD2A:  MOVW            R1, #0xAAAB
29FD2E:  LSLS            R0, R0, #2
29FD30:  MOVT            R1, #0xAAAA
29FD34:  MOV.W           R4, #0x214
29FD38:  UMULL.W         R0, R1, R0, R1
29FD3C:  MOVS            R0, #3
29FD3E:  ADD.W           R10, R0, R1,LSR#1
29FD42:  MUL.W           R0, R10, R4; byte_count
29FD46:  BLX             malloc
29FD4A:  LDR.W           R8, [R11,#0x3C]
29FD4E:  MOV             R5, R0
29FD50:  CMP.W           R8, #0
29FD54:  BEQ             loc_29FD6C
29FD56:  MUL.W           R2, R6, R4; size_t
29FD5A:  MOV             R0, R5; void *
29FD5C:  MOV             R1, R8; void *
29FD5E:  BLX             memcpy_0
29FD62:  MOV             R0, R8; p
29FD64:  BLX             free
29FD68:  LDR.W           R6, [R11,#0x38]
29FD6C:  STR.W           R5, [R11,#0x3C]
29FD70:  MOVW            R4, #0x4F4D
29FD74:  STR.W           R10, [R11,#0x34]
29FD78:  ADD.W           R9, SP, #0x240+var_238
29FD7C:  LDR.W           R10, [SP,#0x240+var_23C]
29FD80:  MOVT            R4, #0x5F42
29FD84:  B               loc_29FD8A
29FD86:  LDR.W           R5, [R11,#0x3C]
29FD8A:  MOV.W           R0, #0x214
29FD8E:  MOV             R1, R9; void *
29FD90:  MLA.W           R5, R6, R0, R5
29FD94:  MOVW            R2, #0x205; size_t
29FD98:  MOV             R0, R5; void *
29FD9A:  BLX             memcpy_0
29FD9E:  ADD.W           R0, R5, #0x208
29FDA2:  MOV             R1, R10
29FDA4:  BLX             j__ZN7OSArrayIiEC2ERKS0_; OSArray<int>::OSArray(OSArray<int> const&)
29FDA8:  LDR.W           R0, [R11,#0x38]
29FDAC:  MOVS            R5, #0
29FDAE:  ADDS            R6, R0, #1
29FDB0:  STR.W           R6, [R11,#0x38]
29FDB4:  LDR             R0, [SP,#0x240+p]; p
29FDB6:  STR             R5, [SP,#0x240+var_2C]
29FDB8:  CBZ             R0, loc_29FDC4
29FDBA:  BLX             free
29FDBE:  STR             R5, [SP,#0x240+p]
29FDC0:  LDR.W           R6, [R11,#0x38]
29FDC4:  MOVS            R0, #5
29FDC6:  STR             R5, [SP,#0x240+p]
29FDC8:  STRD.W          R5, R5, [SP,#0x240+var_30]
29FDCC:  MOVW            R1, #:lower16:loc_303058
29FDD0:  STR             R0, [SP,#0x240+var_38]
29FDD2:  MOV             R0, #0x1314F3
29FDDA:  MOVT            R1, #:upper16:loc_303058
29FDDE:  ADD             R0, R1
29FDE0:  STR             R4, [SP,#0x240+var_138]
29FDE2:  STRD.W          R4, R0, [SP,#0x240+var_238]
29FDE6:  ADD.W           R0, R1, #0x10000
29FDEA:  STR             R0, [SP,#0x240+var_134]
29FDEC:  ADDS            R0, R6, #1
29FDEE:  STRB.W          R5, [SP,#0x240+var_34]
29FDF2:  LDR.W           R1, [R11,#0x34]
29FDF6:  CMP             R1, R0
29FDF8:  BCS             loc_29FE56
29FDFA:  MOVW            R1, #0xAAAB
29FDFE:  LSLS            R0, R0, #2
29FE00:  MOVT            R1, #0xAAAA
29FE04:  MOV.W           R4, #0x214
29FE08:  UMULL.W         R0, R1, R0, R1
29FE0C:  MOVS            R0, #3
29FE0E:  ADD.W           R10, R0, R1,LSR#1
29FE12:  MUL.W           R0, R10, R4; byte_count
29FE16:  BLX             malloc
29FE1A:  LDR.W           R8, [R11,#0x3C]
29FE1E:  MOV             R5, R0
29FE20:  CMP.W           R8, #0
29FE24:  BEQ             loc_29FE3C
29FE26:  MUL.W           R2, R6, R4; size_t
29FE2A:  MOV             R0, R5; void *
29FE2C:  MOV             R1, R8; void *
29FE2E:  BLX             memcpy_0
29FE32:  MOV             R0, R8; p
29FE34:  BLX             free
29FE38:  LDR.W           R6, [R11,#0x38]
29FE3C:  STR.W           R5, [R11,#0x3C]
29FE40:  MOVW            R4, #0x4F4D
29FE44:  STR.W           R10, [R11,#0x34]
29FE48:  ADD.W           R9, SP, #0x240+var_238
29FE4C:  LDR.W           R10, [SP,#0x240+var_23C]
29FE50:  MOVT            R4, #0x5F42
29FE54:  B               loc_29FE5A
29FE56:  LDR.W           R5, [R11,#0x3C]
29FE5A:  MOV.W           R0, #0x214
29FE5E:  MOV             R1, R9; void *
29FE60:  MLA.W           R5, R6, R0, R5
29FE64:  MOVW            R2, #0x205; size_t
29FE68:  MOV             R0, R5; void *
29FE6A:  BLX             memcpy_0
29FE6E:  ADD.W           R0, R5, #0x208
29FE72:  MOV             R1, R10
29FE74:  BLX             j__ZN7OSArrayIiEC2ERKS0_; OSArray<int>::OSArray(OSArray<int> const&)
29FE78:  LDR.W           R0, [R11,#0x38]
29FE7C:  MOVS            R5, #0
29FE7E:  ADDS            R6, R0, #1
29FE80:  STR.W           R6, [R11,#0x38]
29FE84:  LDR             R0, [SP,#0x240+p]; p
29FE86:  STR             R5, [SP,#0x240+var_2C]
29FE88:  CBZ             R0, loc_29FE94
29FE8A:  BLX             free
29FE8E:  STR             R5, [SP,#0x240+p]
29FE90:  LDR.W           R6, [R11,#0x38]
29FE94:  MOVS            R0, #2
29FE96:  STR             R5, [SP,#0x240+p]
29FE98:  STRD.W          R5, R5, [SP,#0x240+var_30]
29FE9C:  MOVW            R1, #:lower16:loc_303058
29FEA0:  STR             R0, [SP,#0x240+var_38]
29FEA2:  MOV             R0, #0x2022F3
29FEAA:  MOVT            R1, #:upper16:loc_303058
29FEAE:  ADD             R0, R1
29FEB0:  STR             R4, [SP,#0x240+var_138]
29FEB2:  STRD.W          R4, R0, [SP,#0x240+var_238]
29FEB6:  ADD.W           R0, R1, #0x20000
29FEBA:  STR             R0, [SP,#0x240+var_134]
29FEBC:  ADDS            R0, R6, #1
29FEBE:  STRB.W          R5, [SP,#0x240+var_34]
29FEC2:  LDR.W           R1, [R11,#0x34]
29FEC6:  CMP             R1, R0
29FEC8:  BCS             loc_29FF26
29FECA:  MOVW            R1, #0xAAAB
29FECE:  LSLS            R0, R0, #2
29FED0:  MOVT            R1, #0xAAAA
29FED4:  MOV.W           R4, #0x214
29FED8:  UMULL.W         R0, R1, R0, R1
29FEDC:  MOVS            R0, #3
29FEDE:  ADD.W           R10, R0, R1,LSR#1
29FEE2:  MUL.W           R0, R10, R4; byte_count
29FEE6:  BLX             malloc
29FEEA:  LDR.W           R8, [R11,#0x3C]
29FEEE:  MOV             R5, R0
29FEF0:  CMP.W           R8, #0
29FEF4:  BEQ             loc_29FF0C
29FEF6:  MUL.W           R2, R6, R4; size_t
29FEFA:  MOV             R0, R5; void *
29FEFC:  MOV             R1, R8; void *
29FEFE:  BLX             memcpy_0
29FF02:  MOV             R0, R8; p
29FF04:  BLX             free
29FF08:  LDR.W           R6, [R11,#0x38]
29FF0C:  STR.W           R5, [R11,#0x3C]
29FF10:  MOVW            R4, #0x4F4D
29FF14:  STR.W           R10, [R11,#0x34]
29FF18:  ADD.W           R9, SP, #0x240+var_238
29FF1C:  LDR.W           R10, [SP,#0x240+var_23C]
29FF20:  MOVT            R4, #0x5F42
29FF24:  B               loc_29FF2A
29FF26:  LDR.W           R5, [R11,#0x3C]
29FF2A:  MOV.W           R0, #0x214
29FF2E:  MOV             R1, R9; void *
29FF30:  MLA.W           R5, R6, R0, R5
29FF34:  MOVW            R2, #0x205; size_t
29FF38:  MOV             R0, R5; void *
29FF3A:  BLX             memcpy_0
29FF3E:  ADD.W           R0, R5, #0x208
29FF42:  MOV             R1, R10
29FF44:  BLX             j__ZN7OSArrayIiEC2ERKS0_; OSArray<int>::OSArray(OSArray<int> const&)
29FF48:  LDR.W           R0, [R11,#0x38]
29FF4C:  MOVS            R5, #0
29FF4E:  ADDS            R6, R0, #1
29FF50:  STR.W           R6, [R11,#0x38]
29FF54:  LDR             R0, [SP,#0x240+p]; p
29FF56:  STR             R5, [SP,#0x240+var_2C]
29FF58:  CBZ             R0, loc_29FF64
29FF5A:  BLX             free
29FF5E:  STR             R5, [SP,#0x240+p]
29FF60:  LDR.W           R6, [R11,#0x38]
29FF64:  MOVW            R1, #:lower16:(loc_2519F0+3)
29FF68:  MOVW            R2, #:lower16:loc_303058
29FF6C:  MOVT            R1, #:upper16:(loc_2519F0+3)
29FF70:  MOVT            R2, #:upper16:loc_303058
29FF74:  ADD             R1, R2
29FF76:  MOVS            R0, #3
29FF78:  STR             R5, [SP,#0x240+p]
29FF7A:  STRD.W          R5, R5, [SP,#0x240+var_30]
29FF7E:  STR             R0, [SP,#0x240+var_38]
29FF80:  STR             R4, [SP,#0x240+var_138]
29FF82:  STRD.W          R4, R1, [SP,#0x240+var_238]
29FF86:  ADD.W           R1, R2, #0x30000
29FF8A:  STR             R1, [SP,#0x240+var_134]
29FF8C:  ADDS            R1, R6, #1
29FF8E:  STRB.W          R5, [SP,#0x240+var_34]
29FF92:  LDR.W           R2, [R11,#0x34]
29FF96:  CMP             R2, R1
29FF98:  BCS             loc_29FFF4
29FF9A:  MOVW            R2, #0xAAAB
29FF9E:  LSLS            R1, R1, #2
29FFA0:  MOVT            R2, #0xAAAA
29FFA4:  MOV.W           R4, #0x214
29FFA8:  UMULL.W         R1, R2, R1, R2
29FFAC:  ADD.W           R10, R0, R2,LSR#1
29FFB0:  MUL.W           R0, R10, R4; byte_count
29FFB4:  BLX             malloc
29FFB8:  LDR.W           R8, [R11,#0x3C]
29FFBC:  MOV             R5, R0
29FFBE:  CMP.W           R8, #0
29FFC2:  BEQ             loc_29FFDA
29FFC4:  MUL.W           R2, R6, R4; size_t
29FFC8:  MOV             R0, R5; void *
29FFCA:  MOV             R1, R8; void *
29FFCC:  BLX             memcpy_0
29FFD0:  MOV             R0, R8; p
29FFD2:  BLX             free
29FFD6:  LDR.W           R6, [R11,#0x38]
29FFDA:  STR.W           R5, [R11,#0x3C]
29FFDE:  MOVW            R4, #0x4F4D
29FFE2:  STR.W           R10, [R11,#0x34]
29FFE6:  ADD.W           R9, SP, #0x240+var_238
29FFEA:  LDR.W           R10, [SP,#0x240+var_23C]
29FFEE:  MOVT            R4, #0x5F42
29FFF2:  B               loc_29FFF8
29FFF4:  LDR.W           R5, [R11,#0x3C]
29FFF8:  MOV.W           R0, #0x214
29FFFC:  MOV             R1, R9; void *
29FFFE:  MLA.W           R5, R6, R0, R5
2A0002:  MOVW            R2, #0x205; size_t
2A0006:  MOV             R0, R5; void *
2A0008:  BLX             memcpy_0
2A000C:  ADD.W           R0, R5, #0x208
2A0010:  MOV             R1, R10
2A0012:  BLX             j__ZN7OSArrayIiEC2ERKS0_; OSArray<int>::OSArray(OSArray<int> const&)
2A0016:  LDR.W           R0, [R11,#0x38]
2A001A:  MOVS            R5, #0
2A001C:  ADDS            R6, R0, #1
2A001E:  STR.W           R6, [R11,#0x38]
2A0022:  LDR             R0, [SP,#0x240+p]; p
2A0024:  STR             R5, [SP,#0x240+var_2C]
2A0026:  CBZ             R0, loc_2A0032
2A0028:  BLX             free
2A002C:  STR             R5, [SP,#0x240+p]
2A002E:  LDR.W           R6, [R11,#0x38]
2A0032:  MOVS            R0, #0x10
2A0034:  STR             R5, [SP,#0x240+p]
2A0036:  STRD.W          R5, R5, [SP,#0x240+var_30]
2A003A:  MOVW            R1, #:lower16:loc_303058
2A003E:  STR             R0, [SP,#0x240+var_38]
2A0040:  MOV             R0, #0x271FF3
2A0048:  MOVT            R1, #:upper16:loc_303058
2A004C:  ADD             R0, R1
2A004E:  STR             R4, [SP,#0x240+var_138]
2A0050:  STRD.W          R4, R0, [SP,#0x240+var_238]
2A0054:  ADD.W           R0, R1, #0x40000
2A0058:  STR             R0, [SP,#0x240+var_134]
2A005A:  ADDS            R0, R6, #1
2A005C:  STRB.W          R5, [SP,#0x240+var_34]
2A0060:  LDR.W           R1, [R11,#0x34]
2A0064:  CMP             R1, R0
2A0066:  BCS             loc_2A00C4
2A0068:  MOVW            R1, #0xAAAB
2A006C:  LSLS            R0, R0, #2
2A006E:  MOVT            R1, #0xAAAA
2A0072:  MOV.W           R4, #0x214
2A0076:  UMULL.W         R0, R1, R0, R1
2A007A:  MOVS            R0, #3
2A007C:  ADD.W           R10, R0, R1,LSR#1
2A0080:  MUL.W           R0, R10, R4; byte_count
2A0084:  BLX             malloc
2A0088:  LDR.W           R8, [R11,#0x3C]
2A008C:  MOV             R5, R0
2A008E:  CMP.W           R8, #0
2A0092:  BEQ             loc_2A00AA
2A0094:  MUL.W           R2, R6, R4; size_t
2A0098:  MOV             R0, R5; void *
2A009A:  MOV             R1, R8; void *
2A009C:  BLX             memcpy_0
2A00A0:  MOV             R0, R8; p
2A00A2:  BLX             free
2A00A6:  LDR.W           R6, [R11,#0x38]
2A00AA:  STR.W           R5, [R11,#0x3C]
2A00AE:  MOVW            R4, #0x4F4D
2A00B2:  STR.W           R10, [R11,#0x34]
2A00B6:  ADD.W           R9, SP, #0x240+var_238
2A00BA:  LDR.W           R10, [SP,#0x240+var_23C]
2A00BE:  MOVT            R4, #0x5F42
2A00C2:  B               loc_2A00C8
2A00C4:  LDR.W           R5, [R11,#0x3C]
2A00C8:  MOV.W           R0, #0x214
2A00CC:  MOV             R1, R9; void *
2A00CE:  MLA.W           R5, R6, R0, R5
2A00D2:  MOVW            R2, #0x205; size_t
2A00D6:  MOV             R0, R5; void *
2A00D8:  BLX             memcpy_0
2A00DC:  ADD.W           R0, R5, #0x208
2A00E0:  MOV             R1, R10
2A00E2:  BLX             j__ZN7OSArrayIiEC2ERKS0_; OSArray<int>::OSArray(OSArray<int> const&)
2A00E6:  LDR.W           R0, [R11,#0x38]
2A00EA:  MOVS            R5, #0
2A00EC:  ADDS            R6, R0, #1
2A00EE:  STR.W           R6, [R11,#0x38]
2A00F2:  LDR             R0, [SP,#0x240+p]; p
2A00F4:  STR             R5, [SP,#0x240+var_2C]
2A00F6:  CBZ             R0, loc_2A0102
2A00F8:  BLX             free
2A00FC:  STR             R5, [SP,#0x240+p]
2A00FE:  LDR.W           R6, [R11,#0x38]
2A0102:  MOVS            R0, #0xF
2A0104:  STR             R5, [SP,#0x240+p]
2A0106:  STRD.W          R5, R5, [SP,#0x240+var_30]
2A010A:  MOVW            R1, #:lower16:loc_303058
2A010E:  STR             R0, [SP,#0x240+var_38]
2A0110:  MOV             R0, #0x271DF3
2A0118:  MOVT            R1, #:upper16:loc_303058
2A011C:  ADD             R0, R1
2A011E:  STR             R4, [SP,#0x240+var_138]
2A0120:  STRD.W          R4, R0, [SP,#0x240+var_238]
2A0124:  ADD.W           R0, R1, #0x50000
2A0128:  STR             R0, [SP,#0x240+var_134]
2A012A:  ADDS            R0, R6, #1
2A012C:  STRB.W          R5, [SP,#0x240+var_34]
2A0130:  LDR.W           R1, [R11,#0x34]
2A0134:  CMP             R1, R0
2A0136:  BCS             loc_2A0194
2A0138:  MOVW            R1, #0xAAAB
2A013C:  LSLS            R0, R0, #2
2A013E:  MOVT            R1, #0xAAAA
2A0142:  MOV.W           R4, #0x214
2A0146:  UMULL.W         R0, R1, R0, R1
2A014A:  MOVS            R0, #3
2A014C:  ADD.W           R10, R0, R1,LSR#1
2A0150:  MUL.W           R0, R10, R4; byte_count
2A0154:  BLX             malloc
2A0158:  LDR.W           R8, [R11,#0x3C]
2A015C:  MOV             R5, R0
2A015E:  CMP.W           R8, #0
2A0162:  BEQ             loc_2A017A
2A0164:  MUL.W           R2, R6, R4; size_t
2A0168:  MOV             R0, R5; void *
2A016A:  MOV             R1, R8; void *
2A016C:  BLX             memcpy_0
2A0170:  MOV             R0, R8; p
2A0172:  BLX             free
2A0176:  LDR.W           R6, [R11,#0x38]
2A017A:  STR.W           R5, [R11,#0x3C]
2A017E:  MOVW            R4, #0x4F4D
2A0182:  STR.W           R10, [R11,#0x34]
2A0186:  ADD.W           R9, SP, #0x240+var_238
2A018A:  LDR.W           R10, [SP,#0x240+var_23C]
2A018E:  MOVT            R4, #0x5F42
2A0192:  B               loc_2A0198
2A0194:  LDR.W           R5, [R11,#0x3C]
2A0198:  MOV.W           R0, #0x214
2A019C:  MOV             R1, R9; void *
2A019E:  MLA.W           R5, R6, R0, R5
2A01A2:  MOVW            R2, #0x205; size_t
2A01A6:  MOV             R0, R5; void *
2A01A8:  BLX             memcpy_0
2A01AC:  ADD.W           R0, R5, #0x208
2A01B0:  MOV             R1, R10
2A01B2:  BLX             j__ZN7OSArrayIiEC2ERKS0_; OSArray<int>::OSArray(OSArray<int> const&)
2A01B6:  LDR.W           R0, [R11,#0x38]
2A01BA:  MOVS            R5, #0
2A01BC:  ADDS            R6, R0, #1
2A01BE:  STR.W           R6, [R11,#0x38]
2A01C2:  LDR             R0, [SP,#0x240+p]; p
2A01C4:  STR             R5, [SP,#0x240+var_2C]
2A01C6:  CBZ             R0, loc_2A01D2
2A01C8:  BLX             free
2A01CC:  STR             R5, [SP,#0x240+p]
2A01CE:  LDR.W           R6, [R11,#0x38]
2A01D2:  MOVS            R0, #4
2A01D4:  STR             R5, [SP,#0x240+p]
2A01D6:  STRD.W          R5, R5, [SP,#0x240+var_30]
2A01DA:  MOVW            R1, #:lower16:loc_303058
2A01DE:  STR             R0, [SP,#0x240+var_38]
2A01E0:  MOV             R0, #0x2212F3
2A01E8:  MOVT            R1, #:upper16:loc_303058
2A01EC:  ADD             R0, R1
2A01EE:  STR             R4, [SP,#0x240+var_138]
2A01F0:  STRD.W          R4, R0, [SP,#0x240+var_238]
2A01F4:  ADD.W           R0, R1, #0x60000
2A01F8:  STR             R0, [SP,#0x240+var_134]
2A01FA:  ADDS            R0, R6, #1
2A01FC:  STRB.W          R5, [SP,#0x240+var_34]
2A0200:  LDR.W           R1, [R11,#0x34]
2A0204:  CMP             R1, R0
2A0206:  BCS             loc_2A0264
2A0208:  MOVW            R1, #0xAAAB
2A020C:  LSLS            R0, R0, #2
2A020E:  MOVT            R1, #0xAAAA
2A0212:  MOV.W           R4, #0x214
2A0216:  UMULL.W         R0, R1, R0, R1
2A021A:  MOVS            R0, #3
2A021C:  ADD.W           R10, R0, R1,LSR#1
2A0220:  MUL.W           R0, R10, R4; byte_count
2A0224:  BLX             malloc
2A0228:  LDR.W           R8, [R11,#0x3C]
2A022C:  MOV             R5, R0
2A022E:  CMP.W           R8, #0
2A0232:  BEQ             loc_2A024A
2A0234:  MUL.W           R2, R6, R4; size_t
2A0238:  MOV             R0, R5; void *
2A023A:  MOV             R1, R8; void *
2A023C:  BLX             memcpy_0
2A0240:  MOV             R0, R8; p
2A0242:  BLX             free
2A0246:  LDR.W           R6, [R11,#0x38]
2A024A:  STR.W           R5, [R11,#0x3C]
2A024E:  MOVW            R4, #0x4F4D
2A0252:  STR.W           R10, [R11,#0x34]
2A0256:  ADD.W           R9, SP, #0x240+var_238
2A025A:  LDR.W           R10, [SP,#0x240+var_23C]
2A025E:  MOVT            R4, #0x5F42
2A0262:  B               loc_2A0268
2A0264:  LDR.W           R5, [R11,#0x3C]
2A0268:  MOV.W           R0, #0x214
2A026C:  MOV             R1, R9; void *
2A026E:  MLA.W           R5, R6, R0, R5
2A0272:  MOVW            R2, #0x205; size_t
2A0276:  MOV             R0, R5; void *
2A0278:  BLX             memcpy_0
2A027C:  ADD.W           R0, R5, #0x208
2A0280:  MOV             R1, R10
2A0282:  BLX             j__ZN7OSArrayIiEC2ERKS0_; OSArray<int>::OSArray(OSArray<int> const&)
2A0286:  LDR.W           R0, [R11,#0x38]
2A028A:  MOVS            R5, #0
2A028C:  ADDS            R6, R0, #1
2A028E:  STR.W           R6, [R11,#0x38]
2A0292:  LDR             R0, [SP,#0x240+p]; p
2A0294:  STR             R5, [SP,#0x240+var_2C]
2A0296:  CBZ             R0, loc_2A02A2
2A0298:  BLX             free
2A029C:  STR             R5, [SP,#0x240+p]
2A029E:  LDR.W           R6, [R11,#0x38]
2A02A2:  MOVS            R0, #9
2A02A4:  STR             R5, [SP,#0x240+p]
2A02A6:  STRD.W          R5, R5, [SP,#0x240+var_30]
2A02AA:  MOVW            R1, #:lower16:loc_303058
2A02AE:  STR             R0, [SP,#0x240+var_38]
2A02B0:  MOV             R0, #0x1312F3
2A02B8:  MOVT            R1, #:upper16:loc_303058
2A02BC:  ADD             R0, R1
2A02BE:  STR             R4, [SP,#0x240+var_138]
2A02C0:  STRD.W          R4, R0, [SP,#0x240+var_238]
2A02C4:  ADD.W           R0, R1, #0x70000
2A02C8:  STR             R0, [SP,#0x240+var_134]
2A02CA:  ADDS            R0, R6, #1
2A02CC:  STRB.W          R5, [SP,#0x240+var_34]
2A02D0:  LDR.W           R1, [R11,#0x34]
2A02D4:  CMP             R1, R0
2A02D6:  BCS             loc_2A0334
2A02D8:  MOVW            R1, #0xAAAB
2A02DC:  LSLS            R0, R0, #2
2A02DE:  MOVT            R1, #0xAAAA
2A02E2:  MOV.W           R4, #0x214
2A02E6:  UMULL.W         R0, R1, R0, R1
2A02EA:  MOVS            R0, #3
2A02EC:  ADD.W           R10, R0, R1,LSR#1
2A02F0:  MUL.W           R0, R10, R4; byte_count
2A02F4:  BLX             malloc
2A02F8:  LDR.W           R8, [R11,#0x3C]
2A02FC:  MOV             R5, R0
2A02FE:  CMP.W           R8, #0
2A0302:  BEQ             loc_2A031A
2A0304:  MUL.W           R2, R6, R4; size_t
2A0308:  MOV             R0, R5; void *
2A030A:  MOV             R1, R8; void *
2A030C:  BLX             memcpy_0
2A0310:  MOV             R0, R8; p
2A0312:  BLX             free
2A0316:  LDR.W           R6, [R11,#0x38]
2A031A:  STR.W           R5, [R11,#0x3C]
2A031E:  MOVW            R4, #0x4F4D
2A0322:  STR.W           R10, [R11,#0x34]
2A0326:  ADD.W           R9, SP, #0x240+var_238
2A032A:  LDR.W           R10, [SP,#0x240+var_23C]
2A032E:  MOVT            R4, #0x5F42
2A0332:  B               loc_2A0338
2A0334:  LDR.W           R5, [R11,#0x3C]
2A0338:  MOV.W           R0, #0x214
2A033C:  MOV             R1, R9; void *
2A033E:  MLA.W           R5, R6, R0, R5
2A0342:  MOVW            R2, #0x205; size_t
2A0346:  MOV             R0, R5; void *
2A0348:  BLX             memcpy_0
2A034C:  ADD.W           R0, R5, #0x208
2A0350:  MOV             R1, R10
2A0352:  BLX             j__ZN7OSArrayIiEC2ERKS0_; OSArray<int>::OSArray(OSArray<int> const&)
2A0356:  LDR.W           R0, [R11,#0x38]
2A035A:  MOVS            R5, #0
2A035C:  ADDS            R6, R0, #1
2A035E:  STR.W           R6, [R11,#0x38]
2A0362:  LDR             R0, [SP,#0x240+p]; p
2A0364:  STR             R5, [SP,#0x240+var_2C]
2A0366:  CBZ             R0, loc_2A0372
2A0368:  BLX             free
2A036C:  STR             R5, [SP,#0x240+p]
2A036E:  LDR.W           R6, [R11,#0x38]
2A0372:  MOVS            R0, #0xA
2A0374:  STR             R5, [SP,#0x240+p]
2A0376:  STRD.W          R5, R5, [SP,#0x240+var_30]
2A037A:  MOVW            R1, #:lower16:loc_303058
2A037E:  STR             R0, [SP,#0x240+var_38]
2A0380:  MOV             R0, #0x1612F3
2A0388:  MOVT            R1, #:upper16:loc_303058
2A038C:  ADD             R0, R1
2A038E:  STR             R4, [SP,#0x240+var_138]
2A0390:  STRD.W          R4, R0, [SP,#0x240+var_238]
2A0394:  ADD.W           R0, R1, #0x80000
2A0398:  STR             R0, [SP,#0x240+var_134]
2A039A:  ADDS            R0, R6, #1
2A039C:  STRB.W          R5, [SP,#0x240+var_34]
2A03A0:  LDR.W           R1, [R11,#0x34]
2A03A4:  CMP             R1, R0
2A03A6:  BCS             loc_2A0404
2A03A8:  MOVW            R1, #0xAAAB
2A03AC:  LSLS            R0, R0, #2
2A03AE:  MOVT            R1, #0xAAAA
2A03B2:  MOV.W           R4, #0x214
2A03B6:  UMULL.W         R0, R1, R0, R1
2A03BA:  MOVS            R0, #3
2A03BC:  ADD.W           R10, R0, R1,LSR#1
2A03C0:  MUL.W           R0, R10, R4; byte_count
2A03C4:  BLX             malloc
2A03C8:  LDR.W           R8, [R11,#0x3C]
2A03CC:  MOV             R5, R0
2A03CE:  CMP.W           R8, #0
2A03D2:  BEQ             loc_2A03EA
2A03D4:  MUL.W           R2, R6, R4; size_t
2A03D8:  MOV             R0, R5; void *
2A03DA:  MOV             R1, R8; void *
2A03DC:  BLX             memcpy_0
2A03E0:  MOV             R0, R8; p
2A03E2:  BLX             free
2A03E6:  LDR.W           R6, [R11,#0x38]
2A03EA:  STR.W           R5, [R11,#0x3C]
2A03EE:  MOVW            R4, #0x4F4D
2A03F2:  STR.W           R10, [R11,#0x34]
2A03F6:  ADD.W           R9, SP, #0x240+var_238
2A03FA:  LDR.W           R10, [SP,#0x240+var_23C]
2A03FE:  MOVT            R4, #0x5F42
2A0402:  B               loc_2A0408
2A0404:  LDR.W           R5, [R11,#0x3C]
2A0408:  MOV.W           R0, #0x214
2A040C:  MOV             R1, R9; void *
2A040E:  MLA.W           R5, R6, R0, R5
2A0412:  MOVW            R2, #0x205; size_t
2A0416:  MOV             R0, R5; void *
2A0418:  BLX             memcpy_0
2A041C:  ADD.W           R0, R5, #0x208
2A0420:  MOV             R1, R10
2A0422:  BLX             j__ZN7OSArrayIiEC2ERKS0_; OSArray<int>::OSArray(OSArray<int> const&)
2A0426:  LDR.W           R0, [R11,#0x38]
2A042A:  MOVS            R5, #0
2A042C:  ADDS            R6, R0, #1
2A042E:  STR.W           R6, [R11,#0x38]
2A0432:  LDR             R0, [SP,#0x240+p]; p
2A0434:  STR             R5, [SP,#0x240+var_2C]
2A0436:  CBZ             R0, loc_2A0442
2A0438:  BLX             free
2A043C:  STR             R5, [SP,#0x240+p]
2A043E:  LDR.W           R6, [R11,#0x38]
2A0442:  MOVS            R0, #0xE
2A0444:  STR             R5, [SP,#0x240+p]
2A0446:  STRD.W          R5, R5, [SP,#0x240+var_30]
2A044A:  MOVW            R1, #:lower16:loc_303058
2A044E:  STR             R0, [SP,#0x240+var_38]
2A0450:  MOV             R0, #0x2422F3
2A0458:  MOVT            R1, #:upper16:loc_303058
2A045C:  ADD             R0, R1
2A045E:  STR             R4, [SP,#0x240+var_138]
2A0460:  STRD.W          R4, R0, [SP,#0x240+var_238]
2A0464:  ADD.W           R0, R1, #0x90000
2A0468:  STR             R0, [SP,#0x240+var_134]
2A046A:  ADDS            R0, R6, #1
2A046C:  STRB.W          R5, [SP,#0x240+var_34]
2A0470:  LDR.W           R1, [R11,#0x34]
2A0474:  CMP             R1, R0
2A0476:  BCS             loc_2A04D4
2A0478:  MOVW            R1, #0xAAAB
2A047C:  LSLS            R0, R0, #2
2A047E:  MOVT            R1, #0xAAAA
2A0482:  MOV.W           R4, #0x214
2A0486:  UMULL.W         R0, R1, R0, R1
2A048A:  MOVS            R0, #3
2A048C:  ADD.W           R10, R0, R1,LSR#1
2A0490:  MUL.W           R0, R10, R4; byte_count
2A0494:  BLX             malloc
2A0498:  LDR.W           R8, [R11,#0x3C]
2A049C:  MOV             R5, R0
2A049E:  CMP.W           R8, #0
2A04A2:  BEQ             loc_2A04BA
2A04A4:  MUL.W           R2, R6, R4; size_t
2A04A8:  MOV             R0, R5; void *
2A04AA:  MOV             R1, R8; void *
2A04AC:  BLX             memcpy_0
2A04B0:  MOV             R0, R8; p
2A04B2:  BLX             free
2A04B6:  LDR.W           R6, [R11,#0x38]
2A04BA:  STR.W           R5, [R11,#0x3C]
2A04BE:  MOVW            R4, #0x4F4D
2A04C2:  STR.W           R10, [R11,#0x34]
2A04C6:  ADD.W           R9, SP, #0x240+var_238
2A04CA:  LDR.W           R10, [SP,#0x240+var_23C]
2A04CE:  MOVT            R4, #0x5F42
2A04D2:  B               loc_2A04D8
2A04D4:  LDR.W           R5, [R11,#0x3C]
2A04D8:  MOV.W           R0, #0x214
2A04DC:  MOV             R1, R9; void *
2A04DE:  MLA.W           R5, R6, R0, R5
2A04E2:  MOVW            R2, #0x205; size_t
2A04E6:  MOV             R0, R5; void *
2A04E8:  BLX             memcpy_0
2A04EC:  ADD.W           R0, R5, #0x208
2A04F0:  MOV             R1, R10
2A04F2:  BLX             j__ZN7OSArrayIiEC2ERKS0_; OSArray<int>::OSArray(OSArray<int> const&)
2A04F6:  LDR.W           R0, [R11,#0x38]
2A04FA:  MOVS            R5, #0
2A04FC:  ADDS            R6, R0, #1
2A04FE:  STR.W           R6, [R11,#0x38]
2A0502:  LDR             R0, [SP,#0x240+p]; p
2A0504:  STR             R5, [SP,#0x240+var_2C]
2A0506:  CBZ             R0, loc_2A0512
2A0508:  BLX             free
2A050C:  STR             R5, [SP,#0x240+p]
2A050E:  LDR.W           R6, [R11,#0x38]
2A0512:  MOVS            R0, #0x12
2A0514:  STR             R5, [SP,#0x240+p]
2A0516:  STRD.W          R5, R5, [SP,#0x240+var_30]
2A051A:  MOVW            R1, #:lower16:loc_303058
2A051E:  STR             R0, [SP,#0x240+var_38]
2A0520:  MOV             R0, #0x121BF3
2A0528:  MOVT            R1, #:upper16:loc_303058
2A052C:  ADD             R0, R1
2A052E:  STR             R4, [SP,#0x240+var_138]
2A0530:  STRD.W          R4, R0, [SP,#0x240+var_238]
2A0534:  ADD.W           R0, R1, #0x100
2A0538:  STR             R0, [SP,#0x240+var_134]
2A053A:  ADDS            R0, R6, #1
2A053C:  STRB.W          R5, [SP,#0x240+var_34]
2A0540:  LDR.W           R1, [R11,#0x34]
2A0544:  CMP             R1, R0
2A0546:  BCS             loc_2A05A4
2A0548:  MOVW            R1, #0xAAAB
2A054C:  LSLS            R0, R0, #2
2A054E:  MOVT            R1, #0xAAAA
2A0552:  MOV.W           R4, #0x214
2A0556:  UMULL.W         R0, R1, R0, R1
2A055A:  MOVS            R0, #3
2A055C:  ADD.W           R10, R0, R1,LSR#1
2A0560:  MUL.W           R0, R10, R4; byte_count
2A0564:  BLX             malloc
2A0568:  LDR.W           R8, [R11,#0x3C]
2A056C:  MOV             R5, R0
2A056E:  CMP.W           R8, #0
2A0572:  BEQ             loc_2A058A
2A0574:  MUL.W           R2, R6, R4; size_t
2A0578:  MOV             R0, R5; void *
2A057A:  MOV             R1, R8; void *
2A057C:  BLX             memcpy_0
2A0580:  MOV             R0, R8; p
2A0582:  BLX             free
2A0586:  LDR.W           R6, [R11,#0x38]
2A058A:  STR.W           R5, [R11,#0x3C]
2A058E:  MOVW            R4, #0x4F4D
2A0592:  STR.W           R10, [R11,#0x34]
2A0596:  ADD.W           R9, SP, #0x240+var_238
2A059A:  LDR.W           R10, [SP,#0x240+var_23C]
2A059E:  MOVT            R4, #0x5F42
2A05A2:  B               loc_2A05A8
2A05A4:  LDR.W           R5, [R11,#0x3C]
2A05A8:  MOV.W           R0, #0x214
2A05AC:  MOV             R1, R9; void *
2A05AE:  MLA.W           R5, R6, R0, R5
2A05B2:  MOVW            R2, #0x205; size_t
2A05B6:  MOV             R0, R5; void *
2A05B8:  BLX             memcpy_0
2A05BC:  ADD.W           R0, R5, #0x208
2A05C0:  MOV             R1, R10
2A05C2:  BLX             j__ZN7OSArrayIiEC2ERKS0_; OSArray<int>::OSArray(OSArray<int> const&)
2A05C6:  LDR.W           R0, [R11,#0x38]
2A05CA:  MOVS            R5, #0
2A05CC:  ADDS            R6, R0, #1
2A05CE:  STR.W           R6, [R11,#0x38]
2A05D2:  LDR             R0, [SP,#0x240+p]; p
2A05D4:  STR             R5, [SP,#0x240+var_2C]
2A05D6:  CBZ             R0, loc_2A05E2
2A05D8:  BLX             free
2A05DC:  STR             R5, [SP,#0x240+p]
2A05DE:  LDR.W           R6, [R11,#0x38]
2A05E2:  MOVS            R0, #0x24 ; '$'
2A05E4:  STR             R5, [SP,#0x240+p]
2A05E6:  STRD.W          R5, R5, [SP,#0x240+var_30]
2A05EA:  MOVW            R1, #:lower16:loc_303058
2A05EE:  STR             R0, [SP,#0x240+var_38]
2A05F0:  MOV             R0, #0x1123F3
2A05F8:  MOVT            R1, #:upper16:loc_303058
2A05FC:  ADD             R0, R1
2A05FE:  STR             R4, [SP,#0x240+var_138]
2A0600:  STRD.W          R4, R0, [SP,#0x240+var_238]
2A0604:  ADD.W           R0, R1, #0x10000
2A0608:  ADD.W           R0, R0, #0x100
2A060C:  STR             R0, [SP,#0x240+var_134]
2A060E:  STRB.W          R5, [SP,#0x240+var_34]
2A0612:  ADDS            R0, R6, #1
2A0614:  LDR.W           R1, [R11,#0x34]
2A0618:  CMP             R1, R0
2A061A:  BCS             loc_2A0678
2A061C:  MOVW            R1, #0xAAAB
2A0620:  LSLS            R0, R0, #2
2A0622:  MOVT            R1, #0xAAAA
2A0626:  MOV.W           R4, #0x214
2A062A:  UMULL.W         R0, R1, R0, R1
2A062E:  MOVS            R0, #3
2A0630:  ADD.W           R10, R0, R1,LSR#1
2A0634:  MUL.W           R0, R10, R4; byte_count
2A0638:  BLX             malloc
2A063C:  LDR.W           R8, [R11,#0x3C]
2A0640:  MOV             R5, R0
2A0642:  CMP.W           R8, #0
2A0646:  BEQ             loc_2A065E
2A0648:  MUL.W           R2, R6, R4; size_t
2A064C:  MOV             R0, R5; void *
2A064E:  MOV             R1, R8; void *
2A0650:  BLX             memcpy_0
2A0654:  MOV             R0, R8; p
2A0656:  BLX             free
2A065A:  LDR.W           R6, [R11,#0x38]
2A065E:  STR.W           R5, [R11,#0x3C]
2A0662:  MOVW            R4, #0x4F4D
2A0666:  STR.W           R10, [R11,#0x34]
2A066A:  ADD.W           R9, SP, #0x240+var_238
2A066E:  LDR.W           R10, [SP,#0x240+var_23C]
2A0672:  MOVT            R4, #0x5F42
2A0676:  B               loc_2A067C
2A0678:  LDR.W           R5, [R11,#0x3C]
2A067C:  MOV.W           R0, #0x214
2A0680:  MOV             R1, R9; void *
2A0682:  MLA.W           R5, R6, R0, R5
2A0686:  MOVW            R2, #0x205; size_t
2A068A:  MOV             R0, R5; void *
2A068C:  BLX             memcpy_0
2A0690:  ADD.W           R0, R5, #0x208
2A0694:  MOV             R1, R10
2A0696:  BLX             j__ZN7OSArrayIiEC2ERKS0_; OSArray<int>::OSArray(OSArray<int> const&)
2A069A:  LDR.W           R0, [R11,#0x38]
2A069E:  MOVS            R5, #0
2A06A0:  ADDS            R6, R0, #1
2A06A2:  STR.W           R6, [R11,#0x38]
2A06A6:  LDR             R0, [SP,#0x240+p]; p
2A06A8:  STR             R5, [SP,#0x240+var_2C]
2A06AA:  CBZ             R0, loc_2A06B6
2A06AC:  BLX             free
2A06B0:  STR             R5, [SP,#0x240+p]
2A06B2:  LDR.W           R6, [R11,#0x38]
2A06B6:  MOVS            R0, #0x22 ; '"'
2A06B8:  STR             R5, [SP,#0x240+p]
2A06BA:  STRD.W          R5, R5, [SP,#0x240+var_30]
2A06BE:  MOVW            R1, #:lower16:loc_303058
2A06C2:  STR             R0, [SP,#0x240+var_38]
2A06C4:  MOV             R0, #0x1929F3
2A06CC:  MOVT            R1, #:upper16:loc_303058
2A06D0:  ADD             R0, R1
2A06D2:  STR             R4, [SP,#0x240+var_138]
2A06D4:  STRD.W          R4, R0, [SP,#0x240+var_238]
2A06D8:  ADD.W           R0, R1, #0x20000
2A06DC:  ADD.W           R0, R0, #0x100
2A06E0:  STR             R0, [SP,#0x240+var_134]
2A06E2:  STRB.W          R5, [SP,#0x240+var_34]
2A06E6:  ADDS            R0, R6, #1
2A06E8:  LDR.W           R1, [R11,#0x34]
2A06EC:  CMP             R1, R0
2A06EE:  BCS             loc_2A074C
2A06F0:  MOVW            R1, #0xAAAB
2A06F4:  LSLS            R0, R0, #2
2A06F6:  MOVT            R1, #0xAAAA
2A06FA:  MOV.W           R4, #0x214
2A06FE:  UMULL.W         R0, R1, R0, R1
2A0702:  MOVS            R0, #3
2A0704:  ADD.W           R10, R0, R1,LSR#1
2A0708:  MUL.W           R0, R10, R4; byte_count
2A070C:  BLX             malloc
2A0710:  LDR.W           R8, [R11,#0x3C]
2A0714:  MOV             R5, R0
2A0716:  CMP.W           R8, #0
2A071A:  BEQ             loc_2A0732
2A071C:  MUL.W           R2, R6, R4; size_t
2A0720:  MOV             R0, R5; void *
2A0722:  MOV             R1, R8; void *
2A0724:  BLX             memcpy_0
2A0728:  MOV             R0, R8; p
2A072A:  BLX             free
2A072E:  LDR.W           R6, [R11,#0x38]
2A0732:  STR.W           R5, [R11,#0x3C]
2A0736:  MOVW            R4, #0x4F4D
2A073A:  STR.W           R10, [R11,#0x34]
2A073E:  ADD.W           R9, SP, #0x240+var_238
2A0742:  LDR.W           R10, [SP,#0x240+var_23C]
2A0746:  MOVT            R4, #0x5F42
2A074A:  B               loc_2A0750
2A074C:  LDR.W           R5, [R11,#0x3C]
2A0750:  MOV.W           R0, #0x214
2A0754:  MOV             R1, R9; void *
2A0756:  MLA.W           R5, R6, R0, R5
2A075A:  MOVW            R2, #0x205; size_t
2A075E:  MOV             R0, R5; void *
2A0760:  BLX             memcpy_0
2A0764:  ADD.W           R0, R5, #0x208
2A0768:  MOV             R1, R10
2A076A:  BLX             j__ZN7OSArrayIiEC2ERKS0_; OSArray<int>::OSArray(OSArray<int> const&)
2A076E:  LDR.W           R0, [R11,#0x38]
2A0772:  MOVS            R5, #0
2A0774:  ADDS            R6, R0, #1
2A0776:  STR.W           R6, [R11,#0x38]
2A077A:  LDR             R0, [SP,#0x240+p]; p
2A077C:  STR             R5, [SP,#0x240+var_2C]
2A077E:  CBZ             R0, loc_2A078A
2A0780:  BLX             free
2A0784:  STR             R5, [SP,#0x240+p]
2A0786:  LDR.W           R6, [R11,#0x38]
2A078A:  MOVS            R0, #0x23 ; '#'
2A078C:  STR             R5, [SP,#0x240+p]
2A078E:  STRD.W          R5, R5, [SP,#0x240+var_30]
2A0792:  MOVW            R1, #:lower16:loc_303058
2A0796:  STR             R0, [SP,#0x240+var_38]
2A0798:  MOV             R0, #0x1F29F3
2A07A0:  MOVT            R1, #:upper16:loc_303058
2A07A4:  ADD             R0, R1
2A07A6:  STR             R4, [SP,#0x240+var_138]
2A07A8:  STRD.W          R4, R0, [SP,#0x240+var_238]
2A07AC:  ADD.W           R0, R1, #0x30000
2A07B0:  ADD.W           R0, R0, #0x100
2A07B4:  STR             R0, [SP,#0x240+var_134]
2A07B6:  STRB.W          R5, [SP,#0x240+var_34]
2A07BA:  ADDS            R0, R6, #1
2A07BC:  LDR.W           R1, [R11,#0x34]
2A07C0:  CMP             R1, R0
2A07C2:  BCS             loc_2A0824
2A07C4:  MOVW            R1, #0xAAAB
2A07C8:  LSLS            R0, R0, #2
2A07CA:  MOVT            R1, #0xAAAA
2A07CE:  MOV.W           R4, #0x214
2A07D2:  UMULL.W         R0, R1, R0, R1
2A07D6:  MOVS            R0, #3
2A07D8:  ADD.W           R10, R0, R1,LSR#1
2A07DC:  MUL.W           R0, R10, R4; byte_count
2A07E0:  BLX             malloc
2A07E4:  LDR.W           R8, [R11,#0x3C]
2A07E8:  MOV             R5, R0
2A07EA:  CMP.W           R8, #0
2A07EE:  BEQ             loc_2A0806
2A07F0:  MUL.W           R2, R6, R4; size_t
2A07F4:  MOV             R0, R5; void *
2A07F6:  MOV             R1, R8; void *
2A07F8:  BLX             memcpy_0
2A07FC:  MOV             R0, R8; p
2A07FE:  BLX             free
2A0802:  LDR.W           R6, [R11,#0x38]
2A0806:  STR.W           R5, [R11,#0x3C]
2A080A:  MOVW            R4, #0x4F4D
2A080E:  STR.W           R10, [R11,#0x34]
2A0812:  ADD.W           R9, SP, #0x240+var_238
2A0816:  LDR.W           R10, [SP,#0x240+var_23C]
2A081A:  MOVT            R4, #0x5F42
2A081E:  B               loc_2A0828
2A0820:  DCD __stack_chk_guard_ptr - 0x29F97A
2A0824:  LDR.W           R5, [R11,#0x3C]
2A0828:  MOV.W           R0, #0x214
2A082C:  MOV             R1, R9; void *
2A082E:  MLA.W           R5, R6, R0, R5
2A0832:  MOVW            R2, #0x205; size_t
2A0836:  MOV             R0, R5; void *
2A0838:  BLX             memcpy_0
2A083C:  ADD.W           R0, R5, #0x208
2A0840:  MOV             R1, R10
2A0842:  BLX             j__ZN7OSArrayIiEC2ERKS0_; OSArray<int>::OSArray(OSArray<int> const&)
2A0846:  LDR.W           R0, [R11,#0x38]
2A084A:  MOVS            R5, #0
2A084C:  ADDS            R6, R0, #1
2A084E:  STR.W           R6, [R11,#0x38]
2A0852:  LDR             R0, [SP,#0x240+p]; p
2A0854:  STR             R5, [SP,#0x240+var_2C]
2A0856:  CBZ             R0, loc_2A0862
2A0858:  BLX             free
2A085C:  STR             R5, [SP,#0x240+p]
2A085E:  LDR.W           R6, [R11,#0x38]
2A0862:  MOVS            R0, #0x34 ; '4'
2A0864:  STR             R5, [SP,#0x240+p]
2A0866:  STRD.W          R5, R5, [SP,#0x240+var_30]
2A086A:  MOVW            R1, #:lower16:loc_303058
2A086E:  STR             R0, [SP,#0x240+var_38]
2A0870:  MOV             R0, #0x181FF3
2A0878:  MOVT            R1, #:upper16:loc_303058
2A087C:  ADD             R0, R1
2A087E:  STR             R4, [SP,#0x240+var_138]
2A0880:  STRD.W          R4, R0, [SP,#0x240+var_238]
2A0884:  ADD.W           R0, R1, #0x40000
2A0888:  ADD.W           R0, R0, #0x100
2A088C:  STR             R0, [SP,#0x240+var_134]
2A088E:  STRB.W          R5, [SP,#0x240+var_34]
2A0892:  ADDS            R0, R6, #1
2A0894:  LDR.W           R1, [R11,#0x34]
2A0898:  CMP             R1, R0
2A089A:  BCS             loc_2A08F8
2A089C:  MOVW            R1, #0xAAAB
2A08A0:  LSLS            R0, R0, #2
2A08A2:  MOVT            R1, #0xAAAA
2A08A6:  MOV.W           R4, #0x214
2A08AA:  UMULL.W         R0, R1, R0, R1
2A08AE:  MOVS            R0, #3
2A08B0:  ADD.W           R10, R0, R1,LSR#1
2A08B4:  MUL.W           R0, R10, R4; byte_count
2A08B8:  BLX             malloc
2A08BC:  LDR.W           R8, [R11,#0x3C]
2A08C0:  MOV             R5, R0
2A08C2:  CMP.W           R8, #0
2A08C6:  BEQ             loc_2A08DE
2A08C8:  MUL.W           R2, R6, R4; size_t
2A08CC:  MOV             R0, R5; void *
2A08CE:  MOV             R1, R8; void *
2A08D0:  BLX             memcpy_0
2A08D4:  MOV             R0, R8; p
2A08D6:  BLX             free
2A08DA:  LDR.W           R6, [R11,#0x38]
2A08DE:  STR.W           R5, [R11,#0x3C]
2A08E2:  MOVW            R4, #0x4F4D
2A08E6:  STR.W           R10, [R11,#0x34]
2A08EA:  ADD.W           R9, SP, #0x240+var_238
2A08EE:  LDR.W           R10, [SP,#0x240+var_23C]
2A08F2:  MOVT            R4, #0x5F42
2A08F6:  B               loc_2A08FC
2A08F8:  LDR.W           R5, [R11,#0x3C]
2A08FC:  MOV.W           R0, #0x214
2A0900:  MOV             R1, R9; void *
2A0902:  MLA.W           R5, R6, R0, R5
2A0906:  MOVW            R2, #0x205; size_t
2A090A:  MOV             R0, R5; void *
2A090C:  BLX             memcpy_0
2A0910:  ADD.W           R0, R5, #0x208
2A0914:  MOV             R1, R10
2A0916:  BLX             j__ZN7OSArrayIiEC2ERKS0_; OSArray<int>::OSArray(OSArray<int> const&)
2A091A:  LDR.W           R0, [R11,#0x38]
2A091E:  MOVS            R5, #0
2A0920:  ADDS            R6, R0, #1
2A0922:  STR.W           R6, [R11,#0x38]
2A0926:  LDR             R0, [SP,#0x240+p]; p
2A0928:  STR             R5, [SP,#0x240+var_2C]
2A092A:  CBZ             R0, loc_2A0936
2A092C:  BLX             free
2A0930:  STR             R5, [SP,#0x240+p]
2A0932:  LDR.W           R6, [R11,#0x38]
2A0936:  MOVS            R0, #0x16
2A0938:  STR             R5, [SP,#0x240+p]
2A093A:  STRD.W          R5, R5, [SP,#0x240+var_30]
2A093E:  MOVW            R1, #:lower16:loc_303058
2A0942:  STR             R0, [SP,#0x240+var_38]
2A0944:  MOV             R0, #0x231CF3
2A094C:  MOVT            R1, #:upper16:loc_303058
2A0950:  ADD             R0, R1
2A0952:  STR             R4, [SP,#0x240+var_138]
2A0954:  STRD.W          R4, R0, [SP,#0x240+var_238]
2A0958:  ADD.W           R0, R1, #0x50000
2A095C:  ADD.W           R0, R0, #0x100
2A0960:  STR             R0, [SP,#0x240+var_134]
2A0962:  STRB.W          R5, [SP,#0x240+var_34]
2A0966:  ADDS            R0, R6, #1
2A0968:  LDR.W           R1, [R11,#0x34]
2A096C:  CMP             R1, R0
2A096E:  BCS             loc_2A09CC
2A0970:  MOVW            R1, #0xAAAB
2A0974:  LSLS            R0, R0, #2
2A0976:  MOVT            R1, #0xAAAA
2A097A:  MOV.W           R4, #0x214
2A097E:  UMULL.W         R0, R1, R0, R1
2A0982:  MOVS            R0, #3
2A0984:  ADD.W           R10, R0, R1,LSR#1
2A0988:  MUL.W           R0, R10, R4; byte_count
2A098C:  BLX             malloc
2A0990:  LDR.W           R8, [R11,#0x3C]
2A0994:  MOV             R5, R0
2A0996:  CMP.W           R8, #0
2A099A:  BEQ             loc_2A09B2
2A099C:  MUL.W           R2, R6, R4; size_t
2A09A0:  MOV             R0, R5; void *
2A09A2:  MOV             R1, R8; void *
2A09A4:  BLX             memcpy_0
2A09A8:  MOV             R0, R8; p
2A09AA:  BLX             free
2A09AE:  LDR.W           R6, [R11,#0x38]
2A09B2:  STR.W           R5, [R11,#0x3C]
2A09B6:  MOVW            R4, #0x4F4D
2A09BA:  STR.W           R10, [R11,#0x34]
2A09BE:  ADD.W           R9, SP, #0x240+var_238
2A09C2:  LDR.W           R10, [SP,#0x240+var_23C]
2A09C6:  MOVT            R4, #0x5F42
2A09CA:  B               loc_2A09D0
2A09CC:  LDR.W           R5, [R11,#0x3C]
2A09D0:  MOV.W           R0, #0x214
2A09D4:  MOV             R1, R9; void *
2A09D6:  MLA.W           R5, R6, R0, R5
2A09DA:  MOVW            R2, #0x205; size_t
2A09DE:  MOV             R0, R5; void *
2A09E0:  BLX             memcpy_0
2A09E4:  ADD.W           R0, R5, #0x208
2A09E8:  MOV             R1, R10
2A09EA:  BLX             j__ZN7OSArrayIiEC2ERKS0_; OSArray<int>::OSArray(OSArray<int> const&)
2A09EE:  LDR.W           R0, [R11,#0x38]
2A09F2:  MOVS            R5, #0
2A09F4:  ADDS            R6, R0, #1
2A09F6:  STR.W           R6, [R11,#0x38]
2A09FA:  LDR             R0, [SP,#0x240+p]; p
2A09FC:  STR             R5, [SP,#0x240+var_2C]
2A09FE:  CBZ             R0, loc_2A0A0A
2A0A00:  BLX             free
2A0A04:  STR             R5, [SP,#0x240+p]
2A0A06:  LDR.W           R6, [R11,#0x38]
2A0A0A:  MOVS            R0, #0x2A ; '*'
2A0A0C:  STR             R5, [SP,#0x240+p]
2A0A0E:  STRD.W          R5, R5, [SP,#0x240+var_30]
2A0A12:  MOVW            R1, #:lower16:loc_303058
2A0A16:  STR             R0, [SP,#0x240+var_38]
2A0A18:  MOV             R0, #0x2216F3
2A0A20:  MOVT            R1, #:upper16:loc_303058
2A0A24:  ADD             R0, R1
2A0A26:  STR             R4, [SP,#0x240+var_138]
2A0A28:  STRD.W          R4, R0, [SP,#0x240+var_238]
2A0A2C:  ADD.W           R0, R1, #0x90000
2A0A30:  ADD.W           R0, R0, #0x100
2A0A34:  STR             R0, [SP,#0x240+var_134]
2A0A36:  STRB.W          R5, [SP,#0x240+var_34]
2A0A3A:  ADDS            R0, R6, #1
2A0A3C:  LDR.W           R1, [R11,#0x34]
2A0A40:  CMP             R1, R0
2A0A42:  BCS             loc_2A0AA0
2A0A44:  MOVW            R1, #0xAAAB
2A0A48:  LSLS            R0, R0, #2
2A0A4A:  MOVT            R1, #0xAAAA
2A0A4E:  MOV.W           R4, #0x214
2A0A52:  UMULL.W         R0, R1, R0, R1
2A0A56:  MOVS            R0, #3
2A0A58:  ADD.W           R10, R0, R1,LSR#1
2A0A5C:  MUL.W           R0, R10, R4; byte_count
2A0A60:  BLX             malloc
2A0A64:  LDR.W           R8, [R11,#0x3C]
2A0A68:  MOV             R5, R0
2A0A6A:  CMP.W           R8, #0
2A0A6E:  BEQ             loc_2A0A86
2A0A70:  MUL.W           R2, R6, R4; size_t
2A0A74:  MOV             R0, R5; void *
2A0A76:  MOV             R1, R8; void *
2A0A78:  BLX             memcpy_0
2A0A7C:  MOV             R0, R8; p
2A0A7E:  BLX             free
2A0A82:  LDR.W           R6, [R11,#0x38]
2A0A86:  STR.W           R5, [R11,#0x3C]
2A0A8A:  MOVW            R4, #0x4F4D
2A0A8E:  STR.W           R10, [R11,#0x34]
2A0A92:  ADD.W           R9, SP, #0x240+var_238
2A0A96:  LDR.W           R10, [SP,#0x240+var_23C]
2A0A9A:  MOVT            R4, #0x5F42
2A0A9E:  B               loc_2A0AA4
2A0AA0:  LDR.W           R5, [R11,#0x3C]
2A0AA4:  MOV.W           R0, #0x214
2A0AA8:  MOV             R1, R9; void *
2A0AAA:  MLA.W           R5, R6, R0, R5
2A0AAE:  MOVW            R2, #0x205; size_t
2A0AB2:  MOV             R0, R5; void *
2A0AB4:  BLX             memcpy_0
2A0AB8:  ADD.W           R0, R5, #0x208
2A0ABC:  MOV             R1, R10
2A0ABE:  BLX             j__ZN7OSArrayIiEC2ERKS0_; OSArray<int>::OSArray(OSArray<int> const&)
2A0AC2:  LDR.W           R0, [R11,#0x38]
2A0AC6:  MOVS            R5, #0
2A0AC8:  ADDS            R6, R0, #1
2A0ACA:  STR.W           R6, [R11,#0x38]
2A0ACE:  LDR             R0, [SP,#0x240+p]; p
2A0AD0:  STR             R5, [SP,#0x240+var_2C]
2A0AD2:  CBZ             R0, loc_2A0ADE
2A0AD4:  BLX             free
2A0AD8:  STR             R5, [SP,#0x240+p]
2A0ADA:  LDR.W           R6, [R11,#0x38]
2A0ADE:  MOVS            R0, #0x2B ; '+'
2A0AE0:  STR             R5, [SP,#0x240+p]
2A0AE2:  STRD.W          R5, R5, [SP,#0x240+var_30]
2A0AE6:  MOVW            R1, #:lower16:loc_303058
2A0AEA:  STR             R0, [SP,#0x240+var_38]
2A0AEC:  MOV             R0, #0x1916F3
2A0AF4:  MOVT            R1, #:upper16:loc_303058
2A0AF8:  ADD             R0, R1
2A0AFA:  STR             R4, [SP,#0x240+var_138]
2A0AFC:  STRD.W          R4, R0, [SP,#0x240+var_238]
2A0B00:  ADD.W           R0, R1, #0x200
2A0B04:  STR             R0, [SP,#0x240+var_134]
2A0B06:  ADDS            R0, R6, #1
2A0B08:  STRB.W          R5, [SP,#0x240+var_34]
2A0B0C:  LDR.W           R1, [R11,#0x34]
2A0B10:  CMP             R1, R0
2A0B12:  BCS             loc_2A0B68
2A0B14:  MOVW            R1, #0xAAAB
2A0B18:  LSLS            R0, R0, #2
2A0B1A:  MOVT            R1, #0xAAAA
2A0B1E:  MOV.W           R4, #0x214
2A0B22:  UMULL.W         R0, R1, R0, R1
2A0B26:  MOVS            R0, #3
2A0B28:  ADD.W           R10, R0, R1,LSR#1
2A0B2C:  MUL.W           R0, R10, R4; byte_count
2A0B30:  BLX             malloc
2A0B34:  LDR.W           R8, [R11,#0x3C]
2A0B38:  MOV             R5, R0
2A0B3A:  CMP.W           R8, #0
2A0B3E:  BEQ             loc_2A0B56
2A0B40:  MUL.W           R2, R6, R4; size_t
2A0B44:  MOV             R0, R5; void *
2A0B46:  MOV             R1, R8; void *
2A0B48:  BLX             memcpy_0
2A0B4C:  MOV             R0, R8; p
2A0B4E:  BLX             free
2A0B52:  LDR.W           R6, [R11,#0x38]
2A0B56:  STR.W           R5, [R11,#0x3C]
2A0B5A:  ADD.W           R9, SP, #0x240+var_238
2A0B5E:  STR.W           R10, [R11,#0x34]
2A0B62:  LDR.W           R10, [SP,#0x240+var_23C]
2A0B66:  B               loc_2A0B6C
2A0B68:  LDR.W           R5, [R11,#0x3C]
2A0B6C:  MOV.W           R0, #0x214
2A0B70:  MOV             R1, R9; void *
2A0B72:  MLA.W           R5, R6, R0, R5
2A0B76:  MOVW            R2, #0x205; size_t
2A0B7A:  MOV             R0, R5; void *
2A0B7C:  BLX             memcpy_0
2A0B80:  ADD.W           R0, R5, #0x208
2A0B84:  MOV             R1, R10
2A0B86:  BLX             j__ZN7OSArrayIiEC2ERKS0_; OSArray<int>::OSArray(OSArray<int> const&)
2A0B8A:  LDR.W           R0, [R11,#0x38]
2A0B8E:  MOVS            R4, #0
2A0B90:  ADDS            R0, #1
2A0B92:  STR.W           R0, [R11,#0x38]
2A0B96:  LDR             R0, [SP,#0x240+p]; p
2A0B98:  STR             R4, [SP,#0x240+var_2C]
2A0B9A:  CBZ             R0, loc_2A0BA2
2A0B9C:  BLX             free
2A0BA0:  STR             R4, [SP,#0x240+p]
2A0BA2:  MOV             R0, R11
2A0BA4:  MOVS            R1, #9
2A0BA6:  MOVS            R2, #0x22 ; '"'
2A0BA8:  BLX             j__ZN22KeyboardControlsScreen12WhitelistAddE10HIDMappingS0_; KeyboardControlsScreen::WhitelistAdd(HIDMapping,HIDMapping)
2A0BAC:  MOV             R0, R11
2A0BAE:  MOVS            R1, #0xA
2A0BB0:  MOVS            R2, #0x23 ; '#'
2A0BB2:  BLX             j__ZN22KeyboardControlsScreen12WhitelistAddE10HIDMappingS0_; KeyboardControlsScreen::WhitelistAdd(HIDMapping,HIDMapping)
2A0BB6:  MOV             R0, R11
2A0BB8:  MOVS            R1, #0x34 ; '4'
2A0BBA:  MOVS            R2, #0x2A ; '*'
2A0BBC:  BLX             j__ZN22KeyboardControlsScreen12WhitelistAddE10HIDMappingS0_; KeyboardControlsScreen::WhitelistAdd(HIDMapping,HIDMapping)
2A0BC0:  MOV             R0, R11
2A0BC2:  MOVS            R1, #0x16
2A0BC4:  MOVS            R2, #0x2B ; '+'
2A0BC6:  BLX             j__ZN22KeyboardControlsScreen12WhitelistAddE10HIDMappingS0_; KeyboardControlsScreen::WhitelistAdd(HIDMapping,HIDMapping)
2A0BCA:  LDR.W           R0, [R11,#0x38]
2A0BCE:  CBZ             R0, loc_2A0C12
2A0BD0:  LDR             R0, =(_ZTVN22KeyboardControlsScreen24KeyboardMappingSelectionE_ptr - 0x2A0BE0)
2A0BD2:  MOV.W           R8, #0
2A0BD6:  LDR.W           R9, =(sub_29B6CC+1 - 0x2A0BE4)
2A0BDA:  MOVS            R5, #0
2A0BDC:  ADD             R0, PC; _ZTVN22KeyboardControlsScreen24KeyboardMappingSelectionE_ptr
2A0BDE:  MOVS            R6, #0
2A0BE0:  ADD             R9, PC; sub_29B6CC
2A0BE2:  LDR             R0, [R0]; `vtable for'KeyboardControlsScreen::KeyboardMappingSelection ...
2A0BE4:  ADD.W           R4, R0, #8
2A0BE8:  MOVS            R0, #0x10; unsigned int
2A0BEA:  BLX             _Znwj; operator new(uint)
2A0BEE:  MOV             R1, R0; SelectScreen::MenuSelection *
2A0BF0:  LDR.W           R0, [R11,#0x3C]
2A0BF4:  ADD             R0, R5
2A0BF6:  STRD.W          R4, R0, [R1]
2A0BFA:  MOV             R0, R11; this
2A0BFC:  STRD.W          R9, R8, [R1,#8]
2A0C00:  BLX             j__ZN12SelectScreen7AddItemEPNS_13MenuSelectionE; SelectScreen::AddItem(SelectScreen::MenuSelection *)
2A0C04:  LDR.W           R0, [R11,#0x38]
2A0C08:  ADDS            R6, #1
2A0C0A:  ADD.W           R5, R5, #0x214
2A0C0E:  CMP             R6, R0
2A0C10:  BCC             loc_2A0BE8
2A0C12:  LDR             R0, =(__stack_chk_guard_ptr - 0x2A0C1A)
2A0C14:  LDR             R1, [SP,#0x240+var_20]
2A0C16:  ADD             R0, PC; __stack_chk_guard_ptr
2A0C18:  LDR             R0, [R0]; __stack_chk_guard
2A0C1A:  LDR             R0, [R0]
2A0C1C:  SUBS            R0, R0, R1
2A0C1E:  ITTT EQ
2A0C20:  ADDEQ.W         SP, SP, #0x224
2A0C24:  POPEQ.W         {R8-R11}
2A0C28:  POPEQ           {R4-R7,PC}
2A0C2A:  BLX             __stack_chk_fail
