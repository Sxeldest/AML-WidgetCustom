; =========================================================
; Game Engine Function: _ZN9CPathFind36AddDynamicLinkBetween2Nodes_For1NodeE12CNodeAddressS0_
; Address            : 0x31AD06 - 0x31AF54
; =========================================================

31AD06:  PUSH            {R4-R7,LR}
31AD08:  ADD             R7, SP, #0xC
31AD0A:  PUSH.W          {R8-R11}
31AD0E:  SUB             SP, SP, #0xC
31AD10:  UXTH.W          R9, R1
31AD14:  LSRS            R3, R1, #0x10
31AD16:  ADD.W           LR, R0, R9,LSL#2
31AD1A:  LSLS            R6, R3, #3
31AD1C:  SUB.W           R6, R6, R1,LSR#16
31AD20:  MOVW            R1, #0x1464
31AD24:  LDR.W           R12, [LR,#0x804]
31AD28:  ADDW            R10, LR, #0xA44
31AD2C:  LDR.W           R1, [LR,R1]
31AD30:  MOV             R5, R2
31AD32:  ADD.W           R4, R12, R6,LSL#2
31AD36:  LDRSH.W         R6, [R4,#0x10]!
31AD3A:  CMP             R1, R6
31AD3C:  BLE.W           loc_31AE6C
31AD40:  STRD.W          R5, R4, [SP,#0x28+var_28]
31AD44:  MOVW            R5, #0xFFFF
31AD48:  LDR.W           R4, [R10]
31AD4C:  LDRH.W          R2, [R4,R1,LSL#2]
31AD50:  ADDS            R1, #0xC
31AD52:  CMP             R2, R5
31AD54:  BNE             loc_31AD4C
31AD56:  RSB.W           R2, R3, R3,LSL#3
31AD5A:  SUBS            R1, #0xC
31AD5C:  ADD.W           R11, R12, R2,LSL#2
31AD60:  LDRH.W          R3, [R11,#0x18]!
31AD64:  STR             R1, [SP,#0x28+var_20]
31AD66:  TST.W           R3, #0xF
31AD6A:  BEQ             loc_31ADBA
31AD6C:  LDR.W           R8, [SP,#0x28+var_20]
31AD70:  ADDW            R5, LR, #0xC84
31AD74:  ADDW            R1, LR, #0xB64
31AD78:  LSLS            R3, R6, #2
31AD7A:  MOV.W           R12, #0
31AD7E:  B               loc_31AD88
31AD80:  LDR.W           R4, [R10]
31AD84:  ADD.W           R8, R8, #1
31AD88:  ADDS            R2, R4, R3
31AD8A:  LDR.W           R2, [R2,R12,LSL#2]
31AD8E:  STR.W           R2, [R4,R8,LSL#2]
31AD92:  LDR             R2, [R1]
31AD94:  ADDS            R4, R2, R6
31AD96:  LDRB.W          R4, [R4,R12]
31AD9A:  STRB.W          R4, [R2,R8]
31AD9E:  LDR             R2, [R5]
31ADA0:  ADDS            R4, R2, R6
31ADA2:  LDRB.W          R4, [R4,R12]
31ADA6:  ADD.W           R12, R12, #1
31ADAA:  STRB.W          R4, [R2,R8]
31ADAE:  LDRH.W          R2, [R11]
31ADB2:  AND.W           R2, R2, #0xF
31ADB6:  CMP             R12, R2
31ADB8:  BLT             loc_31AD80
31ADBA:  CMP.W           R9, #0x3F ; '?'
31ADBE:  BHI             loc_31AE7A
31ADC0:  ADD.W           R0, R0, R9,LSL#6
31ADC4:  MOVW            R1, #0x1584
31ADC8:  LDR             R3, [R0,R1]
31ADCA:  LDRD.W          R5, R4, [SP,#0x28+var_28]
31ADCE:  CMP             R3, #0
31ADD0:  BLT             loc_31AE82
31ADD2:  MOVW            R1, #0x1588
31ADD6:  LDR             R2, [R0,R1]
31ADD8:  CMP             R2, #0
31ADDA:  BLT             loc_31AE88
31ADDC:  MOVW            R1, #0x158C
31ADE0:  LDR             R2, [R0,R1]
31ADE2:  CMP             R2, #0
31ADE4:  BLT             loc_31AE8E
31ADE6:  MOVW            R1, #0x1590
31ADEA:  LDR             R2, [R0,R1]
31ADEC:  CMP             R2, #0
31ADEE:  BLT             loc_31AE94
31ADF0:  MOVW            R1, #0x1594
31ADF4:  LDR             R2, [R0,R1]
31ADF6:  CMP             R2, #0
31ADF8:  BLT             loc_31AE9A
31ADFA:  MOVW            R1, #0x1598
31ADFE:  LDR             R2, [R0,R1]
31AE00:  CMP             R2, #0
31AE02:  BLT             loc_31AEA0
31AE04:  MOVW            R1, #0x159C
31AE08:  LDR             R2, [R0,R1]
31AE0A:  CMP             R2, #0
31AE0C:  BLT             loc_31AEA6
31AE0E:  MOV.W           R1, #0x15A0
31AE12:  LDR             R1, [R0,R1]
31AE14:  CMP             R1, #0
31AE16:  BLT             loc_31AEAC
31AE18:  MOVW            R1, #0x15A4
31AE1C:  LDR             R2, [R0,R1]
31AE1E:  CMP             R2, #0
31AE20:  BLT             loc_31AEB4
31AE22:  MOVW            R1, #0x15A8
31AE26:  LDR             R2, [R0,R1]
31AE28:  CMP             R2, #0
31AE2A:  BLT             loc_31AEBA
31AE2C:  MOVW            R1, #0x15AC
31AE30:  LDR             R2, [R0,R1]
31AE32:  CMP             R2, #0
31AE34:  BLT             loc_31AEC0
31AE36:  MOVW            R1, #0x15B0
31AE3A:  LDR             R2, [R0,R1]
31AE3C:  CMP             R2, #0
31AE3E:  BLT             loc_31AEC6
31AE40:  MOVW            R1, #0x15B4
31AE44:  LDR             R2, [R0,R1]
31AE46:  CMP             R2, #0
31AE48:  BLT             loc_31AECC
31AE4A:  MOVW            R1, #0x15B8
31AE4E:  LDR             R2, [R0,R1]
31AE50:  CMP             R2, #0
31AE52:  BLT             loc_31AED2
31AE54:  MOVW            R1, #0x15BC
31AE58:  LDR             R2, [R0,R1]
31AE5A:  CMP             R2, #0
31AE5C:  BLT             loc_31AED8
31AE5E:  MOV.W           R1, #0x15C0
31AE62:  LDR             R1, [R0,R1]
31AE64:  CMP             R1, #0
31AE66:  BLT             loc_31AEDE
31AE68:  LDR             R6, [SP,#0x28+var_20]
31AE6A:  B               loc_31AEF6
31AE6C:  RSB.W           R0, R3, R3,LSL#3
31AE70:  ADD.W           R0, R12, R0,LSL#2
31AE74:  ADD.W           R11, R0, #0x18
31AE78:  B               loc_31AEF6
31AE7A:  LDRD.W          R5, R4, [SP,#0x28+var_28]
31AE7E:  LDR             R6, [SP,#0x28+var_20]
31AE80:  B               loc_31AEF6
31AE82:  ADDS            R2, R0, R1
31AE84:  MOVS            R6, #0
31AE86:  B               loc_31AEE4
31AE88:  ADDS            R2, R0, R1
31AE8A:  MOVS            R6, #1
31AE8C:  B               loc_31AEE4
31AE8E:  ADDS            R2, R0, R1
31AE90:  MOVS            R6, #2
31AE92:  B               loc_31AEE4
31AE94:  ADDS            R2, R0, R1
31AE96:  MOVS            R6, #3
31AE98:  B               loc_31AEE4
31AE9A:  ADDS            R2, R0, R1
31AE9C:  MOVS            R6, #4
31AE9E:  B               loc_31AEE4
31AEA0:  ADDS            R2, R0, R1
31AEA2:  MOVS            R6, #5
31AEA4:  B               loc_31AEE4
31AEA6:  ADDS            R2, R0, R1
31AEA8:  MOVS            R6, #6
31AEAA:  B               loc_31AEE4
31AEAC:  ADD.W           R2, R0, #0x15A0
31AEB0:  MOVS            R6, #7
31AEB2:  B               loc_31AEE4
31AEB4:  ADDS            R2, R0, R1
31AEB6:  MOVS            R6, #8
31AEB8:  B               loc_31AEE4
31AEBA:  ADDS            R2, R0, R1
31AEBC:  MOVS            R6, #9
31AEBE:  B               loc_31AEE4
31AEC0:  ADDS            R2, R0, R1
31AEC2:  MOVS            R6, #0xA
31AEC4:  B               loc_31AEE4
31AEC6:  ADDS            R2, R0, R1
31AEC8:  MOVS            R6, #0xB
31AECA:  B               loc_31AEE4
31AECC:  ADDS            R2, R0, R1
31AECE:  MOVS            R6, #0xC
31AED0:  B               loc_31AEE4
31AED2:  ADDS            R2, R0, R1
31AED4:  MOVS            R6, #0xD
31AED6:  B               loc_31AEE4
31AED8:  ADDS            R2, R0, R1
31AEDA:  MOVS            R6, #0xE
31AEDC:  B               loc_31AEE4
31AEDE:  ADD.W           R2, R0, #0x15C0
31AEE2:  MOVS            R6, #0xF
31AEE4:  LDRSH.W         R1, [R4]
31AEE8:  ADD.W           R0, R0, R6,LSL#2
31AEEC:  STR             R1, [R2]
31AEEE:  MOVW            R1, #0x2584
31AEF2:  LDR             R6, [SP,#0x28+var_20]
31AEF4:  STR             R6, [R0,R1]
31AEF6:  LDRH.W          R0, [R11]
31AEFA:  MOVS            R2, #5
31AEFC:  LDR.W           R1, [R10]
31AF00:  AND.W           R0, R0, #0xF
31AF04:  ADD             R0, R6
31AF06:  STR.W           R5, [R1,R0,LSL#2]
31AF0A:  LDRH.W          R0, [R11]
31AF0E:  LDR.W           R1, [LR,#0xB64]
31AF12:  AND.W           R0, R0, #0xF
31AF16:  ADD             R0, R6
31AF18:  STRB            R2, [R1,R0]
31AF1A:  MOVS            R2, #0
31AF1C:  LDRH.W          R0, [R11]
31AF20:  LDR.W           R1, [LR,#0xC84]
31AF24:  AND.W           R0, R0, #0xF
31AF28:  ADD             R0, R6
31AF2A:  STRB            R2, [R1,R0]
31AF2C:  LDRB.W          R0, [R11,#2]
31AF30:  LDRH.W          R1, [R11]
31AF34:  ORR.W           R0, R1, R0,LSL#16
31AF38:  MOVW            R1, #0xFFF0
31AF3C:  ANDS            R1, R0
31AF3E:  ADDS            R0, #1
31AF40:  AND.W           R0, R0, #0xF
31AF44:  ORRS            R0, R1
31AF46:  STRH.W          R0, [R11]
31AF4A:  STRH            R6, [R4]
31AF4C:  ADD             SP, SP, #0xC
31AF4E:  POP.W           {R8-R11}
31AF52:  POP             {R4-R7,PC}
