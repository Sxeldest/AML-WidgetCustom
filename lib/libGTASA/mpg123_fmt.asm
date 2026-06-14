; =========================================================
; Game Engine Function: mpg123_fmt
; Address            : 0x224A8C - 0x224E84
; =========================================================

224A8C:  PUSH            {R4-R7,LR}
224A8E:  ADD             R7, SP, #0xC
224A90:  PUSH.W          {R8-R11}
224A94:  SUB             SP, SP, #0x24
224A96:  MOV             R8, R0
224A98:  MOVS            R0, #1
224A9A:  STR             R0, [SP,#0x40+var_24]
224A9C:  MOVS            R0, #0
224A9E:  MOV             R9, R3
224AA0:  MOV             R4, R2
224AA2:  MOV             R6, R1
224AA4:  CMP.W           R8, #0
224AA8:  STR             R0, [SP,#0x40+var_28]
224AAA:  BEQ             loc_224ACA
224AAC:  LSLS            R5, R4, #0x1E
224AAE:  BEQ             loc_224ACE
224AB0:  LDRB.W          R0, [R8,#4]
224AB4:  LSLS            R0, R0, #0x1A
224AB6:  BMI             loc_224AC0
224AB8:  LDR.W           R0, [R8]
224ABC:  CMP             R0, #3
224ABE:  BGE             loc_224AD2
224AC0:  CMP             R5, #0
224AC2:  BMI             loc_224AF0
224AC4:  MOVS            R0, #0
224AC6:  MOVS            R1, #1
224AC8:  B               loc_224AF8
224ACA:  MOVS            R0, #0x19
224ACC:  B               loc_224DAE
224ACE:  MOVS            R0, #2
224AD0:  B               loc_224DAE
224AD2:  LDR.W           R0, =(off_677664 - 0x224AE2)
224AD6:  ADR.W           R1, aNoteWantToEnab; "Note: Want to enable format %li/%i for "...
224ADA:  MOV             R2, R6
224ADC:  MOV             R3, R4
224ADE:  ADD             R0, PC; off_677664
224AE0:  STR.W           R9, [SP,#0x40+var_40]
224AE4:  LDR             R0, [R0]
224AE6:  LDR             R0, [R0]; stream
224AE8:  BLX             fprintf
224AEC:  CMP             R5, #0
224AEE:  BPL             loc_224AC4
224AF0:  LSLS            R0, R4, #0x1F
224AF2:  BNE             loc_224B00
224AF4:  MOVS            R0, #1
224AF6:  MOVS            R1, #0
224AF8:  ADD             R2, SP, #0x40+var_28
224AFA:  ORR.W           R1, R2, R1,LSL#2
224AFE:  STR             R0, [R1]
224B00:  MOVW            R0, #0x5621
224B04:  CMP             R6, R0
224B06:  BLE             loc_224B24
224B08:  CMP.W           R6, #0x7D00
224B0C:  BLT             loc_224B3E
224B0E:  BEQ             loc_224B64
224B10:  MOVW            R0, #0xAC44
224B14:  CMP             R6, R0
224B16:  BEQ             loc_224B68
224B18:  MOVW            R0, #0xBB80
224B1C:  CMP             R6, R0
224B1E:  BNE             loc_224B78
224B20:  MOVS            R0, #8
224B22:  B               loc_224B8C
224B24:  MOVW            R0, #0x2EDF
224B28:  CMP             R6, R0
224B2A:  BGT             loc_224B52
224B2C:  CMP.W           R6, #0x1F40
224B30:  BEQ             loc_224B6C
224B32:  MOVW            R0, #0x2B11
224B36:  CMP             R6, R0
224B38:  BNE             loc_224B78
224B3A:  MOVS            R0, #1
224B3C:  B               loc_224B8C
224B3E:  MOVW            R0, #0x5622
224B42:  CMP             R6, R0
224B44:  BEQ             loc_224B70
224B46:  MOVW            R0, #0x5DC0
224B4A:  CMP             R6, R0
224B4C:  BNE             loc_224B78
224B4E:  MOVS            R0, #5
224B50:  B               loc_224B8C
224B52:  MOVW            R0, #0x2EE0
224B56:  CMP             R6, R0
224B58:  BEQ             loc_224B74
224B5A:  CMP.W           R6, #0x3E80
224B5E:  BNE             loc_224B78
224B60:  MOVS            R0, #3
224B62:  B               loc_224B8C
224B64:  MOVS            R0, #6
224B66:  B               loc_224B8C
224B68:  MOVS            R0, #7
224B6A:  B               loc_224B8C
224B6C:  MOVS            R0, #0
224B6E:  B               loc_224B8C
224B70:  MOVS            R0, #4
224B72:  B               loc_224B8C
224B74:  MOVS            R0, #2
224B76:  B               loc_224B8C
224B78:  LDR.W           R1, [R8,#8]
224B7C:  MOVS            R0, #3
224B7E:  CMP             R1, #0
224B80:  BEQ.W           loc_224DAE
224B84:  CMP             R1, R6
224B86:  BNE.W           loc_224DAE
224B8A:  MOVS            R0, #9
224B8C:  AND.W           R11, R9, #0xD0
224B90:  LDR             R1, [SP,#0x40+var_28]
224B92:  AND.W           R4, R9, #0x60 ; '`'
224B96:  STR             R1, [SP,#0x40+var_2C]
224B98:  LDR             R1, [SP,#0x40+var_24]
224B9A:  CMP.W           R11, #0xD0
224B9E:  STR             R1, [SP,#0x40+var_30]
224BA0:  BNE             loc_224BBA
224BA2:  LDR             R1, [SP,#0x40+var_28]
224BA4:  ADD.W           R2, R0, R0,LSL#1
224BA8:  RSB.W           R1, R1, R1,LSL#4
224BAC:  ADD.W           R1, R8, R1,LSL#3
224BB0:  ADD.W           R1, R1, R2,LSL#2
224BB4:  MOVS            R2, #1
224BB6:  STRB.W          R2, [R1,#0x20]
224BBA:  AND.W           LR, R9, #0x1180
224BBE:  CMP             R4, #0x60 ; '`'
224BC0:  BNE             loc_224BDA
224BC2:  LDR             R1, [SP,#0x40+var_28]
224BC4:  ADD.W           R2, R0, R0,LSL#1
224BC8:  RSB.W           R1, R1, R1,LSL#4
224BCC:  ADD.W           R1, R8, R1,LSL#3
224BD0:  ADD.W           R1, R1, R2,LSL#2
224BD4:  MOVS            R2, #1
224BD6:  STRB.W          R2, [R1,#0x21]
224BDA:  AND.W           R3, R9, #0x2100
224BDE:  CMP.W           LR, #0x1180
224BE2:  BNE             loc_224BFC
224BE4:  LDR             R1, [SP,#0x40+var_28]
224BE6:  ADD.W           R2, R0, R0,LSL#1
224BEA:  RSB.W           R1, R1, R1,LSL#4
224BEE:  ADD.W           R1, R8, R1,LSL#3
224BF2:  ADD.W           R1, R1, R2,LSL#2
224BF6:  MOVS            R2, #1
224BF8:  STRB.W          R2, [R1,#0x22]
224BFC:  AND.W           R6, R9, #0x5080
224C00:  CMP.W           R3, #0x2100
224C04:  BNE             loc_224C1E
224C06:  LDR             R1, [SP,#0x40+var_28]
224C08:  ADD.W           R2, R0, R0,LSL#1
224C0C:  RSB.W           R1, R1, R1,LSL#4
224C10:  ADD.W           R1, R8, R1,LSL#3
224C14:  ADD.W           R1, R1, R2,LSL#2
224C18:  MOVS            R2, #1
224C1A:  STRB.W          R2, [R1,#0x23]
224C1E:  STR             R3, [SP,#0x40+var_34]
224C20:  AND.W           R3, R9, #0x6000
224C24:  CMP.W           R6, #0x5080
224C28:  STR             R6, [SP,#0x40+var_38]
224C2A:  BNE             loc_224C44
224C2C:  LDR             R1, [SP,#0x40+var_28]
224C2E:  ADD.W           R2, R0, R0,LSL#1
224C32:  RSB.W           R1, R1, R1,LSL#4
224C36:  ADD.W           R1, R8, R1,LSL#3
224C3A:  ADD.W           R1, R1, R2,LSL#2
224C3E:  MOVS            R2, #1
224C40:  STRB.W          R2, [R1,#0x24]
224C44:  AND.W           R12, R9, #0x400
224C48:  CMP.W           R3, #0x6000
224C4C:  STR             R3, [SP,#0x40+var_3C]
224C4E:  BNE             loc_224C68
224C50:  LDR             R2, [SP,#0x40+var_28]
224C52:  ADD.W           R3, R0, R0,LSL#1
224C56:  RSB.W           R2, R2, R2,LSL#4
224C5A:  ADD.W           R2, R8, R2,LSL#3
224C5E:  ADD.W           R2, R2, R3,LSL#2
224C62:  MOVS            R3, #1
224C64:  STRB.W          R3, [R2,#0x25]
224C68:  AND.W           R10, R9, #0x82
224C6C:  CMP.W           R12, #0
224C70:  BEQ             loc_224C8A
224C72:  LDR             R3, [SP,#0x40+var_28]
224C74:  ADD.W           R5, R0, R0,LSL#1
224C78:  RSB.W           R3, R3, R3,LSL#4
224C7C:  ADD.W           R3, R8, R3,LSL#3
224C80:  ADD.W           R3, R3, R5,LSL#2
224C84:  MOVS            R5, #1
224C86:  STRB.W          R5, [R3,#0x27]
224C8A:  AND.W           R3, R9, #1
224C8E:  CMP.W           R10, #0x82
224C92:  BNE             loc_224CAC
224C94:  LDR             R5, [SP,#0x40+var_28]
224C96:  ADD.W           R6, R0, R0,LSL#1
224C9A:  RSB.W           R5, R5, R5,LSL#4
224C9E:  ADD.W           R5, R8, R5,LSL#3
224CA2:  ADD.W           R5, R5, R6,LSL#2
224CA6:  MOVS            R6, #1
224CA8:  STRB.W          R6, [R5,#0x28]
224CAC:  AND.W           R6, R9, #4
224CB0:  CBZ             R3, loc_224CCE
224CB2:  LDR             R5, [SP,#0x40+var_28]
224CB4:  MOV             R1, LR
224CB6:  ADD.W           LR, R0, R0,LSL#1
224CBA:  RSB.W           R5, R5, R5,LSL#4
224CBE:  ADD.W           R5, R8, R5,LSL#3
224CC2:  ADD.W           R5, R5, LR,LSL#2
224CC6:  MOV             LR, R1
224CC8:  MOVS            R1, #1
224CCA:  STRB.W          R1, [R5,#0x29]
224CCE:  AND.W           R5, R9, #8
224CD2:  CBZ             R6, loc_224CEC
224CD4:  LDR             R1, [SP,#0x40+var_28]
224CD6:  ADD.W           R2, R0, R0,LSL#1
224CDA:  RSB.W           R1, R1, R1,LSL#4
224CDE:  ADD.W           R1, R8, R1,LSL#3
224CE2:  ADD.W           R1, R1, R2,LSL#2
224CE6:  MOVS            R2, #1
224CE8:  STRB.W          R2, [R1,#0x2A]
224CEC:  CBZ             R5, loc_224D06
224CEE:  LDR             R1, [SP,#0x40+var_28]
224CF0:  ADD.W           R2, R0, R0,LSL#1
224CF4:  RSB.W           R1, R1, R1,LSL#4
224CF8:  ADD.W           R1, R8, R1,LSL#3
224CFC:  ADD.W           R1, R1, R2,LSL#2
224D00:  MOVS            R2, #1
224D02:  STRB.W          R2, [R1,#0x2B]
224D06:  LDRD.W          R2, R1, [SP,#0x40+var_30]
224D0A:  CMP             R1, R2
224D0C:  BEQ             loc_224DAC
224D0E:  CMP.W           R11, #0xD0
224D12:  BEQ             loc_224DB6
224D14:  CMP             R4, #0x60 ; '`'
224D16:  BEQ             loc_224DD2
224D18:  CMP.W           LR, #0x1180
224D1C:  BNE             loc_224D36
224D1E:  LDR             R1, [SP,#0x40+var_24]
224D20:  ADD.W           R2, R0, R0,LSL#1
224D24:  RSB.W           R1, R1, R1,LSL#4
224D28:  ADD.W           R1, R8, R1,LSL#3
224D2C:  ADD.W           R1, R1, R2,LSL#2
224D30:  MOVS            R2, #1
224D32:  STRB.W          R2, [R1,#0x22]
224D36:  LDR             R1, [SP,#0x40+var_34]
224D38:  CMP.W           R1, #0x2100
224D3C:  BNE             loc_224D56
224D3E:  LDR             R1, [SP,#0x40+var_24]
224D40:  ADD.W           R2, R0, R0,LSL#1
224D44:  RSB.W           R1, R1, R1,LSL#4
224D48:  ADD.W           R1, R8, R1,LSL#3
224D4C:  ADD.W           R1, R1, R2,LSL#2
224D50:  MOVS            R2, #1
224D52:  STRB.W          R2, [R1,#0x23]
224D56:  LDR             R1, [SP,#0x40+var_38]
224D58:  CMP.W           R1, #0x5080
224D5C:  BNE             loc_224D76
224D5E:  LDR             R1, [SP,#0x40+var_24]
224D60:  ADD.W           R2, R0, R0,LSL#1
224D64:  RSB.W           R1, R1, R1,LSL#4
224D68:  ADD.W           R1, R8, R1,LSL#3
224D6C:  ADD.W           R1, R1, R2,LSL#2
224D70:  MOVS            R2, #1
224D72:  STRB.W          R2, [R1,#0x24]
224D76:  LDR             R1, [SP,#0x40+var_3C]
224D78:  CMP.W           R1, #0x6000
224D7C:  BEQ             loc_224DF2
224D7E:  CMP.W           R12, #0
224D82:  BNE             loc_224E10
224D84:  CMP.W           R10, #0x82
224D88:  BEQ             loc_224E2E
224D8A:  CMP             R3, #0
224D8C:  BNE             loc_224E4A
224D8E:  CMP             R6, #0
224D90:  BNE             loc_224E66
224D92:  CBZ             R5, loc_224DAC
224D94:  LDR             R1, [SP,#0x40+var_24]
224D96:  ADD.W           R0, R0, R0,LSL#1
224D9A:  RSB.W           R1, R1, R1,LSL#4
224D9E:  ADD.W           R1, R8, R1,LSL#3
224DA2:  ADD.W           R0, R1, R0,LSL#2
224DA6:  MOVS            R1, #1
224DA8:  STRB.W          R1, [R0,#0x2B]
224DAC:  MOVS            R0, #0
224DAE:  ADD             SP, SP, #0x24 ; '$'
224DB0:  POP.W           {R8-R11}
224DB4:  POP             {R4-R7,PC}
224DB6:  LDR             R1, [SP,#0x40+var_24]
224DB8:  ADD.W           R2, R0, R0,LSL#1
224DBC:  RSB.W           R1, R1, R1,LSL#4
224DC0:  ADD.W           R1, R8, R1,LSL#3
224DC4:  ADD.W           R1, R1, R2,LSL#2
224DC8:  MOVS            R2, #1
224DCA:  STRB.W          R2, [R1,#0x20]
224DCE:  CMP             R4, #0x60 ; '`'
224DD0:  BNE             loc_224D18
224DD2:  LDR             R1, [SP,#0x40+var_24]
224DD4:  ADD.W           R2, R0, R0,LSL#1
224DD8:  RSB.W           R1, R1, R1,LSL#4
224DDC:  ADD.W           R1, R8, R1,LSL#3
224DE0:  ADD.W           R1, R1, R2,LSL#2
224DE4:  MOVS            R2, #1
224DE6:  STRB.W          R2, [R1,#0x21]
224DEA:  CMP.W           LR, #0x1180
224DEE:  BEQ             loc_224D1E
224DF0:  B               loc_224D36
224DF2:  LDR             R1, [SP,#0x40+var_24]
224DF4:  ADD.W           R2, R0, R0,LSL#1
224DF8:  RSB.W           R1, R1, R1,LSL#4
224DFC:  ADD.W           R1, R8, R1,LSL#3
224E00:  ADD.W           R1, R1, R2,LSL#2
224E04:  MOVS            R2, #1
224E06:  STRB.W          R2, [R1,#0x25]
224E0A:  CMP.W           R12, #0
224E0E:  BEQ             loc_224D84
224E10:  LDR             R1, [SP,#0x40+var_24]
224E12:  ADD.W           R2, R0, R0,LSL#1
224E16:  RSB.W           R1, R1, R1,LSL#4
224E1A:  ADD.W           R1, R8, R1,LSL#3
224E1E:  ADD.W           R1, R1, R2,LSL#2
224E22:  MOVS            R2, #1
224E24:  STRB.W          R2, [R1,#0x27]
224E28:  CMP.W           R10, #0x82
224E2C:  BNE             loc_224D8A
224E2E:  LDR             R1, [SP,#0x40+var_24]
224E30:  ADD.W           R2, R0, R0,LSL#1
224E34:  RSB.W           R1, R1, R1,LSL#4
224E38:  ADD.W           R1, R8, R1,LSL#3
224E3C:  ADD.W           R1, R1, R2,LSL#2
224E40:  MOVS            R2, #1
224E42:  STRB.W          R2, [R1,#0x28]
224E46:  CMP             R3, #0
224E48:  BEQ             loc_224D8E
224E4A:  LDR             R1, [SP,#0x40+var_24]
224E4C:  ADD.W           R2, R0, R0,LSL#1
224E50:  RSB.W           R1, R1, R1,LSL#4
224E54:  ADD.W           R1, R8, R1,LSL#3
224E58:  ADD.W           R1, R1, R2,LSL#2
224E5C:  MOVS            R2, #1
224E5E:  STRB.W          R2, [R1,#0x29]
224E62:  CMP             R6, #0
224E64:  BEQ             loc_224D92
224E66:  LDR             R1, [SP,#0x40+var_24]
224E68:  ADD.W           R2, R0, R0,LSL#1
224E6C:  RSB.W           R1, R1, R1,LSL#4
224E70:  ADD.W           R1, R8, R1,LSL#3
224E74:  ADD.W           R1, R1, R2,LSL#2
224E78:  MOVS            R2, #1
224E7A:  STRB.W          R2, [R1,#0x2A]
224E7E:  CMP             R5, #0
224E80:  BNE             loc_224D94
224E82:  B               loc_224DAC
