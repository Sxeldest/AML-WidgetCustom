; =========================================================
; Game Engine Function: _ZN27CHIDJoystickXbox360StandardC2EPKc
; Address            : 0x28FFC4 - 0x2903C4
; =========================================================

28FFC4:  PUSH            {R4,R6,R7,LR}
28FFC6:  ADD             R7, SP, #8
28FFC8:  MOV             R4, R0
28FFCA:  BLX             j__ZN12CHIDJoystickC2EPKc; CHIDJoystick::CHIDJoystick(char const*)
28FFCE:  LDR             R0, =(_ZTV27CHIDJoystickXbox360Standard_ptr - 0x28FFD8)
28FFD0:  MOVS            R1, #0
28FFD2:  MOVS            R2, #2
28FFD4:  ADD             R0, PC; _ZTV27CHIDJoystickXbox360Standard_ptr
28FFD6:  LDR             R0, [R0]; `vtable for'CHIDJoystickXbox360Standard ...
28FFD8:  ADDS            R0, #8
28FFDA:  STR             R0, [R4]
28FFDC:  MOV             R0, R4
28FFDE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FFE2:  MOV             R0, R4
28FFE4:  MOVS            R1, #0x45 ; 'E'
28FFE6:  MOVS            R2, #8
28FFE8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FFEC:  MOV             R0, R4
28FFEE:  MOVS            R1, #1
28FFF0:  MOVS            R2, #1
28FFF2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
28FFF6:  MOV             R0, R4
28FFF8:  MOVS            R1, #2
28FFFA:  MOVS            R2, #3
28FFFC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290000:  MOV             R0, R4
290002:  MOVS            R1, #0x44 ; 'D'
290004:  MOVS            R2, #6
290006:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
29000A:  MOV             R0, R4
29000C:  MOVS            R1, #3
29000E:  MOVS            R2, #5
290010:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290014:  MOV             R0, R4
290016:  MOVS            R1, #5
290018:  MOVS            R2, #9
29001A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
29001E:  MOV             R0, R4
290020:  MOVS            R1, #5
290022:  MOVS            R2, #0xA
290024:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290028:  MOV             R0, R4
29002A:  MOVS            R1, #8
29002C:  MOVS            R2, #0xC
29002E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290032:  MOV             R0, R4
290034:  MOVS            R1, #9
290036:  MOVS            R2, #0xD
290038:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
29003C:  MOV             R0, R4
29003E:  MOVS            R1, #0xA
290040:  MOVS            R2, #0xE
290042:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290046:  MOV             R0, R4
290048:  MOVS            R1, #6
29004A:  MOVS            R2, #0x10
29004C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290050:  MOV             R0, R4
290052:  MOVS            R1, #2
290054:  MOVS            R2, #7
290056:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
29005A:  MOV             R0, R4
29005C:  MOVS            R1, #7
29005E:  MOVS            R2, #0xF
290060:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290064:  MOV             R0, R4
290066:  MOVS            R1, #0xC
290068:  MOVS            R2, #4
29006A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
29006E:  MOV             R0, R4
290070:  MOVS            R1, #0xC
290072:  MOVS            R2, #0xB
290074:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290078:  MOV             R0, R4
29007A:  MOVS            R1, #0xD
29007C:  MOVS            R2, #0x12
29007E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290082:  MOV             R0, R4
290084:  MOVS            R1, #4
290086:  MOVS            R2, #0x11
290088:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
29008C:  MOV             R0, R4
29008E:  MOVS            R1, #6
290090:  MOVS            R2, #0x13
290092:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290096:  MOV             R0, R4
290098:  MOVS            R1, #7
29009A:  MOVS            R2, #0x14
29009C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2900A0:  MOV             R0, R4
2900A2:  MOVS            R1, #3
2900A4:  MOVS            R2, #0x16
2900A6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2900AA:  MOV             R0, R4
2900AC:  MOVS            R1, #0xD
2900AE:  MOVS            R2, #0x17
2900B0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2900B4:  MOV             R0, R4
2900B6:  MOVS            R1, #1
2900B8:  MOVS            R2, #0x20 ; ' '
2900BA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2900BE:  MOV             R0, R4
2900C0:  MOVS            R1, #0x44 ; 'D'
2900C2:  MOVS            R2, #0x21 ; '!'
2900C4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2900C8:  MOV             R0, R4
2900CA:  MOVS            R1, #6
2900CC:  MOVS            R2, #0x22 ; '"'
2900CE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2900D2:  MOV             R0, R4
2900D4:  MOVS            R1, #7
2900D6:  MOVS            R2, #0x23 ; '#'
2900D8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2900DC:  MOV             R0, R4
2900DE:  MOVS            R1, #0x45 ; 'E'
2900E0:  MOVS            R2, #0x24 ; '$'
2900E2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2900E6:  MOV             R0, R4
2900E8:  MOVS            R1, #0xA
2900EA:  MOVS            R2, #0x25 ; '%'
2900EC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2900F0:  MOV             R0, R4
2900F2:  MOVS            R1, #6
2900F4:  MOVS            R2, #0x26 ; '&'
2900F6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2900FA:  MOV             R0, R4
2900FC:  MOVS            R1, #7
2900FE:  MOVS            R2, #0x27 ; '''
290100:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290104:  MOV             R0, R4
290106:  MOVS            R1, #0x40 ; '@'
290108:  MOVS            R2, #0x18
29010A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
29010E:  MOV             R0, R4
290110:  MOVS            R1, #0x41 ; 'A'
290112:  MOVS            R2, #0x19
290114:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290118:  MOV             R0, R4
29011A:  MOVS            R1, #0x42 ; 'B'
29011C:  MOVS            R2, #0x1C
29011E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290122:  MOV             R0, R4
290124:  MOVS            R1, #0x43 ; 'C'
290126:  MOVS            R2, #0x1D
290128:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
29012C:  MOV             R0, R4
29012E:  MOVS            R1, #0x40 ; '@'
290130:  MOVS            R2, #0x1E
290132:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290136:  MOV             R0, R4
290138:  MOVS            R1, #0x41 ; 'A'
29013A:  MOVS            R2, #0x1F
29013C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290140:  MOV             R0, R4
290142:  MOVS            R1, #1
290144:  MOVS            R2, #0x28 ; '('
290146:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
29014A:  MOV             R0, R4
29014C:  MOVS            R1, #4
29014E:  MOVS            R2, #0x29 ; ')'
290150:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290154:  MOV             R0, R4
290156:  MOVS            R1, #0
290158:  MOVS            R2, #0x29 ; ')'
29015A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
29015E:  MOV             R0, R4
290160:  MOVS            R1, #0xA
290162:  MOVS            R2, #0x2A ; '*'
290164:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290168:  MOV             R0, R4
29016A:  MOVS            R1, #0xB
29016C:  MOVS            R2, #0x2B ; '+'
29016E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290172:  MOV             R0, R4
290174:  MOVS            R1, #8
290176:  MOVS            R2, #0x2C ; ','
290178:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
29017C:  MOV             R0, R4
29017E:  MOVS            R1, #9
290180:  MOVS            R2, #0x2D ; '-'
290182:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290186:  MOV             R0, R4
290188:  MOVS            R1, #0x41 ; 'A'
29018A:  MOVS            R2, #0x2E ; '.'
29018C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290190:  MOV             R0, R4
290192:  MOVS            R1, #0x41 ; 'A'
290194:  MOVS            R2, #0x2F ; '/'
290196:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
29019A:  MOV             R0, R4
29019C:  MOVS            R1, #0x40 ; '@'
29019E:  MOVS            R2, #0x30 ; '0'
2901A0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2901A4:  MOV             R0, R4
2901A6:  MOVS            R1, #0x40 ; '@'
2901A8:  MOVS            R2, #0x31 ; '1'
2901AA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2901AE:  MOV             R0, R4
2901B0:  MOVS            R1, #1
2901B2:  MOVS            R2, #0x32 ; '2'
2901B4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2901B8:  MOV             R0, R4
2901BA:  MOVS            R1, #3
2901BC:  MOVS            R2, #0x33 ; '3'
2901BE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2901C2:  MOV             R0, R4
2901C4:  MOVS            R1, #0x44 ; 'D'
2901C6:  MOVS            R2, #0x34 ; '4'
2901C8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2901CC:  MOV             R0, R4
2901CE:  MOVS            R1, #1
2901D0:  MOVS            R2, #0x35 ; '5'
2901D2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2901D6:  MOV             R0, R4
2901D8:  MOVS            R1, #2
2901DA:  MOVS            R2, #0x36 ; '6'
2901DC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2901E0:  MOV             R0, R4
2901E2:  MOVS            R1, #0
2901E4:  MOVS            R2, #0x37 ; '7'
2901E6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2901EA:  MOV             R0, R4
2901EC:  MOVS            R1, #0
2901EE:  MOVS            R2, #0x38 ; '8'
2901F0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2901F4:  MOV             R0, R4
2901F6:  MOVS            R1, #3
2901F8:  MOVS            R2, #0x39 ; '9'
2901FA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2901FE:  MOV             R0, R4
290200:  MOVS            R1, #0
290202:  MOVS            R2, #0x3A ; ':'
290204:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290208:  MOV             R0, R4
29020A:  MOVS            R1, #1
29020C:  MOVS            R2, #0x3B ; ';'
29020E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290212:  MOV             R0, R4
290214:  MOVS            R1, #9
290216:  MOVS            R2, #0x3C ; '<'
290218:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
29021C:  MOV             R0, R4
29021E:  MOVS            R1, #8
290220:  MOVS            R2, #0x3D ; '='
290222:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290226:  MOV             R0, R4
290228:  MOVS            R1, #0xA
29022A:  MOVS            R2, #0x3E ; '>'
29022C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290230:  MOV             R0, R4
290232:  MOVS            R1, #0xB
290234:  MOVS            R2, #0x3F ; '?'
290236:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
29023A:  MOV             R0, R4
29023C:  MOVS            R1, #4
29023E:  MOVS            R2, #0x40 ; '@'
290240:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290244:  MOV             R0, R4
290246:  MOVS            R1, #0
290248:  MOVS            R2, #0x40 ; '@'
29024A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
29024E:  MOV             R0, R4
290250:  MOVS            R1, #1
290252:  MOVS            R2, #0x41 ; 'A'
290254:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290258:  MOV             R0, R4
29025A:  MOVS            R1, #5
29025C:  MOVS            R2, #0x42 ; 'B'
29025E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290262:  MOV             R0, R4
290264:  MOVS            R1, #0
290266:  MOVS            R2, #0x43 ; 'C'
290268:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
29026C:  MOV             R0, R4
29026E:  MOVS            R1, #5
290270:  MOVS            R2, #0x45 ; 'E'
290272:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290276:  MOV             R0, R4
290278:  MOVS            R1, #3
29027A:  MOVS            R2, #0x44 ; 'D'
29027C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290280:  MOV             R0, R4
290282:  MOVS            R1, #0x40 ; '@'
290284:  MOVS            R2, #0x46 ; 'F'
290286:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
29028A:  MOV             R0, R4
29028C:  MOVS            R1, #2
29028E:  MOVS            R2, #0x47 ; 'G'
290290:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290294:  MOV             R0, R4
290296:  MOVS            R1, #0xA
290298:  MOVS            R2, #0x48 ; 'H'
29029A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
29029E:  MOV             R0, R4
2902A0:  MOVS            R1, #0xB
2902A2:  MOVS            R2, #0x49 ; 'I'
2902A4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2902A8:  MOV             R0, R4
2902AA:  MOVS            R1, #7
2902AC:  MOVS            R2, #0x4A ; 'J'
2902AE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2902B2:  MOV             R0, R4
2902B4:  MOVS            R1, #2
2902B6:  MOVS            R2, #0x4B ; 'K'
2902B8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2902BC:  MOV             R0, R4
2902BE:  MOVS            R1, #0
2902C0:  MOVS            R2, #0x4C ; 'L'
2902C2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2902C6:  MOV             R0, R4
2902C8:  MOVS            R1, #1
2902CA:  MOVS            R2, #0x4D ; 'M'
2902CC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2902D0:  MOV             R0, R4
2902D2:  MOVS            R1, #1
2902D4:  MOVS            R2, #0x4E ; 'N'
2902D6:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2902DA:  MOV             R0, R4
2902DC:  MOVS            R1, #2
2902DE:  MOVS            R2, #0x4F ; 'O'
2902E0:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2902E4:  MOV             R0, R4
2902E6:  MOVS            R1, #6
2902E8:  MOVS            R2, #0x51 ; 'Q'
2902EA:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2902EE:  MOV             R0, R4
2902F0:  MOVS            R1, #7
2902F2:  MOVS            R2, #0x50 ; 'P'
2902F4:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2902F8:  MOV             R0, R4
2902FA:  MOVS            R1, #0
2902FC:  MOVS            R2, #0x52 ; 'R'
2902FE:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290302:  MOV             R0, R4
290304:  MOVS            R1, #0xA
290306:  MOVS            R2, #0x53 ; 'S'
290308:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
29030C:  MOV             R0, R4
29030E:  MOVS            R1, #0xB
290310:  MOVS            R2, #0x54 ; 'T'
290312:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290316:  MOV             R0, R4
290318:  MOVS            R1, #0xD
29031A:  MOVS            R2, #0x55 ; 'U'
29031C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290320:  MOV             R0, R4
290322:  MOVS            R1, #1
290324:  MOVS            R2, #0x58 ; 'X'
290326:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
29032A:  MOV             R0, R4
29032C:  MOVS            R1, #0
29032E:  MOVS            R2, #0x59 ; 'Y'
290330:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290334:  MOV             R0, R4
290336:  MOVS            R1, #0
290338:  MOVS            R2, #0x5E ; '^'
29033A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
29033E:  MOV             R0, R4
290340:  MOVS            R1, #0
290342:  MOVS            R2, #0x5F ; '_'
290344:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290348:  MOV             R0, R4
29034A:  MOVS            R1, #6
29034C:  MOVS            R2, #0x60 ; '`'
29034E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290352:  MOV             R0, R4
290354:  MOVS            R1, #7
290356:  MOVS            R2, #0x61 ; 'a'
290358:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
29035C:  MOV             R0, R4
29035E:  MOVS            R1, #0
290360:  MOVS            R2, #0x62 ; 'b'
290362:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290366:  MOV             R0, R4
290368:  MOVS            R1, #2
29036A:  MOVS            R2, #0x63 ; 'c'
29036C:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290370:  MOV             R0, R4
290372:  MOVS            R1, #6
290374:  MOVS            R2, #0x64 ; 'd'
290376:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
29037A:  MOV             R0, R4
29037C:  MOVS            R1, #7
29037E:  MOVS            R2, #0x65 ; 'e'
290380:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290384:  MOV             R0, R4
290386:  MOVS            R1, #0xC
290388:  MOVS            R2, #0x66 ; 'f'
29038A:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
29038E:  MOV             R0, R4
290390:  MOVS            R1, #6
290392:  MOVS            R2, #0x67 ; 'g'
290394:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
290398:  MOV             R0, R4
29039A:  MOVS            R1, #3
29039C:  MOVS            R2, #0x68 ; 'h'
29039E:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2903A2:  MOV             R0, R4
2903A4:  MOVS            R1, #0
2903A6:  MOVS            R2, #0x69 ; 'i'
2903A8:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2903AC:  MOV             R0, R4
2903AE:  MOVS            R1, #2
2903B0:  MOVS            R2, #0x6A ; 'j'
2903B2:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2903B6:  MOV             R0, R4
2903B8:  MOVS            R1, #1
2903BA:  MOVS            R2, #0x6B ; 'k'
2903BC:  BLX             j__ZN12CHIDJoystick10AddMappingEi10HIDMapping; CHIDJoystick::AddMapping(int,HIDMapping)
2903C0:  MOV             R0, R4
2903C2:  POP             {R4,R6,R7,PC}
