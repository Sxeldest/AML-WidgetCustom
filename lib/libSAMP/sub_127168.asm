; =========================================================
; Game Engine Function: sub_127168
; Address            : 0x127168 - 0x1272C2
; =========================================================

127168:  PUSH            {R4-R7,LR}
12716A:  ADD             R7, SP, #0xC
12716C:  PUSH.W          {R8-R10}
127170:  SUB             SP, SP, #0x20
127172:  MOV             R8, R0
127174:  LDR             R0, =(off_23494C - 0x12717E)
127176:  MOVW            R5, #0x6AC4
12717A:  ADD             R0, PC; off_23494C
12717C:  MOVT            R5, #0x67 ; 'g'
127180:  LDR             R4, [R0]; dword_23DF24
127182:  LDR             R0, [R4]
127184:  ADD             R0, R5
127186:  BL              sub_1641C4
12718A:  LDR             R0, [R4]
12718C:  MOVW            R2, #0xBD78
127190:  LDR             R1, =(byte_313AA8 - 0x12719E)
127192:  MOVT            R2, #0x46 ; 'F'
127196:  MOVW            R9, #0x3000
12719A:  ADD             R1, PC; byte_313AA8
12719C:  STR             R1, [R0,R5]
12719E:  MOVT            R9, #0x3F ; '?'
1271A2:  LDR             R0, [R4]
1271A4:  MOV             R10, R1
1271A6:  ADDS            R1, R0, R2
1271A8:  LDRB.W          R3, [R1,#0x26C]
1271AC:  CMP             R3, #0x1E
1271AE:  ITT EQ
1271B0:  LDRBEQ.W        R6, [R1,#0x27C]
1271B4:  CMPEQ           R6, #0x1E
1271B6:  BEQ             loc_127274
1271B8:  LDR             R1, =(aAxl - 0x1271C4); "AXL" ...
1271BA:  MOVS            R0, #0x20 ; ' '
1271BC:  LDR             R2, =(aImglimitsInval - 0x1271C8); "ImgLimits: Invalid archive count in lib"... ...
1271BE:  ADDS            R3, #2
1271C0:  ADD             R1, PC; "AXL"
1271C2:  STR             R0, [SP,#0x38+var_38]
1271C4:  ADD             R2, PC; "ImgLimits: Invalid archive count in lib"...
1271C6:  MOVS            R0, #6; prio
1271C8:  BLX             __android_log_print
1271CC:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN9ImgLimitsC1EvE3$_0NS_9allocatorIS3_EEFvvEEE - 0x1271D6); `vtable for'std::__function::__func<ImgLimits::ImgLimits(void)::$_0,std::allocator<ImgLimits::ImgLimits(void)::$_0>,void ()(void)> ...
1271CE:  ADD             R5, SP, #0x38+var_30
1271D0:  LDR             R1, [R4]
1271D2:  ADD             R0, PC; `vtable for'std::__function::__func<ImgLimits::ImgLimits(void)::$_0,std::allocator<ImgLimits::ImgLimits(void)::$_0>,void ()(void)>
1271D4:  STR             R5, [SP,#0x38+var_20]
1271D6:  ADDS            R0, #8
1271D8:  STR             R0, [SP,#0x38+var_30]
1271DA:  ADD.W           R0, R9, R1
1271DE:  ADD.W           R0, R0, #0x78000
1271E2:  MOV             R1, R5
1271E4:  BL              sub_1642EC
1271E8:  MOV             R6, R0
1271EA:  LDR             R0, [SP,#0x38+var_20]
1271EC:  CMP             R5, R0
1271EE:  BEQ             loc_1271F6
1271F0:  CBZ             R0, loc_127200
1271F2:  MOVS            R1, #5
1271F4:  B               loc_1271F8
1271F6:  MOVS            R1, #4
1271F8:  LDR             R2, [R0]
1271FA:  LDR.W           R1, [R2,R1,LSL#2]
1271FE:  BLX             R1
127200:  CMP             R6, #0
127202:  BEQ             loc_12728E
127204:  LDR             R0, =(_ZTVNSt6__ndk110__function6__funcIZN9ImgLimitsC1EvE3$_1NS_9allocatorIS3_EEFvvEEE - 0x12720C); `vtable for'std::__function::__func<ImgLimits::ImgLimits(void)::$_1,std::allocator<ImgLimits::ImgLimits(void)::$_1>,void ()(void)> ...
127206:  LDR             R1, [R4]
127208:  ADD             R0, PC; `vtable for'std::__function::__func<ImgLimits::ImgLimits(void)::$_1,std::allocator<ImgLimits::ImgLimits(void)::$_1>,void ()(void)>
12720A:  STR             R5, [SP,#0x38+var_20]
12720C:  ADDS            R0, #8
12720E:  STR             R0, [SP,#0x38+var_30]
127210:  ADD.W           R0, R1, R9
127214:  MOV             R1, R5
127216:  BL              sub_1642EC
12721A:  MOV             R6, R0
12721C:  LDR             R0, [SP,#0x38+var_20]
12721E:  CMP             R5, R0
127220:  BEQ             loc_127228
127222:  CBZ             R0, loc_127232
127224:  MOVS            R1, #5
127226:  B               loc_12722A
127228:  MOVS            R1, #4
12722A:  LDR             R2, [R0]
12722C:  LDR.W           R1, [R2,R1,LSL#2]
127230:  BLX             R1
127232:  CBZ             R6, loc_1272A0
127234:  LDR             R0, [R4]
127236:  LDR             R1, =(sub_12731C+1 - 0x127246)
127238:  MOV             R2, #0x673124
127240:  ADD             R0, R2
127242:  ADD             R1, PC; sub_12731C
127244:  MOVS            R2, #0
127246:  MOVS            R4, #0
127248:  BL              sub_164196
12724C:  LDR             R0, =(aModloader - 0x127258); "modloader" ...
12724E:  MOVS            R1, #0x72 ; 'r'
127250:  STRH.W          R1, [R10,#(word_313AB0 - 0x313AA8)]
127254:  ADD             R0, PC; "modloader"
127256:  STRB.W          R4, [R10,#(byte_313AD0 - 0x313AA8)]
12725A:  VLDR            D16, [R0]
12725E:  MOV.W           R0, #0xFFFFFFFF
127262:  STR.W           R0, [R10,#(dword_313AD4 - 0x313AA8)]
127266:  MOV             R0, R8
127268:  VSTR            D16, [R10]
12726C:  ADD             SP, SP, #0x20 ; ' '
12726E:  POP.W           {R8-R10}
127272:  POP             {R4-R7,PC}
127274:  LDRB            R2, [R0,R2]
127276:  CMP             R2, #0x1E
127278:  ITT EQ
12727A:  LDRBEQ          R1, [R1,#0x10]
12727C:  CMPEQ           R1, #0x1E
12727E:  BNE             loc_1271B8
127280:  ADD.W           R1, R9, R0
127284:  LDRB.W          R1, [R1,#0x648]
127288:  CMP             R1, #0x1D
12728A:  BNE             loc_1271B8
12728C:  B               loc_127236
12728E:  MOVS            R0, #8; thrown_size
127290:  BLX             j___cxa_allocate_exception
127294:  LDR             R1, =(aInvalidImgArch - 0x12729C); "Invalid IMG archive count" ...
127296:  MOV             R4, R0
127298:  ADD             R1, PC; "Invalid IMG archive count"
12729A:  BLX             j__ZNSt13runtime_errorC2EPKc; std::runtime_error::runtime_error(char const*)
12729E:  B               loc_1272B0
1272A0:  MOVS            R0, #8; thrown_size
1272A2:  BLX             j___cxa_allocate_exception
1272A6:  LDR             R1, =(aInvalidImgArch - 0x1272AE); "Invalid IMG archive count" ...
1272A8:  MOV             R4, R0
1272AA:  ADD             R1, PC; "Invalid IMG archive count"
1272AC:  BLX             j__ZNSt13runtime_errorC2EPKc; std::runtime_error::runtime_error(char const*)
1272B0:  LDR             R0, =(_ZTISt13runtime_error_ptr - 0x1272B8)
1272B2:  LDR             R2, =(_ZNSt15underflow_errorD2Ev_ptr - 0x1272BA)
1272B4:  ADD             R0, PC; _ZTISt13runtime_error_ptr
1272B6:  ADD             R2, PC; _ZNSt15underflow_errorD2Ev_ptr
1272B8:  LDR             R1, [R0]; lptinfo
1272BA:  MOV             R0, R4; void *
1272BC:  LDR             R2, [R2]; std::underflow_error::~underflow_error() ; void (*)(void *)
1272BE:  BLX             j___cxa_throw
