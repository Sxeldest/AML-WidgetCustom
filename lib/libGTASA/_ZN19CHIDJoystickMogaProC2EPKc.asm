; =========================================================
; Game Engine Function: _ZN19CHIDJoystickMogaProC2EPKc
; Address            : 0x28ED78 - 0x28F114
; =========================================================

28ED78:  PUSH            {R4,R6,R7,LR}
28ED7A:  ADD             R7, SP, #8
28ED7C:  MOV             R4, R0
28ED7E:  BLX             j__ZN12CHIDJoystickC2EPKc; CHIDJoystick::CHIDJoystick(char const*)
28ED82:  LDR             R0, =(_ZTV19CHIDJoystickMogaPro_ptr - 0x28ED8C)
28ED84:  MOVS            R1, #0
28ED86:  MOVS            R2, #2
28ED88:  ADD             R0, PC; _ZTV19CHIDJoystickMogaPro_ptr
28ED8A:  LDR             R0, [R0]; `vtable for'CHIDJoystickMogaPro ...
28ED8C:  ADDS            R0, #8
28ED8E:  STR             R0, [R4]
28ED90:  MOV             R0, R4
28ED92:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28ED96:  MOV             R0, R4
28ED98:  MOVS            R1, #0
28ED9A:  MOVS            R2, #8
28ED9C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EDA0:  MOV             R0, R4
28EDA2:  MOVS            R1, #1
28EDA4:  MOVS            R2, #1
28EDA6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EDAA:  MOV             R0, R4
28EDAC:  MOVS            R1, #2
28EDAE:  MOVS            R2, #3
28EDB0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EDB4:  MOV             R0, R4
28EDB6:  MOVS            R1, #2
28EDB8:  MOVS            R2, #6
28EDBA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EDBE:  MOV             R0, R4
28EDC0:  MOVS            R1, #3
28EDC2:  MOVS            R2, #5
28EDC4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EDC8:  MOV             R0, R4
28EDCA:  MOVS            R1, #5
28EDCC:  MOVS            R2, #9
28EDCE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EDD2:  MOV             R0, R4
28EDD4:  MOVS            R1, #5
28EDD6:  MOVS            R2, #0xA
28EDD8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EDDC:  MOV             R0, R4
28EDDE:  MOVS            R1, #8
28EDE0:  MOVS            R2, #0xC
28EDE2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EDE6:  MOV             R0, R4
28EDE8:  MOVS            R1, #9
28EDEA:  MOVS            R2, #0xD
28EDEC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EDF0:  MOV             R0, R4
28EDF2:  MOVS            R1, #6
28EDF4:  MOVS            R2, #0xE
28EDF6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EDFA:  MOV             R0, R4
28EDFC:  MOVS            R1, #0x44 ; 'D'
28EDFE:  MOVS            R2, #0x10
28EE00:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EE04:  MOV             R0, R4
28EE06:  MOVS            R1, #7
28EE08:  MOVS            R2, #7
28EE0A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EE0E:  MOV             R0, R4
28EE10:  MOVS            R1, #0x45 ; 'E'
28EE12:  MOVS            R2, #0xF
28EE14:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EE18:  MOV             R0, R4
28EE1A:  MOVS            R1, #0xC
28EE1C:  MOVS            R2, #4
28EE1E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EE22:  MOV             R0, R4
28EE24:  MOVS            R1, #0xC
28EE26:  MOVS            R2, #0xB
28EE28:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EE2C:  MOV             R0, R4
28EE2E:  MOVS            R1, #0xD
28EE30:  MOVS            R2, #0x12
28EE32:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EE36:  MOV             R0, R4
28EE38:  MOVS            R1, #4
28EE3A:  MOVS            R2, #0x11
28EE3C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EE40:  MOV             R0, R4
28EE42:  MOVS            R1, #0x44 ; 'D'
28EE44:  MOVS            R2, #0x13
28EE46:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EE4A:  MOV             R0, R4
28EE4C:  MOVS            R1, #0x45 ; 'E'
28EE4E:  MOVS            R2, #0x14
28EE50:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EE54:  MOV             R0, R4
28EE56:  MOVS            R1, #3
28EE58:  MOVS            R2, #0x16
28EE5A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EE5E:  MOV             R0, R4
28EE60:  MOVS            R1, #0xD
28EE62:  MOVS            R2, #0x17
28EE64:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EE68:  MOV             R0, R4
28EE6A:  MOVS            R1, #1
28EE6C:  MOVS            R2, #0x20 ; ' '
28EE6E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EE72:  MOV             R0, R4
28EE74:  MOVS            R1, #6
28EE76:  MOVS            R2, #0x21 ; '!'
28EE78:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EE7C:  MOV             R0, R4
28EE7E:  MOVS            R1, #0x44 ; 'D'
28EE80:  MOVS            R2, #0x22 ; '"'
28EE82:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EE86:  MOV             R0, R4
28EE88:  MOVS            R1, #0x45 ; 'E'
28EE8A:  MOVS            R2, #0x23 ; '#'
28EE8C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EE90:  MOV             R0, R4
28EE92:  MOVS            R1, #7
28EE94:  MOVS            R2, #0x24 ; '$'
28EE96:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EE9A:  MOV             R0, R4
28EE9C:  MOVS            R1, #0xA
28EE9E:  MOVS            R2, #0x25 ; '%'
28EEA0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EEA4:  MOV             R0, R4
28EEA6:  MOVS            R1, #0x44 ; 'D'
28EEA8:  MOVS            R2, #0x26 ; '&'
28EEAA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EEAE:  MOV             R0, R4
28EEB0:  MOVS            R1, #0x45 ; 'E'
28EEB2:  MOVS            R2, #0x27 ; '''
28EEB4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EEB8:  MOV             R0, R4
28EEBA:  MOVS            R1, #0x40 ; '@'
28EEBC:  MOVS            R2, #0x18
28EEBE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EEC2:  MOV             R0, R4
28EEC4:  MOVS            R1, #0x41 ; 'A'
28EEC6:  MOVS            R2, #0x19
28EEC8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EECC:  MOV             R0, R4
28EECE:  MOVS            R1, #0x42 ; 'B'
28EED0:  MOVS            R2, #0x1C
28EED2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EED6:  MOV             R0, R4
28EED8:  MOVS            R1, #0x43 ; 'C'
28EEDA:  MOVS            R2, #0x1D
28EEDC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EEE0:  MOV             R0, R4
28EEE2:  MOVS            R1, #0x40 ; '@'
28EEE4:  MOVS            R2, #0x1E
28EEE6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EEEA:  MOV             R0, R4
28EEEC:  MOVS            R1, #0x41 ; 'A'
28EEEE:  MOVS            R2, #0x1F
28EEF0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EEF4:  MOV             R0, R4
28EEF6:  MOVS            R1, #1
28EEF8:  MOVS            R2, #0x28 ; '('
28EEFA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EEFE:  MOV             R0, R4
28EF00:  MOVS            R1, #4
28EF02:  MOVS            R2, #0x29 ; ')'
28EF04:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EF08:  MOV             R0, R4
28EF0A:  MOVS            R1, #0
28EF0C:  MOVS            R2, #0x29 ; ')'
28EF0E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EF12:  MOV             R0, R4
28EF14:  MOVS            R1, #0xA
28EF16:  MOVS            R2, #0x2A ; '*'
28EF18:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EF1C:  MOV             R0, R4
28EF1E:  MOVS            R1, #0xB
28EF20:  MOVS            R2, #0x2B ; '+'
28EF22:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EF26:  MOV             R0, R4
28EF28:  MOVS            R1, #8
28EF2A:  MOVS            R2, #0x2C ; ','
28EF2C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EF30:  MOV             R0, R4
28EF32:  MOVS            R1, #9
28EF34:  MOVS            R2, #0x2D ; '-'
28EF36:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EF3A:  MOV             R0, R4
28EF3C:  MOVS            R1, #0x41 ; 'A'
28EF3E:  MOVS            R2, #0x2E ; '.'
28EF40:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EF44:  MOV             R0, R4
28EF46:  MOVS            R1, #0x41 ; 'A'
28EF48:  MOVS            R2, #0x2F ; '/'
28EF4A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EF4E:  MOV             R0, R4
28EF50:  MOVS            R1, #0x40 ; '@'
28EF52:  MOVS            R2, #0x30 ; '0'
28EF54:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EF58:  MOV             R0, R4
28EF5A:  MOVS            R1, #0x40 ; '@'
28EF5C:  MOVS            R2, #0x31 ; '1'
28EF5E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EF62:  MOV             R0, R4
28EF64:  MOVS            R1, #1
28EF66:  MOVS            R2, #0x32 ; '2'
28EF68:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EF6C:  MOV             R0, R4
28EF6E:  MOVS            R1, #3
28EF70:  MOVS            R2, #0x33 ; '3'
28EF72:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EF76:  MOV             R0, R4
28EF78:  MOVS            R1, #6
28EF7A:  MOVS            R2, #0x34 ; '4'
28EF7C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EF80:  MOV             R0, R4
28EF82:  MOVS            R1, #1
28EF84:  MOVS            R2, #0x35 ; '5'
28EF86:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EF8A:  MOV             R0, R4
28EF8C:  MOVS            R1, #2
28EF8E:  MOVS            R2, #0x36 ; '6'
28EF90:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EF94:  MOV             R0, R4
28EF96:  MOVS            R1, #0
28EF98:  MOVS            R2, #0x37 ; '7'
28EF9A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EF9E:  MOV             R0, R4
28EFA0:  MOVS            R1, #0
28EFA2:  MOVS            R2, #0x38 ; '8'
28EFA4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EFA8:  MOV             R0, R4
28EFAA:  MOVS            R1, #3
28EFAC:  MOVS            R2, #0x39 ; '9'
28EFAE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EFB2:  MOV             R0, R4
28EFB4:  MOVS            R1, #7
28EFB6:  MOVS            R2, #0x3A ; ':'
28EFB8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EFBC:  MOV             R0, R4
28EFBE:  MOVS            R1, #1
28EFC0:  MOVS            R2, #0x3B ; ';'
28EFC2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EFC6:  MOV             R0, R4
28EFC8:  MOVS            R1, #9
28EFCA:  MOVS            R2, #0x3C ; '<'
28EFCC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EFD0:  MOV             R0, R4
28EFD2:  MOVS            R1, #8
28EFD4:  MOVS            R2, #0x3D ; '='
28EFD6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EFDA:  MOV             R0, R4
28EFDC:  MOVS            R1, #0xA
28EFDE:  MOVS            R2, #0x3E ; '>'
28EFE0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EFE4:  MOV             R0, R4
28EFE6:  MOVS            R1, #0xB
28EFE8:  MOVS            R2, #0x3F ; '?'
28EFEA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EFEE:  MOV             R0, R4
28EFF0:  MOVS            R1, #4
28EFF2:  MOVS            R2, #0x40 ; '@'
28EFF4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EFF8:  MOV             R0, R4
28EFFA:  MOVS            R1, #0
28EFFC:  MOVS            R2, #0x40 ; '@'
28EFFE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F002:  MOV             R0, R4
28F004:  MOVS            R1, #1
28F006:  MOVS            R2, #0x41 ; 'A'
28F008:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F00C:  MOV             R0, R4
28F00E:  MOVS            R1, #5
28F010:  MOVS            R2, #0x42 ; 'B'
28F012:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F016:  MOV             R0, R4
28F018:  MOVS            R1, #0
28F01A:  MOVS            R2, #0x43 ; 'C'
28F01C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F020:  MOV             R0, R4
28F022:  MOVS            R1, #5
28F024:  MOVS            R2, #0x45 ; 'E'
28F026:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F02A:  MOV             R0, R4
28F02C:  MOVS            R1, #3
28F02E:  MOVS            R2, #0x44 ; 'D'
28F030:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F034:  MOV             R0, R4
28F036:  MOVS            R1, #0x40 ; '@'
28F038:  MOVS            R2, #0x46 ; 'F'
28F03A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F03E:  MOV             R0, R4
28F040:  MOVS            R1, #0
28F042:  MOVS            R2, #0x47 ; 'G'
28F044:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F048:  MOV             R0, R4
28F04A:  MOVS            R1, #0xA
28F04C:  MOVS            R2, #0x48 ; 'H'
28F04E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F052:  MOV             R0, R4
28F054:  MOVS            R1, #0xB
28F056:  MOVS            R2, #0x49 ; 'I'
28F058:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F05C:  MOV             R0, R4
28F05E:  MOVS            R1, #7
28F060:  MOVS            R2, #0x4A ; 'J'
28F062:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F066:  MOV             R0, R4
28F068:  MOVS            R1, #2
28F06A:  MOVS            R2, #0x4B ; 'K'
28F06C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F070:  MOV             R0, R4
28F072:  MOVS            R1, #0
28F074:  MOVS            R2, #0x4C ; 'L'
28F076:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F07A:  MOV             R0, R4
28F07C:  MOVS            R1, #1
28F07E:  MOVS            R2, #0x4D ; 'M'
28F080:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F084:  MOV             R0, R4
28F086:  MOVS            R1, #1
28F088:  MOVS            R2, #0x4E ; 'N'
28F08A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F08E:  MOV             R0, R4
28F090:  MOVS            R1, #2
28F092:  MOVS            R2, #0x4F ; 'O'
28F094:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F098:  MOV             R0, R4
28F09A:  MOVS            R1, #0
28F09C:  MOVS            R2, #0x52 ; 'R'
28F09E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F0A2:  MOV             R0, R4
28F0A4:  MOVS            R1, #8
28F0A6:  MOVS            R2, #0x53 ; 'S'
28F0A8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F0AC:  MOV             R0, R4
28F0AE:  MOVS            R1, #9
28F0B0:  MOVS            R2, #0x54 ; 'T'
28F0B2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F0B6:  MOV             R0, R4
28F0B8:  MOVS            R1, #0xD
28F0BA:  MOVS            R2, #0x55 ; 'U'
28F0BC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F0C0:  MOV             R0, R4
28F0C2:  MOVS            R1, #7
28F0C4:  MOVS            R2, #0x58 ; 'X'
28F0C6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F0CA:  MOV             R0, R4
28F0CC:  MOVS            R1, #1
28F0CE:  MOVS            R2, #0x59 ; 'Y'
28F0D0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F0D4:  MOV             R0, R4
28F0D6:  MOVS            R1, #1
28F0D8:  MOVS            R2, #0x5E ; '^'
28F0DA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F0DE:  MOV             R0, R4
28F0E0:  MOVS            R1, #6
28F0E2:  MOVS            R2, #0x60 ; '`'
28F0E4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F0E8:  MOV             R0, R4
28F0EA:  MOVS            R1, #7
28F0EC:  MOVS            R2, #0x61 ; 'a'
28F0EE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F0F2:  MOV             R0, R4
28F0F4:  MOVS            R1, #6
28F0F6:  MOVS            R2, #0x64 ; 'd'
28F0F8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F0FC:  MOV             R0, R4
28F0FE:  MOVS            R1, #7
28F100:  MOVS            R2, #0x65 ; 'e'
28F102:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F106:  MOV             R0, R4
28F108:  MOVS            R1, #6
28F10A:  MOVS            R2, #0x67 ; 'g'
28F10C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F110:  MOV             R0, R4
28F112:  POP             {R4,R6,R7,PC}
