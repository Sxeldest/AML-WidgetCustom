; =========================================================
; Game Engine Function: sub_E3FE0
; Address            : 0xE3FE0 - 0xE449A
; =========================================================

E3FE0:  PUSH            {R4-R7,LR}
E3FE2:  ADD             R7, SP, #0xC
E3FE4:  PUSH.W          {R11}
E3FE8:  SUB             SP, SP, #0x148
E3FEA:  LDR             R1, =(dword_23DBF8 - 0xE3FF4)
E3FEC:  ADD             R4, SP, #0x158+var_C4
E3FEE:  MOVS            R2, #8
E3FF0:  ADD             R1, PC; dword_23DBF8
E3FF2:  MOV             R0, R4
E3FF4:  BL              sub_E45B4
E3FF8:  LDR             R0, [SP,#0x158+var_C4]
E3FFA:  LDR.W           R0, [R0,#-0xC]
E3FFE:  ADD             R0, R4
E4000:  LDRB            R0, [R0,#0x10]
E4002:  TST.W           R0, #5
E4006:  BNE.W           loc_E4340
E400A:  LDR             R1, =(byte_23DC08 - 0xE4010)
E400C:  ADD             R1, PC; byte_23DC08
E400E:  ADD             R0, SP, #0x158+var_C4
E4010:  BL              sub_E4664
E4014:  LDR             R0, =(byte_23DC08 - 0xE401C)
E4016:  LDR             R1, =(aLauncher - 0xE401E); "launcher" ...
E4018:  ADD             R0, PC; byte_23DC08
E401A:  ADD             R1, PC; "launcher"
E401C:  BL              sub_E4710
E4020:  MOV             R1, R0
E4022:  ADD             R0, SP, #0x158+var_D8
E4024:  BL              sub_E4834
E4028:  LDR             R1, =(aNickname - 0xE402E); "nickname" ...
E402A:  ADD             R1, PC; "nickname"
E402C:  ADD             R0, SP, #0x158+var_F8; int
E402E:  BL              sub_DC6DC
E4032:  LDR             R1, =(byte_8F794 - 0xE4038)
E4034:  ADD             R1, PC; byte_8F794 ; s
E4036:  ADD             R0, SP, #0x158+var_108; int
E4038:  BL              sub_DC6DC
E403C:  ADD             R0, SP, #0x158+var_E8
E403E:  ADD             R1, SP, #0x158+var_D8
E4040:  ADD             R2, SP, #0x158+var_F8
E4042:  ADD             R3, SP, #0x158+var_108
E4044:  BL              sub_E4890
E4048:  LDR             R5, =(dword_23DC38 - 0xE404E)
E404A:  ADD             R5, PC; dword_23DC38
E404C:  LDRB            R0, [R5]
E404E:  LSLS            R0, R0, #0x1F
E4050:  ITT NE
E4052:  LDRNE           R0, [R5,#(dword_23DC40 - 0x23DC38)]; void *
E4054:  BLXNE           j__ZdlPv; operator delete(void *)
E4058:  LDRB.W          R1, [SP,#0x158+var_108]
E405C:  LDR             R0, [SP,#0x158+var_E0]
E405E:  VLDR            D16, [SP,#0x158+var_E8]
E4062:  STR             R0, [R5,#(dword_23DC40 - 0x23DC38)]
E4064:  MOVS            R0, #0
E4066:  STRH.W          R0, [SP,#0x158+var_E8]
E406A:  LSLS            R0, R1, #0x1F
E406C:  VSTR            D16, [R5]
E4070:  ITT NE
E4072:  LDRNE           R0, [SP,#0x158+var_100]; void *
E4074:  BLXNE           j__ZdlPv; operator delete(void *)
E4078:  LDRB.W          R0, [SP,#0x158+var_F8]
E407C:  LSLS            R0, R0, #0x1F
E407E:  ITT NE
E4080:  LDRNE           R0, [SP,#0x158+var_F0]; void *
E4082:  BLXNE           j__ZdlPv; operator delete(void *)
E4086:  LDR             R1, =(aChatPagesize - 0xE408C); "chat_pagesize" ...
E4088:  ADD             R1, PC; "chat_pagesize"
E408A:  ADD             R0, SP, #0x158+var_E8; int
E408C:  BL              sub_DC6DC
E4090:  MOVS            R0, #1
E4092:  STR             R0, [SP,#0x158+var_F8]
E4094:  ADD             R0, SP, #0x158+var_D8
E4096:  ADD             R1, SP, #0x158+var_E8
E4098:  ADD             R2, SP, #0x158+var_F8
E409A:  BL              sub_E49A8
E409E:  LDR             R1, =(dword_237518 - 0xE40AE)
E40A0:  ADD.W           R0, R0, R0,LSL#2
E40A4:  LDRB.W          R2, [SP,#0x158+var_E8]
E40A8:  ADDS            R0, #5
E40AA:  ADD             R1, PC; dword_237518
E40AC:  STR             R0, [R1]
E40AE:  LSLS            R0, R2, #0x1F
E40B0:  ITT NE
E40B2:  LDRNE           R0, [SP,#0x158+var_E0]; void *
E40B4:  BLXNE           j__ZdlPv; operator delete(void *)
E40B8:  LDR             R1, =(aChatPrintTimes - 0xE40BE); "chat_print_timestamp" ...
E40BA:  ADD             R1, PC; "chat_print_timestamp"
E40BC:  ADD             R0, SP, #0x158+var_E8; int
E40BE:  BL              sub_DC6DC
E40C2:  MOVS            R0, #0
E40C4:  STRB.W          R0, [SP,#0x158+var_F8]
E40C8:  ADD             R0, SP, #0x158+var_D8
E40CA:  ADD             R1, SP, #0x158+var_E8
E40CC:  ADD             R2, SP, #0x158+var_F8
E40CE:  BL              sub_E4ABC
E40D2:  LDR             R1, =(byte_23DC44 - 0xE40DC)
E40D4:  LDRB.W          R2, [SP,#0x158+var_E8]
E40D8:  ADD             R1, PC; byte_23DC44
E40DA:  STRB            R0, [R1]
E40DC:  LSLS            R0, R2, #0x1F
E40DE:  ITT NE
E40E0:  LDRNE           R0, [SP,#0x158+var_E0]; void *
E40E2:  BLXNE           j__ZdlPv; operator delete(void *)
E40E6:  LDR             R1, =(aChatFontsize - 0xE40EC); "chat_fontsize" ...
E40E8:  ADD             R1, PC; "chat_fontsize"
E40EA:  ADD             R0, SP, #0x158+var_E8; int
E40EC:  BL              sub_DC6DC
E40F0:  MOVS            R0, #2
E40F2:  STR             R0, [SP,#0x158+var_F8]
E40F4:  ADD             R0, SP, #0x158+var_D8
E40F6:  ADD             R1, SP, #0x158+var_E8
E40F8:  ADD             R2, SP, #0x158+var_F8
E40FA:  BL              sub_E4BDC
E40FE:  LDR             R1, =(unk_92020 - 0xE4106)
E4100:  LDR             R2, =(dword_23751C - 0xE4108)
E4102:  ADD             R1, PC; unk_92020
E4104:  ADD             R2, PC; dword_23751C
E4106:  LDR.W           R0, [R1,R0,LSL#2]
E410A:  LDRB.W          R1, [SP,#0x158+var_E8]
E410E:  STR             R0, [R2]
E4110:  LSLS            R0, R1, #0x1F
E4112:  ITT NE
E4114:  LDRNE           R0, [SP,#0x158+var_E0]; void *
E4116:  BLXNE           j__ZdlPv; operator delete(void *)
E411A:  LDR             R0, =(byte_23DC08 - 0xE4122)
E411C:  LDR             R1, =(aClient - 0xE4124); "client" ...
E411E:  ADD             R0, PC; byte_23DC08
E4120:  ADD             R1, PC; "client"
E4122:  BL              sub_E4710
E4126:  MOV             R1, R0
E4128:  ADD             R0, SP, #0x158+var_E8
E412A:  BL              sub_E4834
E412E:  LDR             R1, =(aServer - 0xE4134); "server" ...
E4130:  ADD             R1, PC; "server"
E4132:  ADD             R0, SP, #0x158+var_E8
E4134:  BL              sub_E4710
E4138:  MOV             R1, R0
E413A:  ADD             R0, SP, #0x158+var_F8
E413C:  BL              sub_E4834
E4140:  LDR             R1, =(aId - 0xE4146); "id" ...
E4142:  ADD             R1, PC; "id"
E4144:  ADD             R0, SP, #0x158+var_108; int
E4146:  BL              sub_DC6DC
E414A:  MOVS            R0, #0
E414C:  STR             R0, [SP,#0x158+var_118]
E414E:  ADD             R0, SP, #0x158+var_F8
E4150:  ADD             R1, SP, #0x158+var_108
E4152:  ADD             R2, SP, #0x158+var_118
E4154:  BL              sub_E49A8
E4158:  MOV             R5, R0
E415A:  LDRB.W          R0, [SP,#0x158+var_108]
E415E:  LSLS            R0, R0, #0x1F
E4160:  ITT NE
E4162:  LDRNE           R0, [SP,#0x158+var_100]; void *
E4164:  BLXNE           j__ZdlPv; operator delete(void *)
E4168:  LDR             R1, =(aServerid - 0xE416E); "serverid" ...
E416A:  ADD             R1, PC; "serverid"
E416C:  ADD             R0, SP, #0x158+var_108; int
E416E:  BL              sub_DC6DC
E4172:  MOVS            R0, #1
E4174:  STR             R0, [SP,#0x158+var_118]
E4176:  ADD             R0, SP, #0x158+var_F8
E4178:  ADD             R1, SP, #0x158+var_108
E417A:  ADD             R2, SP, #0x158+var_118
E417C:  BL              sub_E49A8
E4180:  MOV             R6, R0
E4182:  LDRB.W          R0, [SP,#0x158+var_108]
E4186:  LSLS            R0, R0, #0x1F
E4188:  ITT NE
E418A:  LDRNE           R0, [SP,#0x158+var_100]; void *
E418C:  BLXNE           j__ZdlPv; operator delete(void *)
E4190:  LDR             R0, =(off_234930 - 0xE4198)
E4192:  LDR             R1, =(off_234988 - 0xE419A)
E4194:  ADD             R0, PC; off_234930
E4196:  ADD             R1, PC; off_234988
E4198:  LDR             R0, [R0]; dword_23DF1C
E419A:  LDR             R1, [R1]; dword_23DEE8
E419C:  STR             R5, [R0]
E419E:  ORRS.W          R0, R6, R5
E41A2:  STR             R6, [R1]
E41A4:  BEQ             loc_E41EA
E41A6:  MOV             R0, R5
E41A8:  MOV             R1, R6
E41AA:  BL              sub_E4E08
E41AE:  CMP             R0, #0
E41B0:  BNE.W           loc_E432E
E41B4:  LDR             R1, =(aAxl - 0xE41BC); "AXL" ...
E41B6:  LDR             R2, =(aInvalidServerD - 0xE41BE); "INVALID SERVER (%d:%d)" ...
E41B8:  ADD             R1, PC; "AXL"
E41BA:  ADD             R2, PC; "INVALID SERVER (%d:%d)"
E41BC:  MOVS            R0, #6; prio
E41BE:  MOV             R3, R5
E41C0:  STR             R6, [SP,#0x158+var_158]
E41C2:  BLX             __android_log_print
E41C6:  MOVS            R0, #8; thrown_size
E41C8:  BLX             j___cxa_allocate_exception
E41CC:  LDR             R1, =(aInvalidServer - 0xE41D4); "invalid server" ...
E41CE:  MOV             R4, R0
E41D0:  ADD             R1, PC; "invalid server"
E41D2:  BLX             j__ZNSt13runtime_errorC2EPKc; std::runtime_error::runtime_error(char const*)
E41D6:  LDR             R0, =(_ZTISt13runtime_error_ptr - 0xE41DE)
E41D8:  LDR             R2, =(_ZNSt15underflow_errorD2Ev_ptr - 0xE41E0)
E41DA:  ADD             R0, PC; _ZTISt13runtime_error_ptr
E41DC:  ADD             R2, PC; _ZNSt15underflow_errorD2Ev_ptr
E41DE:  LDR             R1, [R0]; lptinfo
E41E0:  MOV             R0, R4; void *
E41E2:  LDR             R2, [R2]; std::underflow_error::~underflow_error() ; void (*)(void *)
E41E4:  BLX             j___cxa_throw
E41E8:  B               loc_E447E
E41EA:  LDRB.W          R0, [SP,#0x158+var_E8]
E41EE:  CMP             R0, #1
E41F0:  BNE.W           loc_E445C
E41F4:  LDR             R0, [SP,#0x158+var_E0]; int
E41F6:  LDR             R1, =(aTest - 0xE41FC); "test" ...
E41F8:  ADD             R1, PC; "test"
E41FA:  BL              sub_EC70C
E41FE:  LDR             R1, [SP,#0x158+var_E0]
E4200:  ADDS            R1, #4
E4202:  CMP             R1, R0
E4204:  BEQ.W           loc_E445C
E4208:  LDR             R1, =(aTest - 0xE420E); "test" ...
E420A:  ADD             R1, PC; "test"
E420C:  ADD             R0, SP, #0x158+var_E8
E420E:  BL              sub_E4710
E4212:  MOV             R1, R0
E4214:  ADD             R0, SP, #0x158+var_108
E4216:  BL              sub_E4834
E421A:  LDR             R1, =(a127001 - 0xE4220); "127.0.0.1" ...
E421C:  ADD             R1, PC; "127.0.0.1"
E421E:  ADD             R0, SP, #0x158+var_118; int
E4220:  BL              sub_DC6DC
E4224:  LDRB.W          R0, [SP,#0x158+var_108]
E4228:  CMP             R0, #1
E422A:  BNE             loc_E42E6
E422C:  LDR             R0, [SP,#0x158+var_100]; int
E422E:  LDR             R1, =(aIp - 0xE4234); "ip" ...
E4230:  ADD             R1, PC; "ip"
E4232:  BL              sub_EC75A
E4236:  LDR             R1, [SP,#0x158+var_100]
E4238:  ADDS            R1, #4
E423A:  CMP             R1, R0
E423C:  BEQ             loc_E429A
E423E:  LDR             R1, =(aIp - 0xE4244); "ip" ...
E4240:  ADD             R1, PC; "ip"
E4242:  ADD             R0, SP, #0x158+var_138; int
E4244:  BL              sub_DC6DC
E4248:  LDR             R1, =(a127001 - 0xE424E); "127.0.0.1" ...
E424A:  ADD             R1, PC; "127.0.0.1"
E424C:  ADD             R0, SP, #0x158+var_144; int
E424E:  BL              sub_DC6DC
E4252:  ADD             R0, SP, #0x158+var_128
E4254:  ADD             R1, SP, #0x158+var_108
E4256:  ADD             R2, SP, #0x158+var_138
E4258:  ADD             R3, SP, #0x158+var_144
E425A:  BL              sub_E4890
E425E:  LDRB.W          R0, [SP,#0x158+var_118]
E4262:  LSLS            R0, R0, #0x1F
E4264:  ITT NE
E4266:  LDRNE           R0, [SP,#0x158+var_110]; void *
E4268:  BLXNE           j__ZdlPv; operator delete(void *)
E426C:  LDRB.W          R0, [SP,#0x158+var_144]
E4270:  VLDR            D16, [SP,#0x158+var_128]
E4274:  LDR             R1, [SP,#0x158+var_120]
E4276:  STR             R1, [SP,#0x158+var_110]
E4278:  MOVS            R1, #0
E427A:  LSLS            R0, R0, #0x1F
E427C:  STRH.W          R1, [SP,#0x158+var_128]
E4280:  VSTR            D16, [SP,#0x158+var_118]
E4284:  ITT NE
E4286:  LDRNE           R0, [SP,#0x158+var_13C]; void *
E4288:  BLXNE           j__ZdlPv; operator delete(void *)
E428C:  LDRB.W          R0, [SP,#0x158+var_138]
E4290:  LSLS            R0, R0, #0x1F
E4292:  ITT NE
E4294:  LDRNE           R0, [SP,#0x158+var_130]; void *
E4296:  BLXNE           j__ZdlPv; operator delete(void *)
E429A:  LDRB.W          R0, [SP,#0x158+var_108]
E429E:  CMP             R0, #1
E42A0:  BNE             loc_E42E6
E42A2:  LDR             R0, [SP,#0x158+var_100]; int
E42A4:  LDR             R1, =(aPort - 0xE42AA); "port" ...
E42A6:  ADD             R1, PC; "port"
E42A8:  BL              sub_EC70C
E42AC:  LDR             R1, [SP,#0x158+var_100]
E42AE:  ADDS            R1, #4
E42B0:  CMP             R1, R0
E42B2:  BEQ.W           loc_E43E0
E42B6:  LDR             R1, =(aPort - 0xE42BC); "port" ...
E42B8:  ADD             R1, PC; "port"
E42BA:  ADD             R0, SP, #0x158+var_128; int
E42BC:  BL              sub_DC6DC
E42C0:  MOVW            R0, #0x1E61
E42C4:  STRH.W          R0, [SP,#0x158+var_138]
E42C8:  ADD             R0, SP, #0x158+var_108
E42CA:  ADD             R1, SP, #0x158+var_128
E42CC:  ADD             R2, SP, #0x158+var_138
E42CE:  BL              sub_E4CF0
E42D2:  MOV             R5, R0
E42D4:  LDRB.W          R0, [SP,#0x158+var_128]
E42D8:  LSLS            R0, R0, #0x1F
E42DA:  BEQ.W           loc_E43E4
E42DE:  LDR             R0, [SP,#0x158+var_120]; void *
E42E0:  BLX             j__ZdlPv; operator delete(void *)
E42E4:  B               loc_E43E4
E42E6:  MOVS            R0, #0
E42E8:  MOVW            R5, #0x1E61
E42EC:  STRD.W          R0, R0, [SP,#0x158+var_128]
E42F0:  STR             R0, [SP,#0x158+var_120]
E42F2:  LDR             R0, =(dword_23DC18 - 0xE42F8)
E42F4:  ADD             R0, PC; dword_23DC18
E42F6:  ADD             R1, SP, #0x158+var_118
E42F8:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
E42FC:  LDR             R1, =(word_23DC24 - 0xE4304)
E42FE:  LDR             R0, =(dword_23DC28 - 0xE4306)
E4300:  ADD             R1, PC; word_23DC24
E4302:  ADD             R0, PC; dword_23DC28
E4304:  STRH            R5, [R1]
E4306:  ADD             R1, SP, #0x158+var_128
E4308:  BLX             j__ZNSt6__ndk112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEEaSERKS5_; std::string::operator=(std::string const&)
E430C:  LDRB.W          R0, [SP,#0x158+var_128]
E4310:  LSLS            R0, R0, #0x1F
E4312:  ITT NE
E4314:  LDRNE           R0, [SP,#0x158+var_120]; void *
E4316:  BLXNE           j__ZdlPv; operator delete(void *)
E431A:  LDRB.W          R0, [SP,#0x158+var_118]
E431E:  LSLS            R0, R0, #0x1F
E4320:  ITT NE
E4322:  LDRNE           R0, [SP,#0x158+var_110]; void *
E4324:  BLXNE           j__ZdlPv; operator delete(void *)
E4328:  ADD             R0, SP, #0x158+var_108
E432A:  BL              sub_E3F7A
E432E:  ADD             R0, SP, #0x158+var_F8
E4330:  BL              sub_E3F7A
E4334:  ADD             R0, SP, #0x158+var_E8
E4336:  BL              sub_E3F7A
E433A:  ADD             R0, SP, #0x158+var_D8
E433C:  BL              sub_E3F7A
E4340:  LDR             R0, =(_ZTVNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr - 0xE4346)
E4342:  ADD             R0, PC; _ZTVNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr
E4344:  LDR             R0, [R0]; `vtable for'std::ifstream ...
E4346:  ADD.W           R1, R0, #0x20 ; ' '
E434A:  ADDS            R0, #0xC
E434C:  STR             R0, [SP,#0x158+var_C4]
E434E:  ADD.W           R0, R4, #8
E4352:  STR             R1, [SP,#0x158+var_60]
E4354:  BL              sub_E50B0
E4358:  LDR             R0, =(_ZTTNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr - 0xE435E)
E435A:  ADD             R0, PC; _ZTTNSt6__ndk114basic_ifstreamIcNS_11char_traitsIcEEEE_ptr
E435C:  LDR             R0, [R0]; `VTT for'std::ifstream ...
E435E:  ADDS            R1, R0, #4
E4360:  MOV             R0, R4
E4362:  BLX             j__ZNSt6__ndk113basic_istreamIcNS_11char_traitsIcEEED2Ev; std::istream::~istream()
E4366:  ADD.W           R0, R4, #0x64 ; 'd'
E436A:  BLX             j__ZNSt6__ndk19basic_iosIcNS_11char_traitsIcEEED2Ev; std::ios::~ios()
E436E:  ADD             SP, SP, #0x148
E4370:  POP.W           {R11}
E4374:  POP             {R4-R7,PC}
E4376:  ALIGN 4
E4378:  DCD dword_23DBF8 - 0xE3FF4
E437C:  DCD byte_23DC08 - 0xE4010
E4380:  DCD byte_23DC08 - 0xE401C
E4384:  DCD aLauncher - 0xE401E
E4388:  DCD aNickname - 0xE402E
E438C:  DCD byte_8F794 - 0xE4038
E4390:  DCD dword_23DC38 - 0xE404E
E4394:  DCD aChatPagesize - 0xE408C
E4398:  DCD dword_237518 - 0xE40AE
E439C:  DCD aChatPrintTimes - 0xE40BE
E43A0:  DCD byte_23DC44 - 0xE40DC
E43A4:  DCD aChatFontsize - 0xE40EC
E43A8:  DCD unk_92020 - 0xE4106
E43AC:  DCD dword_23751C - 0xE4108
E43B0:  DCD byte_23DC08 - 0xE4122
E43B4:  DCD aClient - 0xE4124
E43B8:  DCD aServer - 0xE4134
E43BC:  DCD aId - 0xE4146
E43C0:  DCD aServerid - 0xE416E
E43C4:  DCD off_234930 - 0xE4198
E43C8:  DCD off_234988 - 0xE419A
E43CC:  DCD aAxl - 0xE41BC
E43D0:  DCD aInvalidServerD - 0xE41BE
E43D4:  DCD aInvalidServer - 0xE41D4
E43D8:  DCD _ZTISt13runtime_error_ptr - 0xE41DE
E43DC:  DCD _ZNSt15underflow_errorD2Ev_ptr - 0xE41E0
E43E0:  MOVW            R5, #0x1E61
E43E4:  LDRB.W          R0, [SP,#0x158+var_108]
E43E8:  MOVS            R1, #0
E43EA:  STRD.W          R1, R1, [SP,#0x158+var_128]
E43EE:  CMP             R0, #1
E43F0:  STR             R1, [SP,#0x158+var_120]
E43F2:  BNE.W           loc_E42F2
E43F6:  LDR             R0, [SP,#0x158+var_100]; int
E43F8:  LDR             R1, =(aPass - 0xE43FE); "pass" ...
E43FA:  ADD             R1, PC; "pass"
E43FC:  BL              sub_EC70C
E4400:  LDR             R1, [SP,#0x158+var_100]
E4402:  ADDS            R1, #4
E4404:  CMP             R1, R0
E4406:  BEQ.W           loc_E42F2
E440A:  LDR             R1, =(aPass - 0xE4410); "pass" ...
E440C:  ADD             R1, PC; "pass"
E440E:  ADD             R0, SP, #0x158+var_144; int
E4410:  BL              sub_DC6DC
E4414:  LDR             R1, =(byte_8F794 - 0xE441A)
E4416:  ADD             R1, PC; byte_8F794 ; s
E4418:  ADD             R0, SP, #0x158+var_150; int
E441A:  BL              sub_DC6DC
E441E:  ADD             R0, SP, #0x158+var_138
E4420:  ADD             R1, SP, #0x158+var_108
E4422:  ADD             R2, SP, #0x158+var_144
E4424:  ADD             R3, SP, #0x158+var_150
E4426:  BL              sub_E4890
E442A:  LDRB.W          R0, [SP,#0x158+var_150]
E442E:  MOVS            R2, #0
E4430:  VLDR            D16, [SP,#0x158+var_138]
E4434:  LDR             R1, [SP,#0x158+var_130]
E4436:  LSLS            R0, R0, #0x1F
E4438:  STRH.W          R2, [SP,#0x158+var_138]
E443C:  STR             R1, [SP,#0x158+var_120]
E443E:  VSTR            D16, [SP,#0x158+var_128]
E4442:  ITT NE
E4444:  LDRNE           R0, [SP,#0x158+var_148]; void *
E4446:  BLXNE           j__ZdlPv; operator delete(void *)
E444A:  LDRB.W          R0, [SP,#0x158+var_144]
E444E:  LSLS            R0, R0, #0x1F
E4450:  BEQ.W           loc_E42F2
E4454:  LDR             R0, [SP,#0x158+var_13C]; void *
E4456:  BLX             j__ZdlPv; operator delete(void *)
E445A:  B               loc_E42F2
E445C:  MOVS            R0, #8; thrown_size
E445E:  BLX             j___cxa_allocate_exception
E4462:  LDR             R1, =(aJsonDoesNotCon - 0xE446A); "json does not contain test server" ...
E4464:  MOV             R4, R0
E4466:  ADD             R1, PC; "json does not contain test server"
E4468:  BLX             j__ZNSt13runtime_errorC2EPKc; std::runtime_error::runtime_error(char const*)
E446C:  LDR             R0, =(_ZTISt13runtime_error_ptr - 0xE4474)
E446E:  LDR             R2, =(_ZNSt15underflow_errorD2Ev_ptr - 0xE4476)
E4470:  ADD             R0, PC; _ZTISt13runtime_error_ptr
E4472:  ADD             R2, PC; _ZNSt15underflow_errorD2Ev_ptr
E4474:  LDR             R1, [R0]; lptinfo
E4476:  MOV             R0, R4; void *
E4478:  LDR             R2, [R2]; std::underflow_error::~underflow_error() ; void (*)(void *)
E447A:  BLX             j___cxa_throw
E447E:  LDRB.W          R0, [SP,#0x158+var_150]
E4482:  LSLS            R0, R0, #0x1F
E4484:  ITT NE
E4486:  LDRNE           R0, [SP,#0x158+var_148]; void *
E4488:  BLXNE           j__ZdlPv; operator delete(void *)
E448C:  B               loc_E448E
E448E:  LDRB.W          R0, [SP,#0x158+var_144]
E4492:  LSLS            R0, R0, #0x1F
E4494:  BEQ             loc_E44DE
E4496:  LDR             R0, [SP,#0x158+var_13C]; void *
E4498:  B               loc_E44DA
