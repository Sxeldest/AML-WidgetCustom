; =========================================================
; Game Engine Function: sub_15FD40
; Address            : 0x15FD40 - 0x15FE1A
; =========================================================

15FD40:  PUSH            {R4-R7,LR}
15FD42:  ADD             R7, SP, #0xC
15FD44:  PUSH.W          {R8-R11}
15FD48:  SUB             SP, SP, #0x24
15FD4A:  MOV             R10, R0
15FD4C:  LDR             R0, =(_ZTV24UnhandledExceptionFilter - 0x15FD58); `vtable for'UnhandledExceptionFilter ...
15FD4E:  ADDW            R5, R10, #0xC38
15FD52:  MOVS            R1, #0
15FD54:  ADD             R0, PC; `vtable for'UnhandledExceptionFilter
15FD56:  STR.W           R1, [R10,#0x804]
15FD5A:  ADDS            R0, #8
15FD5C:  STR.W           R0, [R10]
15FD60:  STR.W           R1, [R10,#0x808]
15FD64:  MOV             R0, R5; int
15FD66:  STR.W           R1, [R10,#0x80C]
15FD6A:  MOV.W           R1, #0x1040; n
15FD6E:  BLX             sub_22178C
15FD72:  ADD             R1, SP, #0x40+act.sa_mask.__val+0xC; rlimits
15FD74:  MOVS            R0, #3; resource
15FD76:  BLX             getrlimit
15FD7A:  LDR             R6, [SP,#0x40+act.sa_mask.__val+0xC]
15FD7C:  MOV             R0, R6; unsigned int
15FD7E:  BLX             j__Znaj; operator new[](uint)
15FD82:  MOVS            R1, #0
15FD84:  ADD.W           R2, R10, #0x810
15FD88:  STM             R2!, {R0,R1,R6}
15FD8A:  ADD.W           R0, R10, #0x810; ss
15FD8E:  ADDW            R1, R10, #0x81C; oss
15FD92:  BLX             sigaltstack
15FD96:  CBNZ            R0, loc_15FE08
15FD98:  LDR             R0, =(sub_15FE58+1 - 0x15FDA6)
15FD9A:  MOVS            R1, #4
15FD9C:  MOVS            R6, #0
15FD9E:  MOVT            R1, #0x800
15FDA2:  ADD             R0, PC; sub_15FE58
15FDA4:  STR             R6, [SP,#0x40+act.sa_mask]
15FDA6:  STRD.W          R1, R6, [SP,#0x40+act.sa_mask.__val+4]
15FDAA:  ADD.W           R9, SP, #0x40+sig
15FDAE:  STR             R0, [SP,#0x40+act]
15FDB0:  LDR             R0, =(asc_BA758 - 0x15FDB6); "\v" ...
15FDB2:  ADD             R0, PC; "\v"
15FDB4:  MOV             R11, R0
15FDB6:  LDR             R0, =(aUnhandledexcep - 0x15FDBC); "UnhandledExceptionFilter: Install handl"... ...
15FDB8:  ADD             R0, PC; "UnhandledExceptionFilter: Install handl"...
15FDBA:  MOV             R8, R0
15FDBC:  LDR.W           R0, [R11,R6]; sig
15FDC0:  STR             R0, [SP,#0x40+sig]
15FDC2:  ADD.W           R1, R10, R0,LSL#4
15FDC6:  ADDW            R2, R1, #0x828; oact
15FDCA:  ADD             R1, SP, #0x40+act; act
15FDCC:  BLX             sigaction
15FDD0:  LDR             R4, [SP,#0x40+sig]
15FDD2:  MOV             R0, R4; sig
15FDD4:  BLX             strsignal
15FDD8:  MOV             R1, R0; src
15FDDA:  ADD.W           R0, R5, R4,LSL#6; dest
15FDDE:  MOVS            R2, #0x40 ; '@'; n
15FDE0:  BLX             strncpy
15FDE4:  LDR             R0, [SP,#0x40+sig]
15FDE6:  ADD.W           R0, R5, R0,LSL#6
15FDEA:  STR             R0, [SP,#0x40+var_40]
15FDEC:  MOVS            R0, #1
15FDEE:  MOV             R1, R8
15FDF0:  MOVS            R2, #0x37 ; '7'
15FDF2:  MOV             R3, R9
15FDF4:  BL              sub_1607C4
15FDF8:  ADDS            R6, #4
15FDFA:  CMP             R6, #0x2C ; ','
15FDFC:  BNE             loc_15FDBC
15FDFE:  MOV             R0, R10
15FE00:  ADD             SP, SP, #0x24 ; '$'
15FE02:  POP.W           {R8-R11}
15FE06:  POP             {R4-R7,PC}
15FE08:  BLX             __errno
15FE0C:  MOV             R1, R0
15FE0E:  LDR             R0, =(aUnhandledexcep_0 - 0x15FE14); "UnhandledExceptionFilter: Can't setup s"... ...
15FE10:  ADD             R0, PC; "UnhandledExceptionFilter: Can't setup s"...
15FE12:  BL              sub_15FE3C
15FE16:  BLX             j__ZSt9terminatev; std::terminate(void)
