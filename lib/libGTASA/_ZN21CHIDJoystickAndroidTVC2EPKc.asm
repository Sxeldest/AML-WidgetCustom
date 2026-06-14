; =========================================================
; Game Engine Function: _ZN21CHIDJoystickAndroidTVC2EPKc
; Address            : 0x28DB10 - 0x28DF06
; =========================================================

28DB10:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CHIDJoystickAndroidTV::CHIDJoystickAndroidTV(char const*)'
28DB12:  ADD             R7, SP, #8
28DB14:  MOV             R4, R0
28DB16:  BLX             j__ZN12CHIDJoystickC2EPKc; CHIDJoystick::CHIDJoystick(char const*)
28DB1A:  LDR             R0, =(_ZTV21CHIDJoystickAndroidTV_ptr - 0x28DB24)
28DB1C:  MOVS            R1, #0
28DB1E:  MOVS            R2, #2
28DB20:  ADD             R0, PC; _ZTV21CHIDJoystickAndroidTV_ptr
28DB22:  LDR             R0, [R0]; `vtable for'CHIDJoystickAndroidTV ...
28DB24:  ADDS            R0, #8
28DB26:  STR             R0, [R4]
28DB28:  MOV             R0, R4
28DB2A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DB2E:  MOV             R0, R4
28DB30:  MOVS            R1, #0x45 ; 'E'
28DB32:  MOVS            R2, #8
28DB34:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DB38:  MOV             R0, R4
28DB3A:  MOVS            R1, #1
28DB3C:  MOVS            R2, #1
28DB3E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DB42:  MOV             R0, R4
28DB44:  MOVS            R1, #2
28DB46:  MOVS            R2, #3
28DB48:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DB4C:  MOV             R0, R4
28DB4E:  MOVS            R1, #0x44 ; 'D'
28DB50:  MOVS            R2, #6
28DB52:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DB56:  MOV             R0, R4
28DB58:  MOVS            R1, #3
28DB5A:  MOVS            R2, #5
28DB5C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DB60:  MOV             R0, R4
28DB62:  MOVS            R1, #5
28DB64:  MOVS            R2, #9
28DB66:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DB6A:  MOV             R0, R4
28DB6C:  MOVS            R1, #5
28DB6E:  MOVS            R2, #0xA
28DB70:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DB74:  MOV             R0, R4
28DB76:  MOVS            R1, #8
28DB78:  MOVS            R2, #0xC
28DB7A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DB7E:  MOV             R0, R4
28DB80:  MOVS            R1, #9
28DB82:  MOVS            R2, #0xD
28DB84:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DB88:  MOV             R0, R4
28DB8A:  MOVS            R1, #0xA
28DB8C:  MOVS            R2, #0xE
28DB8E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DB92:  MOV             R0, R4
28DB94:  MOVS            R1, #6
28DB96:  MOVS            R2, #0x10
28DB98:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DB9C:  MOV             R0, R4
28DB9E:  MOVS            R1, #2
28DBA0:  MOVS            R2, #7
28DBA2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DBA6:  MOV             R0, R4
28DBA8:  MOVS            R1, #7
28DBAA:  MOVS            R2, #0xF
28DBAC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DBB0:  MOV             R0, R4
28DBB2:  MOVS            R1, #0xC
28DBB4:  MOVS            R2, #4
28DBB6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DBBA:  MOV             R0, R4
28DBBC:  MOVS            R1, #0xC
28DBBE:  MOVS            R2, #0xB
28DBC0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DBC4:  MOV             R0, R4
28DBC6:  MOVS            R1, #0xD
28DBC8:  MOVS            R2, #0x12
28DBCA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DBCE:  MOV             R0, R4
28DBD0:  MOVS            R1, #4
28DBD2:  MOVS            R2, #0x11
28DBD4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DBD8:  MOV             R0, R4
28DBDA:  MOVS            R1, #6
28DBDC:  MOVS            R2, #0x13
28DBDE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DBE2:  MOV             R0, R4
28DBE4:  MOVS            R1, #7
28DBE6:  MOVS            R2, #0x14
28DBE8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DBEC:  MOV             R0, R4
28DBEE:  MOVS            R1, #3
28DBF0:  MOVS            R2, #0x16
28DBF2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DBF6:  MOV             R0, R4
28DBF8:  MOVS            R1, #0xD
28DBFA:  MOVS            R2, #0x17
28DBFC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DC00:  MOV             R0, R4
28DC02:  MOVS            R1, #1
28DC04:  MOVS            R2, #0x20 ; ' '
28DC06:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DC0A:  MOV             R0, R4
28DC0C:  MOVS            R1, #0x44 ; 'D'
28DC0E:  MOVS            R2, #0x21 ; '!'
28DC10:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DC14:  MOV             R0, R4
28DC16:  MOVS            R1, #6
28DC18:  MOVS            R2, #0x22 ; '"'
28DC1A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DC1E:  MOV             R0, R4
28DC20:  MOVS            R1, #7
28DC22:  MOVS            R2, #0x23 ; '#'
28DC24:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DC28:  MOV             R0, R4
28DC2A:  MOVS            R1, #0x45 ; 'E'
28DC2C:  MOVS            R2, #0x24 ; '$'
28DC2E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DC32:  MOV             R0, R4
28DC34:  MOVS            R1, #0xA
28DC36:  MOVS            R2, #0x25 ; '%'
28DC38:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DC3C:  MOV             R0, R4
28DC3E:  MOVS            R1, #6
28DC40:  MOVS            R2, #0x26 ; '&'
28DC42:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DC46:  MOV             R0, R4
28DC48:  MOVS            R1, #7
28DC4A:  MOVS            R2, #0x27 ; '''
28DC4C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DC50:  MOV             R0, R4
28DC52:  MOVS            R1, #0x40 ; '@'
28DC54:  MOVS            R2, #0x18
28DC56:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DC5A:  MOV             R0, R4
28DC5C:  MOVS            R1, #0x41 ; 'A'
28DC5E:  MOVS            R2, #0x19
28DC60:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DC64:  MOV             R0, R4
28DC66:  MOVS            R1, #0x42 ; 'B'
28DC68:  MOVS            R2, #0x1C
28DC6A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DC6E:  MOV             R0, R4
28DC70:  MOVS            R1, #0x43 ; 'C'
28DC72:  MOVS            R2, #0x1D
28DC74:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DC78:  MOV             R0, R4
28DC7A:  MOVS            R1, #0x40 ; '@'
28DC7C:  MOVS            R2, #0x1E
28DC7E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DC82:  MOV             R0, R4
28DC84:  MOVS            R1, #0x41 ; 'A'
28DC86:  MOVS            R2, #0x1F
28DC88:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DC8C:  MOV             R0, R4
28DC8E:  MOVS            R1, #1
28DC90:  MOVS            R2, #0x28 ; '('
28DC92:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DC96:  MOV             R0, R4
28DC98:  MOVS            R1, #4
28DC9A:  MOVS            R2, #0x29 ; ')'
28DC9C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DCA0:  MOV             R0, R4
28DCA2:  MOVS            R1, #0
28DCA4:  MOVS            R2, #0x29 ; ')'
28DCA6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DCAA:  MOV             R0, R4
28DCAC:  MOVS            R1, #0xA
28DCAE:  MOVS            R2, #0x2A ; '*'
28DCB0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DCB4:  MOV             R0, R4
28DCB6:  MOVS            R1, #0xB
28DCB8:  MOVS            R2, #0x2B ; '+'
28DCBA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DCBE:  MOV             R0, R4
28DCC0:  MOVS            R1, #8
28DCC2:  MOVS            R2, #0x2C ; ','
28DCC4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DCC8:  MOV             R0, R4
28DCCA:  MOVS            R1, #9
28DCCC:  MOVS            R2, #0x2D ; '-'
28DCCE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DCD2:  MOV             R0, R4
28DCD4:  MOVS            R1, #0x41 ; 'A'
28DCD6:  MOVS            R2, #0x2E ; '.'
28DCD8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DCDC:  MOV             R0, R4
28DCDE:  MOVS            R1, #0x41 ; 'A'
28DCE0:  MOVS            R2, #0x2F ; '/'
28DCE2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DCE6:  MOV             R0, R4
28DCE8:  MOVS            R1, #0x40 ; '@'
28DCEA:  MOVS            R2, #0x30 ; '0'
28DCEC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DCF0:  MOV             R0, R4
28DCF2:  MOVS            R1, #0x40 ; '@'
28DCF4:  MOVS            R2, #0x31 ; '1'
28DCF6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DCFA:  MOV             R0, R4
28DCFC:  MOVS            R1, #1
28DCFE:  MOVS            R2, #0x32 ; '2'
28DD00:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DD04:  MOV             R0, R4
28DD06:  MOVS            R1, #3
28DD08:  MOVS            R2, #0x33 ; '3'
28DD0A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DD0E:  MOV             R0, R4
28DD10:  MOVS            R1, #0x44 ; 'D'
28DD12:  MOVS            R2, #0x34 ; '4'
28DD14:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DD18:  MOV             R0, R4
28DD1A:  MOVS            R1, #1
28DD1C:  MOVS            R2, #0x35 ; '5'
28DD1E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DD22:  MOV             R0, R4
28DD24:  MOVS            R1, #2
28DD26:  MOVS            R2, #0x36 ; '6'
28DD28:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DD2C:  MOV             R0, R4
28DD2E:  MOVS            R1, #0
28DD30:  MOVS            R2, #0x37 ; '7'
28DD32:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DD36:  MOV             R0, R4
28DD38:  MOVS            R1, #0
28DD3A:  MOVS            R2, #0x38 ; '8'
28DD3C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DD40:  MOV             R0, R4
28DD42:  MOVS            R1, #3
28DD44:  MOVS            R2, #0x39 ; '9'
28DD46:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DD4A:  MOV             R0, R4
28DD4C:  MOVS            R1, #0
28DD4E:  MOVS            R2, #0x3A ; ':'
28DD50:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DD54:  MOV             R0, R4
28DD56:  MOVS            R1, #1
28DD58:  MOVS            R2, #0x3B ; ';'
28DD5A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DD5E:  MOV             R0, R4
28DD60:  MOVS            R1, #9
28DD62:  MOVS            R2, #0x3C ; '<'
28DD64:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DD68:  MOV             R0, R4
28DD6A:  MOVS            R1, #8
28DD6C:  MOVS            R2, #0x3D ; '='
28DD6E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DD72:  MOV             R0, R4
28DD74:  MOVS            R1, #0xA
28DD76:  MOVS            R2, #0x3E ; '>'
28DD78:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DD7C:  MOV             R0, R4
28DD7E:  MOVS            R1, #0xB
28DD80:  MOVS            R2, #0x3F ; '?'
28DD82:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DD86:  MOV             R0, R4
28DD88:  MOVS            R1, #4
28DD8A:  MOVS            R2, #0x40 ; '@'
28DD8C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DD90:  MOV             R0, R4
28DD92:  MOVS            R1, #0
28DD94:  MOVS            R2, #0x40 ; '@'
28DD96:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DD9A:  MOV             R0, R4
28DD9C:  MOVS            R1, #1
28DD9E:  MOVS            R2, #0x41 ; 'A'
28DDA0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DDA4:  MOV             R0, R4
28DDA6:  MOVS            R1, #3
28DDA8:  MOVS            R2, #0x42 ; 'B'
28DDAA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DDAE:  MOV             R0, R4
28DDB0:  MOVS            R1, #0
28DDB2:  MOVS            R2, #0x43 ; 'C'
28DDB4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DDB8:  MOV             R0, R4
28DDBA:  MOVS            R1, #3
28DDBC:  MOVS            R2, #0x44 ; 'D'
28DDBE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DDC2:  MOV             R0, R4
28DDC4:  MOVS            R1, #0x40 ; '@'
28DDC6:  MOVS            R2, #0x46 ; 'F'
28DDC8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DDCC:  MOV             R0, R4
28DDCE:  MOVS            R1, #2
28DDD0:  MOVS            R2, #0x47 ; 'G'
28DDD2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DDD6:  MOV             R0, R4
28DDD8:  MOVS            R1, #0xA
28DDDA:  MOVS            R2, #0x48 ; 'H'
28DDDC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DDE0:  MOV             R0, R4
28DDE2:  MOVS            R1, #0xB
28DDE4:  MOVS            R2, #0x49 ; 'I'
28DDE6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DDEA:  MOV             R0, R4
28DDEC:  MOVS            R1, #7
28DDEE:  MOVS            R2, #0x4A ; 'J'
28DDF0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DDF4:  MOV             R0, R4
28DDF6:  MOVS            R1, #2
28DDF8:  MOVS            R2, #0x4B ; 'K'
28DDFA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DDFE:  MOV             R0, R4
28DE00:  MOVS            R1, #0
28DE02:  MOVS            R2, #0x4C ; 'L'
28DE04:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DE08:  MOV             R0, R4
28DE0A:  MOVS            R1, #1
28DE0C:  MOVS            R2, #0x4D ; 'M'
28DE0E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DE12:  MOV             R0, R4
28DE14:  MOVS            R1, #1
28DE16:  MOVS            R2, #0x4E ; 'N'
28DE18:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DE1C:  MOV             R0, R4
28DE1E:  MOVS            R1, #2
28DE20:  MOVS            R2, #0x4F ; 'O'
28DE22:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DE26:  MOV             R0, R4
28DE28:  MOVS            R1, #6
28DE2A:  MOVS            R2, #0x51 ; 'Q'
28DE2C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DE30:  MOV             R0, R4
28DE32:  MOVS            R1, #7
28DE34:  MOVS            R2, #0x50 ; 'P'
28DE36:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DE3A:  MOV             R0, R4
28DE3C:  MOVS            R1, #0
28DE3E:  MOVS            R2, #0x52 ; 'R'
28DE40:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DE44:  MOV             R0, R4
28DE46:  MOVS            R1, #0xA
28DE48:  MOVS            R2, #0x53 ; 'S'
28DE4A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DE4E:  MOV             R0, R4
28DE50:  MOVS            R1, #0xB
28DE52:  MOVS            R2, #0x54 ; 'T'
28DE54:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DE58:  MOV             R0, R4
28DE5A:  MOVS            R1, #0xD
28DE5C:  MOVS            R2, #0x55 ; 'U'
28DE5E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DE62:  MOV             R0, R4
28DE64:  MOVS            R1, #1
28DE66:  MOVS            R2, #0x58 ; 'X'
28DE68:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DE6C:  MOV             R0, R4
28DE6E:  MOVS            R1, #0
28DE70:  MOVS            R2, #0x59 ; 'Y'
28DE72:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DE76:  MOV             R0, R4
28DE78:  MOVS            R1, #0
28DE7A:  MOVS            R2, #0x5E ; '^'
28DE7C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DE80:  MOV             R0, R4
28DE82:  MOVS            R1, #0
28DE84:  MOVS            R2, #0x5F ; '_'
28DE86:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DE8A:  MOV             R0, R4
28DE8C:  MOVS            R1, #6
28DE8E:  MOVS            R2, #0x60 ; '`'
28DE90:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DE94:  MOV             R0, R4
28DE96:  MOVS            R1, #7
28DE98:  MOVS            R2, #0x61 ; 'a'
28DE9A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DE9E:  MOV             R0, R4
28DEA0:  MOVS            R1, #0
28DEA2:  MOVS            R2, #0x62 ; 'b'
28DEA4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DEA8:  MOV             R0, R4
28DEAA:  MOVS            R1, #2
28DEAC:  MOVS            R2, #0x63 ; 'c'
28DEAE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DEB2:  MOV             R0, R4
28DEB4:  MOVS            R1, #6
28DEB6:  MOVS            R2, #0x64 ; 'd'
28DEB8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DEBC:  MOV             R0, R4
28DEBE:  MOVS            R1, #7
28DEC0:  MOVS            R2, #0x65 ; 'e'
28DEC2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DEC6:  MOV             R0, R4
28DEC8:  MOVS            R1, #0xC
28DECA:  MOVS            R2, #0x66 ; 'f'
28DECC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DED0:  MOV             R0, R4
28DED2:  MOVS            R1, #6
28DED4:  MOVS            R2, #0x67 ; 'g'
28DED6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DEDA:  MOV             R0, R4
28DEDC:  MOVS            R1, #3
28DEDE:  MOVS            R2, #0x68 ; 'h'
28DEE0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DEE4:  MOV             R0, R4
28DEE6:  MOVS            R1, #0
28DEE8:  MOVS            R2, #0x69 ; 'i'
28DEEA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DEEE:  MOV             R0, R4
28DEF0:  MOVS            R1, #2
28DEF2:  MOVS            R2, #0x6A ; 'j'
28DEF4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DEF8:  MOV             R0, R4
28DEFA:  MOVS            R1, #1
28DEFC:  MOVS            R2, #0x6B ; 'k'
28DEFE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28DF02:  MOV             R0, R4
28DF04:  POP             {R4,R6,R7,PC}
