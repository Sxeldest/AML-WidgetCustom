; =========================================================
; Game Engine Function: sub_EFEA0
; Address            : 0xEFEA0 - 0xF010C
; =========================================================

EFEA0:  PUSH            {R4-R7,LR}
EFEA2:  ADD             R7, SP, #0xC
EFEA4:  PUSH.W          {R8-R11}
EFEA8:  SUB             SP, SP, #0x11C
EFEAA:  MOV             R8, R0
EFEAC:  LDR             R0, =(byte_23DECC - 0xEFEB6)
EFEAE:  MOV             R4, R3
EFEB0:  MOV             R10, R2
EFEB2:  ADD             R0, PC; byte_23DECC
EFEB4:  MOV             R5, R1
EFEB6:  LDRB            R0, [R0]
EFEB8:  DMB.W           ISH
EFEBC:  LDR             R6, =(dword_23DEC8 - 0xEFEC2)
EFEBE:  ADD             R6, PC; dword_23DEC8
EFEC0:  LSLS            R0, R0, #0x1F
EFEC2:  BEQ.W           loc_F00EC
EFEC6:  LDR             R1, [R6]
EFEC8:  MOV             R0, R4
EFECA:  BLX             j__ZNKSt6__ndk16localeeqERKS0_; std::locale::operator==(std::locale const&)
EFECE:  CBZ             R0, loc_EFEDE
EFED0:  ADD.W           R2, R5, R10
EFED4:  MOV             R0, R8
EFED6:  MOV             R1, R5
EFED8:  BL              sub_DCF30
EFEDC:  B               loc_F00B6
EFEDE:  ADD.W           R9, SP, #0x138+var_A0
EFEE2:  MOV             R1, R5; int
EFEE4:  MOV             R2, R10; int
EFEE6:  MOV             R3, R4; this
EFEE8:  MOV             R0, R9; int
EFEEA:  BL              sub_F01C4
EFEEE:  MOVS            R1, #0x80
EFEF0:  LDR             R0, =(_ZTVN3fmt2v819basic_memory_bufferIcLj128ENSt6__ndk19allocatorIcEEEE - 0xEFF02); `vtable for'fmt::v8::basic_memory_buffer<char,128u,std::allocator<char>> ...
EFEF2:  LDR             R2, [SP,#0x138+var_20]
EFEF4:  MOVS            R4, #0
EFEF6:  STR             R1, [SP,#0x138+var_128]
EFEF8:  ADD             R1, SP, #0x138+var_134
EFEFA:  ADD.W           R5, R1, #0x10
EFEFE:  ADD             R0, PC; `vtable for'fmt::v8::basic_memory_buffer<char,128u,std::allocator<char>>
EFF00:  CMP             R9, R2
EFF02:  ADD.W           R0, R0, #8
EFF06:  STR             R5, [SP,#0x138+var_130]
EFF08:  STR             R0, [SP,#0x138+var_134]
EFF0A:  STR             R4, [SP,#0x138+var_12C]
EFF0C:  BEQ.W           loc_F00A2
EFF10:  MOVW            R11, #0xFFFE
EFF14:  STR             R5, [SP,#0x138+var_138]
EFF16:  ADD             R6, SP, #0x138+var_A0
EFF18:  ADD             R5, SP, #0x138+var_134
EFF1A:  MOV             R9, #0xFFFFFFC0
EFF1E:  MOVT            R11, #0x3FF
EFF22:  LDR.W           R10, [R6]
EFF26:  CMP.W           R10, #0x7F
EFF2A:  BHI             loc_EFF42
EFF2C:  LDRD.W          R0, R2, [SP,#0x138+var_12C]
EFF30:  ADDS            R1, R0, #1; unsigned int
EFF32:  CMP             R2, R1
EFF34:  BCS.W           loc_F0088
EFF38:  LDR             R0, [SP,#0x138+var_134]
EFF3A:  LDR             R2, [R0]
EFF3C:  MOV             R0, R5; int
EFF3E:  BLX             R2; sub_F0248
EFF40:  B               loc_F0084
EFF42:  CMP.W           R4, R10,LSR#11
EFF46:  BNE             loc_EFF82
EFF48:  LDRD.W          R0, R2, [SP,#0x138+var_12C]
EFF4C:  ADDS            R1, R0, #1; unsigned int
EFF4E:  CMP             R2, R1
EFF50:  BCS             loc_EFF5E
EFF52:  LDR             R0, [SP,#0x138+var_134]
EFF54:  LDR             R2, [R0]
EFF56:  MOV             R0, R5; int
EFF58:  BLX             R2; sub_F0248
EFF5A:  LDR             R0, [SP,#0x138+var_12C]
EFF5C:  ADDS            R1, R0, #1
EFF5E:  LDR             R3, [SP,#0x138+var_130]
EFF60:  ORR.W           R2, R9, R10,LSR#6
EFF64:  STR             R1, [SP,#0x138+var_12C]
EFF66:  BFI.W           R10, R11, #6, #0x1A
EFF6A:  STRB            R2, [R3,R0]
EFF6C:  LDRD.W          R0, R2, [SP,#0x138+var_12C]
EFF70:  ADDS            R1, R0, #1; unsigned int
EFF72:  CMP             R2, R1
EFF74:  BCS.W           loc_F0088
EFF78:  LDR             R0, [SP,#0x138+var_134]
EFF7A:  LDR             R2, [R0]
EFF7C:  MOV             R0, R5; int
EFF7E:  BLX             R2; sub_F0248
EFF80:  B               loc_F0084
EFF82:  CMP.W           R10, #0xD800
EFF86:  BCC             loc_F0026
EFF88:  MOVW            R0, #0x1FFF
EFF8C:  BIC.W           R0, R10, R0
EFF90:  CMP.W           R0, #0xE000
EFF94:  BEQ             loc_F0026
EFF96:  SUB.W           R0, R10, #0x10000
EFF9A:  CMP.W           R4, R0,LSR#20
EFF9E:  BNE.W           loc_F00C0
EFFA2:  LDRD.W          R0, R2, [SP,#0x138+var_12C]
EFFA6:  ADDS            R1, R0, #1; unsigned int
EFFA8:  CMP             R2, R1
EFFAA:  BCS             loc_EFFB8
EFFAC:  LDR             R0, [SP,#0x138+var_134]
EFFAE:  LDR             R2, [R0]
EFFB0:  MOV             R0, R5; int
EFFB2:  BLX             R2; sub_F0248
EFFB4:  LDR             R0, [SP,#0x138+var_12C]
EFFB6:  ADDS            R1, R0, #1
EFFB8:  LDR             R3, [SP,#0x138+var_130]
EFFBA:  MOV             R2, #0xFFFFFFF0
EFFBE:  ORR.W           R2, R2, R10,LSR#18
EFFC2:  STR             R1, [SP,#0x138+var_12C]
EFFC4:  STRB            R2, [R3,R0]
EFFC6:  LDRD.W          R0, R2, [SP,#0x138+var_12C]
EFFCA:  ADDS            R1, R0, #1; unsigned int
EFFCC:  CMP             R2, R1
EFFCE:  BCS             loc_EFFDC
EFFD0:  LDR             R0, [SP,#0x138+var_134]
EFFD2:  LDR             R2, [R0]
EFFD4:  MOV             R0, R5; int
EFFD6:  BLX             R2; sub_F0248
EFFD8:  LDR             R0, [SP,#0x138+var_12C]
EFFDA:  ADDS            R1, R0, #1
EFFDC:  LDR             R3, [SP,#0x138+var_130]
EFFDE:  MOV.W           R2, R10,LSR#12
EFFE2:  BFI.W           R2, R11, #6, #0x1A
EFFE6:  STR             R1, [SP,#0x138+var_12C]
EFFE8:  STRB            R2, [R3,R0]
EFFEA:  LDRD.W          R0, R2, [SP,#0x138+var_12C]
EFFEE:  ADDS            R1, R0, #1; unsigned int
EFFF0:  CMP             R2, R1
EFFF2:  BCS             loc_F0000
EFFF4:  LDR             R0, [SP,#0x138+var_134]
EFFF6:  LDR             R2, [R0]
EFFF8:  MOV             R0, R5; int
EFFFA:  BLX             R2; sub_F0248
EFFFC:  LDR             R0, [SP,#0x138+var_12C]
EFFFE:  ADDS            R1, R0, #1
F0000:  LDR             R3, [SP,#0x138+var_130]
F0002:  MOV.W           R2, R10,LSR#6
F0006:  BFI.W           R2, R11, #6, #0x1A
F000A:  STR             R1, [SP,#0x138+var_12C]
F000C:  BFI.W           R10, R11, #6, #0x1A
F0010:  STRB            R2, [R3,R0]
F0012:  LDRD.W          R0, R2, [SP,#0x138+var_12C]
F0016:  ADDS            R1, R0, #1; unsigned int
F0018:  CMP             R2, R1
F001A:  BCS             loc_F0088
F001C:  LDR             R0, [SP,#0x138+var_134]
F001E:  LDR             R2, [R0]
F0020:  MOV             R0, R5; int
F0022:  BLX             R2; sub_F0248
F0024:  B               loc_F0084
F0026:  LDRD.W          R0, R2, [SP,#0x138+var_12C]
F002A:  ADDS            R1, R0, #1; unsigned int
F002C:  CMP             R2, R1
F002E:  BCS             loc_F003C
F0030:  LDR             R0, [SP,#0x138+var_134]
F0032:  LDR             R2, [R0]
F0034:  MOV             R0, R5; int
F0036:  BLX             R2; sub_F0248
F0038:  LDR             R0, [SP,#0x138+var_12C]
F003A:  ADDS            R1, R0, #1
F003C:  LDR             R3, [SP,#0x138+var_130]
F003E:  MOV             R2, #0xFFFFFFE0
F0042:  ORR.W           R2, R2, R10,LSR#12
F0046:  STR             R1, [SP,#0x138+var_12C]
F0048:  STRB            R2, [R3,R0]
F004A:  LDRD.W          R0, R2, [SP,#0x138+var_12C]
F004E:  ADDS            R1, R0, #1; unsigned int
F0050:  CMP             R2, R1
F0052:  BCS             loc_F0060
F0054:  LDR             R0, [SP,#0x138+var_134]
F0056:  LDR             R2, [R0]
F0058:  MOV             R0, R5; int
F005A:  BLX             R2; sub_F0248
F005C:  LDR             R0, [SP,#0x138+var_12C]
F005E:  ADDS            R1, R0, #1
F0060:  LDR             R3, [SP,#0x138+var_130]
F0062:  MOV.W           R2, R10,LSR#6
F0066:  BFI.W           R2, R11, #6, #0x1A
F006A:  STR             R1, [SP,#0x138+var_12C]
F006C:  BFI.W           R10, R11, #6, #0x1A
F0070:  STRB            R2, [R3,R0]
F0072:  LDRD.W          R0, R2, [SP,#0x138+var_12C]
F0076:  ADDS            R1, R0, #1; unsigned int
F0078:  CMP             R2, R1
F007A:  BCS             loc_F0088
F007C:  LDR             R0, [SP,#0x138+var_134]
F007E:  LDR             R2, [R0]
F0080:  MOV             R0, R5; int
F0082:  BLX             R2; sub_F0248
F0084:  LDR             R0, [SP,#0x138+var_12C]
F0086:  ADDS            R1, R0, #1
F0088:  LDR             R2, [SP,#0x138+var_130]
F008A:  ADDS            R6, #4
F008C:  STR             R1, [SP,#0x138+var_12C]
F008E:  STRB.W          R10, [R2,R0]
F0092:  LDR             R0, [SP,#0x138+var_20]
F0094:  CMP             R6, R0
F0096:  BNE.W           loc_EFF22
F009A:  LDRD.W          R1, R4, [SP,#0x138+var_130]
F009E:  LDR             R5, [SP,#0x138+var_138]
F00A0:  B               loc_F00A4
F00A2:  MOV             R1, R5
F00A4:  ADDS            R2, R1, R4
F00A6:  MOV             R0, R8
F00A8:  BL              sub_DCF30
F00AC:  LDR             R0, [SP,#0x138+var_130]; void *
F00AE:  CMP             R0, R5
F00B0:  BEQ             loc_F00B6
F00B2:  BLX             j__ZdlPv; operator delete(void *)
F00B6:  MOV             R0, R8
F00B8:  ADD             SP, SP, #0x11C
F00BA:  POP.W           {R8-R11}
F00BE:  POP             {R4-R7,PC}
F00C0:  MOVS            R0, #8; thrown_size
F00C2:  BLX             j___cxa_allocate_exception
F00C6:  LDR             R1, =(aFailedToFormat - 0xF00CE); "failed to format time" ...
F00C8:  MOV             R4, R0
F00CA:  ADD             R1, PC; "failed to format time"
F00CC:  BLX             j__ZNSt13runtime_errorC2EPKc_0; std::runtime_error::runtime_error(char const*)
F00D0:  LDR             R0, =(_ZTVN3fmt2v812format_errorE_ptr - 0xF00D8)
F00D2:  LDR             R1, =(_ZTIN3fmt2v812format_errorE_ptr - 0xF00DC)
F00D4:  ADD             R0, PC; _ZTVN3fmt2v812format_errorE_ptr
F00D6:  LDR             R2, =(_ZN3fmt2v812format_errorD2Ev_ptr - 0xF00E0)
F00D8:  ADD             R1, PC; _ZTIN3fmt2v812format_errorE_ptr
F00DA:  LDR             R0, [R0]; `vtable for'fmt::v8::format_error ...
F00DC:  ADD             R2, PC; _ZN3fmt2v812format_errorD2Ev_ptr
F00DE:  LDR             R1, [R1]; lptinfo
F00E0:  ADDS            R0, #8
F00E2:  LDR             R2, [R2]; fmt::v8::format_error::~format_error() ; void (*)(void *)
F00E4:  STR             R0, [R4]
F00E6:  MOV             R0, R4; void *
F00E8:  BLX             j___cxa_throw
F00EC:  LDR             R0, =(byte_23DECC - 0xF00F2)
F00EE:  ADD             R0, PC; byte_23DECC ; __guard *
F00F0:  BLX             j___cxa_guard_acquire
F00F4:  CMP             R0, #0
F00F6:  BEQ.W           loc_EFEC6
F00FA:  BLX             j__ZNSt6__ndk16locale7classicEv; std::locale::classic(void)
F00FE:  LDR             R1, =(byte_23DECC - 0xF0106)
F0100:  STR             R0, [R6]
F0102:  ADD             R1, PC; byte_23DECC
F0104:  MOV             R0, R1; __guard *
F0106:  BLX             j___cxa_guard_release
F010A:  B               loc_EFEC6
