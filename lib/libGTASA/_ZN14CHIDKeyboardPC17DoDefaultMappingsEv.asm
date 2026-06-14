; =========================================================
; Game Engine Function: _ZN14CHIDKeyboardPC17DoDefaultMappingsEv
; Address            : 0x295C5C - 0x2961DA
; =========================================================

295C5C:  PUSH            {R4-R7,LR}
295C5E:  ADD             R7, SP, #0xC
295C60:  PUSH.W          {R8-R11}
295C64:  SUB             SP, SP, #4
295C66:  MOV             R4, R0
295C68:  MOV.W           R8, #0
295C6C:  MOV.W           R5, #0xFFFFFFFF
295C70:  MOVS            R1, #0x36 ; '6'
295C72:  MOVS            R2, #2
295C74:  MOVS            R3, #0
295C76:  STR.W           R8, [R4,#8]
295C7A:  MOVS            R6, #2
295C7C:  STR             R5, [SP,#0x20+var_20]
295C7E:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295C82:  MOV             R0, R4
295C84:  MOVS            R1, #0x1D
295C86:  MOVS            R2, #8
295C88:  MOVS            R3, #0
295C8A:  STR             R5, [SP,#0x20+var_20]
295C8C:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295C90:  MOV             R0, R4
295C92:  MOVS            R1, #0x64 ; 'd'
295C94:  MOVS            R2, #1
295C96:  MOVS            R3, #0
295C98:  STR.W           R8, [SP,#0x20+var_20]
295C9C:  MOV.W           R9, #1
295CA0:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295CA4:  MOV             R0, R4
295CA6:  MOVS            R1, #0x44 ; 'D'
295CA8:  MOVS            R2, #3
295CAA:  MOVS            R3, #0
295CAC:  STR             R5, [SP,#0x20+var_20]
295CAE:  MOV.W           R10, #3
295CB2:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295CB6:  MOV             R0, R4
295CB8:  MOVS            R1, #0x2B ; '+'
295CBA:  MOVS            R2, #6
295CBC:  MOVS            R3, #0
295CBE:  STR             R5, [SP,#0x20+var_20]
295CC0:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295CC4:  MOV             R0, R4
295CC6:  MOVS            R1, #0x1B
295CC8:  MOVS            R2, #5
295CCA:  MOVS            R3, #0
295CCC:  STR             R5, [SP,#0x20+var_20]
295CCE:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295CD2:  MOV             R0, R4
295CD4:  MOVS            R1, #0x64 ; 'd'
295CD6:  MOVS            R2, #9
295CD8:  MOVS            R3, #0
295CDA:  STR.W           R10, [SP,#0x20+var_20]
295CDE:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295CE2:  MOV.W           R11, #4
295CE6:  MOV             R0, R4
295CE8:  MOVS            R1, #0x64 ; 'd'
295CEA:  MOVS            R2, #0xA
295CEC:  MOVS            R3, #0
295CEE:  STR.W           R11, [SP,#0x20+var_20]
295CF2:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295CF6:  MOV             R0, R4
295CF8:  MOVS            R1, #0x11
295CFA:  MOVS            R2, #0xC
295CFC:  MOVS            R3, #0
295CFE:  STR             R5, [SP,#0x20+var_20]
295D00:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295D04:  MOV             R0, R4
295D06:  MOVS            R1, #0x12
295D08:  MOVS            R2, #0xD
295D0A:  MOVS            R3, #0
295D0C:  STR             R5, [SP,#0x20+var_20]
295D0E:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295D12:  MOV             R0, R4
295D14:  MOVS            R1, #0x64 ; 'd'
295D16:  MOVS            R2, #0xD
295D18:  MOVS            R3, #0
295D1A:  STR             R6, [SP,#0x20+var_20]
295D1C:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295D20:  MOV             R0, R4
295D22:  MOVS            R1, #0x42 ; 'B'
295D24:  MOVS            R2, #0xE
295D26:  MOVS            R3, #0
295D28:  STR             R5, [SP,#0x20+var_20]
295D2A:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295D2E:  MOV             R0, R4
295D30:  MOVS            R1, #0xF
295D32:  MOVS            R2, #0x10
295D34:  MOVS            R3, #0
295D36:  STR             R5, [SP,#0x20+var_20]
295D38:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295D3C:  MOV             R0, R4
295D3E:  MOVS            R1, #0x10
295D40:  MOVS            R2, #0xF
295D42:  MOVS            R3, #0
295D44:  STR             R5, [SP,#0x20+var_20]
295D46:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295D4A:  MOV             R0, R4
295D4C:  MOVS            R1, #0x64 ; 'd'
295D4E:  MOVS            R2, #0xF
295D50:  MOVS            R3, #0
295D52:  STR.W           R9, [SP,#0x20+var_20]
295D56:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295D5A:  MOV             R0, R4
295D5C:  MOVS            R1, #0x64 ; 'd'
295D5E:  MOVS            R2, #7
295D60:  MOVS            R3, #0
295D62:  STR.W           R9, [SP,#0x20+var_20]
295D66:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295D6A:  MOV             R0, R4
295D6C:  MOVS            R1, #0x39 ; '9'
295D6E:  MOVS            R2, #4
295D70:  MOVS            R3, #0
295D72:  STR             R5, [SP,#0x20+var_20]
295D74:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295D78:  MOV             R0, R4
295D7A:  MOVS            R1, #0x3A ; ':'
295D7C:  MOVS            R2, #0xB
295D7E:  MOVS            R3, #0
295D80:  STR             R5, [SP,#0x20+var_20]
295D82:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295D86:  MOV             R0, R4
295D88:  MOVS            R1, #0x64 ; 'd'
295D8A:  MOVS            R2, #0x12
295D8C:  MOVS            R3, #0
295D8E:  STR             R6, [SP,#0x20+var_20]
295D90:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295D94:  MOV             R0, R4
295D96:  MOVS            R1, #0x1C
295D98:  MOVS            R2, #0x13
295D9A:  MOVS            R3, #0
295D9C:  STR             R5, [SP,#0x20+var_20]
295D9E:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295DA2:  MOV             R0, R4
295DA4:  MOVS            R1, #0x1E
295DA6:  MOVS            R2, #0x14
295DA8:  MOVS            R3, #0
295DAA:  STR             R5, [SP,#0x20+var_20]
295DAC:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295DB0:  MOV             R0, R4
295DB2:  MOVS            R1, #0x44 ; 'D'
295DB4:  MOVS            R2, #0x15
295DB6:  MOVS            R3, #0
295DB8:  STR             R5, [SP,#0x20+var_20]
295DBA:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295DBE:  MOV             R0, R4
295DC0:  MOVS            R1, #0x1F
295DC2:  MOVS            R2, #0x16
295DC4:  MOVS            R3, #0
295DC6:  STR             R5, [SP,#0x20+var_20]
295DC8:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295DCC:  MOV             R0, R4
295DCE:  MOVS            R1, #0x1F
295DD0:  MOVS            R2, #0x17
295DD2:  MOVS            R3, #0
295DD4:  STR             R5, [SP,#0x20+var_20]
295DD6:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295DDA:  MOV             R0, R4
295DDC:  MOVS            R1, #0x39 ; '9'
295DDE:  MOVS            R2, #0x20 ; ' '
295DE0:  MOVS            R3, #0
295DE2:  STR             R5, [SP,#0x20+var_20]
295DE4:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295DE8:  MOV             R0, R4
295DEA:  MOVS            R1, #0x1E
295DEC:  MOVS            R2, #0x21 ; '!'
295DEE:  MOVS            R3, #0
295DF0:  STR             R5, [SP,#0x20+var_20]
295DF2:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295DF6:  MOV             R0, R4
295DF8:  MOVS            R1, #0x64 ; 'd'
295DFA:  MOVS            R2, #0x22 ; '"'
295DFC:  MOVS            R3, #0
295DFE:  STR.W           R10, [SP,#0x20+var_20]
295E02:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295E06:  MOV             R0, R4
295E08:  MOVS            R1, #0x64 ; 'd'
295E0A:  MOVS            R2, #0x23 ; '#'
295E0C:  MOVS            R3, #0
295E0E:  STR.W           R11, [SP,#0x20+var_20]
295E12:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295E16:  MOV             R0, R4
295E18:  MOVS            R1, #0x1C
295E1A:  MOVS            R2, #0x24 ; '$'
295E1C:  MOVS            R3, #0
295E1E:  STR             R5, [SP,#0x20+var_20]
295E20:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295E24:  MOV             R0, R4
295E26:  MOVS            R1, #0x1F
295E28:  MOVS            R2, #0x25 ; '%'
295E2A:  MOVS            R3, #0
295E2C:  STR             R5, [SP,#0x20+var_20]
295E2E:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295E32:  MOV             R0, R4
295E34:  MOVS            R1, #0x2A ; '*'
295E36:  MOVS            R2, #0x18
295E38:  MOVS            R3, #1
295E3A:  STR             R5, [SP,#0x20+var_20]
295E3C:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295E40:  MOV             R0, R4
295E42:  MOVS            R1, #0x2C ; ','
295E44:  MOVS            R2, #0x18
295E46:  MOVS            R3, #0
295E48:  STR             R5, [SP,#0x20+var_20]
295E4A:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295E4E:  MOV             R0, R4
295E50:  MOVS            R1, #0x2A ; '*'
295E52:  MOVS            R2, #0x1A
295E54:  MOVS            R3, #0
295E56:  STR             R5, [SP,#0x20+var_20]
295E58:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295E5C:  MOV             R0, R4
295E5E:  MOVS            R1, #0x2C ; ','
295E60:  MOVS            R2, #0x1B
295E62:  MOVS            R3, #0
295E64:  STR             R5, [SP,#0x20+var_20]
295E66:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295E6A:  MOV             R0, R4
295E6C:  MOVS            R1, #0x2A ; '*'
295E6E:  MOVS            R2, #0x1E
295E70:  MOVS            R3, #1
295E72:  STR             R5, [SP,#0x20+var_20]
295E74:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295E78:  MOV             R0, R4
295E7A:  MOVS            R1, #0x2C ; ','
295E7C:  MOVS            R2, #0x1E
295E7E:  MOVS            R3, #0
295E80:  STR             R5, [SP,#0x20+var_20]
295E82:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295E86:  MOV             R0, R4
295E88:  MOVS            R1, #0x2B ; '+'
295E8A:  MOVS            R2, #0x1F
295E8C:  MOVS            R3, #0
295E8E:  STR             R5, [SP,#0x20+var_20]
295E90:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295E94:  MOV             R0, R4
295E96:  MOVS            R1, #0x1D
295E98:  MOVS            R2, #0x1F
295E9A:  MOVS            R3, #1
295E9C:  STR             R5, [SP,#0x20+var_20]
295E9E:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295EA2:  MOV             R0, R4
295EA4:  MOVS            R1, #0x1E
295EA6:  MOVS            R2, #0x28 ; '('
295EA8:  MOVS            R3, #0
295EAA:  STR             R5, [SP,#0x20+var_20]
295EAC:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295EB0:  MOV             R0, R4
295EB2:  MOVS            R1, #0x44 ; 'D'
295EB4:  MOVS            R2, #0x29 ; ')'
295EB6:  MOVS            R3, #0
295EB8:  STR             R5, [SP,#0x20+var_20]
295EBA:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295EBE:  MOV             R0, R4
295EC0:  MOVS            R1, #0x35 ; '5'
295EC2:  MOVS            R2, #0x29 ; ')'
295EC4:  MOVS            R3, #0
295EC6:  STR             R5, [SP,#0x20+var_20]
295EC8:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295ECC:  MOV             R0, R4
295ECE:  MOVS            R1, #0x1E
295ED0:  MOVS            R2, #0x2A ; '*'
295ED2:  MOVS            R3, #0
295ED4:  STR             R5, [SP,#0x20+var_20]
295ED6:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295EDA:  MOV             R0, R4
295EDC:  MOVS            R1, #0x1F
295EDE:  MOVS            R2, #0x2B ; '+'
295EE0:  MOVS            R3, #0
295EE2:  STR             R5, [SP,#0x20+var_20]
295EE4:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295EE8:  MOV             R0, R4
295EEA:  MOVS            R1, #0x1E
295EEC:  MOVS            R2, #0x2C ; ','
295EEE:  MOVS            R3, #0
295EF0:  STR             R5, [SP,#0x20+var_20]
295EF2:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295EF6:  MOV             R0, R4
295EF8:  MOVS            R1, #0x1F
295EFA:  MOVS            R2, #0x2D ; '-'
295EFC:  MOVS            R3, #0
295EFE:  STR             R5, [SP,#0x20+var_20]
295F00:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295F04:  MOV             R0, R4
295F06:  MOVS            R1, #0x4F ; 'O'
295F08:  MOVS            R2, #0x2E ; '.'
295F0A:  MOVS            R3, #0
295F0C:  STR             R5, [SP,#0x20+var_20]
295F0E:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295F12:  MOV             R0, R4
295F14:  MOVS            R1, #0x50 ; 'P'
295F16:  MOVS            R2, #0x2F ; '/'
295F18:  MOVS            R3, #0
295F1A:  STR             R5, [SP,#0x20+var_20]
295F1C:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295F20:  MOV             R0, R4
295F22:  MOVS            R1, #0x51 ; 'Q'
295F24:  MOVS            R2, #0x30 ; '0'
295F26:  MOVS            R3, #0
295F28:  STR             R5, [SP,#0x20+var_20]
295F2A:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295F2E:  MOV             R0, R4
295F30:  MOVS            R1, #0x52 ; 'R'
295F32:  MOVS            R2, #0x31 ; '1'
295F34:  MOVS            R3, #0
295F36:  STR             R5, [SP,#0x20+var_20]
295F38:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295F3C:  MOV             R0, R4
295F3E:  MOVS            R1, #0x1E
295F40:  MOVS            R2, #0x32 ; '2'
295F42:  MOVS            R3, #0
295F44:  STR             R5, [SP,#0x20+var_20]
295F46:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295F4A:  MOV             R0, R4
295F4C:  MOVS            R1, #0x1E
295F4E:  MOVS            R2, #0x33 ; '3'
295F50:  MOVS            R3, #0
295F52:  STR             R5, [SP,#0x20+var_20]
295F54:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295F58:  MOV             R0, R4
295F5A:  MOVS            R1, #0x1E
295F5C:  MOVS            R2, #0x34 ; '4'
295F5E:  MOVS            R3, #0
295F60:  STR             R5, [SP,#0x20+var_20]
295F62:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295F66:  MOV             R0, R4
295F68:  MOVS            R1, #0x38 ; '8'
295F6A:  MOVS            R2, #0x35 ; '5'
295F6C:  MOVS            R3, #0
295F6E:  STR             R5, [SP,#0x20+var_20]
295F70:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295F74:  MOV             R0, R4
295F76:  MOVS            R1, #0x39 ; '9'
295F78:  MOVS            R2, #0x36 ; '6'
295F7A:  MOVS            R3, #0
295F7C:  STR             R5, [SP,#0x20+var_20]
295F7E:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295F82:  MOV             R0, R4
295F84:  MOVS            R1, #0x37 ; '7'
295F86:  MOVS            R2, #0x37 ; '7'
295F88:  MOVS            R3, #0
295F8A:  STR             R5, [SP,#0x20+var_20]
295F8C:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295F90:  MOV             R0, R4
295F92:  MOVS            R1, #0x44 ; 'D'
295F94:  MOVS            R2, #0x38 ; '8'
295F96:  MOVS            R3, #0
295F98:  STR             R5, [SP,#0x20+var_20]
295F9A:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295F9E:  MOV             R0, R4
295FA0:  MOVS            R1, #0x35 ; '5'
295FA2:  MOVS            R2, #0x38 ; '8'
295FA4:  MOVS            R3, #0
295FA6:  STR             R5, [SP,#0x20+var_20]
295FA8:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295FAC:  MOV             R0, R4
295FAE:  MOVS            R1, #0
295FB0:  MOVS            R2, #0x39 ; '9'
295FB2:  MOVS            R3, #0
295FB4:  STR             R5, [SP,#0x20+var_20]
295FB6:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295FBA:  MOV             R0, R4
295FBC:  MOVS            R1, #0x1F
295FBE:  MOVS            R2, #0x3A ; ':'
295FC0:  MOVS            R3, #0
295FC2:  STR             R5, [SP,#0x20+var_20]
295FC4:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295FC8:  MOV             R0, R4
295FCA:  MOVS            R1, #0x1F
295FCC:  MOVS            R2, #0x3B ; ';'
295FCE:  MOVS            R3, #0
295FD0:  STR             R5, [SP,#0x20+var_20]
295FD2:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295FD6:  MOV             R0, R4
295FD8:  MOVS            R1, #0x2B ; '+'
295FDA:  MOVS            R2, #0x3C ; '<'
295FDC:  MOVS            R3, #0
295FDE:  STR             R5, [SP,#0x20+var_20]
295FE0:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295FE4:  MOV             R0, R4
295FE6:  MOVS            R1, #0x50 ; 'P'
295FE8:  MOVS            R2, #0x3C ; '<'
295FEA:  MOVS            R3, #0
295FEC:  STR             R5, [SP,#0x20+var_20]
295FEE:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
295FF2:  MOV             R0, R4
295FF4:  MOVS            R1, #0x1D
295FF6:  MOVS            R2, #0x3D ; '='
295FF8:  MOVS            R3, #0
295FFA:  STR             R5, [SP,#0x20+var_20]
295FFC:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
296000:  MOV             R0, R4
296002:  MOVS            R1, #0x4F ; 'O'
296004:  MOVS            R2, #0x3D ; '='
296006:  MOVS            R3, #0
296008:  STR             R5, [SP,#0x20+var_20]
29600A:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
29600E:  MOV             R0, R4
296010:  MOVS            R1, #0x2A ; '*'
296012:  MOVS            R2, #0x3E ; '>'
296014:  MOVS            R3, #0
296016:  STR             R5, [SP,#0x20+var_20]
296018:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
29601C:  MOV             R0, R4
29601E:  MOVS            R1, #0x51 ; 'Q'
296020:  MOVS            R2, #0x3E ; '>'
296022:  MOVS            R3, #0
296024:  STR             R5, [SP,#0x20+var_20]
296026:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
29602A:  MOV             R0, R4
29602C:  MOVS            R1, #0x2C ; ','
29602E:  MOVS            R2, #0x3F ; '?'
296030:  MOVS            R3, #0
296032:  STR             R5, [SP,#0x20+var_20]
296034:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
296038:  MOV             R0, R4
29603A:  MOVS            R1, #0x52 ; 'R'
29603C:  MOVS            R2, #0x3F ; '?'
29603E:  MOVS            R3, #0
296040:  STR             R5, [SP,#0x20+var_20]
296042:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
296046:  MOV             R0, R4
296048:  MOVS            R1, #0x44 ; 'D'
29604A:  MOVS            R2, #0x40 ; '@'
29604C:  MOVS            R3, #0
29604E:  STR             R5, [SP,#0x20+var_20]
296050:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
296054:  MOV             R0, R4
296056:  MOVS            R1, #0x35 ; '5'
296058:  MOVS            R2, #0x40 ; '@'
29605A:  MOVS            R3, #0
29605C:  STR             R5, [SP,#0x20+var_20]
29605E:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
296062:  MOV             R0, R4
296064:  MOVS            R1, #0
296066:  MOVS            R2, #0x41 ; 'A'
296068:  MOVS            R3, #0
29606A:  STR             R5, [SP,#0x20+var_20]
29606C:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
296070:  MOV             R0, R4
296072:  MOVS            R1, #0x1A
296074:  MOVS            R2, #0x41 ; 'A'
296076:  MOVS            R3, #0
296078:  STR             R5, [SP,#0x20+var_20]
29607A:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
29607E:  MOV             R0, R4
296080:  MOVS            R1, #0x1E
296082:  MOVS            R2, #0x47 ; 'G'
296084:  MOVS            R3, #0
296086:  STR             R5, [SP,#0x20+var_20]
296088:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
29608C:  MOV             R0, R4
29608E:  MOVS            R1, #0x37 ; '7'
296090:  MOVS            R2, #0x48 ; 'H'
296092:  MOVS            R3, #0
296094:  STR             R5, [SP,#0x20+var_20]
296096:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
29609A:  MOV             R0, R4
29609C:  MOVS            R1, #0x39 ; '9'
29609E:  MOVS            R2, #0x49 ; 'I'
2960A0:  MOVS            R3, #0
2960A2:  STR             R5, [SP,#0x20+var_20]
2960A4:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
2960A8:  MOV             R0, R4
2960AA:  MOVS            R1, #0x1D
2960AC:  MOVS            R2, #0x4A ; 'J'
2960AE:  MOVS            R3, #0
2960B0:  STR             R5, [SP,#0x20+var_20]
2960B2:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
2960B6:  MOV             R0, R4
2960B8:  MOVS            R1, #0x2C ; ','
2960BA:  MOVS            R2, #0x4B ; 'K'
2960BC:  MOVS            R3, #0
2960BE:  STR             R5, [SP,#0x20+var_20]
2960C0:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
2960C4:  MOV             R0, R4
2960C6:  MOVS            R1, #0x2A ; '*'
2960C8:  MOVS            R2, #0x4C ; 'L'
2960CA:  MOVS            R3, #0
2960CC:  STR             R5, [SP,#0x20+var_20]
2960CE:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
2960D2:  MOV             R0, R4
2960D4:  MOVS            R1, #0x2B ; '+'
2960D6:  MOVS            R2, #0x4D ; 'M'
2960D8:  MOVS            R3, #0
2960DA:  STR             R5, [SP,#0x20+var_20]
2960DC:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
2960E0:  MOV             R0, R4
2960E2:  MOVS            R1, #0x39 ; '9'
2960E4:  MOVS            R2, #0x4E ; 'N'
2960E6:  MOVS            R3, #0
2960E8:  STR             R5, [SP,#0x20+var_20]
2960EA:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
2960EE:  MOV             R0, R4
2960F0:  MOVS            R1, #0x37 ; '7'
2960F2:  MOVS            R2, #0x4F ; 'O'
2960F4:  MOVS            R3, #0
2960F6:  STR             R5, [SP,#0x20+var_20]
2960F8:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
2960FC:  MOV             R0, R4
2960FE:  MOVS            R1, #0x39 ; '9'
296100:  MOVS            R2, #0x53 ; 'S'
296102:  MOVS            R3, #0
296104:  STR             R5, [SP,#0x20+var_20]
296106:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
29610A:  MOV             R0, R4
29610C:  MOVS            R1, #0x37 ; '7'
29610E:  MOVS            R2, #0x54 ; 'T'
296110:  MOVS            R3, #0
296112:  STR             R5, [SP,#0x20+var_20]
296114:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
296118:  MOV             R0, R4
29611A:  MOVS            R1, #0x36 ; '6'
29611C:  MOVS            R2, #0x55 ; 'U'
29611E:  MOVS            R3, #0
296120:  STR             R5, [SP,#0x20+var_20]
296122:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
296126:  MOV             R0, R4
296128:  MOVS            R1, #0x41 ; 'A'
29612A:  MOVS            R2, #0x55 ; 'U'
29612C:  MOVS            R3, #0
29612E:  STR             R5, [SP,#0x20+var_20]
296130:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
296134:  MOV             R0, R4
296136:  MOVS            R1, #0x64 ; 'd'
296138:  MOVS            R2, #0x56 ; 'V'
29613A:  MOVS            R3, #0
29613C:  STR.W           R8, [SP,#0x20+var_20]
296140:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
296144:  MOV             R0, R4
296146:  MOVS            R1, #0x64 ; 'd'
296148:  MOVS            R2, #0x57 ; 'W'
29614A:  MOVS            R3, #0
29614C:  STR.W           R9, [SP,#0x20+var_20]
296150:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
296154:  MOV             R0, R4
296156:  MOVS            R1, #0x1E
296158:  MOVS            R2, #0x58 ; 'X'
29615A:  MOVS            R3, #0
29615C:  STR             R5, [SP,#0x20+var_20]
29615E:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
296162:  MOV             R0, R4
296164:  MOVS            R1, #0x1C
296166:  MOVS            R2, #0x59 ; 'Y'
296168:  MOVS            R3, #0
29616A:  STR             R5, [SP,#0x20+var_20]
29616C:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
296170:  MOV             R0, R4
296172:  MOVS            R1, #0x51 ; 'Q'
296174:  MOVS            R2, #0x5A ; 'Z'
296176:  MOVS            R3, #0
296178:  STR             R5, [SP,#0x20+var_20]
29617A:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
29617E:  MOV             R0, R4
296180:  MOVS            R1, #0x52 ; 'R'
296182:  MOVS            R2, #0x5B ; '['
296184:  MOVS            R3, #0
296186:  STR             R5, [SP,#0x20+var_20]
296188:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
29618C:  MOV             R0, R4
29618E:  MOVS            R1, #0x4F ; 'O'
296190:  MOVS            R2, #0x5C ; '\'
296192:  MOVS            R3, #0
296194:  STR             R5, [SP,#0x20+var_20]
296196:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
29619A:  MOV             R0, R4
29619C:  MOVS            R1, #0x50 ; 'P'
29619E:  MOVS            R2, #0x5D ; ']'
2961A0:  MOVS            R3, #0
2961A2:  STR             R5, [SP,#0x20+var_20]
2961A4:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
2961A8:  MOV             R0, R4
2961AA:  MOVS            R1, #0x2A ; '*'
2961AC:  MOVS            R2, #0x64 ; 'd'
2961AE:  MOVS            R3, #0
2961B0:  STR             R5, [SP,#0x20+var_20]
2961B2:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
2961B6:  MOV             R0, R4
2961B8:  MOVS            R1, #0x2C ; ','
2961BA:  MOVS            R2, #0x65 ; 'e'
2961BC:  MOVS            R3, #0
2961BE:  STR             R5, [SP,#0x20+var_20]
2961C0:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
2961C4:  MOV             R0, R4
2961C6:  MOVS            R1, #0x1F
2961C8:  MOVS            R2, #0x67 ; 'g'
2961CA:  MOVS            R3, #0
2961CC:  STR             R5, [SP,#0x20+var_20]
2961CE:  BLX             j__ZN12CHIDKeyboard10AddMappingE13OSKeyboardKey10HIDMappingb12MouseButtons; CHIDKeyboard::AddMapping(OSKeyboardKey,HIDMapping,bool,MouseButtons)
2961D2:  ADD             SP, SP, #4
2961D4:  POP.W           {R8-R11}
2961D8:  POP             {R4-R7,PC}
