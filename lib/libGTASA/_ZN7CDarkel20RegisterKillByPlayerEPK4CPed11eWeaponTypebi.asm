; =========================================================
; Game Engine Function: _ZN7CDarkel20RegisterKillByPlayerEPK4CPed11eWeaponTypebi
; Address            : 0x303FFC - 0x30423A
; =========================================================

303FFC:  PUSH            {R4-R7,LR}
303FFE:  ADD             R7, SP, #0xC
304000:  PUSH.W          {R8}
304004:  MOV             R4, R0
304006:  MOV             R5, R3
304008:  LDR.W           R0, [R4,#0x59C]
30400C:  MOV             R8, R2
30400E:  MOV             R6, R1
304010:  CMP             R0, #0x11
304012:  BHI             loc_304038
304014:  MOVS            R1, #1
304016:  MOVW            R2, #:lower16:(elf_hash_chain+0xFD18)
30401A:  LSLS            R1, R0
30401C:  MOVT            R2, #:upper16:(elf_hash_chain+0xFD18); float
304020:  TST             R1, R2
304022:  BEQ             loc_304094
304024:  MOVS            R0, #dword_44; this
304026:  MOV.W           R1, #0x3F400000; unsigned __int16
30402A:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
30402E:  MOVS            R0, #(dword_EC+3); this
304030:  MOV.W           R1, #0x3F800000; unsigned __int16
304034:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
304038:  LDR             R0, =(_ZN7CDarkel6StatusE_ptr - 0x30403E)
30403A:  ADD             R0, PC; _ZN7CDarkel6StatusE_ptr
30403C:  LDR             R0, [R0]; CDarkel::Status ...
30403E:  LDRH            R0, [R0]; CDarkel::Status
304040:  CMP             R0, #4
304042:  IT NE
304044:  CMPNE           R0, #1
304046:  BNE.W           loc_304196
30404A:  LDR             R1, =(_ZN7CDarkel10WeaponTypeE_ptr - 0x304052)
30404C:  ADDS            R2, R6, #1
30404E:  ADD             R1, PC; _ZN7CDarkel10WeaponTypeE_ptr
304050:  LDR             R1, [R1]; CDarkel::WeaponType ...
304052:  LDR             R1, [R1]; CDarkel::WeaponType
304054:  BEQ             loc_30406A
304056:  ORR.W           R2, R1, #1; float
30405A:  CMP             R2, #0x39 ; '9'
30405C:  BNE             loc_30406A
30405E:  CMP             R1, #0x39 ; '9'
304060:  BEQ             loc_304102
304062:  CMP             R1, #0x38 ; '8'
304064:  BNE             loc_30406A
304066:  CMP             R6, #0x10
304068:  BCC             loc_304108
30406A:  CMP             R6, #0x33 ; '3'
30406C:  IT NE
30406E:  CMPNE           R1, R6
304070:  BEQ             loc_304108
304072:  CMP             R6, #0x34 ; '4'
304074:  IT EQ
304076:  CMPEQ           R1, #0x1C
304078:  BEQ             loc_304108
30407A:  CMP             R6, #0x31 ; '1'
30407C:  IT EQ
30407E:  CMPEQ           R1, #0x32 ; '2'
304080:  BEQ             loc_304108
304082:  CMP             R6, #0x32 ; '2'
304084:  IT EQ
304086:  CMPEQ           R1, #0x31 ; '1'
304088:  BEQ             loc_304108
30408A:  CMP             R6, #0x25 ; '%'
30408C:  IT EQ
30408E:  CMPEQ           R1, #0x12
304090:  BEQ             loc_304108
304092:  B               loc_304196
304094:  MOVS            R2, #0x20040; float
30409A:  TST             R1, R2
30409C:  BEQ             loc_3040A6
30409E:  MOVS            R0, #0x44 ; 'D'
3040A0:  MOV.W           R1, #0x3FC00000
3040A4:  B               loc_304034
3040A6:  CMP             R0, #8
3040A8:  BNE             loc_304038
3040AA:  MOVS            R1, #0
3040AC:  MOVS            R0, #dword_44; this
3040AE:  MOVT            R1, #0x40A0; unsigned __int16
3040B2:  BLX             j__ZN6CStats13DecrementStatEtf; CStats::DecrementStat(ushort,float)
3040B6:  MOVS            R0, #dword_F0; this
3040B8:  MOV.W           R1, #0x3F800000; unsigned __int16
3040BC:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
3040C0:  MOV.W           R0, #0xFFFFFFFF; int
3040C4:  BLX             j__Z13FindPlayerPedi; FindPlayerPed(int)
3040C8:  LDR.W           R0, [R0,#0x444]
3040CC:  MOV.W           R2, #0x2D4
3040D0:  LDR             R1, =(_ZN10CPedGroups9ms_groupsE_ptr - 0x3040D8)
3040D2:  LDR             R0, [R0,#0x38]
3040D4:  ADD             R1, PC; _ZN10CPedGroups9ms_groupsE_ptr
3040D6:  LDR             R1, [R1]; CPedGroups::ms_groups ...
3040D8:  MLA.W           R0, R0, R2, R1
3040DC:  MOV             R1, R4; CPed *
3040DE:  ADDS            R0, #8; this
3040E0:  BLX             j__ZNK19CPedGroupMembership8IsMemberEPK4CPed; CPedGroupMembership::IsMember(CPed const*)
3040E4:  CMP             R0, #1
3040E6:  BNE             loc_304038
3040E8:  MOVS            R0, #(dword_A0+3); this
3040EA:  MOV.W           R1, #0x3F800000; unsigned __int16
3040EE:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
3040F2:  MOVS            R0, #0; this
3040F4:  MOV.W           R1, #0x150; unsigned __int8
3040F8:  MOV.W           R2, #0x3F800000; unsigned int
3040FC:  BLX             j__ZN6CStats30DisplayScriptStatUpdateMessageEhjf; CStats::DisplayScriptStatUpdateMessage(uchar,uint,float)
304100:  B               loc_304038
304102:  CMP             R6, #0x2E ; '.'
304104:  BCS.W           loc_30422E
304108:  CMP             R0, #4
30410A:  IT NE
30410C:  CMPNE           R0, #1
30410E:  BNE             loc_304180
304110:  LDR             R0, =(_ZN7CDarkel11ModelToKillE_ptr - 0x304116)
304112:  ADD             R0, PC; _ZN7CDarkel11ModelToKillE_ptr
304114:  LDR             R0, [R0]; CDarkel::ModelToKill ...
304116:  LDR             R1, [R0]; CDarkel::ModelToKill
304118:  ADDS            R0, R1, #1
30411A:  ITT NE
30411C:  LDRSHNE.W       R0, [R4,#0x26]
304120:  CMPNE           R1, R0
304122:  BEQ             loc_304148
304124:  LDR             R1, =(_ZN7CDarkel12ModelToKill2E_ptr - 0x30412A)
304126:  ADD             R1, PC; _ZN7CDarkel12ModelToKill2E_ptr
304128:  LDR             R1, [R1]; CDarkel::ModelToKill2 ...
30412A:  LDR             R1, [R1]; CDarkel::ModelToKill2
30412C:  CMP             R1, R0
30412E:  BEQ             loc_304148
304130:  LDR             R1, =(_ZN7CDarkel12ModelToKill3E_ptr - 0x304136)
304132:  ADD             R1, PC; _ZN7CDarkel12ModelToKill3E_ptr
304134:  LDR             R1, [R1]; CDarkel::ModelToKill3 ...
304136:  LDR             R1, [R1]; CDarkel::ModelToKill3
304138:  CMP             R1, R0
30413A:  BEQ             loc_304148
30413C:  LDR             R1, =(_ZN7CDarkel12ModelToKill4E_ptr - 0x304142)
30413E:  ADD             R1, PC; _ZN7CDarkel12ModelToKill4E_ptr
304140:  LDR             R1, [R1]; CDarkel::ModelToKill4 ...
304142:  LDR             R1, [R1]; CDarkel::ModelToKill4
304144:  CMP             R1, R0
304146:  BNE             loc_304180
304148:  LDR.W           R0, [R4,#0x59C]
30414C:  CMP             R0, #2
30414E:  BCC             loc_30418C
304150:  LDR             R0, =(_ZN7CDarkel13bNeedHeadShotE_ptr - 0x304156)
304152:  ADD             R0, PC; _ZN7CDarkel13bNeedHeadShotE_ptr
304154:  LDR             R0, [R0]; CDarkel::bNeedHeadShot ...
304156:  LDRB            R0, [R0]; CDarkel::bNeedHeadShot
304158:  CMP             R0, #0
30415A:  IT NE
30415C:  CMPNE.W         R8, #1
304160:  BNE             loc_304180
304162:  LDR             R0, =(_ZN7CDarkel11KillsNeededE_ptr - 0x30416A)
304164:  LDR             R1, =(AudioEngine_ptr - 0x30416C)
304166:  ADD             R0, PC; _ZN7CDarkel11KillsNeededE_ptr
304168:  ADD             R1, PC; AudioEngine_ptr
30416A:  LDR             R2, [R0]; CDarkel::KillsNeeded ...
30416C:  LDR             R0, [R1]; AudioEngine ; this
30416E:  LDR             R3, [R2]; CDarkel::KillsNeeded
304170:  SUBS            R1, R3, #1
304172:  STR             R1, [R2]; CDarkel::KillsNeeded
304174:  MOVS            R1, #0x2B ; '+'; int
304176:  MOVS            R2, #0; float
304178:  MOV.W           R3, #0x3F800000; float
30417C:  BLX             j__ZN12CAudioEngine24ReportFrontendAudioEventEiff; CAudioEngine::ReportFrontendAudioEvent(int,float,float)
304180:  LDR.W           R0, [R4,#0x59C]
304184:  CMP             R0, #6
304186:  BNE             loc_30418C
304188:  MOVS            R0, #0xCE
30418A:  B               loc_30418E
30418C:  MOVS            R0, #(dword_CC+1); this
30418E:  MOV.W           R1, #0x3F800000; unsigned __int16
304192:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
304196:  LDR             R0, =(_ZN7CDarkel15RegisteredKillsE_ptr - 0x3041A0)
304198:  LDRSH.W         R1, [R4,#0x26]
30419C:  ADD             R0, PC; _ZN7CDarkel15RegisteredKillsE_ptr
30419E:  LDR             R0, [R0]; CDarkel::RegisteredKills ...
3041A0:  ADD.W           R0, R0, R1,LSL#2
3041A4:  LDRH.W          R1, [R0,R5,LSL#1]
3041A8:  ADDS            R1, #1
3041AA:  STRH.W          R1, [R0,R5,LSL#1]
3041AE:  MOVS            R0, #(dword_78+1); this
3041B0:  MOV.W           R1, #0x3F800000; unsigned __int16
3041B4:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
3041B8:  LDRB.W          R0, [R4,#0x489]
3041BC:  LSLS            R0, R0, #0x1D
3041BE:  BMI             loc_3041D0
3041C0:  LDR             R0, =(_ZN6CStats20PedsKilledOfThisTypeE_ptr - 0x3041CA)
3041C2:  LDR.W           R1, [R4,#0x59C]
3041C6:  ADD             R0, PC; _ZN6CStats20PedsKilledOfThisTypeE_ptr
3041C8:  LDR             R0, [R0]; CStats::PedsKilledOfThisType ...
3041CA:  ADD.W           R0, R0, R1,LSL#2
3041CE:  B               loc_3041D8
3041D0:  LDR             R0, =(_ZN6CStats20PedsKilledOfThisTypeE_ptr - 0x3041D6)
3041D2:  ADD             R0, PC; _ZN6CStats20PedsKilledOfThisTypeE_ptr
3041D4:  LDR             R0, [R0]; CStats::PedsKilledOfThisType ...
3041D6:  ADDS            R0, #0x50 ; 'P'
3041D8:  LDR             R1, [R0]
3041DA:  CMP.W           R8, #1
3041DE:  ADD.W           R1, R1, #1
3041E2:  STR             R1, [R0]
3041E4:  BNE             loc_3041F0
3041E6:  MOVS            R0, #(dword_80+2); this
3041E8:  MOV.W           R1, #0x3F800000; unsigned __int16
3041EC:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
3041F0:  MOVS            R0, #dword_B0; this
3041F2:  MOV.W           R1, #0x3F800000; unsigned __int16
3041F6:  BLX             j__ZN6CStats13IncrementStatEtf; CStats::IncrementStat(ushort,float)
3041FA:  CBNZ            R5, loc_304214
3041FC:  LDR             R0, =(_ZN6CWorld7PlayersE_ptr - 0x304202)
3041FE:  ADD             R0, PC; _ZN6CWorld7PlayersE_ptr
304200:  LDR             R0, [R0]; CWorld::Players ...
304202:  LDR             R0, [R0]; CWorld::Players
304204:  LDRB.W          R0, [R0,#0x485]
304208:  LSLS            R0, R0, #0x1F
30420A:  ITT EQ
30420C:  LDREQ.W         R0, [R4,#0x59C]; this
304210:  BLXEQ           j__ZN9CGangWars20AddKillToProvocationEi; CGangWars::AddKillToProvocation(int)
304214:  LDR.W           R0, [R4,#0x59C]; this
304218:  CMP             R0, #0x11
30421A:  ITT LT
30421C:  POPLT.W         {R8}
304220:  POPLT           {R4-R7,PC}
304222:  POP.W           {R8}
304226:  POP.W           {R4-R7,LR}
30422A:  B.W             sub_1957CC
30422E:  SUB.W           R2, R6, #0x33 ; '3'
304232:  CMP             R2, #2
304234:  BCC.W           loc_304108
304238:  B               loc_30406A
