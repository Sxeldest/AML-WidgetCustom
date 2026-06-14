; =========================================================
; Game Engine Function: sub_13705C
; Address            : 0x13705C - 0x1371D4
; =========================================================

13705C:  PUSH            {R4-R7,LR}
13705E:  ADD             R7, SP, #0xC
137060:  PUSH.W          {R8}
137064:  VPUSH           {D8}
137068:  SUB             SP, SP, #0x18
13706A:  MOVS            R1, #0
13706C:  MOV             R4, R0
13706E:  BL              sub_13D71C
137072:  LDR             R0, =(_ZTV5Spawn - 0x137078); `vtable for'Spawn ...
137074:  ADD             R0, PC; `vtable for'Spawn
137076:  ADDS            R0, #8
137078:  STR             R0, [R4]
13707A:  MOVS            R0, #0x70 ; 'p'; unsigned int
13707C:  BLX             j__Znwj; operator new(uint)
137080:  LDR             R1, =(asc_8D18E - 0x137088); "<<" ...
137082:  MOV             R5, R0
137084:  ADD             R1, PC; "<<"
137086:  MOV             R0, SP; int
137088:  BL              sub_13055C
13708C:  LDR             R0, =(off_234980 - 0x137096)
13708E:  VMOV.F32        S16, #0.5
137092:  ADD             R0, PC; off_234980
137094:  LDR.W           R8, [R0]; dword_238EC0
137098:  VLDR            S0, [R8]
13709C:  VMUL.F32        S0, S0, S16
1370A0:  VMOV            R2, S0
1370A4:  MOV             R1, SP
1370A6:  MOV             R0, R5
1370A8:  BL              sub_13CEBC
1370AC:  LDRB.W          R0, [SP,#0x30+var_30]
1370B0:  STR             R5, [R4,#0x6C]
1370B2:  LSLS            R0, R0, #0x1F
1370B4:  ITT NE
1370B6:  LDRNE           R0, [SP,#0x30+var_28]; void *
1370B8:  BLXNE           j__ZdlPv; operator delete(void *)
1370BC:  MOVS            R0, #0x70 ; 'p'; unsigned int
1370BE:  BLX             j__Znwj; operator new(uint)
1370C2:  LDR             R1, =(aSpawn - 0x1370CA); "Spawn" ...
1370C4:  MOV             R5, R0
1370C6:  ADD             R1, PC; "Spawn"
1370C8:  MOV             R0, SP; int
1370CA:  BL              sub_13055C
1370CE:  VLDR            S0, [R8]
1370D2:  VMUL.F32        S0, S0, S16
1370D6:  VMOV            R2, S0
1370DA:  MOV             R1, SP
1370DC:  MOV             R0, R5
1370DE:  BL              sub_13CEBC
1370E2:  LDRB.W          R0, [SP,#0x30+var_30]
1370E6:  STR             R5, [R4,#0x70]
1370E8:  LSLS            R0, R0, #0x1F
1370EA:  ITT NE
1370EC:  LDRNE           R0, [SP,#0x30+var_28]; void *
1370EE:  BLXNE           j__ZdlPv; operator delete(void *)
1370F2:  MOVS            R0, #0x70 ; 'p'; unsigned int
1370F4:  BLX             j__Znwj; operator new(uint)
1370F8:  LDR             R1, =(asc_84107 - 0x137100); ">>" ...
1370FA:  MOV             R6, R0
1370FC:  ADD             R1, PC; ">>"
1370FE:  MOV             R0, SP; int
137100:  BL              sub_13055C
137104:  VLDR            S0, [R8]
137108:  VMUL.F32        S0, S0, S16
13710C:  VMOV            R2, S0
137110:  MOV             R5, SP
137112:  MOV             R0, R6
137114:  MOV             R1, R5
137116:  BL              sub_13CEBC
13711A:  LDRB.W          R0, [SP,#0x30+var_30]
13711E:  STR             R6, [R4,#0x74]
137120:  LSLS            R0, R0, #0x1F
137122:  ITT NE
137124:  LDRNE           R0, [SP,#0x30+var_28]; void *
137126:  BLXNE           j__ZdlPv; operator delete(void *)
13712A:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN5SpawnC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x137132); `vtable for'std::__function::__func<Spawn::Spawn(void)::$_0,std::allocator<Spawn::Spawn(void)::$_0>,void ()(void)> ...
13712C:  LDR             R1, [R4,#0x6C]
13712E:  ADD             R0, PC; `vtable for'std::__function::__func<Spawn::Spawn(void)::$_0,std::allocator<Spawn::Spawn(void)::$_0>,void ()(void)>
137130:  STR             R5, [SP,#0x30+var_20]
137132:  ADDS            R0, #8
137134:  STR             R0, [SP,#0x30+var_30]
137136:  ADD.W           R0, R1, #0x58 ; 'X'
13713A:  MOV             R1, R5
13713C:  BL              sub_12C504
137140:  LDR             R0, [SP,#0x30+var_20]
137142:  CMP             R5, R0
137144:  BEQ             loc_13714C
137146:  CBZ             R0, loc_137156
137148:  MOVS            R1, #5
13714A:  B               loc_13714E
13714C:  MOVS            R1, #4
13714E:  LDR             R2, [R0]
137150:  LDR.W           R1, [R2,R1,LSL#2]
137154:  BLX             R1
137156:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN5SpawnC1EvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x13715E); `vtable for'std::__function::__func<Spawn::Spawn(void)::$_1,std::allocator<Spawn::Spawn(void)::$_1>,void ()(void)> ...
137158:  LDR             R1, [R4,#0x70]
13715A:  ADD             R0, PC; `vtable for'std::__function::__func<Spawn::Spawn(void)::$_1,std::allocator<Spawn::Spawn(void)::$_1>,void ()(void)>
13715C:  STR             R5, [SP,#0x30+var_20]
13715E:  ADDS            R0, #8
137160:  STR             R0, [SP,#0x30+var_30]
137162:  ADD.W           R0, R1, #0x58 ; 'X'
137166:  MOV             R1, R5
137168:  BL              sub_12C504
13716C:  LDR             R0, [SP,#0x30+var_20]
13716E:  CMP             R5, R0
137170:  BEQ             loc_137178
137172:  CBZ             R0, loc_137182
137174:  MOVS            R1, #5
137176:  B               loc_13717A
137178:  MOVS            R1, #4
13717A:  LDR             R2, [R0]
13717C:  LDR.W           R1, [R2,R1,LSL#2]
137180:  BLX             R1
137182:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN5SpawnC1EvE3$_2NS_9allocatorIS3_EEFvvEEE - 0x13718A); `vtable for'std::__function::__func<Spawn::Spawn(void)::$_2,std::allocator<Spawn::Spawn(void)::$_2>,void ()(void)> ...
137184:  LDR             R1, [R4,#0x74]
137186:  ADD             R0, PC; `vtable for'std::__function::__func<Spawn::Spawn(void)::$_2,std::allocator<Spawn::Spawn(void)::$_2>,void ()(void)>
137188:  STR             R5, [SP,#0x30+var_20]
13718A:  ADDS            R0, #8
13718C:  STR             R0, [SP,#0x30+var_30]
13718E:  ADD.W           R0, R1, #0x58 ; 'X'
137192:  MOV             R1, R5
137194:  BL              sub_12C504
137198:  LDR             R0, [SP,#0x30+var_20]
13719A:  CMP             R5, R0
13719C:  BEQ             loc_1371A4
13719E:  CBZ             R0, loc_1371AE
1371A0:  MOVS            R1, #5
1371A2:  B               loc_1371A6
1371A4:  MOVS            R1, #4
1371A6:  LDR             R2, [R0]
1371A8:  LDR.W           R1, [R2,R1,LSL#2]
1371AC:  BLX             R1
1371AE:  LDR             R1, [R4,#0x6C]
1371B0:  MOV             R0, R4
1371B2:  BL              sub_12BDF6
1371B6:  LDR             R1, [R4,#0x70]
1371B8:  MOV             R0, R4
1371BA:  BL              sub_12BDF6
1371BE:  LDR             R1, [R4,#0x74]
1371C0:  MOV             R0, R4
1371C2:  BL              sub_12BDF6
1371C6:  MOV             R0, R4
1371C8:  ADD             SP, SP, #0x18
1371CA:  VPOP            {D8}
1371CE:  POP.W           {R8}
1371D2:  POP             {R4-R7,PC}
