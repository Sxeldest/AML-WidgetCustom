; =========================================================
; Game Engine Function: _ZN11CPlayerInfo4SaveEv
; Address            : 0x48DD78 - 0x48DE62
; =========================================================

48DD78:  PUSH            {R4-R7,LR}
48DD7A:  ADD             R7, SP, #0xC
48DD7C:  PUSH.W          {R8-R11}
48DD80:  SUB             SP, SP, #0x34
48DD82:  LDRH.W          R1, [R0,#0x156]
48DD86:  STR             R1, [SP,#0x50+var_20]
48DD88:  LDRB.W          R1, [R0,#0x154]
48DD8C:  STR             R1, [SP,#0x50+var_24]
48DD8E:  LDRB.W          R1, [R0,#0x153]
48DD92:  STR             R1, [SP,#0x50+var_28]
48DD94:  LDRB.W          R1, [R0,#0x152]
48DD98:  STR             R1, [SP,#0x50+var_2C]
48DD9A:  LDRB.W          R1, [R0,#0x151]
48DD9E:  STR             R1, [SP,#0x50+var_30]
48DDA0:  LDRB.W          R1, [R0,#0x150]
48DDA4:  STR             R1, [SP,#0x50+var_34]
48DDA6:  LDRB.W          R1, [R0,#0x14F]
48DDAA:  STR             R1, [SP,#0x50+var_38]
48DDAC:  LDRB.W          R1, [R0,#0x14E]
48DDB0:  STR             R1, [SP,#0x50+var_3C]
48DDB2:  LDRB.W          R1, [R0,#0x14D]
48DDB6:  STR             R1, [SP,#0x50+var_40]
48DDB8:  LDRB.W          R1, [R0,#0x14C]
48DDBC:  STR             R1, [SP,#0x50+var_44]
48DDBE:  LDRB.W          R1, [R0,#0x144]
48DDC2:  STR             R1, [SP,#0x50+var_48]
48DDC4:  LDR.W           R1, [R0,#0x134]
48DDC8:  STR             R1, [SP,#0x50+var_4C]
48DDCA:  LDRB.W          R6, [R0,#0xDC]
48DDCE:  LDRH.W          R9, [R0,#0x130]
48DDD2:  LDRD.W          R10, R11, [R0,#0xB8]
48DDD6:  LDRD.W          R5, R8, [R0,#0xC0]
48DDDA:  MOVS            R0, #4; byte_count
48DDDC:  BLX             malloc
48DDE0:  MOV             R4, R0
48DDE2:  MOVS            R0, #0x28 ; '('
48DDE4:  STR             R0, [R4]
48DDE6:  MOV             R0, R4; this
48DDE8:  MOVS            R1, #byte_4; void *
48DDEA:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48DDEE:  MOV             R0, R4; p
48DDF0:  BLX             free
48DDF4:  MOVS            R0, #0x28 ; '('; byte_count
48DDF6:  BLX             malloc
48DDFA:  MOV             R4, R0
48DDFC:  LDR             R0, [SP,#0x50+var_4C]
48DDFE:  STR.W           R10, [R4]
48DE02:  MOVS            R1, #word_28; void *
48DE04:  STRH.W          R9, [R4,#4]
48DE08:  STRB            R6, [R4,#6]
48DE0A:  STR             R0, [R4,#8]
48DE0C:  LDR             R0, [SP,#0x50+var_48]
48DE0E:  STR.W           R11, [R4,#0xC]
48DE12:  STRB            R0, [R4,#0x10]
48DE14:  LDR             R0, [SP,#0x50+var_44]
48DE16:  STR             R5, [R4,#0x14]
48DE18:  STR.W           R8, [R4,#0x18]
48DE1C:  STRB            R0, [R4,#0x1C]
48DE1E:  LDR             R0, [SP,#0x50+var_40]
48DE20:  STRB            R0, [R4,#0x1D]
48DE22:  LDR             R0, [SP,#0x50+var_3C]
48DE24:  STRB            R0, [R4,#0x1E]
48DE26:  LDR             R0, [SP,#0x50+var_38]
48DE28:  STRB            R0, [R4,#0x1F]
48DE2A:  LDR             R0, [SP,#0x50+var_34]
48DE2C:  STRB.W          R0, [R4,#0x20]
48DE30:  LDR             R0, [SP,#0x50+var_30]
48DE32:  STRB.W          R0, [R4,#0x21]
48DE36:  LDR             R0, [SP,#0x50+var_2C]
48DE38:  STRB.W          R0, [R4,#0x22]
48DE3C:  LDR             R0, [SP,#0x50+var_28]
48DE3E:  STRB.W          R0, [R4,#0x23]
48DE42:  LDR             R0, [SP,#0x50+var_24]
48DE44:  STRB.W          R0, [R4,#0x24]
48DE48:  LDR             R0, [SP,#0x50+var_20]
48DE4A:  STRH            R0, [R4,#0x26]
48DE4C:  MOV             R0, R4; this
48DE4E:  BLX             j__ZN19CGenericGameStorage21_SaveDataToWorkBufferEPvi; CGenericGameStorage::_SaveDataToWorkBuffer(void *,int)
48DE52:  MOV             R0, R4; p
48DE54:  BLX             free
48DE58:  MOVS            R0, #1
48DE5A:  ADD             SP, SP, #0x34 ; '4'
48DE5C:  POP.W           {R8-R11}
48DE60:  POP             {R4-R7,PC}
