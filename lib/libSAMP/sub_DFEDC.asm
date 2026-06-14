; =========================================================
; Game Engine Function: sub_DFEDC
; Address            : 0xDFEDC - 0xDFF54
; =========================================================

DFEDC:  PUSH            {R4-R7,LR}
DFEDE:  ADD             R7, SP, #0xC
DFEE0:  PUSH.W          {R8,R9,R11}
DFEE4:  CMP             R1, R2
DFEE6:  BEQ             loc_DFF42
DFEE8:  SUBS            R6, R2, R1
DFEEA:  MOV             R9, R2
DFEEC:  MOV             R8, R0
DFEEE:  MOV             R5, R1
DFEF0:  MOV             R0, R1; s
DFEF2:  MOVS            R1, #0x7D ; '}'; c
DFEF4:  MOV             R2, R6; n
DFEF6:  BLX             memchr
DFEFA:  CBZ             R0, loc_DFF32
DFEFC:  MOV             R4, R0
DFEFE:  ADDS            R0, R4, #1
DFF00:  CMP             R0, R9
DFF02:  BEQ             loc_DFF48
DFF04:  LDRB            R1, [R0]
DFF06:  CMP             R1, #0x7D ; '}'
DFF08:  BNE             loc_DFF48
DFF0A:  LDR.W           R6, [R8]
DFF0E:  SUBS            R0, R0, R5
DFF10:  ADDS            R1, R5, R0
DFF12:  MOV             R0, R5
DFF14:  LDR             R2, [R6,#0x10]
DFF16:  BL              sub_DFAB8
DFF1A:  ADDS            R5, R4, #2
DFF1C:  STR             R0, [R6,#0x10]
DFF1E:  SUB.W           R6, R9, R5
DFF22:  MOVS            R1, #0x7D ; '}'; c
DFF24:  MOV             R0, R5; s
DFF26:  MOV             R2, R6; n
DFF28:  BLX             memchr
DFF2C:  MOV             R4, R0
DFF2E:  CMP             R0, #0
DFF30:  BNE             loc_DFEFE
DFF32:  LDR.W           R4, [R8]
DFF36:  ADDS            R1, R5, R6
DFF38:  MOV             R0, R5
DFF3A:  LDR             R2, [R4,#0x10]
DFF3C:  BL              sub_DFAB8
DFF40:  STR             R0, [R4,#0x10]
DFF42:  POP.W           {R8,R9,R11}
DFF46:  POP             {R4-R7,PC}
DFF48:  LDR             R1, =(aUnmatchedInFor - 0xDFF52); "unmatched '}' in format string" ...
DFF4A:  LDR.W           R0, [R8]; this
DFF4E:  ADD             R1, PC; "unmatched '}' in format string"
DFF50:  BLX             j__ZN3fmt2v86detail13error_handler8on_errorEPKc; fmt::v8::detail::error_handler::on_error(char const*)
