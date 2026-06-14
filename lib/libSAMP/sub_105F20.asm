; =========================================================
; Game Engine Function: sub_105F20
; Address            : 0x105F20 - 0x10606C
; =========================================================

105F20:  PUSH            {R4-R7,LR}
105F22:  ADD             R7, SP, #0xC
105F24:  PUSH.W          {R8-R11}
105F28:  SUB             SP, SP, #4
105F2A:  MOV             R5, R0
105F2C:  LDR             R0, =(off_23496C - 0x105F38)
105F2E:  MOV             R9, R1
105F30:  MOVW            R10, #0xFFFF
105F34:  ADD             R0, PC; off_23496C
105F36:  LDR             R0, [R0]; dword_23DEF4
105F38:  LDR             R1, [R0]
105F3A:  CMP             R1, #0
105F3C:  BEQ             loc_106024
105F3E:  LDR             R0, [R5,#0x5C]
105F40:  CMP             R0, #0
105F42:  BEQ             loc_106024
105F44:  LDR.W           R1, [R1,#0x3B0]
105F48:  LDRD.W          R8, R4, [R1]
105F4C:  MOVW            R1, #0xEA60
105F50:  ADD.W           R11, R4, R1
105F54:  LDR.W           R1, [R0,#0x768]
105F58:  UXTB            R6, R1
105F5A:  AND.W           R1, R1, #0xFE
105F5E:  CMP             R1, #0x32 ; '2'
105F60:  IT NE
105F62:  CMPNE           R6, #0x2A ; '*'
105F64:  BHI             loc_105FA4
105F66:  LDR.W           R1, [R0,#0x76C]
105F6A:  CMP             R1, #0
105F6C:  BEQ             loc_106024
105F6E:  MOV             R0, R8
105F70:  MOVS            R2, #0
105F72:  BL              sub_148F74
105F76:  CMP             R0, R10
105F78:  BNE             loc_106068
105F7A:  LDR             R0, [R5,#0x5C]
105F7C:  LDR.W           R0, [R0,#0x76C]
105F80:  CMP             R0, #0
105F82:  BEQ             loc_106024
105F84:  LDRD.W          R1, R2, [R11]
105F88:  CMP             R1, R2
105F8A:  BEQ             loc_105FFE
105F8C:  MOV.W           R3, #0x1F40
105F90:  LDR             R5, [R1]
105F92:  ADD.W           R5, R4, R5,LSL#2
105F96:  LDR             R5, [R5,R3]
105F98:  CMP             R5, R0
105F9A:  BEQ             loc_105FFE
105F9C:  ADDS            R1, #4
105F9E:  CMP             R1, R2
105FA0:  BNE             loc_105F90
105FA2:  B               loc_106024
105FA4:  CMP             R6, #0x36 ; '6'
105FA6:  BEQ             loc_105FD6
105FA8:  CMP             R6, #0x35 ; '5'
105FAA:  BEQ             loc_106026
105FAC:  CMP             R6, #0x31 ; '1'
105FAE:  BNE             loc_106024
105FB0:  LDR.W           R0, [R0,#0x76C]
105FB4:  CBZ             R0, loc_106024
105FB6:  LDRD.W          R1, R2, [R11]
105FBA:  CMP             R1, R2
105FBC:  BEQ             loc_10601A
105FBE:  MOV.W           R3, #0x1F40
105FC2:  LDR             R6, [R1]
105FC4:  ADD.W           R6, R4, R6,LSL#2
105FC8:  LDR             R6, [R6,R3]
105FCA:  CMP             R6, R0
105FCC:  BEQ             loc_10601A
105FCE:  ADDS            R1, #4
105FD0:  CMP             R1, R2
105FD2:  BNE             loc_105FC2
105FD4:  B               loc_106024
105FD6:  LDR.W           R0, [R0,#0x76C]
105FDA:  CBZ             R0, loc_106024
105FDC:  LDRD.W          R1, R2, [R11]
105FE0:  CMP             R1, R2
105FE2:  BEQ             loc_106034
105FE4:  MOV.W           R3, #0x1F40
105FE8:  LDR             R6, [R1]
105FEA:  ADD.W           R6, R4, R6,LSL#2
105FEE:  LDR             R6, [R6,R3]
105FF0:  CMP             R6, R0
105FF2:  BEQ             loc_106034
105FF4:  ADDS            R1, #4
105FF6:  MOVS            R6, #0x36 ; '6'
105FF8:  CMP             R1, R2
105FFA:  BNE             loc_105FE8
105FFC:  B               loc_106026
105FFE:  CMP             R1, R2
106000:  ITT NE
106002:  LDRHNE          R1, [R1]
106004:  CMPNE           R1, R10
106006:  BEQ             loc_106024
106008:  LDR.W           R1, [R0,#0x464]
10600C:  MOV             R0, R8
10600E:  MOVS            R2, #0
106010:  BL              sub_148F74
106014:  CMP             R0, R10
106016:  BEQ             loc_106024
106018:  B               loc_106068
10601A:  CMP             R1, R2
10601C:  ITT NE
10601E:  LDRHNE          R1, [R1]
106020:  CMPNE           R1, R10
106022:  BNE             loc_106056
106024:  MOVS            R6, #0xFF
106026:  STRH.W          R10, [R9]
10602A:  MOV             R0, R6
10602C:  ADD             SP, SP, #4
10602E:  POP.W           {R8-R11}
106032:  POP             {R4-R7,PC}
106034:  CMP             R1, R2
106036:  ITT NE
106038:  LDRHNE          R1, [R1]
10603A:  CMPNE           R1, R10
10603C:  BNE             loc_106042
10603E:  MOVS            R6, #0x36 ; '6'
106040:  B               loc_106026
106042:  LDR.W           R1, [R0,#0x464]
106046:  MOV             R0, R8
106048:  MOVS            R2, #0
10604A:  BL              sub_148F74
10604E:  CMP             R0, R10
106050:  BEQ             loc_106024
106052:  MOVS            R6, #0x36 ; '6'
106054:  B               loc_106068
106056:  LDR.W           R1, [R0,#0x464]
10605A:  MOV             R0, R8
10605C:  MOVS            R2, #0
10605E:  BL              sub_148F74
106062:  CMP             R0, R10
106064:  BEQ             loc_106024
106066:  MOVS            R6, #0x31 ; '1'
106068:  MOV             R10, R0
10606A:  B               loc_106026
