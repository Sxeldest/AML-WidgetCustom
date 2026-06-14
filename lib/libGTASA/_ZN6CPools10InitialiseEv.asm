; =========================================================
; Game Engine Function: _ZN6CPools10InitialiseEv
; Address            : 0x40C8B0 - 0x40CF7C
; =========================================================

40C8B0:  PUSH            {R4-R7,LR}
40C8B2:  ADD             R7, SP, #0xC
40C8B4:  PUSH.W          {R8,R9,R11}
40C8B8:  MOVS            R0, #0x14; unsigned int
40C8BA:  BLX             _Znwj; operator new(uint)
40C8BE:  MOV             R4, R0
40C8C0:  MOV             R0, #0x927C0; unsigned int
40C8C8:  BLX             _Znaj; operator new[](uint)
40C8CC:  MOVW            R5, #:lower16:(elf_hash_chain+0x2390)
40C8D0:  STR             R0, [R4]
40C8D2:  MOVT            R5, #:upper16:(elf_hash_chain+0x2390)
40C8D6:  MOV             R0, R5; unsigned int
40C8D8:  BLX             _Znaj; operator new[](uint)
40C8DC:  MOVS            R1, #1
40C8DE:  MOVS            R2, #0x80
40C8E0:  STRB            R1, [R4,#0x10]
40C8E2:  MOV.W           R1, #0xFFFFFFFF
40C8E6:  STRD.W          R0, R5, [R4,#4]
40C8EA:  STR             R1, [R4,#0xC]
40C8EC:  LDRB            R1, [R0,#1]
40C8EE:  STRB            R2, [R0]
40C8F0:  ORR.W           R1, R1, #0x80
40C8F4:  STRB            R1, [R0,#1]
40C8F6:  LDR             R0, [R4,#4]
40C8F8:  LDRB            R1, [R0,#1]
40C8FA:  AND.W           R1, R1, #0x80
40C8FE:  STRB            R1, [R0,#1]
40C900:  MOVS            R0, #2
40C902:  LDR             R1, [R4,#4]
40C904:  LDRB            R2, [R1,R0]
40C906:  ORR.W           R2, R2, #0x80
40C90A:  STRB            R2, [R1,R0]
40C90C:  LDR             R1, [R4,#4]
40C90E:  LDRB            R2, [R1,R0]
40C910:  AND.W           R2, R2, #0x80
40C914:  STRB            R2, [R1,R0]
40C916:  ADDS            R0, #1
40C918:  CMP             R0, R5
40C91A:  BNE             loc_40C902
40C91C:  LDR.W           R0, =(_ZN6CPools25ms_pPtrNodeSingleLinkPoolE_ptr - 0x40C924)
40C920:  ADD             R0, PC; _ZN6CPools25ms_pPtrNodeSingleLinkPoolE_ptr
40C922:  LDR             R0, [R0]; CPools::ms_pPtrNodeSingleLinkPool ...
40C924:  STR             R4, [R0]; CPools::ms_pPtrNodeSingleLinkPool
40C926:  MOVS            R0, #0x14; unsigned int
40C928:  BLX             _Znwj; operator new(uint)
40C92C:  MOV             R4, R0
40C92E:  MOV             R0, #0x11940; unsigned int
40C936:  BLX             _Znaj; operator new[](uint)
40C93A:  STR             R0, [R4]
40C93C:  MOVW            R0, #0x1770; unsigned int
40C940:  MOVW            R5, #0x1770
40C944:  BLX             _Znaj; operator new[](uint)
40C948:  MOVS            R1, #1
40C94A:  MOVS            R2, #0x80
40C94C:  STRB            R1, [R4,#0x10]
40C94E:  MOV.W           R1, #0xFFFFFFFF
40C952:  STRD.W          R0, R5, [R4,#4]
40C956:  STR             R1, [R4,#0xC]
40C958:  LDRB            R1, [R0,#1]
40C95A:  STRB            R2, [R0]
40C95C:  ORR.W           R1, R1, #0x80
40C960:  STRB            R1, [R0,#1]
40C962:  LDR             R0, [R4,#4]
40C964:  LDRB            R1, [R0,#1]
40C966:  AND.W           R1, R1, #0x80
40C96A:  STRB            R1, [R0,#1]
40C96C:  MOVS            R0, #2
40C96E:  LDR             R1, [R4,#4]
40C970:  LDRB            R2, [R1,R0]
40C972:  ORR.W           R2, R2, #0x80
40C976:  STRB            R2, [R1,R0]
40C978:  LDR             R1, [R4,#4]
40C97A:  LDRB            R2, [R1,R0]
40C97C:  AND.W           R2, R2, #0x80
40C980:  STRB            R2, [R1,R0]
40C982:  ADDS            R0, #1
40C984:  CMP             R0, R5
40C986:  BNE             loc_40C96E
40C988:  LDR.W           R0, =(_ZN6CPools25ms_pPtrNodeDoubleLinkPoolE_ptr - 0x40C990)
40C98C:  ADD             R0, PC; _ZN6CPools25ms_pPtrNodeDoubleLinkPoolE_ptr
40C98E:  LDR             R0, [R0]; CPools::ms_pPtrNodeDoubleLinkPool ...
40C990:  STR             R4, [R0]; CPools::ms_pPtrNodeDoubleLinkPool
40C992:  MOVS            R0, #0x14; unsigned int
40C994:  BLX             _Znwj; operator new(uint)
40C998:  MOV             R4, R0
40C99A:  MOVW            R0, #0x2710; unsigned int
40C99E:  BLX             _Znaj; operator new[](uint)
40C9A2:  STR             R0, [R4]
40C9A4:  MOV.W           R0, #0x1F4; unsigned int
40C9A8:  MOV.W           R5, #0x1F4
40C9AC:  BLX             _Znaj; operator new[](uint)
40C9B0:  MOVS            R1, #1
40C9B2:  MOVS            R2, #0x80
40C9B4:  STRB            R1, [R4,#0x10]
40C9B6:  MOV.W           R1, #0xFFFFFFFF
40C9BA:  STRD.W          R0, R5, [R4,#4]
40C9BE:  STR             R1, [R4,#0xC]
40C9C0:  LDRB            R1, [R0,#1]
40C9C2:  STRB            R2, [R0]
40C9C4:  ORR.W           R1, R1, #0x80
40C9C8:  STRB            R1, [R0,#1]
40C9CA:  LDR             R0, [R4,#4]
40C9CC:  LDRB            R1, [R0,#1]
40C9CE:  AND.W           R1, R1, #0x80
40C9D2:  STRB            R1, [R0,#1]
40C9D4:  MOVS            R0, #2
40C9D6:  LDR             R1, [R4,#4]
40C9D8:  LDRB            R2, [R1,R0]
40C9DA:  ORR.W           R2, R2, #0x80
40C9DE:  STRB            R2, [R1,R0]
40C9E0:  LDR             R1, [R4,#4]
40C9E2:  LDRB            R2, [R1,R0]
40C9E4:  AND.W           R2, R2, #0x80
40C9E8:  STRB            R2, [R1,R0]
40C9EA:  ADDS            R0, #1
40C9EC:  CMP.W           R0, #0x1F4
40C9F0:  BNE             loc_40C9D6
40C9F2:  LDR.W           R0, =(_ZN6CPools21ms_pEntryInfoNodePoolE_ptr - 0x40C9FA)
40C9F6:  ADD             R0, PC; _ZN6CPools21ms_pEntryInfoNodePoolE_ptr
40C9F8:  LDR             R0, [R0]; CPools::ms_pEntryInfoNodePool ...
40C9FA:  STR             R4, [R0]; CPools::ms_pEntryInfoNodePool
40C9FC:  MOVS            R0, #0x14; unsigned int
40C9FE:  BLX             _Znwj; operator new(uint)
40CA02:  MOV             R4, R0
40CA04:  MOV             R0, #0x44390; unsigned int
40CA0C:  BLX             _Znaj; operator new[](uint)
40CA10:  STR             R0, [R4]
40CA12:  MOVS            R0, #0x8C; unsigned int
40CA14:  MOVS            R5, #0x8C
40CA16:  BLX             _Znaj; operator new[](uint)
40CA1A:  MOVS            R1, #1
40CA1C:  MOVS            R2, #0x80
40CA1E:  STRB            R1, [R4,#0x10]
40CA20:  MOV.W           R1, #0xFFFFFFFF
40CA24:  STRD.W          R0, R5, [R4,#4]
40CA28:  STR             R1, [R4,#0xC]
40CA2A:  LDRB            R1, [R0,#1]
40CA2C:  STRB            R2, [R0]
40CA2E:  ORR.W           R1, R1, #0x80
40CA32:  STRB            R1, [R0,#1]
40CA34:  LDR             R0, [R4,#4]
40CA36:  LDRB            R1, [R0,#1]
40CA38:  AND.W           R1, R1, #0x80
40CA3C:  STRB            R1, [R0,#1]
40CA3E:  MOVS            R0, #2
40CA40:  LDR             R1, [R4,#4]
40CA42:  LDRB            R2, [R1,R0]
40CA44:  ORR.W           R2, R2, #0x80
40CA48:  STRB            R2, [R1,R0]
40CA4A:  LDR             R1, [R4,#4]
40CA4C:  LDRB            R2, [R1,R0]
40CA4E:  AND.W           R2, R2, #0x80
40CA52:  STRB            R2, [R1,R0]
40CA54:  ADDS            R0, #1
40CA56:  CMP             R0, #0x8C
40CA58:  BNE             loc_40CA40
40CA5A:  LDR.W           R0, =(_ZN6CPools11ms_pPedPoolE_ptr - 0x40CA62)
40CA5E:  ADD             R0, PC; _ZN6CPools11ms_pPedPoolE_ptr
40CA60:  LDR             R0, [R0]; CPools::ms_pPedPool ...
40CA62:  STR             R4, [R0]; CPools::ms_pPedPool
40CA64:  MOVS            R0, #0x14; unsigned int
40CA66:  BLX             _Znwj; operator new(uint)
40CA6A:  MOV             R4, R0
40CA6C:  MOV             R0, #0x45EE8; unsigned int
40CA74:  BLX             _Znaj; operator new[](uint)
40CA78:  STR             R0, [R4]
40CA7A:  MOVS            R0, #0x6E ; 'n'; unsigned int
40CA7C:  MOVS            R5, #0x6E ; 'n'
40CA7E:  BLX             _Znaj; operator new[](uint)
40CA82:  MOVS            R1, #1
40CA84:  MOVS            R2, #0x80
40CA86:  STRB            R1, [R4,#0x10]
40CA88:  MOV.W           R1, #0xFFFFFFFF
40CA8C:  STRD.W          R0, R5, [R4,#4]
40CA90:  STR             R1, [R4,#0xC]
40CA92:  LDRB            R1, [R0,#1]
40CA94:  STRB            R2, [R0]
40CA96:  ORR.W           R1, R1, #0x80
40CA9A:  STRB            R1, [R0,#1]
40CA9C:  LDR             R0, [R4,#4]
40CA9E:  LDRB            R1, [R0,#1]
40CAA0:  AND.W           R1, R1, #0x80
40CAA4:  STRB            R1, [R0,#1]
40CAA6:  MOVS            R0, #2
40CAA8:  LDR             R1, [R4,#4]
40CAAA:  LDRB            R2, [R1,R0]
40CAAC:  ORR.W           R2, R2, #0x80
40CAB0:  STRB            R2, [R1,R0]
40CAB2:  LDR             R1, [R4,#4]
40CAB4:  LDRB            R2, [R1,R0]
40CAB6:  AND.W           R2, R2, #0x80
40CABA:  STRB            R2, [R1,R0]
40CABC:  ADDS            R0, #1
40CABE:  CMP             R0, #0x6E ; 'n'
40CAC0:  BNE             loc_40CAA8
40CAC2:  LDR.W           R0, =(_ZN6CPools15ms_pVehiclePoolE_ptr - 0x40CACA)
40CAC6:  ADD             R0, PC; _ZN6CPools15ms_pVehiclePoolE_ptr
40CAC8:  LDR             R0, [R0]; CPools::ms_pVehiclePool ...
40CACA:  STR             R4, [R0]; CPools::ms_pVehiclePool
40CACC:  MOVS            R0, #0x14; unsigned int
40CACE:  BLX             _Znwj; operator new(uint)
40CAD2:  MOV             R4, R0
40CAD4:  MOV             R0, #0xCD140; unsigned int
40CADC:  BLX             _Znaj; operator new[](uint)
40CAE0:  STR             R0, [R4]
40CAE2:  MOVW            R0, #0x36B0; unsigned int
40CAE6:  MOVW            R5, #0x36B0
40CAEA:  BLX             _Znaj; operator new[](uint)
40CAEE:  MOVS            R1, #1
40CAF0:  MOVS            R2, #0x80
40CAF2:  STRB            R1, [R4,#0x10]
40CAF4:  MOV.W           R1, #0xFFFFFFFF
40CAF8:  STRD.W          R0, R5, [R4,#4]
40CAFC:  STR             R1, [R4,#0xC]
40CAFE:  LDRB            R1, [R0,#1]
40CB00:  STRB            R2, [R0]
40CB02:  ORR.W           R1, R1, #0x80
40CB06:  STRB            R1, [R0,#1]
40CB08:  LDR             R0, [R4,#4]
40CB0A:  LDRB            R1, [R0,#1]
40CB0C:  AND.W           R1, R1, #0x80
40CB10:  STRB            R1, [R0,#1]
40CB12:  MOVS            R0, #2
40CB14:  LDR             R1, [R4,#4]
40CB16:  LDRB            R2, [R1,R0]
40CB18:  ORR.W           R2, R2, #0x80
40CB1C:  STRB            R2, [R1,R0]
40CB1E:  LDR             R1, [R4,#4]
40CB20:  LDRB            R2, [R1,R0]
40CB22:  AND.W           R2, R2, #0x80
40CB26:  STRB            R2, [R1,R0]
40CB28:  ADDS            R0, #1
40CB2A:  CMP             R0, R5
40CB2C:  BNE             loc_40CB14
40CB2E:  LDR.W           R0, =(_ZN6CPools16ms_pBuildingPoolE_ptr - 0x40CB36)
40CB32:  ADD             R0, PC; _ZN6CPools16ms_pBuildingPoolE_ptr
40CB34:  LDR             R0, [R0]; CPools::ms_pBuildingPool ...
40CB36:  STR             R4, [R0]; CPools::ms_pBuildingPool
40CB38:  MOVS            R0, #0x14; unsigned int
40CB3A:  BLX             _Znwj; operator new(uint)
40CB3E:  MOV             R4, R0
40CB40:  MOV             R0, #0x23E38; unsigned int
40CB48:  BLX             _Znaj; operator new[](uint)
40CB4C:  STR             R0, [R4]
40CB4E:  MOV.W           R0, #0x15E; unsigned int
40CB52:  MOV.W           R5, #0x15E
40CB56:  BLX             _Znaj; operator new[](uint)
40CB5A:  MOVS            R1, #1
40CB5C:  MOVS            R2, #0x80
40CB5E:  STRB            R1, [R4,#0x10]
40CB60:  MOV.W           R1, #0xFFFFFFFF
40CB64:  STRD.W          R0, R5, [R4,#4]
40CB68:  STR             R1, [R4,#0xC]
40CB6A:  LDRB            R1, [R0,#1]
40CB6C:  STRB            R2, [R0]
40CB6E:  ORR.W           R1, R1, #0x80
40CB72:  STRB            R1, [R0,#1]
40CB74:  LDR             R0, [R4,#4]
40CB76:  LDRB            R1, [R0,#1]
40CB78:  AND.W           R1, R1, #0x80
40CB7C:  STRB            R1, [R0,#1]
40CB7E:  MOVS            R0, #2
40CB80:  LDR             R1, [R4,#4]
40CB82:  LDRB            R2, [R1,R0]
40CB84:  ORR.W           R2, R2, #0x80
40CB88:  STRB            R2, [R1,R0]
40CB8A:  LDR             R1, [R4,#4]
40CB8C:  LDRB            R2, [R1,R0]
40CB8E:  AND.W           R2, R2, #0x80
40CB92:  STRB            R2, [R1,R0]
40CB94:  ADDS            R0, #1
40CB96:  CMP.W           R0, #0x15E
40CB9A:  BNE             loc_40CB80
40CB9C:  LDR.W           R0, =(_ZN6CPools14ms_pObjectPoolE_ptr - 0x40CBA4)
40CBA0:  ADD             R0, PC; _ZN6CPools14ms_pObjectPoolE_ptr
40CBA2:  LDR             R0, [R0]; CPools::ms_pObjectPool ...
40CBA4:  STR             R4, [R0]; CPools::ms_pObjectPool
40CBA6:  MOVS            R0, #0x14; unsigned int
40CBA8:  BLX             _Znwj; operator new(uint)
40CBAC:  MOV             R4, R0
40CBAE:  MOV             R0, #0x33450; unsigned int
40CBB6:  BLX             _Znaj; operator new[](uint)
40CBBA:  STR             R0, [R4]
40CBBC:  MOVW            R0, #0xDAC; unsigned int
40CBC0:  MOVW            R5, #0xDAC
40CBC4:  BLX             _Znaj; operator new[](uint)
40CBC8:  MOVS            R1, #1
40CBCA:  MOVS            R2, #0x80
40CBCC:  STRB            R1, [R4,#0x10]
40CBCE:  MOV.W           R1, #0xFFFFFFFF
40CBD2:  STRD.W          R0, R5, [R4,#4]
40CBD6:  STR             R1, [R4,#0xC]
40CBD8:  LDRB            R1, [R0,#1]
40CBDA:  STRB            R2, [R0]
40CBDC:  ORR.W           R1, R1, #0x80
40CBE0:  STRB            R1, [R0,#1]
40CBE2:  LDR             R0, [R4,#4]
40CBE4:  LDRB            R1, [R0,#1]
40CBE6:  AND.W           R1, R1, #0x80
40CBEA:  STRB            R1, [R0,#1]
40CBEC:  MOV             R0, #0xFFFFF256
40CBF4:  LDR             R1, [R4,#4]
40CBF6:  ADD             R1, R0
40CBF8:  LDRB.W          R2, [R1,#0xDAC]
40CBFC:  ORR.W           R2, R2, #0x80
40CC00:  STRB.W          R2, [R1,#0xDAC]
40CC04:  LDR             R1, [R4,#4]
40CC06:  ADD             R1, R0
40CC08:  ADDS            R0, #1
40CC0A:  LDRB.W          R2, [R1,#0xDAC]
40CC0E:  AND.W           R2, R2, #0x80
40CC12:  STRB.W          R2, [R1,#0xDAC]
40CC16:  BNE             loc_40CBF4
40CC18:  LDR             R0, =(_ZN6CPools13ms_pDummyPoolE_ptr - 0x40CC1E)
40CC1A:  ADD             R0, PC; _ZN6CPools13ms_pDummyPoolE_ptr
40CC1C:  LDR             R0, [R0]; CPools::ms_pDummyPool ...
40CC1E:  STR             R4, [R0]; CPools::ms_pDummyPool
40CC20:  MOVS            R0, #0x14; unsigned int
40CC22:  BLX             _Znwj; operator new(uint)
40CC26:  MOV             R4, R0
40CC28:  MOV             R0, #0x76F20; unsigned int
40CC30:  BLX             _Znaj; operator new[](uint)
40CC34:  STR             R0, [R4]
40CC36:  MOVW            R0, #0x27A6; unsigned int
40CC3A:  MOVW            R5, #0x27A6
40CC3E:  BLX             _Znaj; operator new[](uint)
40CC42:  MOVS            R1, #1
40CC44:  MOVS            R2, #0x80
40CC46:  STRB            R1, [R4,#0x10]
40CC48:  MOV.W           R1, #0xFFFFFFFF
40CC4C:  STRD.W          R0, R5, [R4,#4]
40CC50:  STR             R1, [R4,#0xC]
40CC52:  LDRB            R1, [R0,#1]
40CC54:  STRB            R2, [R0]
40CC56:  ORR.W           R1, R1, #0x80
40CC5A:  STRB            R1, [R0,#1]
40CC5C:  LDR             R0, [R4,#4]
40CC5E:  LDRB            R1, [R0,#1]
40CC60:  AND.W           R1, R1, #0x80
40CC64:  STRB            R1, [R0,#1]
40CC66:  MOVS            R0, #2
40CC68:  LDR             R1, [R4,#4]
40CC6A:  LDRB            R2, [R1,R0]
40CC6C:  ORR.W           R2, R2, #0x80
40CC70:  STRB            R2, [R1,R0]
40CC72:  LDR             R1, [R4,#4]
40CC74:  LDRB            R2, [R1,R0]
40CC76:  AND.W           R2, R2, #0x80
40CC7A:  STRB            R2, [R1,R0]
40CC7C:  ADDS            R0, #1
40CC7E:  CMP             R0, R5
40CC80:  BNE             loc_40CC68
40CC82:  LDR             R0, =(_ZN6CPools16ms_pColModelPoolE_ptr - 0x40CC88)
40CC84:  ADD             R0, PC; _ZN6CPools16ms_pColModelPoolE_ptr
40CC86:  LDR             R0, [R0]; CPools::ms_pColModelPool ...
40CC88:  STR             R4, [R0]; CPools::ms_pColModelPool
40CC8A:  MOVS            R0, #0x14; unsigned int
40CC8C:  BLX             _Znwj; operator new(uint)
40CC90:  MOV             R4, R0
40CC92:  MOV.W           R0, #0xFA00; unsigned int
40CC96:  BLX             _Znaj; operator new[](uint)
40CC9A:  STR             R0, [R4]
40CC9C:  MOV.W           R0, #0x1F4; unsigned int
40CCA0:  MOV.W           R5, #0x1F4
40CCA4:  BLX             _Znaj; operator new[](uint)
40CCA8:  MOVS            R1, #1
40CCAA:  MOVS            R2, #0x80
40CCAC:  STRB            R1, [R4,#0x10]
40CCAE:  MOV.W           R1, #0xFFFFFFFF
40CCB2:  STRD.W          R0, R5, [R4,#4]
40CCB6:  STR             R1, [R4,#0xC]
40CCB8:  LDRB            R1, [R0,#1]
40CCBA:  STRB            R2, [R0]
40CCBC:  ORR.W           R1, R1, #0x80
40CCC0:  STRB            R1, [R0,#1]
40CCC2:  LDR             R0, [R4,#4]
40CCC4:  LDRB            R1, [R0,#1]
40CCC6:  AND.W           R1, R1, #0x80
40CCCA:  STRB            R1, [R0,#1]
40CCCC:  MOVS            R0, #2
40CCCE:  LDR             R1, [R4,#4]
40CCD0:  LDRB            R2, [R1,R0]
40CCD2:  ORR.W           R2, R2, #0x80
40CCD6:  STRB            R2, [R1,R0]
40CCD8:  LDR             R1, [R4,#4]
40CCDA:  LDRB            R2, [R1,R0]
40CCDC:  AND.W           R2, R2, #0x80
40CCE0:  STRB            R2, [R1,R0]
40CCE2:  ADDS            R0, #1
40CCE4:  CMP.W           R0, #0x1F4
40CCE8:  BNE             loc_40CCCE
40CCEA:  LDR             R0, =(_ZN6CPools12ms_pTaskPoolE_ptr - 0x40CCF0)
40CCEC:  ADD             R0, PC; _ZN6CPools12ms_pTaskPoolE_ptr
40CCEE:  LDR             R0, [R0]; CPools::ms_pTaskPool ...
40CCF0:  STR             R4, [R0]; CPools::ms_pTaskPool
40CCF2:  MOVS            R0, #0x14; unsigned int
40CCF4:  BLX             _Znwj; operator new(uint)
40CCF8:  MOV             R4, R0
40CCFA:  MOVW            R0, #0x3520; unsigned int
40CCFE:  BLX             _Znaj; operator new[](uint)
40CD02:  STR             R0, [R4]
40CD04:  MOVS            R0, #0xC8; unsigned int
40CD06:  MOVS            R5, #0xC8
40CD08:  BLX             _Znaj; operator new[](uint)
40CD0C:  MOVS            R1, #1
40CD0E:  MOVS            R2, #0x80
40CD10:  STRB            R1, [R4,#0x10]
40CD12:  MOV.W           R1, #0xFFFFFFFF
40CD16:  STRD.W          R0, R5, [R4,#4]
40CD1A:  STR             R1, [R4,#0xC]
40CD1C:  LDRB            R1, [R0,#1]
40CD1E:  STRB            R2, [R0]
40CD20:  ORR.W           R1, R1, #0x80
40CD24:  STRB            R1, [R0,#1]
40CD26:  LDR             R0, [R4,#4]
40CD28:  LDRB            R1, [R0,#1]
40CD2A:  AND.W           R1, R1, #0x80
40CD2E:  STRB            R1, [R0,#1]
40CD30:  MOVS            R0, #2
40CD32:  LDR             R1, [R4,#4]
40CD34:  LDRB            R2, [R1,R0]
40CD36:  ORR.W           R2, R2, #0x80
40CD3A:  STRB            R2, [R1,R0]
40CD3C:  LDR             R1, [R4,#4]
40CD3E:  LDRB            R2, [R1,R0]
40CD40:  AND.W           R2, R2, #0x80
40CD44:  STRB            R2, [R1,R0]
40CD46:  ADDS            R0, #1
40CD48:  CMP             R0, #0xC8
40CD4A:  BNE             loc_40CD32
40CD4C:  LDR             R0, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x40CD52)
40CD4E:  ADD             R0, PC; _ZN6CPools13ms_pEventPoolE_ptr
40CD50:  LDR             R0, [R0]; CPools::ms_pEventPool ...
40CD52:  STR             R4, [R0]; CPools::ms_pEventPool
40CD54:  MOVS            R0, #0x14; unsigned int
40CD56:  BLX             _Znwj; operator new(uint)
40CD5A:  MOV             R4, R0
40CD5C:  MOV.W           R0, #0x1900; unsigned int
40CD60:  BLX             _Znaj; operator new[](uint)
40CD64:  STR             R0, [R4]
40CD66:  MOVS            R0, #0x40 ; '@'; unsigned int
40CD68:  MOVS            R5, #0x40 ; '@'
40CD6A:  BLX             _Znaj; operator new[](uint)
40CD6E:  MOVS            R1, #1
40CD70:  MOVS            R2, #0x80
40CD72:  STRB            R1, [R4,#0x10]
40CD74:  MOV.W           R1, #0xFFFFFFFF
40CD78:  STRD.W          R0, R5, [R4,#4]
40CD7C:  STR             R1, [R4,#0xC]
40CD7E:  LDRB            R1, [R0,#1]
40CD80:  STRB            R2, [R0]
40CD82:  ORR.W           R1, R1, #0x80
40CD86:  STRB            R1, [R0,#1]
40CD88:  LDR             R0, [R4,#4]
40CD8A:  LDRB            R1, [R0,#1]
40CD8C:  AND.W           R1, R1, #0x80
40CD90:  STRB            R1, [R0,#1]
40CD92:  MOVS            R0, #2
40CD94:  LDR             R1, [R4,#4]
40CD96:  LDRB            R2, [R1,R0]
40CD98:  ORR.W           R2, R2, #0x80
40CD9C:  STRB            R2, [R1,R0]
40CD9E:  LDR             R1, [R4,#4]
40CDA0:  LDRB            R2, [R1,R0]
40CDA2:  AND.W           R2, R2, #0x80
40CDA6:  STRB            R2, [R1,R0]
40CDA8:  ADDS            R0, #1
40CDAA:  CMP             R0, #0x40 ; '@'
40CDAC:  BNE             loc_40CD94
40CDAE:  LDR             R0, =(_ZN6CPools18ms_pPointRoutePoolE_ptr - 0x40CDB4)
40CDB0:  ADD             R0, PC; _ZN6CPools18ms_pPointRoutePoolE_ptr
40CDB2:  LDR             R0, [R0]; CPools::ms_pPointRoutePool ...
40CDB4:  STR             R4, [R0]; CPools::ms_pPointRoutePool
40CDB6:  MOVS            R0, #0x14; unsigned int
40CDB8:  BLX             _Znwj; operator new(uint)
40CDBC:  MOV             R4, R0
40CDBE:  MOV.W           R0, #0x3480; unsigned int
40CDC2:  BLX             _Znaj; operator new[](uint)
40CDC6:  STR             R0, [R4]
40CDC8:  MOVS            R0, #0x20 ; ' '; unsigned int
40CDCA:  MOVS            R5, #0x20 ; ' '
40CDCC:  BLX             _Znaj; operator new[](uint)
40CDD0:  MOVS            R1, #1
40CDD2:  MOVS            R2, #0x80
40CDD4:  STRB            R1, [R4,#0x10]
40CDD6:  MOV.W           R1, #0xFFFFFFFF
40CDDA:  STRD.W          R0, R5, [R4,#4]
40CDDE:  STR             R1, [R4,#0xC]
40CDE0:  LDRB            R1, [R0,#1]
40CDE2:  STRB            R2, [R0]
40CDE4:  ORR.W           R1, R1, #0x80
40CDE8:  STRB            R1, [R0,#1]
40CDEA:  LDR             R0, [R4,#4]
40CDEC:  LDRB            R1, [R0,#1]
40CDEE:  AND.W           R1, R1, #0x80
40CDF2:  STRB            R1, [R0,#1]
40CDF4:  MOVS            R0, #2
40CDF6:  LDR             R1, [R4,#4]
40CDF8:  LDRB            R2, [R1,R0]
40CDFA:  ORR.W           R2, R2, #0x80
40CDFE:  STRB            R2, [R1,R0]
40CE00:  LDR             R1, [R4,#4]
40CE02:  LDRB            R2, [R1,R0]
40CE04:  AND.W           R2, R2, #0x80
40CE08:  STRB            R2, [R1,R0]
40CE0A:  ADDS            R0, #1
40CE0C:  CMP             R0, #0x20 ; ' '
40CE0E:  BNE             loc_40CDF6
40CE10:  LDR             R0, =(_ZN6CPools19ms_pPatrolRoutePoolE_ptr - 0x40CE16)
40CE12:  ADD             R0, PC; _ZN6CPools19ms_pPatrolRoutePoolE_ptr
40CE14:  LDR             R0, [R0]; CPools::ms_pPatrolRoutePool ...
40CE16:  STR             R4, [R0]; CPools::ms_pPatrolRoutePool
40CE18:  MOVS            R0, #0x14; unsigned int
40CE1A:  BLX             _Znwj; operator new(uint)
40CE1E:  MOV             R4, R0
40CE20:  MOV.W           R0, #0x900; unsigned int
40CE24:  BLX             _Znaj; operator new[](uint)
40CE28:  STR             R0, [R4]
40CE2A:  MOVS            R0, #0x40 ; '@'; unsigned int
40CE2C:  MOVS            R5, #0x40 ; '@'
40CE2E:  BLX             _Znaj; operator new[](uint)
40CE32:  MOVS            R1, #1
40CE34:  MOVS            R2, #0x80
40CE36:  STRB            R1, [R4,#0x10]
40CE38:  MOV.W           R1, #0xFFFFFFFF
40CE3C:  STRD.W          R0, R5, [R4,#4]
40CE40:  STR             R1, [R4,#0xC]
40CE42:  LDRB            R1, [R0,#1]
40CE44:  STRB            R2, [R0]
40CE46:  ORR.W           R1, R1, #0x80
40CE4A:  STRB            R1, [R0,#1]
40CE4C:  LDR             R0, [R4,#4]
40CE4E:  LDRB            R1, [R0,#1]
40CE50:  AND.W           R1, R1, #0x80
40CE54:  STRB            R1, [R0,#1]
40CE56:  MOVS            R0, #2
40CE58:  LDR             R1, [R4,#4]
40CE5A:  LDRB            R2, [R1,R0]
40CE5C:  ORR.W           R2, R2, #0x80
40CE60:  STRB            R2, [R1,R0]
40CE62:  LDR             R1, [R4,#4]
40CE64:  LDRB            R2, [R1,R0]
40CE66:  AND.W           R2, R2, #0x80
40CE6A:  STRB            R2, [R1,R0]
40CE6C:  ADDS            R0, #1
40CE6E:  CMP             R0, #0x40 ; '@'
40CE70:  BNE             loc_40CE58
40CE72:  LDR             R0, =(_ZN6CPools17ms_pNodeRoutePoolE_ptr - 0x40CE78)
40CE74:  ADD             R0, PC; _ZN6CPools17ms_pNodeRoutePoolE_ptr
40CE76:  LDR             R0, [R0]; CPools::ms_pNodeRoutePool ...
40CE78:  STR             R4, [R0]; CPools::ms_pNodeRoutePool
40CE7A:  MOVS            R0, #0x14; unsigned int
40CE7C:  BLX             _Znwj; operator new(uint)
40CE80:  MOV             R4, R0
40CE82:  MOV.W           R0, #0x200; unsigned int
40CE86:  BLX             _Znaj; operator new[](uint)
40CE8A:  STR             R0, [R4]
40CE8C:  MOVS            R0, #0x10; unsigned int
40CE8E:  MOV.W           R8, #0x10
40CE92:  BLX             _Znaj; operator new[](uint)
40CE96:  LDR             R1, =(_ZN6CPools21ms_pTaskAllocatorPoolE_ptr - 0x40CEA6)
40CE98:  VMOV.I8         Q8, #0x80
40CE9C:  MOVS            R6, #1
40CE9E:  MOV.W           R9, #0xFFFFFFFF
40CEA2:  ADD             R1, PC; _ZN6CPools21ms_pTaskAllocatorPoolE_ptr
40CEA4:  ADDS            R2, R4, #4
40CEA6:  STRB            R6, [R4,#0x10]
40CEA8:  LDR             R1, [R1]; CPools::ms_pTaskAllocatorPool ...
40CEAA:  STM.W           R2, {R0,R8,R9}
40CEAE:  VST1.8          {D16-D17}, [R0]
40CEB2:  MOVS            R0, #0x14; unsigned int
40CEB4:  STR             R4, [R1]; CPools::ms_pTaskAllocatorPool
40CEB6:  BLX             _Znwj; operator new(uint)
40CEBA:  MOV             R4, R0
40CEBC:  MOV             R0, #0x16B20; unsigned int
40CEC4:  BLX             _Znaj; operator new[](uint)
40CEC8:  STR             R0, [R4]
40CECA:  MOVS            R0, #0x8C; unsigned int
40CECC:  MOVS            R5, #0x8C
40CECE:  BLX             _Znaj; operator new[](uint)
40CED2:  ADDS            R1, R4, #4
40CED4:  STRB            R6, [R4,#0x10]
40CED6:  STM.W           R1, {R0,R5,R9}
40CEDA:  MOVS            R2, #0x80
40CEDC:  LDRB            R1, [R0,#1]
40CEDE:  STRB            R2, [R0]
40CEE0:  ORR.W           R1, R1, #0x80
40CEE4:  STRB            R1, [R0,#1]
40CEE6:  LDR             R0, [R4,#4]
40CEE8:  LDRB            R1, [R0,#1]
40CEEA:  AND.W           R1, R1, #0x80
40CEEE:  STRB            R1, [R0,#1]
40CEF0:  MOVS            R0, #2
40CEF2:  LDR             R1, [R4,#4]
40CEF4:  LDRB            R2, [R1,R0]
40CEF6:  ORR.W           R2, R2, #0x80
40CEFA:  STRB            R2, [R1,R0]
40CEFC:  LDR             R1, [R4,#4]
40CEFE:  LDRB            R2, [R1,R0]
40CF00:  AND.W           R2, R2, #0x80
40CF04:  STRB            R2, [R1,R0]
40CF06:  ADDS            R0, #1
40CF08:  CMP             R0, #0x8C
40CF0A:  BNE             loc_40CEF2
40CF0C:  LDR             R0, =(_ZN6CPools23ms_pPedIntelligencePoolE_ptr - 0x40CF12)
40CF0E:  ADD             R0, PC; _ZN6CPools23ms_pPedIntelligencePoolE_ptr
40CF10:  LDR             R0, [R0]; CPools::ms_pPedIntelligencePool ...
40CF12:  STR             R4, [R0]; CPools::ms_pPedIntelligencePool
40CF14:  MOVS            R0, #0x14; unsigned int
40CF16:  BLX             _Znwj; operator new(uint)
40CF1A:  MOV             R4, R0
40CF1C:  MOV.W           R0, #0x3B00; unsigned int
40CF20:  BLX             _Znaj; operator new[](uint)
40CF24:  STR             R0, [R4]
40CF26:  MOVS            R0, #0x40 ; '@'; unsigned int
40CF28:  MOVS            R5, #0x40 ; '@'
40CF2A:  BLX             _Znaj; operator new[](uint)
40CF2E:  MOVS            R1, #1
40CF30:  MOVS            R2, #0x80
40CF32:  STRB            R1, [R4,#0x10]
40CF34:  MOV.W           R1, #0xFFFFFFFF
40CF38:  STRD.W          R0, R5, [R4,#4]
40CF3C:  STR             R1, [R4,#0xC]
40CF3E:  LDRB            R1, [R0,#1]
40CF40:  STRB            R2, [R0]
40CF42:  ORR.W           R1, R1, #0x80
40CF46:  STRB            R1, [R0,#1]
40CF48:  LDR             R0, [R4,#4]
40CF4A:  LDRB            R1, [R0,#1]
40CF4C:  AND.W           R1, R1, #0x80
40CF50:  STRB            R1, [R0,#1]
40CF52:  MOVS            R0, #2
40CF54:  LDR             R1, [R4,#4]
40CF56:  LDRB            R2, [R1,R0]
40CF58:  ORR.W           R2, R2, #0x80
40CF5C:  STRB            R2, [R1,R0]
40CF5E:  LDR             R1, [R4,#4]
40CF60:  LDRB            R2, [R1,R0]
40CF62:  AND.W           R2, R2, #0x80
40CF66:  STRB            R2, [R1,R0]
40CF68:  ADDS            R0, #1
40CF6A:  CMP             R0, #0x40 ; '@'
40CF6C:  BNE             loc_40CF54
40CF6E:  LDR             R0, =(_ZN6CPools20ms_pPedAttractorPoolE_ptr - 0x40CF74)
40CF70:  ADD             R0, PC; _ZN6CPools20ms_pPedAttractorPoolE_ptr
40CF72:  LDR             R0, [R0]; CPools::ms_pPedAttractorPool ...
40CF74:  STR             R4, [R0]; CPools::ms_pPedAttractorPool
40CF76:  POP.W           {R8,R9,R11}
40CF7A:  POP             {R4-R7,PC}
