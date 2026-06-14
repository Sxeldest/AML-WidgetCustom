; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager31DeleteMatching3rdPersonControlsE18e_ControllerActioni15eControllerType
; Address            : 0x3E8EC4 - 0x3E91AA
; =========================================================

3E8EC4:  PUSH            {R4-R7,LR}
3E8EC6:  ADD             R7, SP, #0xC
3E8EC8:  PUSH.W          {R8,R9,R11}
3E8ECC:  MOV             R5, R3
3E8ECE:  MOV             R6, R2
3E8ED0:  MOV             R8, R1
3E8ED2:  MOV             R9, R0
3E8ED4:  CMP             R5, #2
3E8ED6:  BCC             loc_3E8EE4
3E8ED8:  IT NE
3E8EDA:  CMPNE           R5, #3
3E8EDC:  BNE.W           loc_3E91A4
3E8EE0:  CBNZ            R6, loc_3E8EEC
3E8EE2:  B               loc_3E91A4
3E8EE4:  CMP.W           R6, #0x420
3E8EE8:  BEQ.W           loc_3E91A4
3E8EEC:  ADD.W           R4, R9, R5,LSL#3
3E8EF0:  MOVW            R0, #0x39D0
3E8EF4:  LDR             R1, [R4,R0]
3E8EF6:  CMP             R1, R6
3E8EF8:  BNE             loc_3E8F1A
3E8EFA:  CMP             R5, #3
3E8EFC:  BHI             loc_3E8F12
3E8EFE:  LDR             R1, =(unk_616F5C - 0x3E8F06)
3E8F00:  ADD             R0, R4
3E8F02:  ADD             R1, PC; unk_616F5C
3E8F04:  LDR.W           R1, [R1,R5,LSL#2]
3E8F08:  STR             R1, [R0]
3E8F0A:  MOVW            R0, #0x39D4
3E8F0E:  MOVS            R1, #0
3E8F10:  STR             R1, [R4,R0]
3E8F12:  MOV             R0, R9
3E8F14:  MOVS            R1, #6
3E8F16:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E8F1A:  MOVW            R0, #0x39F0
3E8F1E:  LDR             R1, [R4,R0]
3E8F20:  CMP             R1, R6
3E8F22:  BNE             loc_3E8F44
3E8F24:  CMP             R5, #3
3E8F26:  BHI             loc_3E8F3C
3E8F28:  LDR             R1, =(unk_616F5C - 0x3E8F30)
3E8F2A:  ADD             R0, R4
3E8F2C:  ADD             R1, PC; unk_616F5C
3E8F2E:  LDR.W           R1, [R1,R5,LSL#2]
3E8F32:  STR             R1, [R0]
3E8F34:  MOVW            R0, #0x39F4
3E8F38:  MOVS            R1, #0
3E8F3A:  STR             R1, [R4,R0]
3E8F3C:  MOV             R0, R9
3E8F3E:  MOVS            R1, #7
3E8F40:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E8F44:  MOVW            R0, #0x3F30
3E8F48:  LDR             R1, [R4,R0]
3E8F4A:  CMP             R1, R6
3E8F4C:  BNE             loc_3E8F6E
3E8F4E:  CMP             R5, #3
3E8F50:  BHI             loc_3E8F66
3E8F52:  LDR             R1, =(unk_616F5C - 0x3E8F5A)
3E8F54:  ADD             R0, R4
3E8F56:  ADD             R1, PC; unk_616F5C
3E8F58:  LDR.W           R1, [R1,R5,LSL#2]
3E8F5C:  STR             R1, [R0]
3E8F5E:  MOVW            R0, #0x3F34
3E8F62:  MOVS            R1, #0
3E8F64:  STR             R1, [R4,R0]
3E8F66:  MOV             R0, R9
3E8F68:  MOVS            R1, #0x31 ; '1'
3E8F6A:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E8F6E:  MOVW            R0, #0x3F50
3E8F72:  LDR             R1, [R4,R0]
3E8F74:  CMP             R1, R6
3E8F76:  BNE             loc_3E8F98
3E8F78:  CMP             R5, #3
3E8F7A:  BHI             loc_3E8F90
3E8F7C:  LDR             R1, =(unk_616F5C - 0x3E8F84)
3E8F7E:  ADD             R0, R4
3E8F80:  ADD             R1, PC; unk_616F5C
3E8F82:  LDR.W           R1, [R1,R5,LSL#2]
3E8F86:  STR             R1, [R0]
3E8F88:  MOVW            R0, #0x3F54
3E8F8C:  MOVS            R1, #0
3E8F8E:  STR             R1, [R4,R0]
3E8F90:  MOV             R0, R9
3E8F92:  MOVS            R1, #0x32 ; '2'
3E8F94:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E8F98:  MOVW            R0, #0x3F10
3E8F9C:  LDR             R1, [R4,R0]
3E8F9E:  CMP             R1, R6
3E8FA0:  BNE             loc_3E8FC2
3E8FA2:  CMP             R5, #3
3E8FA4:  BHI             loc_3E8FBA
3E8FA6:  LDR             R1, =(unk_616F5C - 0x3E8FAE)
3E8FA8:  ADD             R0, R4
3E8FAA:  ADD             R1, PC; unk_616F5C
3E8FAC:  LDR.W           R1, [R1,R5,LSL#2]
3E8FB0:  STR             R1, [R0]
3E8FB2:  MOVW            R0, #0x3F14
3E8FB6:  MOVS            R1, #0
3E8FB8:  STR             R1, [R4,R0]
3E8FBA:  MOV             R0, R9
3E8FBC:  MOVS            R1, #0x30 ; '0'
3E8FBE:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E8FC2:  MOVW            R0, #0x3EF0
3E8FC6:  LDR             R1, [R4,R0]
3E8FC8:  CMP             R1, R6
3E8FCA:  BNE             loc_3E8FEC
3E8FCC:  CMP             R5, #3
3E8FCE:  BHI             loc_3E8FE4
3E8FD0:  LDR             R1, =(unk_616F5C - 0x3E8FD8)
3E8FD2:  ADD             R0, R4
3E8FD4:  ADD             R1, PC; unk_616F5C
3E8FD6:  LDR.W           R1, [R1,R5,LSL#2]
3E8FDA:  STR             R1, [R0]
3E8FDC:  MOVW            R0, #0x3EF4
3E8FE0:  MOVS            R1, #0
3E8FE2:  STR             R1, [R4,R0]
3E8FE4:  MOV             R0, R9
3E8FE6:  MOVS            R1, #0x2F ; '/'
3E8FE8:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E8FEC:  MOVW            R0, #0x3970
3E8FF0:  LDR             R1, [R4,R0]
3E8FF2:  CMP             R1, R6
3E8FF4:  BNE             loc_3E9016
3E8FF6:  CMP             R5, #3
3E8FF8:  BHI             loc_3E900E
3E8FFA:  LDR             R1, =(unk_616F5C - 0x3E9002)
3E8FFC:  ADD             R0, R4
3E8FFE:  ADD             R1, PC; unk_616F5C
3E9000:  LDR.W           R1, [R1,R5,LSL#2]
3E9004:  STR             R1, [R0]
3E9006:  MOVW            R0, #0x3974
3E900A:  MOVS            R1, #0
3E900C:  STR             R1, [R4,R0]
3E900E:  MOV             R0, R9
3E9010:  MOVS            R1, #3
3E9012:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E9016:  MOVW            R0, #0x3950
3E901A:  LDR             R1, [R4,R0]
3E901C:  CMP             R1, R6
3E901E:  BNE             loc_3E9040
3E9020:  CMP             R5, #3
3E9022:  BHI             loc_3E9038
3E9024:  LDR             R1, =(unk_616F5C - 0x3E902C)
3E9026:  ADD             R0, R4
3E9028:  ADD             R1, PC; unk_616F5C
3E902A:  LDR.W           R1, [R1,R5,LSL#2]
3E902E:  STR             R1, [R0]
3E9030:  MOVW            R0, #0x3954
3E9034:  MOVS            R1, #0
3E9036:  STR             R1, [R4,R0]
3E9038:  MOV             R0, R9
3E903A:  MOVS            R1, #2
3E903C:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E9040:  MOVW            R0, #0x3A90
3E9044:  LDR             R1, [R4,R0]
3E9046:  CMP             R1, R6
3E9048:  BNE             loc_3E906A
3E904A:  CMP             R5, #3
3E904C:  BHI             loc_3E9062
3E904E:  LDR             R1, =(unk_616F5C - 0x3E9056)
3E9050:  ADD             R0, R4
3E9052:  ADD             R1, PC; unk_616F5C
3E9054:  LDR.W           R1, [R1,R5,LSL#2]
3E9058:  STR             R1, [R0]
3E905A:  MOVW            R0, #0x3A94
3E905E:  MOVS            R1, #0
3E9060:  STR             R1, [R4,R0]
3E9062:  MOV             R0, R9
3E9064:  MOVS            R1, #0xC
3E9066:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E906A:  MOVW            R0, #0x3AB0
3E906E:  LDR             R1, [R4,R0]
3E9070:  CMP             R1, R6
3E9072:  BNE             loc_3E9094
3E9074:  CMP             R5, #3
3E9076:  BHI             loc_3E908C
3E9078:  LDR             R1, =(unk_616F5C - 0x3E9080)
3E907A:  ADD             R0, R4
3E907C:  ADD             R1, PC; unk_616F5C
3E907E:  LDR.W           R1, [R1,R5,LSL#2]
3E9082:  STR             R1, [R0]
3E9084:  MOVW            R0, #0x3AB4
3E9088:  MOVS            R1, #0
3E908A:  STR             R1, [R4,R0]
3E908C:  MOV             R0, R9
3E908E:  MOVS            R1, #0xD
3E9090:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E9094:  MOVW            R0, #0x3AD0
3E9098:  LDR             R1, [R4,R0]
3E909A:  CMP             R1, R6
3E909C:  BNE             loc_3E90BE
3E909E:  CMP             R5, #3
3E90A0:  BHI             loc_3E90B6
3E90A2:  LDR             R1, =(unk_616F5C - 0x3E90AA)
3E90A4:  ADD             R0, R4
3E90A6:  ADD             R1, PC; unk_616F5C
3E90A8:  LDR.W           R1, [R1,R5,LSL#2]
3E90AC:  STR             R1, [R0]
3E90AE:  MOVW            R0, #0x3AD4
3E90B2:  MOVS            R1, #0
3E90B4:  STR             R1, [R4,R0]
3E90B6:  MOV             R0, R9
3E90B8:  MOVS            R1, #0xE
3E90BA:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E90BE:  MOVW            R0, #0x3AF0
3E90C2:  LDR             R1, [R4,R0]
3E90C4:  CMP             R1, R6
3E90C6:  BNE             loc_3E90E8
3E90C8:  CMP             R5, #3
3E90CA:  BHI             loc_3E90E0
3E90CC:  LDR             R1, =(unk_616F5C - 0x3E90D4)
3E90CE:  ADD             R0, R4
3E90D0:  ADD             R1, PC; unk_616F5C
3E90D2:  LDR.W           R1, [R1,R5,LSL#2]
3E90D6:  STR             R1, [R0]
3E90D8:  MOVW            R0, #0x3AF4
3E90DC:  MOVS            R1, #0
3E90DE:  STR             R1, [R4,R0]
3E90E0:  MOV             R0, R9
3E90E2:  MOVS            R1, #0xF
3E90E4:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E90E8:  MOVW            R0, #0x3B10
3E90EC:  LDR             R1, [R4,R0]
3E90EE:  CMP             R1, R6
3E90F0:  BNE             loc_3E913A
3E90F2:  LDR             R1, =(FrontEndMenuManager_ptr - 0x3E90FC)
3E90F4:  CMP.W           R8, #1
3E90F8:  ADD             R1, PC; FrontEndMenuManager_ptr
3E90FA:  LDR             R1, [R1]; FrontEndMenuManager
3E90FC:  LDRB.W          R3, [R1,#(byte_98F18C - 0x98F0F8)]
3E9100:  MOV.W           R1, #0
3E9104:  IT NE
3E9106:  MOVNE           R1, #1
3E9108:  CMP             R3, #1
3E910A:  MOV             R2, R3
3E910C:  IT NE
3E910E:  MOVNE           R2, #0
3E9110:  CMP             R3, #0
3E9112:  ITT NE
3E9114:  ANDNE           R1, R2
3E9116:  CMPNE           R1, #1
3E9118:  BNE             loc_3E913A
3E911A:  CMP             R5, #3
3E911C:  BHI             loc_3E9132
3E911E:  LDR             R1, =(unk_616F5C - 0x3E9126)
3E9120:  ADD             R0, R4
3E9122:  ADD             R1, PC; unk_616F5C
3E9124:  LDR.W           R1, [R1,R5,LSL#2]
3E9128:  STR             R1, [R0]
3E912A:  MOVW            R0, #0x3B14
3E912E:  MOVS            R1, #0
3E9130:  STR             R1, [R4,R0]
3E9132:  MOV             R0, R9
3E9134:  MOVS            R1, #0x10
3E9136:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E913A:  MOVW            R0, #0x3B30
3E913E:  LDR             R1, [R4,R0]
3E9140:  CMP             R1, R6
3E9142:  BNE             loc_3E9164
3E9144:  CMP             R5, #3
3E9146:  BHI             loc_3E915C
3E9148:  LDR             R1, =(unk_616F5C - 0x3E9150)
3E914A:  ADD             R0, R4
3E914C:  ADD             R1, PC; unk_616F5C
3E914E:  LDR.W           R1, [R1,R5,LSL#2]
3E9152:  STR             R1, [R0]
3E9154:  MOVW            R0, #0x3B34
3E9158:  MOVS            R1, #0
3E915A:  STR             R1, [R4,R0]
3E915C:  MOV             R0, R9
3E915E:  MOVS            R1, #0x11
3E9160:  BLX             j__ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E9164:  LDR             R0, =(FrontEndMenuManager_ptr - 0x3E916A)
3E9166:  ADD             R0, PC; FrontEndMenuManager_ptr
3E9168:  LDR             R0, [R0]; FrontEndMenuManager
3E916A:  LDRB.W          R0, [R0,#(byte_98F18C - 0x98F0F8)]
3E916E:  CMP             R0, #1
3E9170:  BNE             loc_3E91A4
3E9172:  MOVW            R0, #0x3E90
3E9176:  LDR             R1, [R4,R0]
3E9178:  CMP             R1, R6
3E917A:  BNE             loc_3E91A4
3E917C:  CMP             R5, #3
3E917E:  BHI             loc_3E9194
3E9180:  LDR             R1, =(unk_616F5C - 0x3E9188)
3E9182:  ADD             R0, R4
3E9184:  ADD             R1, PC; unk_616F5C
3E9186:  LDR.W           R1, [R1,R5,LSL#2]
3E918A:  STR             R1, [R0]
3E918C:  MOVW            R0, #0x3E94
3E9190:  MOVS            R1, #0
3E9192:  STR             R1, [R4,R0]
3E9194:  MOV             R0, R9
3E9196:  MOVS            R1, #0x2C ; ','
3E9198:  POP.W           {R8,R9,R11}
3E919C:  POP.W           {R4-R7,LR}
3E91A0:  B.W             _ZN24CControllerConfigManager17ResetSettingOrderE18e_ControllerAction; CControllerConfigManager::ResetSettingOrder(e_ControllerAction)
3E91A4:  POP.W           {R8,R9,R11}
3E91A8:  POP             {R4-R7,PC}
