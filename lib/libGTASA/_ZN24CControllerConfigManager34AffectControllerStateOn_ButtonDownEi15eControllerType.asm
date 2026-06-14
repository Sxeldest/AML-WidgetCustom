; =========================================================
; Game Engine Function: _ZN24CControllerConfigManager34AffectControllerStateOn_ButtonDownEi15eControllerType
; Address            : 0x3E7DB4 - 0x3E8042
; =========================================================

3E7DB4:  PUSH            {R4-R7,LR}
3E7DB6:  ADD             R7, SP, #0xC
3E7DB8:  PUSH.W          {R8-R11}
3E7DBC:  SUB             SP, SP, #4
3E7DBE:  MOV             R5, R2
3E7DC0:  MOV             R8, R0
3E7DC2:  CMP             R5, #2
3E7DC4:  MOV.W           R0, #0
3E7DC8:  MOV             R4, R1
3E7DCA:  IT EQ
3E7DCC:  MOVEQ           R0, #1
3E7DCE:  CMP             R4, #0
3E7DD0:  MOV.W           R1, #0
3E7DD4:  IT EQ
3E7DD6:  MOVEQ           R1, #1; int
3E7DD8:  CMP             R5, #3
3E7DDA:  MOV.W           R2, #0
3E7DDE:  MOV.W           R6, #0
3E7DE2:  IT EQ
3E7DE4:  MOVEQ           R2, #1
3E7DE6:  CMP             R5, #1
3E7DE8:  IT HI
3E7DEA:  MOVHI           R6, #1
3E7DEC:  MOVS            R3, #0
3E7DEE:  CMP.W           R4, #0x420
3E7DF2:  IT NE
3E7DF4:  MOVNE           R3, #1
3E7DF6:  ORRS            R3, R6
3E7DF8:  BEQ.W           loc_3E803A
3E7DFC:  ANDS            R2, R1
3E7DFE:  IT EQ
3E7E00:  ANDSEQ.W        R0, R0, R1
3E7E04:  BNE.W           loc_3E803A
3E7E08:  MOVS            R0, #0; this
3E7E0A:  MOV.W           R11, #0
3E7E0E:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3E7E12:  MOV             R9, R0
3E7E14:  MOV.W           R0, #0xFFFFFFFF; int
3E7E18:  MOVS            R1, #0; bool
3E7E1A:  BLX             j__Z17FindPlayerVehicleib; FindPlayerVehicle(int,bool)
3E7E1E:  CBZ             R0, loc_3E7E48
3E7E20:  MOV.W           R0, #0xFFFFFFFF; int
3E7E24:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3E7E28:  CBZ             R0, loc_3E7E44
3E7E2A:  LDR.W           R0, [R0,#0x44C]
3E7E2E:  MOV.W           R11, #0
3E7E32:  CMP             R0, #0x32 ; '2'
3E7E34:  BNE             loc_3E7E48
3E7E36:  LDRH.W          R0, [R9,#0x110]
3E7E3A:  CMP             R0, #0
3E7E3C:  IT EQ
3E7E3E:  MOVEQ.W         R11, #1
3E7E42:  B               loc_3E7E48
3E7E44:  MOV.W           R11, #0
3E7E48:  LDR             R0, =(TheCamera_ptr - 0x3E7E50)
3E7E4A:  MOVS            R6, #0
3E7E4C:  ADD             R0, PC; TheCamera_ptr
3E7E4E:  LDR             R0, [R0]; TheCamera
3E7E50:  LDRB.W          R1, [R0,#(byte_951FFF - 0x951FA8)]
3E7E54:  ADD.W           R1, R1, R1,LSL#5; int
3E7E58:  ADD.W           R0, R0, R1,LSL#4
3E7E5C:  LDRH.W          R0, [R0,#0x17E]
3E7E60:  SUBS            R0, #7; switch 45 cases
3E7E62:  CMP             R0, #0x2C ; ','
3E7E64:  BHI             def_3E7E66; jumptable 003E7E66 default case, cases 9-15,17-33,35-45,47-50
3E7E66:  TBB.W           [PC,R0]; switch jump
3E7E6A:  DCB 0x17; jump table for switch statement
3E7E6B:  DCB 0x17
3E7E6C:  DCB 0x18
3E7E6D:  DCB 0x18
3E7E6E:  DCB 0x18
3E7E6F:  DCB 0x18
3E7E70:  DCB 0x18
3E7E71:  DCB 0x18
3E7E72:  DCB 0x18
3E7E73:  DCB 0x17
3E7E74:  DCB 0x18
3E7E75:  DCB 0x18
3E7E76:  DCB 0x18
3E7E77:  DCB 0x18
3E7E78:  DCB 0x18
3E7E79:  DCB 0x18
3E7E7A:  DCB 0x18
3E7E7B:  DCB 0x18
3E7E7C:  DCB 0x18
3E7E7D:  DCB 0x18
3E7E7E:  DCB 0x18
3E7E7F:  DCB 0x18
3E7E80:  DCB 0x18
3E7E81:  DCB 0x18
3E7E82:  DCB 0x18
3E7E83:  DCB 0x18
3E7E84:  DCB 0x18
3E7E85:  DCB 0x17
3E7E86:  DCB 0x18
3E7E87:  DCB 0x18
3E7E88:  DCB 0x18
3E7E89:  DCB 0x18
3E7E8A:  DCB 0x18
3E7E8B:  DCB 0x18
3E7E8C:  DCB 0x18
3E7E8D:  DCB 0x18
3E7E8E:  DCB 0x18
3E7E8F:  DCB 0x18
3E7E90:  DCB 0x18
3E7E91:  DCB 0x17
3E7E92:  DCB 0x18
3E7E93:  DCB 0x18
3E7E94:  DCB 0x18
3E7E95:  DCB 0x18
3E7E96:  DCB 0x17
3E7E97:  ALIGN 2
3E7E98:  MOVS            R6, #1; jumptable 003E7E66 cases 7,8,16,34,46,51
3E7E9A:  CMP             R5, #2; jumptable 003E7E66 default case, cases 9-15,17-33,35-45,47-50
3E7E9C:  BCC             loc_3E7EB6
3E7E9E:  BEQ             loc_3E7EC8
3E7EA0:  CMP             R5, #3
3E7EA2:  BNE             loc_3E7EDA
3E7EA4:  MOVS            R0, #0; this
3E7EA6:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3E7EAA:  ADD.W           R10, R0, #0xAC
3E7EAE:  CMP.W           R9, #0
3E7EB2:  BNE             loc_3E7EE6
3E7EB4:  B               loc_3E803A
3E7EB6:  MOVS            R0, #0; this
3E7EB8:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3E7EBC:  ADD.W           R10, R0, #0x7C ; '|'
3E7EC0:  CMP.W           R9, #0
3E7EC4:  BNE             loc_3E7EE6
3E7EC6:  B               loc_3E803A
3E7EC8:  MOVS            R0, #0; this
3E7ECA:  BLX             j__ZN4CPad6GetPadEi; CPad::GetPad(int)
3E7ECE:  ADD.W           R10, R0, #0xDC
3E7ED2:  CMP.W           R9, #0
3E7ED6:  BNE             loc_3E7EE6
3E7ED8:  B               loc_3E803A
3E7EDA:  MOV.W           R10, #0
3E7EDE:  CMP.W           R9, #0
3E7EE2:  BEQ.W           loc_3E803A
3E7EE6:  MOV             R0, R8
3E7EE8:  MOV             R1, R4
3E7EEA:  MOV             R2, R5
3E7EEC:  MOV             R3, R10
3E7EEE:  CMP.W           R11, #1
3E7EF2:  BNE             loc_3E7EFE
3E7EF4:  BLX             j__ZN24CControllerConfigManager42AffectControllerStateOn_ButtonDown_DrivingEi15eControllerTypeR16CControllerState; CControllerConfigManager::AffectControllerStateOn_ButtonDown_Driving(int,eControllerType,CControllerState &)
3E7EF8:  ADD.W           R0, R8, R5,LSL#3
3E7EFC:  B               loc_3E7FCA
3E7EFE:  BLX             j__ZN24CControllerConfigManager58AffectControllerStateOn_ButtonDown_FirstAndThirdPersonOnlyEi15eControllerTypeR16CControllerState; CControllerConfigManager::AffectControllerStateOn_ButtonDown_FirstAndThirdPersonOnly(int,eControllerType,CControllerState &)
3E7F02:  ADD.W           R0, R8, R5,LSL#3
3E7F06:  CMP             R6, #1
3E7F08:  BNE             loc_3E7F3C
3E7F0A:  MOVW            R1, #0x3A10
3E7F0E:  LDR             R1, [R0,R1]
3E7F10:  CMP             R1, R4
3E7F12:  ITT EQ
3E7F14:  MOVEQ           R1, #0xFF
3E7F16:  STRHEQ.W        R1, [R10,#0x1C]
3E7F1A:  MOVW            R1, #0x3A30
3E7F1E:  LDR             R1, [R0,R1]
3E7F20:  CMP             R1, R4
3E7F22:  ITT EQ
3E7F24:  MOVEQ           R1, #0xFF
3E7F26:  STRHEQ.W        R1, [R10,#0x20]
3E7F2A:  MOVW            R1, #0x3AF0
3E7F2E:  LDR             R0, [R0,R1]
3E7F30:  CMP             R0, R4
3E7F32:  ITT EQ
3E7F34:  MOVEQ           R0, #0xFF
3E7F36:  STRHEQ.W        R0, [R10,#0x24]
3E7F3A:  B               loc_3E7FDA
3E7F3C:  MOVW            R1, #0x3AD0
3E7F40:  LDR             R1, [R0,R1]
3E7F42:  CMP             R1, R4
3E7F44:  ITT EQ
3E7F46:  MOVEQ           R1, #0xFF
3E7F48:  STRHEQ.W        R1, [R10,#0x26]
3E7F4C:  MOVW            R1, #0x3A90
3E7F50:  LDR             R1, [R0,R1]
3E7F52:  CMP             R1, R4
3E7F54:  ITT EQ
3E7F56:  MOVEQ           R1, #0xFF
3E7F58:  STRHEQ.W        R1, [R10,#0x1C]
3E7F5C:  MOVW            R1, #0x3B10
3E7F60:  LDR             R1, [R0,R1]
3E7F62:  CMP             R1, R4
3E7F64:  ITT EQ
3E7F66:  MOVEQ           R1, #0xFF
3E7F68:  STRHEQ.W        R1, [R10,#8]
3E7F6C:  MOVW            R1, #0x3970
3E7F70:  LDR             R1, [R0,R1]
3E7F72:  CMP             R1, R4
3E7F74:  ITT EQ
3E7F76:  MOVEQ           R1, #0xFF
3E7F78:  STRHEQ.W        R1, [R10,#0xA]
3E7F7C:  MOVW            R1, #0x3950
3E7F80:  LDR             R1, [R0,R1]
3E7F82:  CMP             R1, R4
3E7F84:  ITT EQ
3E7F86:  MOVEQ           R1, #0xFF
3E7F88:  STRHEQ.W        R1, [R10,#0xE]
3E7F8C:  MOVW            R1, #0x3AB0
3E7F90:  LDR             R1, [R0,R1]
3E7F92:  CMP             R1, R4
3E7F94:  ITT EQ
3E7F96:  MOVEQ           R1, #0xFF
3E7F98:  STRHEQ.W        R1, [R10,#0x20]
3E7F9C:  MOVW            R1, #0x3AF0
3E7FA0:  LDR             R1, [R0,R1]
3E7FA2:  CMP             R1, R4
3E7FA4:  ITT EQ
3E7FA6:  MOVEQ           R1, #0xFF
3E7FA8:  STRHEQ.W        R1, [R10,#0x24]
3E7FAC:  LDR             R1, =(FrontEndMenuManager_ptr - 0x3E7FB2)
3E7FAE:  ADD             R1, PC; FrontEndMenuManager_ptr
3E7FB0:  LDR             R1, [R1]; FrontEndMenuManager
3E7FB2:  LDRB.W          R1, [R1,#(byte_98F18C - 0x98F0F8)]
3E7FB6:  CMP             R1, #1
3E7FB8:  BNE             loc_3E7FCA
3E7FBA:  MOVW            R1, #0x3E90
3E7FBE:  LDR             R1, [R0,R1]
3E7FC0:  CMP             R1, R4
3E7FC2:  ITT EQ
3E7FC4:  MOVEQ           R1, #0xFF
3E7FC6:  STRHEQ.W        R1, [R10,#8]
3E7FCA:  MOVW            R1, #0x3A50
3E7FCE:  LDR             R0, [R0,R1]
3E7FD0:  CMP             R0, R4
3E7FD2:  ITT EQ
3E7FD4:  MOVEQ           R0, #0xFF
3E7FD6:  STRHEQ.W        R0, [R10,#0x1E]
3E7FDA:  ADD.W           R0, R8, R5,LSL#3
3E7FDE:  MOVW            R1, #0x3A70
3E7FE2:  LDR             R1, [R0,R1]
3E7FE4:  CMP             R1, R4
3E7FE6:  ITT EQ
3E7FE8:  MOVEQ           R1, #0xFF
3E7FEA:  STRHEQ.W        R1, [R10,#0x1A]
3E7FEE:  MOVW            R1, #0x3F10
3E7FF2:  LDR             R1, [R0,R1]
3E7FF4:  CMP             R1, R4
3E7FF6:  BNE             loc_3E800C
3E7FF8:  LDRH.W          R1, [R10,#0x16]
3E7FFC:  CBZ             R1, loc_3E8006
3E7FFE:  MOVS            R1, #0
3E8000:  STR.W           R1, [R10,#0x14]
3E8004:  B               loc_3E800C
3E8006:  MOVS            R1, #0xFF
3E8008:  STRH.W          R1, [R10,#0x14]
3E800C:  MOVW            R1, #0x3EF0
3E8010:  LDR             R1, [R0,R1]
3E8012:  CMP             R1, R4
3E8014:  BNE             loc_3E802A
3E8016:  LDRH.W          R1, [R10,#0x14]
3E801A:  CMP             R1, #0
3E801C:  ITTE NE
3E801E:  MOVNE           R1, #0
3E8020:  STRHNE.W        R1, [R10,#0x14]
3E8024:  MOVEQ           R1, #0xFF
3E8026:  STRH.W          R1, [R10,#0x16]
3E802A:  MOVW            R1, #0x3ED0
3E802E:  LDR             R0, [R0,R1]
3E8030:  CMP             R0, R4
3E8032:  ITT EQ
3E8034:  MOVEQ           R0, #0xFF
3E8036:  STRHEQ.W        R0, [R10,#0x28]
3E803A:  ADD             SP, SP, #4
3E803C:  POP.W           {R8-R11}
3E8040:  POP             {R4-R7,PC}
