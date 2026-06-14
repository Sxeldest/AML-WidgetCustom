; =========================================================
; Game Engine Function: _ZN11CPlayerInfo4LoadEv
; Address            : 0x48DE62 - 0x48DEFE
; =========================================================

48DE62:  PUSH            {R4,R6,R7,LR}
48DE64:  ADD             R7, SP, #8
48DE66:  SUB             SP, SP, #0x30
48DE68:  MOV             R4, R0
48DE6A:  ADD             R0, SP, #0x38+var_C; this
48DE6C:  MOVS            R1, #byte_4; void *
48DE6E:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48DE72:  ADD             R0, SP, #0x38+var_34; this
48DE74:  MOVS            R1, #word_28; void *
48DE76:  BLX             j__ZN19CGenericGameStorage23_LoadDataFromWorkBufferEPvi; CGenericGameStorage::_LoadDataFromWorkBuffer(void *,int)
48DE7A:  LDRB.W          R1, [SP,#0x38+var_2E]
48DE7E:  ADD.W           R12, R4, #0xB8
48DE82:  LDRH.W          R2, [SP,#0x38+var_30]
48DE86:  LDR             R0, [SP,#0x38+var_34]
48DE88:  STRH.W          R2, [R4,#0x130]
48DE8C:  STRB.W          R1, [R4,#0xDC]
48DE90:  LDR             R1, [SP,#0x38+var_2C]
48DE92:  STR.W           R1, [R4,#0x134]
48DE96:  LDRB.W          R2, [SP,#0x38+var_24]
48DE9A:  LDR             R1, [SP,#0x38+var_28]
48DE9C:  STRH.W          R2, [R4,#0x144]
48DEA0:  LDRD.W          R2, R3, [SP,#0x38+var_20]
48DEA4:  STM.W           R12, {R0-R3}
48DEA8:  LDRB.W          R0, [SP,#0x38+var_18]
48DEAC:  STRB.W          R0, [R4,#0x14C]
48DEB0:  LDRB.W          R0, [SP,#0x38+var_17]
48DEB4:  STRB.W          R0, [R4,#0x14D]
48DEB8:  LDRB.W          R0, [SP,#0x38+var_16]
48DEBC:  STRB.W          R0, [R4,#0x14E]
48DEC0:  LDRB.W          R0, [SP,#0x38+var_15]
48DEC4:  STRB.W          R0, [R4,#0x14F]
48DEC8:  LDRB.W          R0, [SP,#0x38+var_14]
48DECC:  STRB.W          R0, [R4,#0x150]
48DED0:  LDRB.W          R0, [SP,#0x38+var_13]
48DED4:  STRB.W          R0, [R4,#0x151]
48DED8:  LDRB.W          R0, [SP,#0x38+var_12]
48DEDC:  STRB.W          R0, [R4,#0x152]
48DEE0:  LDRB.W          R0, [SP,#0x38+var_11]
48DEE4:  STRB.W          R0, [R4,#0x153]
48DEE8:  LDRB.W          R0, [SP,#0x38+var_10]
48DEEC:  STRB.W          R0, [R4,#0x154]
48DEF0:  LDRH.W          R0, [SP,#0x38+var_E]
48DEF4:  STRH.W          R0, [R4,#0x156]
48DEF8:  MOVS            R0, #1
48DEFA:  ADD             SP, SP, #0x30 ; '0'
48DEFC:  POP             {R4,R6,R7,PC}
