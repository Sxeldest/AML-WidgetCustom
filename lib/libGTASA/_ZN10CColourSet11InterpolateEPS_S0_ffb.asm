; =========================================================
; Game Engine Function: _ZN10CColourSet11InterpolateEPS_S0_ffb
; Address            : 0x41E740 - 0x41EF06
; =========================================================

41E740:  PUSH            {R4-R7,LR}
41E742:  ADD             R7, SP, #0xC
41E744:  PUSH.W          {R8}
41E748:  VPUSH           {D8-D9}
41E74C:  MOV             R4, R0
41E74E:  LDR             R0, [R7,#arg_4]
41E750:  VLDR            S16, [R7,#arg_0]
41E754:  VMOV            S18, R3
41E758:  MOV             R6, R2
41E75A:  MOV             R5, R1
41E75C:  CMP             R0, #0
41E75E:  BNE.W           loc_41EA92
41E762:  LDRH            R0, [R6,#0x24]
41E764:  LDRH            R1, [R5,#0x24]
41E766:  VMOV            S0, R0
41E76A:  VMOV            S2, R1
41E76E:  VCVT.F32.U32    S0, S0
41E772:  VCVT.F32.U32    S2, S2
41E776:  VMUL.F32        S0, S0, S16
41E77A:  VMUL.F32        S2, S2, S18
41E77E:  VADD.F32        S0, S2, S0
41E782:  VCVT.S32.F32    S0, S0
41E786:  VMOV            R0, S0
41E78A:  STRH            R0, [R4,#0x24]
41E78C:  LDRH            R0, [R6,#0x26]
41E78E:  LDRH            R1, [R5,#0x26]
41E790:  VMOV            S0, R0
41E794:  VMOV            S2, R1
41E798:  VCVT.F32.U32    S0, S0
41E79C:  VCVT.F32.U32    S2, S2
41E7A0:  VMUL.F32        S0, S0, S16
41E7A4:  VMUL.F32        S2, S2, S18
41E7A8:  VADD.F32        S0, S2, S0
41E7AC:  VCVT.S32.F32    S0, S0
41E7B0:  VMOV            R0, S0
41E7B4:  STRH            R0, [R4,#0x26]
41E7B6:  LDRH            R0, [R6,#0x28]
41E7B8:  LDRH            R1, [R5,#0x28]
41E7BA:  VMOV            S0, R0
41E7BE:  VMOV            S2, R1
41E7C2:  VCVT.F32.U32    S0, S0
41E7C6:  VCVT.F32.U32    S2, S2
41E7CA:  VMUL.F32        S0, S0, S16
41E7CE:  VMUL.F32        S2, S2, S18
41E7D2:  VADD.F32        S0, S2, S0
41E7D6:  VCVT.S32.F32    S0, S0
41E7DA:  VMOV            R0, S0
41E7DE:  STRH            R0, [R4,#0x28]
41E7E0:  LDRH            R0, [R6,#0x2A]
41E7E2:  LDRH            R1, [R5,#0x2A]
41E7E4:  VMOV            S0, R0
41E7E8:  VMOV            S2, R1
41E7EC:  VCVT.F32.U32    S0, S0
41E7F0:  VCVT.F32.U32    S2, S2
41E7F4:  VMUL.F32        S0, S0, S16
41E7F8:  VMUL.F32        S2, S2, S18
41E7FC:  VADD.F32        S0, S2, S0
41E800:  VCVT.S32.F32    S0, S0
41E804:  VMOV            R0, S0
41E808:  STRH            R0, [R4,#0x2A]
41E80A:  LDRH            R0, [R6,#0x2C]
41E80C:  LDRH            R1, [R5,#0x2C]
41E80E:  VMOV            S0, R0
41E812:  VMOV            S2, R1
41E816:  VCVT.F32.U32    S0, S0
41E81A:  VCVT.F32.U32    S2, S2
41E81E:  VMUL.F32        S0, S0, S16
41E822:  VMUL.F32        S2, S2, S18
41E826:  VADD.F32        S0, S2, S0
41E82A:  VCVT.S32.F32    S0, S0
41E82E:  VMOV            R0, S0
41E832:  STRH            R0, [R4,#0x2C]
41E834:  LDRH            R0, [R6,#0x2E]
41E836:  LDRH            R1, [R5,#0x2E]
41E838:  VMOV            S0, R0
41E83C:  VMOV            S2, R1
41E840:  VCVT.F32.U32    S0, S0
41E844:  VCVT.F32.U32    S2, S2
41E848:  VMUL.F32        S0, S0, S16
41E84C:  VMUL.F32        S2, S2, S18
41E850:  VADD.F32        S0, S2, S0
41E854:  VCVT.S32.F32    S0, S0
41E858:  VMOV            R0, S0
41E85C:  STRH            R0, [R4,#0x2E]
41E85E:  LDRH            R0, [R6,#0x30]
41E860:  LDRH            R1, [R5,#0x30]
41E862:  VMOV            S0, R0
41E866:  VMOV            S2, R1
41E86A:  VCVT.F32.U32    S0, S0
41E86E:  VCVT.F32.U32    S2, S2
41E872:  VMUL.F32        S0, S0, S16
41E876:  VMUL.F32        S2, S2, S18
41E87A:  VADD.F32        S0, S2, S0
41E87E:  VCVT.S32.F32    S0, S0
41E882:  VMOV            R0, S0
41E886:  STRH            R0, [R4,#0x30]
41E888:  LDRH            R0, [R6,#0x32]
41E88A:  LDRH            R1, [R5,#0x32]
41E88C:  VMOV            S0, R0
41E890:  VMOV            S2, R1
41E894:  VCVT.F32.U32    S0, S0
41E898:  VCVT.F32.U32    S2, S2
41E89C:  VMUL.F32        S0, S0, S16
41E8A0:  VMUL.F32        S2, S2, S18
41E8A4:  VADD.F32        S0, S2, S0
41E8A8:  VCVT.S32.F32    S0, S0
41E8AC:  VMOV            R0, S0
41E8B0:  STRH            R0, [R4,#0x32]
41E8B2:  LDRH            R0, [R6,#0x34]
41E8B4:  LDRH            R1, [R5,#0x34]
41E8B6:  VMOV            S0, R0
41E8BA:  VMOV            S2, R1
41E8BE:  VCVT.F32.U32    S0, S0
41E8C2:  VCVT.F32.U32    S2, S2
41E8C6:  VMUL.F32        S0, S0, S16
41E8CA:  VMUL.F32        S2, S2, S18
41E8CE:  VADD.F32        S0, S2, S0
41E8D2:  VCVT.S32.F32    S0, S0
41E8D6:  VMOV            R0, S0
41E8DA:  STRH            R0, [R4,#0x34]
41E8DC:  LDRH            R0, [R6,#0x36]
41E8DE:  LDRH            R1, [R5,#0x36]
41E8E0:  VMOV            S0, R0
41E8E4:  VMOV            S2, R1
41E8E8:  VCVT.F32.U32    S0, S0
41E8EC:  VCVT.F32.U32    S2, S2
41E8F0:  VMUL.F32        S0, S0, S16
41E8F4:  VMUL.F32        S2, S2, S18
41E8F8:  VADD.F32        S0, S2, S0
41E8FC:  VCVT.S32.F32    S0, S0
41E900:  VMOV            R0, S0
41E904:  STRH            R0, [R4,#0x36]
41E906:  LDRH            R0, [R6,#0x38]
41E908:  LDRH            R1, [R5,#0x38]
41E90A:  VMOV            S0, R0
41E90E:  VMOV            S2, R1
41E912:  VCVT.F32.U32    S0, S0
41E916:  VCVT.F32.U32    S2, S2
41E91A:  VMUL.F32        S0, S0, S16
41E91E:  VMUL.F32        S2, S2, S18
41E922:  VADD.F32        S0, S2, S0
41E926:  VCVT.S32.F32    S0, S0
41E92A:  VMOV            R0, S0
41E92E:  STRH            R0, [R4,#0x38]
41E930:  LDRH            R0, [R6,#0x3A]
41E932:  LDRH            R1, [R5,#0x3A]
41E934:  VMOV            S0, R0
41E938:  VMOV            S2, R1
41E93C:  VCVT.F32.U32    S0, S0
41E940:  VCVT.F32.U32    S2, S2
41E944:  VMUL.F32        S0, S0, S16
41E948:  VMUL.F32        S2, S2, S18
41E94C:  VADD.F32        S0, S2, S0
41E950:  VCVT.S32.F32    S0, S0
41E954:  VMOV            R0, S0
41E958:  STRH            R0, [R4,#0x3A]
41E95A:  VLDR            S0, [R6,#0x3C]
41E95E:  VLDR            S2, [R5,#0x3C]
41E962:  VMUL.F32        S0, S0, S16
41E966:  VMUL.F32        S2, S2, S18
41E96A:  VADD.F32        S0, S2, S0
41E96E:  VSTR            S0, [R4,#0x3C]
41E972:  LDRH.W          R0, [R6,#0x5C]
41E976:  LDRH.W          R1, [R5,#0x5C]
41E97A:  VMOV            S0, R0
41E97E:  VMOV            S2, R1
41E982:  VCVT.F32.U32    S0, S0
41E986:  VCVT.F32.U32    S2, S2
41E98A:  VMUL.F32        S0, S0, S16
41E98E:  VMUL.F32        S2, S2, S18
41E992:  VADD.F32        S0, S2, S0
41E996:  VCVT.S32.F32    S0, S0
41E99A:  VMOV            R0, S0
41E99E:  STRH.W          R0, [R4,#0x5C]
41E9A2:  LDRH.W          R0, [R6,#0x5E]
41E9A6:  LDRH.W          R1, [R5,#0x5E]
41E9AA:  VMOV            S0, R0
41E9AE:  VMOV            S2, R1
41E9B2:  VCVT.F32.U32    S0, S0
41E9B6:  VCVT.F32.U32    S2, S2
41E9BA:  VMUL.F32        S0, S0, S16
41E9BE:  VMUL.F32        S2, S2, S18
41E9C2:  VADD.F32        S0, S2, S0
41E9C6:  VCVT.S32.F32    S0, S0
41E9CA:  VMOV            R0, S0
41E9CE:  STRH.W          R0, [R4,#0x5E]
41E9D2:  LDRH.W          R0, [R6,#0x60]
41E9D6:  LDRH.W          R1, [R5,#0x60]
41E9DA:  VMOV            S0, R0
41E9DE:  VMOV            S2, R1
41E9E2:  VCVT.F32.U32    S0, S0
41E9E6:  VCVT.F32.U32    S2, S2
41E9EA:  VMUL.F32        S0, S0, S16
41E9EE:  VMUL.F32        S2, S2, S18
41E9F2:  VADD.F32        S0, S2, S0
41E9F6:  VCVT.S32.F32    S0, S0
41E9FA:  VMOV            R0, S0
41E9FE:  STRH.W          R0, [R4,#0x60]
41EA02:  LDRH.W          R0, [R6,#0x62]
41EA06:  LDRH.W          R1, [R5,#0x62]
41EA0A:  VMOV            S0, R0
41EA0E:  VMOV            S2, R1
41EA12:  VCVT.F32.U32    S0, S0
41EA16:  VCVT.F32.U32    S2, S2
41EA1A:  VMUL.F32        S0, S0, S16
41EA1E:  VMUL.F32        S2, S2, S18
41EA22:  VADD.F32        S0, S2, S0
41EA26:  VCVT.S32.F32    S0, S0
41EA2A:  VMOV            R0, S0
41EA2E:  STRH.W          R0, [R4,#0x62]
41EA32:  LDRH.W          R0, [R6,#0x64]
41EA36:  LDRH.W          R1, [R5,#0x64]
41EA3A:  VMOV            S0, R0
41EA3E:  VMOV            S2, R1
41EA42:  VCVT.F32.U32    S0, S0
41EA46:  VCVT.F32.U32    S2, S2
41EA4A:  VMUL.F32        S0, S0, S16
41EA4E:  VMUL.F32        S2, S2, S18
41EA52:  VADD.F32        S0, S2, S0
41EA56:  VCVT.S32.F32    S0, S0
41EA5A:  VMOV            R0, S0
41EA5E:  STRH.W          R0, [R4,#0x64]
41EA62:  LDRH.W          R0, [R6,#0x66]
41EA66:  LDRH.W          R1, [R5,#0x66]
41EA6A:  VMOV            S0, R0
41EA6E:  VMOV            S2, R1
41EA72:  VCVT.F32.U32    S0, S0
41EA76:  VCVT.F32.U32    S2, S2
41EA7A:  VMUL.F32        S0, S0, S16
41EA7E:  VMUL.F32        S2, S2, S18
41EA82:  VADD.F32        S0, S2, S0
41EA86:  VCVT.S32.F32    S0, S0
41EA8A:  VMOV            R0, S0
41EA8E:  STRH.W          R0, [R4,#0x66]
41EA92:  VLDR            S0, [R6]
41EA96:  MOV.W           R8, #0
41EA9A:  VLDR            S2, [R5]
41EA9E:  VMUL.F32        S0, S0, S16
41EAA2:  VMUL.F32        S2, S2, S18
41EAA6:  VADD.F32        S0, S2, S0
41EAAA:  VSTR            S0, [R4]
41EAAE:  VLDR            S0, [R6,#4]
41EAB2:  VLDR            S2, [R5,#4]
41EAB6:  VMUL.F32        S0, S0, S16
41EABA:  VMUL.F32        S2, S2, S18
41EABE:  VADD.F32        S0, S2, S0
41EAC2:  VSTR            S0, [R4,#4]
41EAC6:  VLDR            S0, [R6,#8]
41EACA:  VLDR            S2, [R5,#8]
41EACE:  VMUL.F32        S0, S0, S16
41EAD2:  VMUL.F32        S2, S2, S18
41EAD6:  VADD.F32        S0, S2, S0
41EADA:  VSTR            S0, [R4,#8]
41EADE:  VLDR            S0, [R6,#0xC]
41EAE2:  VLDR            S2, [R5,#0xC]
41EAE6:  VMUL.F32        S0, S0, S16
41EAEA:  VMUL.F32        S2, S2, S18
41EAEE:  VADD.F32        S0, S2, S0
41EAF2:  VSTR            S0, [R4,#0xC]
41EAF6:  VLDR            S0, [R6,#0x10]
41EAFA:  VLDR            S2, [R5,#0x10]
41EAFE:  VMUL.F32        S0, S0, S16
41EB02:  VMUL.F32        S2, S2, S18
41EB06:  VADD.F32        S0, S2, S0
41EB0A:  VSTR            S0, [R4,#0x10]
41EB0E:  VLDR            S0, [R6,#0x14]
41EB12:  VLDR            S2, [R5,#0x14]
41EB16:  VMUL.F32        S0, S0, S16
41EB1A:  VMUL.F32        S2, S2, S18
41EB1E:  VADD.F32        S0, S2, S0
41EB22:  VSTR            S0, [R4,#0x14]
41EB26:  VLDR            S0, [R6,#0x40]
41EB2A:  VLDR            S2, [R5,#0x40]
41EB2E:  VMUL.F32        S0, S0, S16
41EB32:  VMUL.F32        S2, S2, S18
41EB36:  VADD.F32        S0, S2, S0
41EB3A:  VSTR            S0, [R4,#0x40]
41EB3E:  VLDR            S0, [R6,#0x44]
41EB42:  VLDR            S2, [R5,#0x44]
41EB46:  VMUL.F32        S0, S0, S16
41EB4A:  VMUL.F32        S2, S2, S18
41EB4E:  VADD.F32        S0, S2, S0
41EB52:  VSTR            S0, [R4,#0x44]
41EB56:  LDRSH.W         R0, [R6,#0x48]
41EB5A:  LDRSH.W         R1, [R5,#0x48]
41EB5E:  VMOV            S0, R0
41EB62:  VMOV            S2, R1
41EB66:  VCVT.F32.S32    S0, S0
41EB6A:  VCVT.F32.S32    S2, S2
41EB6E:  VMUL.F32        S0, S0, S16
41EB72:  VMUL.F32        S2, S2, S18
41EB76:  VADD.F32        S0, S2, S0
41EB7A:  VCVT.S32.F32    S0, S0
41EB7E:  VMOV            R0, S0
41EB82:  STRH.W          R0, [R4,#0x48]
41EB86:  LDRSH.W         R0, [R6,#0x4A]
41EB8A:  LDRSH.W         R1, [R5,#0x4A]
41EB8E:  VMOV            S0, R0
41EB92:  VMOV            S2, R1
41EB96:  VCVT.F32.S32    S0, S0
41EB9A:  VCVT.F32.S32    S2, S2
41EB9E:  VMUL.F32        S0, S0, S16
41EBA2:  VMUL.F32        S2, S2, S18
41EBA6:  VADD.F32        S0, S2, S0
41EBAA:  VCVT.S32.F32    S0, S0
41EBAE:  VMOV            R0, S0
41EBB2:  STRH.W          R0, [R4,#0x4A]
41EBB6:  LDRSH.W         R0, [R6,#0x4C]
41EBBA:  LDRSH.W         R1, [R5,#0x4C]
41EBBE:  VMOV            S0, R0
41EBC2:  VMOV            S2, R1
41EBC6:  MOVS            R1, #0; bool
41EBC8:  VCVT.F32.S32    S0, S0
41EBCC:  VCVT.F32.S32    S2, S2
41EBD0:  VMUL.F32        S0, S0, S16
41EBD4:  VMUL.F32        S2, S2, S18
41EBD8:  VADD.F32        S0, S2, S0
41EBDC:  VCVT.S32.F32    S0, S0
41EBE0:  VMOV            R0, S0
41EBE4:  STRH.W          R0, [R4,#0x4C]
41EBE8:  MOV.W           R0, #0xFFFFFFFF; int
41EBEC:  VLDR            S0, [R6,#0x50]
41EBF0:  VLDR            S2, [R5,#0x50]
41EBF4:  VMUL.F32        S0, S0, S16
41EBF8:  VMUL.F32        S2, S2, S18
41EBFC:  VADD.F32        S0, S2, S0
41EC00:  VSTR            S0, [R4,#0x50]
41EC04:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
41EC08:  CBZ             R0, loc_41EC3C
41EC0A:  MOV.W           R0, #0xFFFFFFFF; int
41EC0E:  MOVS            R1, #0; bool
41EC10:  MOV.W           R8, #0
41EC14:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
41EC18:  LDR.W           R0, [R0,#0x5A4]
41EC1C:  CMP             R0, #4
41EC1E:  BNE             loc_41EC26
41EC20:  MOV.W           R8, #1
41EC24:  B               loc_41EC3C
41EC26:  MOV.W           R0, #0xFFFFFFFF; int
41EC2A:  MOVS            R1, #0; bool
41EC2C:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
41EC30:  LDR.W           R0, [R0,#0x5A4]
41EC34:  CMP             R0, #3
41EC36:  IT EQ
41EC38:  MOVEQ.W         R8, #1
41EC3C:  LDR             R0, =(RQCaps_ptr - 0x41EC44)
41EC3E:  LDR             R1, =(_ZN14MobileSettings8settingsE_ptr - 0x41EC46)
41EC40:  ADD             R0, PC; RQCaps_ptr
41EC42:  ADD             R1, PC; _ZN14MobileSettings8settingsE_ptr
41EC44:  LDR             R0, [R0]; RQCaps
41EC46:  LDR             R1, [R1]; MobileSettings::settings ...
41EC48:  LDRB            R2, [R0,#(byte_6B8BA0 - 0x6B8B9C)]
41EC4A:  LDRB            R3, [R0,#(byte_6B8BA1 - 0x6B8B9C)]
41EC4C:  LDRB            R0, [R0,#(byte_6B8BAA - 0x6B8B9C)]
41EC4E:  ORRS            R2, R3
41EC50:  LDR             R1, [R1,#(dword_6E03FC - 0x6E03F4)]
41EC52:  ORRS            R0, R2
41EC54:  LSLS            R0, R0, #0x18
41EC56:  BEQ             loc_41EC70
41EC58:  MOVS            R0, #0
41EC5A:  CMP             R1, #1
41EC5C:  IT GT
41EC5E:  MOVGT           R0, #1
41EC60:  ORRS.W          R0, R0, R8
41EC64:  BEQ             loc_41EC88
41EC66:  ADR             R0, dword_41EF14
41EC68:  CMP             R1, #3
41EC6A:  IT LT
41EC6C:  ADDLT           R0, #4
41EC6E:  B               loc_41EC94
41EC70:  MOVS            R0, #0
41EC72:  CMP             R1, #0
41EC74:  IT GT
41EC76:  MOVGT           R0, #1
41EC78:  ORRS.W          R0, R0, R8
41EC7C:  BEQ             loc_41EC88
41EC7E:  CMP             R1, #2
41EC80:  BGE             loc_41EC8E
41EC82:  VLDR            S0, =625.0
41EC86:  B               loc_41EC98
41EC88:  VLDR            S0, =450.0
41EC8C:  B               loc_41EC98
41EC8E:  ADR             R0, dword_41EF20
41EC90:  IT EQ
41EC92:  ADDEQ           R0, #4
41EC94:  VLDR            S0, [R0]
41EC98:  VLDR            S2, [R4,#0x50]
41EC9C:  VMIN.F32        D0, D1, D0
41ECA0:  VSTR            S0, [R4,#0x50]
41ECA4:  VLDR            S0, [R6,#0x54]
41ECA8:  VLDR            S2, [R5,#0x54]
41ECAC:  VMUL.F32        S0, S0, S16
41ECB0:  VMUL.F32        S2, S2, S18
41ECB4:  VADD.F32        S0, S2, S0
41ECB8:  VSTR            S0, [R4,#0x54]
41ECBC:  VLDR            S0, [R6,#0x78]
41ECC0:  VLDR            S2, [R5,#0x78]
41ECC4:  VMUL.F32        S0, S0, S16
41ECC8:  VMUL.F32        S2, S2, S18
41ECCC:  VADD.F32        S0, S2, S0
41ECD0:  VSTR            S0, [R4,#0x78]
41ECD4:  VLDR            S0, [R6,#0x7C]
41ECD8:  VLDR            S2, [R5,#0x7C]
41ECDC:  VMUL.F32        S0, S0, S16
41ECE0:  VMUL.F32        S2, S2, S18
41ECE4:  VADD.F32        S0, S2, S0
41ECE8:  VSTR            S0, [R4,#0x7C]
41ECEC:  VLDR            S0, [R6,#0x80]
41ECF0:  VLDR            S2, [R5,#0x80]
41ECF4:  VMUL.F32        S0, S0, S16
41ECF8:  VMUL.F32        S2, S2, S18
41ECFC:  VADD.F32        S0, S2, S0
41ED00:  VSTR            S0, [R4,#0x80]
41ED04:  VLDR            S0, [R6,#0x84]
41ED08:  VLDR            S2, [R5,#0x84]
41ED0C:  VMUL.F32        S0, S0, S16
41ED10:  VMUL.F32        S2, S2, S18
41ED14:  VADD.F32        S0, S2, S0
41ED18:  VSTR            S0, [R4,#0x84]
41ED1C:  VLDR            S0, [R6,#0x88]
41ED20:  VLDR            S2, [R5,#0x88]
41ED24:  VMUL.F32        S0, S0, S16
41ED28:  VMUL.F32        S2, S2, S18
41ED2C:  VADD.F32        S0, S2, S0
41ED30:  VSTR            S0, [R4,#0x88]
41ED34:  VLDR            S0, [R6,#0x8C]
41ED38:  VLDR            S2, [R5,#0x8C]
41ED3C:  VMUL.F32        S0, S0, S16
41ED40:  VMUL.F32        S2, S2, S18
41ED44:  VADD.F32        S0, S2, S0
41ED48:  VSTR            S0, [R4,#0x8C]
41ED4C:  VLDR            S0, [R6,#0x90]
41ED50:  VLDR            S2, [R5,#0x90]
41ED54:  VMUL.F32        S0, S0, S16
41ED58:  VMUL.F32        S2, S2, S18
41ED5C:  VADD.F32        S0, S2, S0
41ED60:  VSTR            S0, [R4,#0x90]
41ED64:  VLDR            S0, [R6,#0x94]
41ED68:  VLDR            S2, [R5,#0x94]
41ED6C:  VMUL.F32        S0, S0, S16
41ED70:  VMUL.F32        S2, S2, S18
41ED74:  VADD.F32        S0, S2, S0
41ED78:  VSTR            S0, [R4,#0x94]
41ED7C:  VLDR            S0, [R6,#0x58]
41ED80:  VLDR            S2, [R5,#0x58]
41ED84:  VMUL.F32        S0, S0, S16
41ED88:  VMUL.F32        S2, S2, S18
41ED8C:  VADD.F32        S0, S2, S0
41ED90:  VSTR            S0, [R4,#0x58]
41ED94:  VLDR            S0, [R6,#0x98]
41ED98:  VLDR            S2, [R5,#0x98]
41ED9C:  VMUL.F32        S0, S0, S16
41EDA0:  VMUL.F32        S2, S2, S18
41EDA4:  VADD.F32        S0, S2, S0
41EDA8:  VSTR            S0, [R4,#0x98]
41EDAC:  VLDR            S0, [R6,#0x9C]
41EDB0:  VLDR            S2, [R5,#0x9C]
41EDB4:  VCVT.F32.S32    S0, S0
41EDB8:  VCVT.F32.S32    S2, S2
41EDBC:  VMUL.F32        S0, S0, S16
41EDC0:  VMUL.F32        S2, S2, S18
41EDC4:  VADD.F32        S0, S2, S0
41EDC8:  VCVT.S32.F32    S0, S0
41EDCC:  VSTR            S0, [R4,#0x9C]
41EDD0:  LDRH.W          R0, [R6,#0xA0]
41EDD4:  LDRH.W          R1, [R5,#0xA0]
41EDD8:  VMOV            S0, R0
41EDDC:  VMOV            S2, R1
41EDE0:  VCVT.F32.U32    S0, S0
41EDE4:  VCVT.F32.U32    S2, S2
41EDE8:  VMUL.F32        S0, S0, S16
41EDEC:  VMUL.F32        S2, S2, S18
41EDF0:  VADD.F32        S0, S2, S0
41EDF4:  VCVT.S32.F32    S0, S0
41EDF8:  VMOV            R0, S0
41EDFC:  STRH.W          R0, [R4,#0xA0]
41EE00:  ADD.W           R0, R6, #0xAC
41EE04:  VLDR            S0, [R6,#0xA4]
41EE08:  VLDR            S2, [R5,#0xA4]
41EE0C:  VMUL.F32        S0, S0, S16
41EE10:  VMUL.F32        S2, S2, S18
41EE14:  VADD.F32        S0, S2, S0
41EE18:  VSTR            S0, [R4,#0xA4]
41EE1C:  VLDR            S0, [R6,#0xA8]
41EE20:  VLDR            S2, [R5,#0xA8]
41EE24:  VMUL.F32        S0, S0, S16
41EE28:  VMUL.F32        S2, S2, S18
41EE2C:  VADD.F32        S0, S2, S0
41EE30:  VSTR            S0, [R4,#0xA8]
41EE34:  VLDR            S0, [R6,#0x68]
41EE38:  VLDR            S2, [R5,#0x68]
41EE3C:  VMUL.F32        S0, S0, S16
41EE40:  VMUL.F32        S2, S2, S18
41EE44:  VADD.F32        S0, S2, S0
41EE48:  VSTR            S0, [R4,#0x68]
41EE4C:  VLDR            S0, [R6,#0x6C]
41EE50:  VLDR            S2, [R5,#0x6C]
41EE54:  VMUL.F32        S0, S0, S16
41EE58:  VMUL.F32        S2, S2, S18
41EE5C:  VADD.F32        S0, S2, S0
41EE60:  VSTR            S0, [R4,#0x6C]
41EE64:  VLDR            S0, [R6,#0x70]
41EE68:  VLDR            S2, [R5,#0x70]
41EE6C:  VMUL.F32        S0, S0, S16
41EE70:  VMUL.F32        S2, S2, S18
41EE74:  VADD.F32        S0, S2, S0
41EE78:  VSTR            S0, [R4,#0x70]
41EE7C:  VLDR            S0, [R6,#0x74]
41EE80:  VLDR            S2, [R5,#0x74]
41EE84:  VMUL.F32        S0, S0, S16
41EE88:  VMUL.F32        S2, S2, S18
41EE8C:  VADD.F32        S0, S2, S0
41EE90:  VSTR            S0, [R4,#0x74]
41EE94:  VLD1.32         {D16-D17}, [R0]
41EE98:  ADD.W           R0, R5, #0xAC
41EE9C:  VMUL.F32        Q8, Q8, D8[0]
41EEA0:  VLD1.32         {D18-D19}, [R0]
41EEA4:  ADD.W           R0, R4, #0xAC
41EEA8:  VMUL.F32        Q9, Q9, D9[0]
41EEAC:  VADD.F32        Q8, Q9, Q8
41EEB0:  VST1.32         {D16-D17}, [R0]
41EEB4:  ADD.W           R0, R6, #0xBC
41EEB8:  VLD1.32         {D16-D17}, [R0]
41EEBC:  ADD.W           R0, R5, #0xBC
41EEC0:  VMUL.F32        Q8, Q8, D8[0]
41EEC4:  VLD1.32         {D18-D19}, [R0]
41EEC8:  ADD.W           R0, R4, #0xBC
41EECC:  VMUL.F32        Q9, Q9, D9[0]
41EED0:  VADD.F32        Q8, Q9, Q8
41EED4:  VST1.32         {D16-D17}, [R0]
41EED8:  ADD.W           R0, R6, #0xCC
41EEDC:  VLD1.32         {D16-D17}, [R0]
41EEE0:  ADD.W           R0, R5, #0xCC
41EEE4:  VMUL.F32        Q8, Q8, D8[0]
41EEE8:  VLD1.32         {D18-D19}, [R0]
41EEEC:  ADD.W           R0, R4, #0xCC
41EEF0:  VMUL.F32        Q9, Q9, D9[0]
41EEF4:  VADD.F32        Q8, Q9, Q8
41EEF8:  VST1.32         {D16-D17}, [R0]
41EEFC:  VPOP            {D8-D9}
41EF00:  POP.W           {R8}
41EF04:  POP             {R4-R7,PC}
