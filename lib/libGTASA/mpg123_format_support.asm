; =========================================================
; Game Engine Function: mpg123_format_support
; Address            : 0x224EC0 - 0x22503A
; =========================================================

224EC0:  CMP             R0, #0
224EC2:  BEQ.W           loc_225036
224EC6:  MOVW            R3, #0x5621
224ECA:  CMP             R1, R3
224ECC:  BLE             loc_224EF0
224ECE:  CMP.W           R1, #0x7D00
224ED2:  BLT             loc_224F10
224ED4:  BEQ             loc_224F42
224ED6:  MOVW            R3, #0xAC44
224EDA:  CMP             R1, R3
224EDC:  BEQ             loc_224F78
224EDE:  MOVW            R3, #0xBB80
224EE2:  CMP             R1, R3
224EE4:  BNE             loc_224FC2
224EE6:  MOVS            R1, #8
224EE8:  CMP.W           R2, #0x200
224EEC:  BGE             loc_224F4A
224EEE:  B               loc_224F80
224EF0:  MOVW            R3, #0x2EDF
224EF4:  CMP             R1, R3
224EF6:  BGT             loc_224F2A
224EF8:  CMP.W           R1, #0x1F40
224EFC:  BEQ             loc_224FA4
224EFE:  MOVW            R3, #0x2B11
224F02:  CMP             R1, R3
224F04:  BNE             loc_224FC2
224F06:  MOVS            R1, #1
224F08:  CMP.W           R2, #0x200
224F0C:  BGE             loc_224F4A
224F0E:  B               loc_224F80
224F10:  MOVW            R3, #0x5622
224F14:  CMP             R1, R3
224F16:  BEQ             loc_224FAE
224F18:  MOVW            R3, #0x5DC0
224F1C:  CMP             R1, R3
224F1E:  BNE             loc_224FC2
224F20:  MOVS            R1, #5
224F22:  CMP.W           R2, #0x200
224F26:  BGE             loc_224F4A
224F28:  B               loc_224F80
224F2A:  MOVW            R3, #0x2EE0
224F2E:  CMP             R1, R3
224F30:  BEQ             loc_224FB8
224F32:  CMP.W           R1, #0x3E80
224F36:  BNE             loc_224FC2
224F38:  MOVS            R1, #3
224F3A:  CMP.W           R2, #0x200
224F3E:  BGE             loc_224F4A
224F40:  B               loc_224F80
224F42:  MOVS            R1, #6
224F44:  CMP.W           R2, #0x200
224F48:  BLT             loc_224F80
224F4A:  CMP.W           R2, #0x2100
224F4E:  BGE             loc_224F66
224F50:  CMP.W           R2, #0x200
224F54:  BEQ             loc_224FE4
224F56:  CMP.W           R2, #0x400
224F5A:  BEQ             loc_224FE8
224F5C:  CMP.W           R2, #0x1180
224F60:  BNE             loc_225004
224F62:  MOVS            R2, #2
224F64:  B               loc_225008
224F66:  BEQ             loc_224FEC
224F68:  CMP.W           R2, #0x5080
224F6C:  BEQ             loc_224FF0
224F6E:  CMP.W           R2, #0x6000
224F72:  BNE             loc_225004
224F74:  MOVS            R2, #5
224F76:  B               loc_225008
224F78:  MOVS            R1, #7
224F7A:  CMP.W           R2, #0x200
224F7E:  BGE             loc_224F4A
224F80:  CMP             R2, #0x5F ; '_'
224F82:  BGT             loc_224F94
224F84:  CMP             R2, #1
224F86:  BEQ             loc_224FF4
224F88:  CMP             R2, #4
224F8A:  BEQ             loc_224FF8
224F8C:  CMP             R2, #8
224F8E:  BNE             loc_225004
224F90:  MOVS            R2, #0xB
224F92:  B               loc_225008
224F94:  CMP             R2, #0x60 ; '`'
224F96:  BEQ             loc_224FFC
224F98:  CMP             R2, #0x82
224F9A:  BEQ             loc_225000
224F9C:  CMP             R2, #0xD0
224F9E:  BNE             loc_225004
224FA0:  MOVS            R2, #0
224FA2:  B               loc_225008
224FA4:  MOVS            R1, #0
224FA6:  CMP.W           R2, #0x200
224FAA:  BGE             loc_224F4A
224FAC:  B               loc_224F80
224FAE:  MOVS            R1, #4
224FB0:  CMP.W           R2, #0x200
224FB4:  BGE             loc_224F4A
224FB6:  B               loc_224F80
224FB8:  MOVS            R1, #2
224FBA:  CMP.W           R2, #0x200
224FBE:  BGE             loc_224F4A
224FC0:  B               loc_224F80
224FC2:  MOVW            R3, #0xB340
224FC6:  MOV.W           R12, #0xFFFFFFFF
224FCA:  LDR             R3, [R0,R3]
224FCC:  CMP             R3, R1
224FCE:  MOV.W           R1, #0xFFFFFFFF
224FD2:  IT EQ
224FD4:  MOVEQ           R1, #9
224FD6:  CMP             R3, #0
224FD8:  IT EQ
224FDA:  MOVEQ           R1, R12
224FDC:  CMP.W           R2, #0x200
224FE0:  BGE             loc_224F4A
224FE2:  B               loc_224F80
224FE4:  MOVS            R2, #6
224FE6:  B               loc_225008
224FE8:  MOVS            R2, #7
224FEA:  B               loc_225008
224FEC:  MOVS            R2, #3
224FEE:  B               loc_225008
224FF0:  MOVS            R2, #4
224FF2:  B               loc_225008
224FF4:  MOVS            R2, #9
224FF6:  B               loc_225008
224FF8:  MOVS            R2, #0xA
224FFA:  B               loc_225008
224FFC:  MOVS            R2, #1
224FFE:  B               loc_225008
225000:  MOVS            R2, #8
225002:  B               loc_225008
225004:  MOV.W           R2, #0xFFFFFFFF
225008:  ORR.W           R3, R2, R1
22500C:  CMP             R3, #0
22500E:  BLT             loc_225036
225010:  ADD.W           R1, R1, R1,LSL#1
225014:  ADD.W           R0, R0, R1,LSL#2
225018:  ADDS            R1, R0, R2
22501A:  MOVW            R0, #0xB358
22501E:  MOVW            R2, #0xB3D0
225022:  LDRB            R0, [R1,R0]
225024:  LDRB            R1, [R1,R2]
225026:  CMP             R0, #0
225028:  IT NE
22502A:  MOVNE           R0, #1
22502C:  CMP             R1, #0
22502E:  IT NE
225030:  ORRNE.W         R0, R0, #2
225034:  BX              LR
225036:  MOVS            R0, #0
225038:  BX              LR
