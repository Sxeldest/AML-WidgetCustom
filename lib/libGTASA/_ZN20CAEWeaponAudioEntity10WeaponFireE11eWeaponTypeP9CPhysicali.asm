; =========================================================
; Game Engine Function: _ZN20CAEWeaponAudioEntity10WeaponFireE11eWeaponTypeP9CPhysicali
; Address            : 0x3B9EE4 - 0x3BA1B0
; =========================================================

3B9EE4:  PUSH            {R4-R7,LR}
3B9EE6:  ADD             R7, SP, #0xC
3B9EE8:  PUSH.W          {R11}
3B9EEC:  SUB             SP, SP, #0x20
3B9EEE:  MOV             R5, R0
3B9EF0:  CMP             R2, #0
3B9EF2:  BEQ.W           def_3B9F02; jumptable 003B9F02 default case, cases 35,36,39
3B9EF6:  SUBS            R1, #0x16; switch 24 cases
3B9EF8:  CMP             R1, #0x17
3B9EFA:  BHI.W           def_3B9F02; jumptable 003B9F02 default case, cases 35,36,39
3B9EFE:  MOVW            R0, #0xFFFF
3B9F02:  TBH.W           [PC,R1,LSL#1]; switch jump
3B9F06:  DCW 0x41; jump table for switch statement
3B9F08:  DCW 0x50
3B9F0A:  DCW 0x64
3B9F0C:  DCW 0x18
3B9F0E:  DCW 0x6F
3B9F10:  DCW 0x18
3B9F12:  DCW 0x88
3B9F14:  DCW 0x92
3B9F16:  DCW 0x26
3B9F18:  DCW 0x26
3B9F1A:  DCW 0xA0
3B9F1C:  DCW 0xB6
3B9F1E:  DCW 0xC8
3B9F20:  DCW 0xDB
3B9F22:  DCW 0xDB
3B9F24:  DCW 0xDF
3B9F26:  DCW 0xF7
3B9F28:  DCW 0xDB
3B9F2A:  DCW 0x101
3B9F2C:  DCW 0x114
3B9F2E:  DCW 0x12C
3B9F30:  DCW 0x146
3B9F32:  DCW 0x37
3B9F34:  DCW 0x37
3B9F36:  MOV.W           R0, #0x3F800000; jumptable 003B9F02 cases 25,27
3B9F3A:  MOV.W           R12, #0
3B9F3E:  MOVS            R6, #0x17
3B9F40:  MOVS            R4, #0x16
3B9F42:  MOVS            R1, #0x15
3B9F44:  STMEA.W         SP, {R1,R4,R6}
3B9F48:  STRD.W          R3, R12, [SP,#0x30+var_24]
3B9F4C:  STRD.W          R0, R0, [SP,#0x30+var_1C]
3B9F50:  B               loc_3BA00C
3B9F52:  MOV.W           R0, #0x3F800000; jumptable 003B9F02 cases 30,31
3B9F56:  MOV.W           R12, #0
3B9F5A:  MOVS            R6, #5
3B9F5C:  MOVS            R4, #4
3B9F5E:  MOVS            R1, #3
3B9F60:  STMEA.W         SP, {R1,R4,R6}
3B9F64:  MOV             R1, R2
3B9F66:  MOVS            R2, #0x21 ; '!'
3B9F68:  STRD.W          R3, R12, [SP,#0x30+var_24]
3B9F6C:  STRD.W          R0, R0, [SP,#0x30+var_1C]
3B9F70:  MOV             R0, R5
3B9F72:  B               loc_3BA0B6
3B9F74:  MOV             R0, R5; jumptable 003B9F02 cases 44,45
3B9F76:  MOVS            R1, #0x40 ; '@'; __int16
3B9F78:  MOV             R2, R3; int
3B9F7A:  ADD             SP, SP, #0x20 ; ' '
3B9F7C:  POP.W           {R11}
3B9F80:  POP.W           {R4-R7,LR}
3B9F84:  B.W             _ZN20CAEWeaponAudioEntity15PlayGoggleSoundEsi; __int16
3B9F88:  MOVS            R1, #7; jumptable 003B9F02 case 22
3B9F8A:  MOVS            R6, #6
3B9F8C:  MOVW            LR, #0x4D5
3B9F90:  STRD.W          R6, R1, [SP,#0x30+var_30]
3B9F94:  MOVS            R4, #0
3B9F96:  MOVS            R0, #8
3B9F98:  ADD             R1, SP, #0x30+var_28
3B9F9A:  MOV.W           R12, #0x3F800000
3B9F9E:  MOVT            LR, #0x3FB5
3B9FA2:  STM             R1!, {R0,R3,R4}
3B9FA4:  B               loc_3BA090
3B9FA6:  MOVS            R6, #0; jumptable 003B9F02 case 23
3B9FA8:  MOVS            R4, #0x18
3B9FAA:  MOV.W           R1, #0x3F800000
3B9FAE:  MOVT            R6, #0xC0E0
3B9FB2:  SXTH            R0, R0
3B9FB4:  ADD.W           R12, SP, #0x30+var_28
3B9FB8:  STRD.W          R4, R4, [SP,#0x30+var_30]
3B9FBC:  STM.W           R12, {R0,R3,R6}
3B9FC0:  MOV             R0, R5
3B9FC2:  MOVS            R3, #0x4D ; 'M'
3B9FC4:  STRD.W          R1, R1, [SP,#0x30+var_1C]
3B9FC8:  MOV             R1, R2
3B9FCA:  MOVS            R2, #0x4C ; 'L'
3B9FCC:  B               loc_3BA0B8
3B9FCE:  MOVW            LR, #0xA177; jumptable 003B9F02 case 24
3B9FD2:  MOV.W           R12, #0x3F800000
3B9FD6:  MOVT            LR, #0x3F71
3B9FDA:  MOVS            R6, #0
3B9FDC:  MOVS            R4, #8
3B9FDE:  MOVS            R0, #7
3B9FE0:  MOVS            R1, #6
3B9FE2:  B               loc_3BA086
3B9FE4:  MOVW            R12, #0x147B; jumptable 003B9F02 case 26
3B9FE8:  MOVW            LR, #0x2FEC
3B9FEC:  MOVT            R12, #0x3F6E
3B9FF0:  MOVT            LR, #0x3F4B
3B9FF4:  MOVS            R6, #0
3B9FF6:  MOVS            R4, #0x17
3B9FF8:  MOVS            R0, #0x16
3B9FFA:  MOVS            R1, #0x15
3B9FFC:  STRD.W          R1, R0, [SP,#0x30+var_30]
3BA000:  STRD.W          R4, R3, [SP,#0x30+var_28]
3BA004:  STRD.W          R6, LR, [SP,#0x30+var_20]
3BA008:  STR.W           R12, [SP,#0x30+var_18]
3BA00C:  MOV             R1, R2
3BA00E:  MOV             R0, R5
3BA010:  MOVS            R2, #0x49 ; 'I'
3BA012:  MOVS            R3, #0x4A ; 'J'
3BA014:  B               loc_3BA0B8
3BA016:  MOV.W           R0, #0x3F800000; jumptable 003B9F02 case 28
3BA01A:  MOVS            R1, #0
3BA01C:  MOVS            R6, #2
3BA01E:  MOVS            R4, #1
3BA020:  STMEA.W         SP, {R1,R4,R6}
3BA024:  STRD.W          R3, R1, [SP,#0x30+var_24]
3BA028:  B               loc_3BA040
3BA02A:  MOV.W           R12, #0; jumptable 003B9F02 case 29
3BA02E:  MOVS            R6, #2
3BA030:  MOVS            R4, #0x12
3BA032:  MOVS            R1, #0x11
3BA034:  STMEA.W         SP, {R1,R4,R6}
3BA038:  MOV.W           R0, #0x3F800000
3BA03C:  STRD.W          R3, R12, [SP,#0x30+var_24]
3BA040:  STRD.W          R0, R0, [SP,#0x30+var_1C]
3BA044:  B               loc_3BA068
3BA046:  MOVW            R1, #0x450F; jumptable 003B9F02 case 32
3BA04A:  MOV.W           R12, #0x3F800000
3BA04E:  MOVT            R1, #0x3FA1
3BA052:  MOVS            R6, #0
3BA054:  MOVS            R0, #1
3BA056:  MOVS            R4, #2
3BA058:  STRD.W          R6, R0, [SP,#0x30+var_30]
3BA05C:  STRD.W          R4, R3, [SP,#0x30+var_28]
3BA060:  STRD.W          R6, R1, [SP,#0x30+var_20]
3BA064:  STR.W           R12, [SP,#0x30+var_18]
3BA068:  MOV             R1, R2
3BA06A:  MOV             R0, R5
3BA06C:  MOVS            R2, #0x1D
3BA06E:  MOVS            R3, #0x1E
3BA070:  B               loc_3BA0B8
3BA072:  MOVW            LR, #0xD70A; jumptable 003B9F02 case 33
3BA076:  MOV.W           R12, #0x3F800000
3BA07A:  MOVT            LR, #0x3F63
3BA07E:  MOVS            R6, #0
3BA080:  MOVS            R4, #0x17
3BA082:  MOVS            R0, #0x1B
3BA084:  MOVS            R1, #0x1A
3BA086:  STRD.W          R1, R0, [SP,#0x30+var_30]
3BA08A:  STRD.W          R4, R3, [SP,#0x30+var_28]
3BA08E:  STR             R6, [SP,#0x30+var_20]
3BA090:  STRD.W          LR, R12, [SP,#0x30+var_1C]
3BA094:  B               loc_3BA0B0
3BA096:  MOV.W           R0, #0x3F800000; jumptable 003B9F02 case 34
3BA09A:  MOV.W           R12, #0
3BA09E:  MOVS            R6, #0x17
3BA0A0:  MOVS            R4, #0x1B
3BA0A2:  MOVS            R1, #0x1A
3BA0A4:  STMEA.W         SP, {R1,R4,R6}
3BA0A8:  STRD.W          R3, R12, [SP,#0x30+var_24]; int
3BA0AC:  STRD.W          R0, R0, [SP,#0x30+var_1C]; float
3BA0B0:  MOV             R1, R2; CPhysical *
3BA0B2:  MOV             R0, R5; this
3BA0B4:  MOVS            R2, #0x34 ; '4'; __int16
3BA0B6:  MOVS            R3, #0x35 ; '5'; __int16
3BA0B8:  BLX             j__ZN20CAEWeaponAudioEntity13PlayGunSoundsEP9CPhysicalsssssifff; CAEWeaponAudioEntity::PlayGunSounds(CPhysical *,short,short,short,short,short,int,float,float,float)
3BA0BC:  ADD             SP, SP, #0x20 ; ' '; jumptable 003B9F02 default case, cases 35,36,39
3BA0BE:  POP.W           {R11}
3BA0C2:  POP             {R4-R7,PC}
3BA0C4:  LDR.W           R0, [R5,#0x84]; jumptable 003B9F02 case 37
3BA0C8:  CBNZ            R0, loc_3BA0E6
3BA0CA:  MOVS            R1, #0
3BA0CC:  MOV.W           R0, #0x3F800000
3BA0D0:  MOVT            R1, #0xC160
3BA0D4:  STRD.W          R3, R1, [SP,#0x30+var_30]; int
3BA0D8:  MOV             R1, R2; CPhysical *
3BA0DA:  STR             R0, [SP,#0x30+var_28]; float
3BA0DC:  MOV             R0, R5; this
3BA0DE:  MOVS            R2, #0x53 ; 'S'; __int16
3BA0E0:  MOVS            R3, #0x1A; __int16
3BA0E2:  BLX             j__ZN20CAEWeaponAudioEntity22PlayFlameThrowerSoundsEP9CPhysicalssiff; CAEWeaponAudioEntity::PlayFlameThrowerSounds(CPhysical *,short,short,int,float,float)
3BA0E6:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3BA0EC)
3BA0E8:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3BA0EA:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3BA0EC:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3BA0EE:  STR.W           R0, [R5,#0x84]
3BA0F2:  B               def_3B9F02; jumptable 003B9F02 default case, cases 35,36,39
3BA0F4:  MOV             R1, R2; jumptable 003B9F02 case 38
3BA0F6:  MOV             R0, R5; this
3BA0F8:  MOV             R2, R3; int
3BA0FA:  ADD             SP, SP, #0x20 ; ' '
3BA0FC:  POP.W           {R11}
3BA100:  POP.W           {R4-R7,LR}
3BA104:  B.W             _ZN20CAEWeaponAudioEntity21PlayMiniGunFireSoundsEP9CPhysicali; CAEWeaponAudioEntity::PlayMiniGunFireSounds(CPhysical *,int)
3BA108:  MOVS            R6, #0; jumptable 003B9F02 case 40
3BA10A:  SXTH.W          R12, R0
3BA10E:  MOV.W           R1, #0x3F800000
3BA112:  MOVT            R6, #0xC160
3BA116:  STRD.W          R12, R12, [SP,#0x30+var_30]
3BA11A:  MOV             R0, R5
3BA11C:  STRD.W          R12, R3, [SP,#0x30+var_28]
3BA120:  MOV             R3, R12; int
3BA122:  STRD.W          R6, R1, [SP,#0x30+var_20]
3BA126:  STR             R1, [SP,#0x30+var_18]
3BA128:  MOV             R1, R2
3BA12A:  MOVS            R2, #0x31 ; '1'
3BA12C:  B               loc_3BA0B8
3BA12E:  LDR.W           R0, [R5,#0x88]; jumptable 003B9F02 case 41
3BA132:  CBNZ            R0, loc_3BA150
3BA134:  MOVS            R6, #0
3BA136:  MOVS            R0, #3
3BA138:  MOV.W           R1, #0x3F800000
3BA13C:  MOVT            R6, #0xC1A0
3BA140:  STRD.W          R6, R1, [SP,#0x30+var_30]; float
3BA144:  MOV             R1, R2; CPhysical *
3BA146:  STR             R0, [SP,#0x30+var_28]; int
3BA148:  MOV             R0, R5; this
3BA14A:  MOVS            R2, #0x1C; __int16
3BA14C:  BLX             j__ZN20CAEWeaponAudioEntity19PlayWeaponLoopSoundEP9CPhysicalsiffi; CAEWeaponAudioEntity::PlayWeaponLoopSound(CPhysical *,short,int,float,float,int)
3BA150:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3BA156)
3BA152:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3BA154:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3BA156:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3BA158:  STR.W           R0, [R5,#0x88]
3BA15C:  B               def_3B9F02; jumptable 003B9F02 default case, cases 35,36,39
3BA15E:  LDR.W           R0, [R5,#0x8C]; jumptable 003B9F02 case 42
3BA162:  CBNZ            R0, loc_3BA184
3BA164:  MOVW            R1, #0x2FEC
3BA168:  MOVS            R6, #0
3BA16A:  MOVS            R0, #4
3BA16C:  MOVT            R1, #0x3F4B
3BA170:  MOVT            R6, #0xC1A0
3BA174:  STRD.W          R6, R1, [SP,#0x30+var_30]; float
3BA178:  MOV             R1, R2; CPhysical *
3BA17A:  STR             R0, [SP,#0x30+var_28]; int
3BA17C:  MOV             R0, R5; this
3BA17E:  MOVS            R2, #9; __int16
3BA180:  BLX             j__ZN20CAEWeaponAudioEntity19PlayWeaponLoopSoundEP9CPhysicalsiffi; CAEWeaponAudioEntity::PlayWeaponLoopSound(CPhysical *,short,int,float,float,int)
3BA184:  LDR             R0, =(_ZN6CTimer22m_snTimeInMillisecondsE_ptr - 0x3BA18A)
3BA186:  ADD             R0, PC; _ZN6CTimer22m_snTimeInMillisecondsE_ptr
3BA188:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds ...
3BA18A:  LDR             R0, [R0]; CTimer::m_snTimeInMilliseconds
3BA18C:  STR.W           R0, [R5,#0x8C]
3BA190:  B               def_3B9F02; jumptable 003B9F02 default case, cases 35,36,39
3BA192:  MOVW            R12, #0; jumptable 003B9F02 case 43
3BA196:  MOV             R1, R2; CPhysical *
3BA198:  MOVT            R12, #0xC160
3BA19C:  MOV             R2, R3; int
3BA19E:  MOV             R0, R5; this
3BA1A0:  MOV             R3, R12; float
3BA1A2:  ADD             SP, SP, #0x20 ; ' '
3BA1A4:  POP.W           {R11}
3BA1A8:  POP.W           {R4-R7,LR}
3BA1AC:  B.W             _ZN20CAEWeaponAudioEntity15PlayCameraSoundEP9CPhysicalif; CAEWeaponAudioEntity::PlayCameraSound(CPhysical *,int,float)
