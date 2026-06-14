; =========================================================
; Game Engine Function: _Z15OS_ThreadLaunchPFjPvES_jPKci16OSThreadPriority
; Address            : 0x26BFB4 - 0x26C0E8
; =========================================================

26BFB4:  PUSH            {R4-R7,LR}
26BFB6:  ADD             R7, SP, #0xC
26BFB8:  PUSH.W          {R8-R11}
26BFBC:  SUB             SP, SP, #0xC
26BFBE:  MOV             R4, R0
26BFC0:  MOVS            R0, #0x48 ; 'H'; byte_count
26BFC2:  MOV             R8, R3
26BFC4:  MOV             R10, R2
26BFC6:  MOV             R6, R1
26BFC8:  BLX             malloc
26BFCC:  MOV             R9, R0
26BFCE:  MOVS            R0, #0xC; byte_count
26BFD0:  BLX             malloc
26BFD4:  LDR.W           R11, [R7,#arg_4]
26BFD8:  MOV             R5, R0
26BFDA:  CMP.W           R8, #0
26BFDE:  MOV.W           R0, #0
26BFE2:  STRD.W          R4, R6, [R5]
26BFE6:  STR             R0, [R5,#8]
26BFE8:  BEQ             loc_26BFF4
26BFEA:  MOV             R0, R9; char *
26BFEC:  MOV             R1, R8; char *
26BFEE:  BLX             strcpy
26BFF2:  B               loc_26C006
26BFF4:  LDR             R0, =(aAppthread - 0x26C000); "AppThread"
26BFF6:  MOVS            R1, #0x64 ; 'd'
26BFF8:  STRH.W          R1, [R9,#8]
26BFFC:  ADD             R0, PC; "AppThread"
26BFFE:  VLDR            D16, [R0]
26C002:  VST1.8          {D16}, [R9]
26C006:  MOVS            R0, #0
26C008:  MOV             R6, R9
26C00A:  STR.W           R0, [R6,#0x24]!
26C00E:  ADDS            R4, R6, #4
26C010:  STR             R0, [SP,#0x28+stacksize]
26C012:  STR.W           R5, [R6,#-4]
26C016:  STRH            R0, [R6,#0x1C]
26C018:  MOV             R0, R4; attr
26C01A:  STR.W           R10, [R6,#0x20]
26C01E:  BLX             pthread_attr_init
26C022:  ADD             R1, SP, #0x28+stacksize; stacksize
26C024:  MOV             R0, R4; attr
26C026:  BLX             pthread_attr_getstacksize
26C02A:  MOVS            R0, #0; algorithm
26C02C:  BLX             sched_get_priority_min
26C030:  MOV             R5, R0
26C032:  MOVS            R0, #0; algorithm
26C034:  BLX             sched_get_priority_max
26C038:  ADD             R1, SP, #0x28+param; param
26C03A:  MOV             R10, R0
26C03C:  MOV             R0, R4; attr
26C03E:  BLX             pthread_attr_getschedparam
26C042:  CMP.W           R11, #3; switch 4 cases
26C046:  BHI             def_26C048; jumptable 0026C048 default case
26C048:  TBB.W           [PC,R11]; switch jump
26C04C:  DCB 0x1E; jump table for switch statement
26C04D:  DCB 2
26C04E:  DCB 0xF
26C04F:  DCB 0x1D
26C050:  SUB.W           R0, R10, R5; jumptable 0026C048 case 1
26C054:  MOV             R1, #0x55555556
26C05C:  LSLS            R0, R0, #1
26C05E:  SMMUL.W         R0, R0, R1
26C062:  ADD.W           R0, R0, R0,LSR#31
26C066:  ADD             R5, R0
26C068:  B               loc_26C088; jumptable 0026C048 case 0
26C06A:  SUB.W           R0, R10, R5; jumptable 0026C048 case 2
26C06E:  MOV             R1, #0x66666667
26C076:  LSLS            R0, R0, #2
26C078:  SMMUL.W         R0, R0, R1
26C07C:  ASRS            R1, R0, #1
26C07E:  ADD.W           R0, R1, R0,LSR#31
26C082:  ADD             R5, R0
26C084:  B               loc_26C088; jumptable 0026C048 case 0
26C086:  MOV             R5, R10; jumptable 0026C048 case 3
26C088:  STR             R5, [SP,#0x28+param]; jumptable 0026C048 case 0
26C08A:  ADD             R1, SP, #0x28+param; jumptable 0026C048 default case
26C08C:  MOV             R0, R4; attr
26C08E:  BLX             pthread_attr_setschedparam
26C092:  MOVS            R0, #0x28 ; '('; byte_count
26C094:  BLX             malloc
26C098:  MOV             R5, R0
26C09A:  LDR             R0, =(_Z12ANDRunThreadPv_ptr - 0x26C0A4)
26C09C:  MOV             R1, R9; char *
26C09E:  MOVS            R2, #0x1F; size_t
26C0A0:  ADD             R0, PC; _Z12ANDRunThreadPv_ptr
26C0A2:  LDR             R0, [R0]; ANDRunThread(void *)
26C0A4:  STRD.W          R9, R0, [R5]
26C0A8:  ADD.W           R0, R5, #8; char *
26C0AC:  BLX             strncpy
26C0B0:  LDR             R2, =(sub_27A128+1 - 0x26C0BC)
26C0B2:  MOV             R0, R6; newthread
26C0B4:  MOV             R1, R4; attr
26C0B6:  MOV             R3, R5; arg
26C0B8:  ADD             R2, PC; sub_27A128 ; start_routine
26C0BA:  BLX             pthread_create
26C0BE:  CMP             R0, #0
26C0C0:  ITT NE
26C0C2:  MOVNE           R0, R5; p
26C0C4:  BLXNE           free
26C0C8:  LDR.W           R0, [R9,#0x24]; target_thread
26C0CC:  ADD             R2, SP, #0x28+param; param
26C0CE:  MOVS            R1, #0; policy
26C0D0:  BLX             pthread_setschedparam
26C0D4:  LDR.W           R0, [R9,#0x24]
26C0D8:  MOV             R1, R8
26C0DA:  BLX             pthread_setname_np
26C0DE:  MOV             R0, R9
26C0E0:  ADD             SP, SP, #0xC
26C0E2:  POP.W           {R8-R11}
26C0E6:  POP             {R4-R7,PC}
