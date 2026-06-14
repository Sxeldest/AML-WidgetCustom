; =========================================================
; Game Engine Function: _ZN11CAutomobile13CloseAllDoorsEv
; Address            : 0x55EE68 - 0x55EF26
; =========================================================

55EE68:  PUSH            {R4,R5,R7,LR}
55EE6A:  ADD             R7, SP, #8
55EE6C:  SUB             SP, SP, #8
55EE6E:  MOV             R4, R0
55EE70:  LDR             R0, =(_ZN10CModelInfo16ms_modelInfoPtrsE_ptr - 0x55EE78)
55EE72:  LDR             R1, [R4]
55EE74:  ADD             R0, PC; _ZN10CModelInfo16ms_modelInfoPtrsE_ptr
55EE76:  LDRSH.W         R2, [R4,#0x26]
55EE7A:  LDR             R0, [R0]; CModelInfo::ms_modelInfoPtrs ...
55EE7C:  LDR.W           R3, [R1,#0x88]
55EE80:  MOVS            R1, #2
55EE82:  LDR.W           R5, [R0,R2,LSL#2]
55EE86:  MOV             R0, R4
55EE88:  BLX             R3
55EE8A:  CBNZ            R0, loc_55EEA4
55EE8C:  LDR             R0, [R4]
55EE8E:  MOVS            R1, #0
55EE90:  MOVS            R2, #0xA
55EE92:  MOVS            R3, #2
55EE94:  LDR.W           R12, [R0,#0x70]
55EE98:  MOVS            R0, #1
55EE9A:  STRD.W          R1, R0, [SP,#0x10+var_10]
55EE9E:  MOV             R0, R4
55EEA0:  MOVS            R1, #0
55EEA2:  BLX             R12
55EEA4:  LDRSB.W         R0, [R5,#0x64]
55EEA8:  CMP             R0, #2
55EEAA:  BLT             loc_55EF22
55EEAC:  LDR             R0, [R4]
55EEAE:  MOVS            R1, #3
55EEB0:  LDR.W           R2, [R0,#0x88]
55EEB4:  MOV             R0, R4
55EEB6:  BLX             R2
55EEB8:  CBNZ            R0, loc_55EED2
55EEBA:  LDR             R0, [R4]
55EEBC:  MOVS            R1, #0
55EEBE:  MOVS            R2, #8
55EEC0:  MOVS            R3, #3
55EEC2:  LDR.W           R12, [R0,#0x70]
55EEC6:  MOVS            R0, #1
55EEC8:  STRD.W          R1, R0, [SP,#0x10+var_10]
55EECC:  MOV             R0, R4
55EECE:  MOVS            R1, #0
55EED0:  BLX             R12
55EED2:  LDRSB.W         R0, [R5,#0x64]
55EED6:  CMP             R0, #3
55EED8:  BLT             loc_55EF22
55EEDA:  LDR             R0, [R4]
55EEDC:  MOVS            R1, #4
55EEDE:  LDR.W           R2, [R0,#0x88]
55EEE2:  MOV             R0, R4
55EEE4:  BLX             R2
55EEE6:  CBNZ            R0, loc_55EEFE
55EEE8:  LDR             R0, [R4]
55EEEA:  MOVS            R1, #0
55EEEC:  MOVS            R2, #0xB
55EEEE:  MOVS            R3, #4
55EEF0:  LDR             R5, [R0,#0x70]
55EEF2:  MOVS            R0, #1
55EEF4:  STRD.W          R1, R0, [SP,#0x10+var_10]
55EEF8:  MOV             R0, R4
55EEFA:  MOVS            R1, #0
55EEFC:  BLX             R5
55EEFE:  LDR             R0, [R4]
55EF00:  MOVS            R1, #5
55EF02:  LDR.W           R2, [R0,#0x88]
55EF06:  MOV             R0, R4
55EF08:  BLX             R2
55EF0A:  CBNZ            R0, loc_55EF22
55EF0C:  LDR             R0, [R4]
55EF0E:  MOVS            R1, #0
55EF10:  MOVS            R2, #9
55EF12:  MOVS            R3, #5
55EF14:  LDR             R5, [R0,#0x70]
55EF16:  MOVS            R0, #1
55EF18:  STRD.W          R1, R0, [SP,#0x10+var_10]
55EF1C:  MOV             R0, R4
55EF1E:  MOVS            R1, #0
55EF20:  BLX             R5
55EF22:  ADD             SP, SP, #8
55EF24:  POP             {R4,R5,R7,PC}
