; =========================================================
; Game Engine Function: _ZN19CHIDJoystickXbox360C2EPKc
; Address            : 0x28F968 - 0x28FD68
; =========================================================

28F968:  PUSH            {R4,R6,R7,LR}
28F96A:  ADD             R7, SP, #8
28F96C:  MOV             R4, R0
28F96E:  BLX             j__ZN12CHIDJoystickC2EPKc; CHIDJoystick::CHIDJoystick(char const*)
28F972:  LDR             R0, =(_ZTV19CHIDJoystickXbox360_ptr - 0x28F97C)
28F974:  MOVS            R1, #0
28F976:  MOVS            R2, #2
28F978:  ADD             R0, PC; _ZTV19CHIDJoystickXbox360_ptr
28F97A:  LDR             R0, [R0]; `vtable for'CHIDJoystickXbox360 ...
28F97C:  ADDS            R0, #8
28F97E:  STR             R0, [R4]
28F980:  MOV             R0, R4
28F982:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F986:  MOV             R0, R4
28F988:  MOVS            R1, #0
28F98A:  MOVS            R2, #8
28F98C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F990:  MOV             R0, R4
28F992:  MOVS            R1, #1
28F994:  MOVS            R2, #1
28F996:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F99A:  MOV             R0, R4
28F99C:  MOVS            R1, #2
28F99E:  MOVS            R2, #3
28F9A0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F9A4:  MOV             R0, R4
28F9A6:  MOVS            R1, #2
28F9A8:  MOVS            R2, #6
28F9AA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F9AE:  MOV             R0, R4
28F9B0:  MOVS            R1, #3
28F9B2:  MOVS            R2, #5
28F9B4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F9B8:  MOV             R0, R4
28F9BA:  MOVS            R1, #5
28F9BC:  MOVS            R2, #9
28F9BE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F9C2:  MOV             R0, R4
28F9C4:  MOVS            R1, #5
28F9C6:  MOVS            R2, #0xA
28F9C8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F9CC:  MOV             R0, R4
28F9CE:  MOVS            R1, #8
28F9D0:  MOVS            R2, #0xC
28F9D2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F9D6:  MOV             R0, R4
28F9D8:  MOVS            R1, #9
28F9DA:  MOVS            R2, #0xD
28F9DC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F9E0:  MOV             R0, R4
28F9E2:  MOVS            R1, #0xA
28F9E4:  MOVS            R2, #0xE
28F9E6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F9EA:  MOV             R0, R4
28F9EC:  MOVS            R1, #0x44 ; 'D'
28F9EE:  MOVS            R2, #0x10
28F9F0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F9F4:  MOV             R0, R4
28F9F6:  MOVS            R1, #7
28F9F8:  MOVS            R2, #7
28F9FA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28F9FE:  MOV             R0, R4
28FA00:  MOVS            R1, #0x45 ; 'E'
28FA02:  MOVS            R2, #0xF
28FA04:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FA08:  MOV             R0, R4
28FA0A:  MOVS            R1, #0xC
28FA0C:  MOVS            R2, #4
28FA0E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FA12:  MOV             R0, R4
28FA14:  MOVS            R1, #0xC
28FA16:  MOVS            R2, #0xB
28FA18:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FA1C:  MOV             R0, R4
28FA1E:  MOVS            R1, #0xD
28FA20:  MOVS            R2, #0x12
28FA22:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FA26:  MOV             R0, R4
28FA28:  MOVS            R1, #4
28FA2A:  MOVS            R2, #0x11
28FA2C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FA30:  MOV             R0, R4
28FA32:  MOVS            R1, #0x44 ; 'D'
28FA34:  MOVS            R2, #0x13
28FA36:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FA3A:  MOV             R0, R4
28FA3C:  MOVS            R1, #0x45 ; 'E'
28FA3E:  MOVS            R2, #0x14
28FA40:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FA44:  MOV             R0, R4
28FA46:  MOVS            R1, #3
28FA48:  MOVS            R2, #0x16
28FA4A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FA4E:  MOV             R0, R4
28FA50:  MOVS            R1, #0xD
28FA52:  MOVS            R2, #0x17
28FA54:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FA58:  MOV             R0, R4
28FA5A:  MOVS            R1, #1
28FA5C:  MOVS            R2, #0x20 ; ' '
28FA5E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FA62:  MOV             R0, R4
28FA64:  MOVS            R1, #6
28FA66:  MOVS            R2, #0x21 ; '!'
28FA68:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FA6C:  MOV             R0, R4
28FA6E:  MOVS            R1, #0x44 ; 'D'
28FA70:  MOVS            R2, #0x22 ; '"'
28FA72:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FA76:  MOV             R0, R4
28FA78:  MOVS            R1, #0x45 ; 'E'
28FA7A:  MOVS            R2, #0x23 ; '#'
28FA7C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FA80:  MOV             R0, R4
28FA82:  MOVS            R1, #7
28FA84:  MOVS            R2, #0x24 ; '$'
28FA86:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FA8A:  MOV             R0, R4
28FA8C:  MOVS            R1, #0xA
28FA8E:  MOVS            R2, #0x25 ; '%'
28FA90:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FA94:  MOV             R0, R4
28FA96:  MOVS            R1, #0x44 ; 'D'
28FA98:  MOVS            R2, #0x26 ; '&'
28FA9A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FA9E:  MOV             R0, R4
28FAA0:  MOVS            R1, #0x45 ; 'E'
28FAA2:  MOVS            R2, #0x27 ; '''
28FAA4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FAA8:  MOV             R0, R4
28FAAA:  MOVS            R1, #0x40 ; '@'
28FAAC:  MOVS            R2, #0x18
28FAAE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FAB2:  MOV             R0, R4
28FAB4:  MOVS            R1, #0x41 ; 'A'
28FAB6:  MOVS            R2, #0x19
28FAB8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FABC:  MOV             R0, R4
28FABE:  MOVS            R1, #0x42 ; 'B'
28FAC0:  MOVS            R2, #0x1C
28FAC2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FAC6:  MOV             R0, R4
28FAC8:  MOVS            R1, #0x43 ; 'C'
28FACA:  MOVS            R2, #0x1D
28FACC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FAD0:  MOV             R0, R4
28FAD2:  MOVS            R1, #0x40 ; '@'
28FAD4:  MOVS            R2, #0x1E
28FAD6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FADA:  MOV             R0, R4
28FADC:  MOVS            R1, #0x41 ; 'A'
28FADE:  MOVS            R2, #0x1F
28FAE0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FAE4:  MOV             R0, R4
28FAE6:  MOVS            R1, #1
28FAE8:  MOVS            R2, #0x28 ; '('
28FAEA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FAEE:  MOV             R0, R4
28FAF0:  MOVS            R1, #4
28FAF2:  MOVS            R2, #0x29 ; ')'
28FAF4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FAF8:  MOV             R0, R4
28FAFA:  MOVS            R1, #0
28FAFC:  MOVS            R2, #0x29 ; ')'
28FAFE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FB02:  MOV             R0, R4
28FB04:  MOVS            R1, #0xA
28FB06:  MOVS            R2, #0x2A ; '*'
28FB08:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FB0C:  MOV             R0, R4
28FB0E:  MOVS            R1, #0xB
28FB10:  MOVS            R2, #0x2B ; '+'
28FB12:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FB16:  MOV             R0, R4
28FB18:  MOVS            R1, #8
28FB1A:  MOVS            R2, #0x2C ; ','
28FB1C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FB20:  MOV             R0, R4
28FB22:  MOVS            R1, #9
28FB24:  MOVS            R2, #0x2D ; '-'
28FB26:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FB2A:  MOV             R0, R4
28FB2C:  MOVS            R1, #0x41 ; 'A'
28FB2E:  MOVS            R2, #0x2E ; '.'
28FB30:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FB34:  MOV             R0, R4
28FB36:  MOVS            R1, #0x41 ; 'A'
28FB38:  MOVS            R2, #0x2F ; '/'
28FB3A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FB3E:  MOV             R0, R4
28FB40:  MOVS            R1, #0x40 ; '@'
28FB42:  MOVS            R2, #0x30 ; '0'
28FB44:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FB48:  MOV             R0, R4
28FB4A:  MOVS            R1, #0x40 ; '@'
28FB4C:  MOVS            R2, #0x31 ; '1'
28FB4E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FB52:  MOV             R0, R4
28FB54:  MOVS            R1, #1
28FB56:  MOVS            R2, #0x32 ; '2'
28FB58:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FB5C:  MOV             R0, R4
28FB5E:  MOVS            R1, #3
28FB60:  MOVS            R2, #0x33 ; '3'
28FB62:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FB66:  MOV             R0, R4
28FB68:  MOVS            R1, #6
28FB6A:  MOVS            R2, #0x34 ; '4'
28FB6C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FB70:  MOV             R0, R4
28FB72:  MOVS            R1, #1
28FB74:  MOVS            R2, #0x35 ; '5'
28FB76:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FB7A:  MOV             R0, R4
28FB7C:  MOVS            R1, #2
28FB7E:  MOVS            R2, #0x36 ; '6'
28FB80:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FB84:  MOV             R0, R4
28FB86:  MOVS            R1, #0
28FB88:  MOVS            R2, #0x37 ; '7'
28FB8A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FB8E:  MOV             R0, R4
28FB90:  MOVS            R1, #0
28FB92:  MOVS            R2, #0x38 ; '8'
28FB94:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FB98:  MOV             R0, R4
28FB9A:  MOVS            R1, #3
28FB9C:  MOVS            R2, #0x39 ; '9'
28FB9E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FBA2:  MOV             R0, R4
28FBA4:  MOVS            R1, #6
28FBA6:  MOVS            R2, #0x3A ; ':'
28FBA8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FBAC:  MOV             R0, R4
28FBAE:  MOVS            R1, #1
28FBB0:  MOVS            R2, #0x3B ; ';'
28FBB2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FBB6:  MOV             R0, R4
28FBB8:  MOVS            R1, #9
28FBBA:  MOVS            R2, #0x3C ; '<'
28FBBC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FBC0:  MOV             R0, R4
28FBC2:  MOVS            R1, #8
28FBC4:  MOVS            R2, #0x3D ; '='
28FBC6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FBCA:  MOV             R0, R4
28FBCC:  MOVS            R1, #0xA
28FBCE:  MOVS            R2, #0x3E ; '>'
28FBD0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FBD4:  MOV             R0, R4
28FBD6:  MOVS            R1, #0xB
28FBD8:  MOVS            R2, #0x3F ; '?'
28FBDA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FBDE:  MOV             R0, R4
28FBE0:  MOVS            R1, #4
28FBE2:  MOVS            R2, #0x40 ; '@'
28FBE4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FBE8:  MOV             R0, R4
28FBEA:  MOVS            R1, #0
28FBEC:  MOVS            R2, #0x40 ; '@'
28FBEE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FBF2:  MOV             R0, R4
28FBF4:  MOVS            R1, #1
28FBF6:  MOVS            R2, #0x41 ; 'A'
28FBF8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FBFC:  MOV             R0, R4
28FBFE:  MOVS            R1, #5
28FC00:  MOVS            R2, #0x42 ; 'B'
28FC02:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FC06:  MOV             R0, R4
28FC08:  MOVS            R1, #0
28FC0A:  MOVS            R2, #0x43 ; 'C'
28FC0C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FC10:  MOV             R0, R4
28FC12:  MOVS            R1, #5
28FC14:  MOVS            R2, #0x45 ; 'E'
28FC16:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FC1A:  MOV             R0, R4
28FC1C:  MOVS            R1, #3
28FC1E:  MOVS            R2, #0x44 ; 'D'
28FC20:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FC24:  MOV             R0, R4
28FC26:  MOVS            R1, #0x40 ; '@'
28FC28:  MOVS            R2, #0x46 ; 'F'
28FC2A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FC2E:  MOV             R0, R4
28FC30:  MOVS            R1, #0
28FC32:  MOVS            R2, #0x47 ; 'G'
28FC34:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FC38:  MOV             R0, R4
28FC3A:  MOVS            R1, #0xA
28FC3C:  MOVS            R2, #0x48 ; 'H'
28FC3E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FC42:  MOV             R0, R4
28FC44:  MOVS            R1, #0xB
28FC46:  MOVS            R2, #0x49 ; 'I'
28FC48:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FC4C:  MOV             R0, R4
28FC4E:  MOVS            R1, #7
28FC50:  MOVS            R2, #0x4A ; 'J'
28FC52:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FC56:  MOV             R0, R4
28FC58:  MOVS            R1, #2
28FC5A:  MOVS            R2, #0x4B ; 'K'
28FC5C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FC60:  MOV             R0, R4
28FC62:  MOVS            R1, #0
28FC64:  MOVS            R2, #0x4C ; 'L'
28FC66:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FC6A:  MOV             R0, R4
28FC6C:  MOVS            R1, #1
28FC6E:  MOVS            R2, #0x4D ; 'M'
28FC70:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FC74:  MOV             R0, R4
28FC76:  MOVS            R1, #1
28FC78:  MOVS            R2, #0x4E ; 'N'
28FC7A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FC7E:  MOV             R0, R4
28FC80:  MOVS            R1, #2
28FC82:  MOVS            R2, #0x4F ; 'O'
28FC84:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FC88:  MOV             R0, R4
28FC8A:  MOVS            R1, #0x44 ; 'D'
28FC8C:  MOVS            R2, #0x51 ; 'Q'
28FC8E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FC92:  MOV             R0, R4
28FC94:  MOVS            R1, #0x45 ; 'E'
28FC96:  MOVS            R2, #0x50 ; 'P'
28FC98:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FC9C:  MOV             R0, R4
28FC9E:  MOVS            R1, #0
28FCA0:  MOVS            R2, #0x52 ; 'R'
28FCA2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FCA6:  MOV             R0, R4
28FCA8:  MOVS            R1, #0xA
28FCAA:  MOVS            R2, #0x53 ; 'S'
28FCAC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FCB0:  MOV             R0, R4
28FCB2:  MOVS            R1, #0xB
28FCB4:  MOVS            R2, #0x54 ; 'T'
28FCB6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FCBA:  MOV             R0, R4
28FCBC:  MOVS            R1, #0xD
28FCBE:  MOVS            R2, #0x55 ; 'U'
28FCC0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FCC4:  MOV             R0, R4
28FCC6:  MOVS            R1, #7
28FCC8:  MOVS            R2, #0x58 ; 'X'
28FCCA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FCCE:  MOV             R0, R4
28FCD0:  MOVS            R1, #1
28FCD2:  MOVS            R2, #0x59 ; 'Y'
28FCD4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FCD8:  MOV             R0, R4
28FCDA:  MOVS            R1, #1
28FCDC:  MOVS            R2, #0x5E ; '^'
28FCDE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FCE2:  MOV             R0, R4
28FCE4:  MOVS            R1, #6
28FCE6:  MOVS            R2, #0x5F ; '_'
28FCE8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FCEC:  MOV             R0, R4
28FCEE:  MOVS            R1, #6
28FCF0:  MOVS            R2, #0x60 ; '`'
28FCF2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FCF6:  MOV             R0, R4
28FCF8:  MOVS            R1, #7
28FCFA:  MOVS            R2, #0x61 ; 'a'
28FCFC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FD00:  MOV             R0, R4
28FD02:  MOVS            R1, #0
28FD04:  MOVS            R2, #0x62 ; 'b'
28FD06:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FD0A:  MOV             R0, R4
28FD0C:  MOVS            R1, #2
28FD0E:  MOVS            R2, #0x63 ; 'c'
28FD10:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FD14:  MOV             R0, R4
28FD16:  MOVS            R1, #0x44 ; 'D'
28FD18:  MOVS            R2, #0x64 ; 'd'
28FD1A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FD1E:  MOV             R0, R4
28FD20:  MOVS            R1, #0x45 ; 'E'
28FD22:  MOVS            R2, #0x65 ; 'e'
28FD24:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FD28:  MOV             R0, R4
28FD2A:  MOVS            R1, #0xC
28FD2C:  MOVS            R2, #0x66 ; 'f'
28FD2E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FD32:  MOV             R0, R4
28FD34:  MOVS            R1, #6
28FD36:  MOVS            R2, #0x67 ; 'g'
28FD38:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FD3C:  MOV             R0, R4
28FD3E:  MOVS            R1, #3
28FD40:  MOVS            R2, #0x68 ; 'h'
28FD42:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FD46:  MOV             R0, R4
28FD48:  MOVS            R1, #0
28FD4A:  MOVS            R2, #0x69 ; 'i'
28FD4C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FD50:  MOV             R0, R4
28FD52:  MOVS            R1, #2
28FD54:  MOVS            R2, #0x6A ; 'j'
28FD56:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FD5A:  MOV             R0, R4
28FD5C:  MOVS            R1, #1
28FD5E:  MOVS            R2, #0x6B ; 'k'
28FD60:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FD64:  MOV             R0, R4
28FD66:  POP             {R4,R6,R7,PC}
