; =========================================================
; Game Engine Function: _ZN22CHIDJoystickMogaPocketC2EPKc
; Address            : 0x28E9A8 - 0x28EC54
; =========================================================

28E9A8:  PUSH            {R4,R6,R7,LR}; Alternative name is 'CHIDJoystickMogaPocket::CHIDJoystickMogaPocket(char const*)'
28E9AA:  ADD             R7, SP, #8
28E9AC:  MOV             R4, R0
28E9AE:  BLX             j__ZN12CHIDJoystickC2EPKc; CHIDJoystick::CHIDJoystick(char const*)
28E9B2:  LDR             R0, =(_ZTV22CHIDJoystickMogaPocket_ptr - 0x28E9BC)
28E9B4:  MOVS            R1, #0
28E9B6:  MOVS            R2, #2
28E9B8:  ADD             R0, PC; _ZTV22CHIDJoystickMogaPocket_ptr
28E9BA:  LDR             R0, [R0]; `vtable for'CHIDJoystickMogaPocket ...
28E9BC:  ADDS            R0, #8
28E9BE:  STR             R0, [R4]
28E9C0:  MOV             R0, R4
28E9C2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E9C6:  MOV             R0, R4
28E9C8:  MOVS            R1, #7
28E9CA:  MOVS            R2, #8
28E9CC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E9D0:  MOV             R0, R4
28E9D2:  MOVS            R1, #1
28E9D4:  MOVS            R2, #1
28E9D6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E9DA:  MOV             R0, R4
28E9DC:  MOVS            R1, #2
28E9DE:  MOVS            R2, #3
28E9E0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E9E4:  MOV             R0, R4
28E9E6:  MOVS            R1, #6
28E9E8:  MOVS            R2, #6
28E9EA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E9EE:  MOV             R0, R4
28E9F0:  MOVS            R1, #3
28E9F2:  MOVS            R2, #5
28E9F4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28E9F8:  MOV             R0, R4
28E9FA:  MOVS            R1, #5
28E9FC:  MOVS            R2, #9
28E9FE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EA02:  MOV             R0, R4
28EA04:  MOVS            R1, #5
28EA06:  MOVS            R2, #0xA
28EA08:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EA0C:  MOV             R0, R4
28EA0E:  MOVS            R1, #2
28EA10:  MOVS            R2, #7
28EA12:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EA16:  MOV             R0, R4
28EA18:  MOVS            R1, #4
28EA1A:  MOVS            R2, #0x11
28EA1C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EA20:  MOV             R0, R4
28EA22:  MOVS            R1, #3
28EA24:  MOVS            R2, #0x16
28EA26:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EA2A:  MOV             R0, R4
28EA2C:  MOVS            R1, #1
28EA2E:  MOVS            R2, #0x20 ; ' '
28EA30:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EA34:  MOV             R0, R4
28EA36:  MOVS            R1, #6
28EA38:  MOVS            R2, #0x21 ; '!'
28EA3A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EA3E:  MOV             R0, R4
28EA40:  MOVS            R1, #2
28EA42:  MOVS            R2, #0x22 ; '"'
28EA44:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EA48:  MOV             R0, R4
28EA4A:  MOVS            R1, #0
28EA4C:  MOVS            R2, #0x23 ; '#'
28EA4E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EA52:  MOV             R0, R4
28EA54:  MOVS            R1, #7
28EA56:  MOVS            R2, #0x24 ; '$'
28EA58:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EA5C:  MOV             R0, R4
28EA5E:  MOVS            R1, #0
28EA60:  MOVS            R2, #0x25 ; '%'
28EA62:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EA66:  MOV             R0, R4
28EA68:  MOVS            R1, #0x40 ; '@'
28EA6A:  MOVS            R2, #0x18
28EA6C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EA70:  MOV             R0, R4
28EA72:  MOVS            R1, #0x41 ; 'A'
28EA74:  MOVS            R2, #0x19
28EA76:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EA7A:  MOV             R0, R4
28EA7C:  MOVS            R1, #0x42 ; 'B'
28EA7E:  MOVS            R2, #0x1C
28EA80:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EA84:  MOV             R0, R4
28EA86:  MOVS            R1, #0x43 ; 'C'
28EA88:  MOVS            R2, #0x1D
28EA8A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EA8E:  MOV             R0, R4
28EA90:  MOVS            R1, #0x40 ; '@'
28EA92:  MOVS            R2, #0x1E
28EA94:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EA98:  MOV             R0, R4
28EA9A:  MOVS            R1, #0x41 ; 'A'
28EA9C:  MOVS            R2, #0x1F
28EA9E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EAA2:  MOV             R0, R4
28EAA4:  MOVS            R1, #1
28EAA6:  MOVS            R2, #0x28 ; '('
28EAA8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EAAC:  MOV             R0, R4
28EAAE:  MOVS            R1, #4
28EAB0:  MOVS            R2, #0x29 ; ')'
28EAB2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EAB6:  MOV             R0, R4
28EAB8:  MOVS            R1, #0
28EABA:  MOVS            R2, #0x29 ; ')'
28EABC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EAC0:  MOV             R0, R4
28EAC2:  MOVS            R1, #0x41 ; 'A'
28EAC4:  MOVS            R2, #0x2E ; '.'
28EAC6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EACA:  MOV             R0, R4
28EACC:  MOVS            R1, #0x41 ; 'A'
28EACE:  MOVS            R2, #0x2F ; '/'
28EAD0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EAD4:  MOV             R0, R4
28EAD6:  MOVS            R1, #0x40 ; '@'
28EAD8:  MOVS            R2, #0x30 ; '0'
28EADA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EADE:  MOV             R0, R4
28EAE0:  MOVS            R1, #0x40 ; '@'
28EAE2:  MOVS            R2, #0x31 ; '1'
28EAE4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EAE8:  MOV             R0, R4
28EAEA:  MOVS            R1, #1
28EAEC:  MOVS            R2, #0x32 ; '2'
28EAEE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EAF2:  MOV             R0, R4
28EAF4:  MOVS            R1, #3
28EAF6:  MOVS            R2, #0x33 ; '3'
28EAF8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EAFC:  MOV             R0, R4
28EAFE:  MOVS            R1, #6
28EB00:  MOVS            R2, #0x34 ; '4'
28EB02:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EB06:  MOV             R0, R4
28EB08:  MOVS            R1, #1
28EB0A:  MOVS            R2, #0x35 ; '5'
28EB0C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EB10:  MOV             R0, R4
28EB12:  MOVS            R1, #2
28EB14:  MOVS            R2, #0x36 ; '6'
28EB16:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EB1A:  MOV             R0, R4
28EB1C:  MOVS            R1, #0
28EB1E:  MOVS            R2, #0x37 ; '7'
28EB20:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EB24:  MOV             R0, R4
28EB26:  MOVS            R1, #0
28EB28:  MOVS            R2, #0x38 ; '8'
28EB2A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EB2E:  MOV             R0, R4
28EB30:  MOVS            R1, #3
28EB32:  MOVS            R2, #0x39 ; '9'
28EB34:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EB38:  MOV             R0, R4
28EB3A:  MOVS            R1, #1
28EB3C:  MOVS            R2, #0x3B ; ';'
28EB3E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EB42:  MOV             R0, R4
28EB44:  MOVS            R1, #4
28EB46:  MOVS            R2, #0x40 ; '@'
28EB48:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EB4C:  MOV             R0, R4
28EB4E:  MOVS            R1, #0
28EB50:  MOVS            R2, #0x40 ; '@'
28EB52:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EB56:  MOV             R0, R4
28EB58:  MOVS            R1, #1
28EB5A:  MOVS            R2, #0x41 ; 'A'
28EB5C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EB60:  MOV             R0, R4
28EB62:  MOVS            R1, #5
28EB64:  MOVS            R2, #0x42 ; 'B'
28EB66:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EB6A:  MOV             R0, R4
28EB6C:  MOVS            R1, #0
28EB6E:  MOVS            R2, #0x43 ; 'C'
28EB70:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EB74:  MOV             R0, R4
28EB76:  MOVS            R1, #5
28EB78:  MOVS            R2, #0x45 ; 'E'
28EB7A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EB7E:  MOV             R0, R4
28EB80:  MOVS            R1, #3
28EB82:  MOVS            R2, #0x44 ; 'D'
28EB84:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EB88:  MOV             R0, R4
28EB8A:  MOVS            R1, #0x40 ; '@'
28EB8C:  MOVS            R2, #0x46 ; 'F'
28EB8E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EB92:  MOV             R0, R4
28EB94:  MOVS            R1, #0
28EB96:  MOVS            R2, #0x47 ; 'G'
28EB98:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EB9C:  MOV             R0, R4
28EB9E:  MOVS            R1, #6
28EBA0:  MOVS            R2, #0x48 ; 'H'
28EBA2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EBA6:  MOV             R0, R4
28EBA8:  MOVS            R1, #7
28EBAA:  MOVS            R2, #0x49 ; 'I'
28EBAC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EBB0:  MOV             R0, R4
28EBB2:  MOVS            R1, #7
28EBB4:  MOVS            R2, #0x4A ; 'J'
28EBB6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EBBA:  MOV             R0, R4
28EBBC:  MOVS            R1, #2
28EBBE:  MOVS            R2, #0x4B ; 'K'
28EBC0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EBC4:  MOV             R0, R4
28EBC6:  MOVS            R1, #0
28EBC8:  MOVS            R2, #0x4C ; 'L'
28EBCA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EBCE:  MOV             R0, R4
28EBD0:  MOVS            R1, #1
28EBD2:  MOVS            R2, #0x4D ; 'M'
28EBD4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EBD8:  MOV             R0, R4
28EBDA:  MOVS            R1, #1
28EBDC:  MOVS            R2, #0x4E ; 'N'
28EBDE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EBE2:  MOV             R0, R4
28EBE4:  MOVS            R1, #2
28EBE6:  MOVS            R2, #0x4F ; 'O'
28EBE8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EBEC:  MOV             R0, R4
28EBEE:  MOVS            R1, #0
28EBF0:  MOVS            R2, #0x52 ; 'R'
28EBF2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EBF6:  MOV             R0, R4
28EBF8:  MOVS            R1, #9
28EBFA:  MOVS            R2, #0x55 ; 'U'
28EBFC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EC00:  MOV             R0, R4
28EC02:  MOVS            R1, #0
28EC04:  MOVS            R2, #0x58 ; 'X'
28EC06:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EC0A:  MOV             R0, R4
28EC0C:  MOVS            R1, #1
28EC0E:  MOVS            R2, #0x59 ; 'Y'
28EC10:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EC14:  MOV             R0, R4
28EC16:  MOVS            R1, #1
28EC18:  MOVS            R2, #0x5E ; '^'
28EC1A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EC1E:  MOV             R0, R4
28EC20:  MOVS            R1, #6
28EC22:  MOVS            R2, #0x60 ; '`'
28EC24:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EC28:  MOV             R0, R4
28EC2A:  MOVS            R1, #7
28EC2C:  MOVS            R2, #0x61 ; 'a'
28EC2E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EC32:  MOV             R0, R4
28EC34:  MOVS            R1, #6
28EC36:  MOVS            R2, #0x64 ; 'd'
28EC38:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EC3C:  MOV             R0, R4
28EC3E:  MOVS            R1, #7
28EC40:  MOVS            R2, #0x65 ; 'e'
28EC42:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EC46:  MOV             R0, R4
28EC48:  MOVS            R1, #6
28EC4A:  MOVS            R2, #0x67 ; 'g'
28EC4C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28EC50:  MOV             R0, R4
28EC52:  POP             {R4,R6,R7,PC}
