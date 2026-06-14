; =========================================================
; Game Engine Function: _ZN36CTaskComplexWalkRoundBuildingAttempt9SerializeEv
; Address            : 0x50FA44 - 0x50FC0E
; =========================================================

50FA44:  PUSH            {R4-R7,LR}
50FA46:  ADD             R7, SP, #0xC
50FA48:  PUSH.W          {R11}
50FA4C:  SUB             SP, SP, #8
50FA4E:  MOV             R4, R0
50FA50:  LDR             R0, [R4]
50FA52:  LDR             R1, [R0,#0x14]
50FA54:  MOV             R0, R4
50FA56:  BLX             R1
50FA58:  MOV             R5, R0
50FA5A:  LDR             R0, =(UseDataFence_ptr - 0x50FA60)
50FA5C:  ADD             R0, PC; UseDataFence_ptr
50FA5E:  LDR             R0, [R0]; UseDataFence
50FA60:  LDRB            R0, [R0]
50FA62:  CMP             R0, #0
50FA64:  IT NE
50FA66:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50FA6A:  MOVS            R0, #4; byte_count
50FA6C:  BLX             malloc
50FA70:  MOV             R6, R0
50FA72:  MOVS            R1, #byte_4; void *
50FA74:  STR             R5, [R6]
50FA76:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50FA7A:  MOV             R0, R6; p
50FA7C:  BLX             free
50FA80:  LDR             R0, [R4]
50FA82:  LDR             R1, [R0,#0x14]
50FA84:  MOV             R0, R4
50FA86:  BLX             R1
50FA88:  MOVW            R1, #0x1FD
50FA8C:  CMP             R0, R1
50FA8E:  BNE             loc_50FAA8
50FA90:  LDR             R0, [R4,#0x38]; CPed *
50FA92:  CBZ             R0, loc_50FAC4
50FA94:  LDRB.W          R1, [R0,#0x3A]
50FA98:  AND.W           R1, R1, #7
50FA9C:  CMP             R1, #3
50FA9E:  BNE             loc_50FAC4
50FAA0:  BLX             j__Z14GettPoolPedRefP4CPed; GettPoolPedRef(CPed *)
50FAA4:  MOV             R5, R0
50FAA6:  B               loc_50FAC8
50FAA8:  LDR             R0, [R4]
50FAAA:  LDR             R1, [R0,#0x14]
50FAAC:  MOV             R0, R4
50FAAE:  BLX             R1
50FAB0:  MOV             R1, R0; int
50FAB2:  MOVW            R0, #0x1FD; int
50FAB6:  ADD             SP, SP, #8
50FAB8:  POP.W           {R11}
50FABC:  POP.W           {R4-R7,LR}
50FAC0:  B.W             sub_1941D4
50FAC4:  MOV.W           R5, #0xFFFFFFFF
50FAC8:  LDR             R0, =(UseDataFence_ptr - 0x50FACE)
50FACA:  ADD             R0, PC; UseDataFence_ptr
50FACC:  LDR             R0, [R0]; UseDataFence
50FACE:  LDRB            R0, [R0]
50FAD0:  CMP             R0, #0
50FAD2:  IT NE
50FAD4:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50FAD8:  MOVS            R0, #4; byte_count
50FADA:  BLX             malloc
50FADE:  MOV             R6, R0
50FAE0:  MOVS            R1, #byte_4; void *
50FAE2:  STR             R5, [R6]
50FAE4:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50FAE8:  MOV             R0, R6; p
50FAEA:  BLX             free
50FAEE:  LDR             R0, =(UseDataFence_ptr - 0x50FAF4)
50FAF0:  ADD             R0, PC; UseDataFence_ptr
50FAF2:  LDR             R0, [R0]; UseDataFence
50FAF4:  LDRB            R0, [R0]
50FAF6:  CMP             R0, #0
50FAF8:  IT NE
50FAFA:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50FAFE:  ADD.W           R0, R4, #0x48 ; 'H'; this
50FB02:  MOVS            R1, #(stderr+1); void *
50FB04:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50FB08:  LDR             R0, =(UseDataFence_ptr - 0x50FB0E)
50FB0A:  ADD             R0, PC; UseDataFence_ptr
50FB0C:  LDR             R0, [R0]; UseDataFence
50FB0E:  LDRB            R0, [R0]
50FB10:  CMP             R0, #0
50FB12:  IT NE
50FB14:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50FB18:  MOVS            R0, #0xC; byte_count
50FB1A:  BLX             malloc
50FB1E:  ADD.W           R1, R4, #0x14
50FB22:  MOV             R5, R0
50FB24:  LDR             R0, [R4,#0x1C]
50FB26:  VLD1.8          {D16}, [R1]
50FB2A:  MOVS            R1, #(byte_9+3); void *
50FB2C:  STR             R0, [R5,#8]
50FB2E:  MOV             R0, R5; this
50FB30:  VST1.8          {D16}, [R5]
50FB34:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50FB38:  MOV             R0, R5; p
50FB3A:  BLX             free
50FB3E:  LDR             R0, =(UseDataFence_ptr - 0x50FB44)
50FB40:  ADD             R0, PC; UseDataFence_ptr
50FB42:  LDR             R0, [R0]; UseDataFence
50FB44:  LDRB            R0, [R0]
50FB46:  CMP             R0, #0
50FB48:  IT NE
50FB4A:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50FB4E:  MOVS            R0, #0xC; byte_count
50FB50:  BLX             malloc
50FB54:  ADD.W           R1, R4, #0x20 ; ' '
50FB58:  MOV             R5, R0
50FB5A:  LDR             R0, [R4,#0x28]
50FB5C:  VLD1.8          {D16}, [R1]
50FB60:  MOVS            R1, #(byte_9+3); void *
50FB62:  STR             R0, [R5,#8]
50FB64:  MOV             R0, R5; this
50FB66:  VST1.8          {D16}, [R5]
50FB6A:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50FB6E:  MOV             R0, R5; p
50FB70:  BLX             free
50FB74:  LDR             R0, =(UseDataFence_ptr - 0x50FB7A)
50FB76:  ADD             R0, PC; UseDataFence_ptr
50FB78:  LDR             R0, [R0]; UseDataFence
50FB7A:  LDRB            R0, [R0]
50FB7C:  CMP             R0, #0
50FB7E:  IT NE
50FB80:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50FB84:  MOVS            R0, #0xC; byte_count
50FB86:  BLX             malloc
50FB8A:  ADD.W           R1, R4, #0x2C ; ','
50FB8E:  MOV             R5, R0
50FB90:  LDR             R0, [R4,#0x34]
50FB92:  VLD1.8          {D16}, [R1]
50FB96:  MOVS            R1, #(byte_9+3); void *
50FB98:  STR             R0, [R5,#8]
50FB9A:  MOV             R0, R5; this
50FB9C:  VST1.8          {D16}, [R5]
50FBA0:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50FBA4:  MOV             R0, R5; p
50FBA6:  BLX             free
50FBAA:  LDR             R0, =(UseDataFence_ptr - 0x50FBB0)
50FBAC:  ADD             R0, PC; UseDataFence_ptr
50FBAE:  LDR             R0, [R0]; UseDataFence
50FBB0:  LDRB            R0, [R0]
50FBB2:  CMP             R0, #0
50FBB4:  IT NE
50FBB6:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50FBBA:  MOVS            R0, #0xC; byte_count
50FBBC:  BLX             malloc
50FBC0:  ADD.W           R1, R4, #0x3C ; '<'
50FBC4:  MOV             R5, R0
50FBC6:  LDR             R0, [R4,#0x44]
50FBC8:  VLD1.8          {D16}, [R1]
50FBCC:  MOVS            R1, #(byte_9+3); void *
50FBCE:  STR             R0, [R5,#8]
50FBD0:  MOV             R0, R5; this
50FBD2:  VST1.8          {D16}, [R5]
50FBD6:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50FBDA:  MOV             R0, R5; p
50FBDC:  BLX             free
50FBE0:  LDR             R0, =(UseDataFence_ptr - 0x50FBEA)
50FBE2:  LDRB.W          R1, [R4,#0x49]
50FBE6:  ADD             R0, PC; UseDataFence_ptr
50FBE8:  AND.W           R1, R1, #1
50FBEC:  STRB.W          R1, [R7,#var_11]
50FBF0:  LDR             R0, [R0]; UseDataFence
50FBF2:  LDRB            R0, [R0]
50FBF4:  CMP             R0, #0
50FBF6:  IT NE
50FBF8:  BLXNE           j__Z12AddDataFencev; AddDataFence(void)
50FBFC:  SUB.W           R0, R7, #-var_11; this
50FC00:  MOVS            R1, #(stderr+1); void *
50FC02:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
50FC06:  ADD             SP, SP, #8
50FC08:  POP.W           {R11}
50FC0C:  POP             {R4-R7,PC}
