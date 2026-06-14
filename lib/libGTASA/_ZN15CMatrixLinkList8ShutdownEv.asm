; =========================================================
; Game Engine Function: _ZN15CMatrixLinkList8ShutdownEv
; Address            : 0x40805C - 0x40809C
; =========================================================

40805C:  PUSH            {R4-R7,LR}
40805E:  ADD             R7, SP, #0xC
408060:  PUSH.W          {R8}
408064:  MOV             R4, R0
408066:  LDR.W           R0, [R4,#0x1F8]
40806A:  CBZ             R0, loc_408090
40806C:  LDR.W           R1, [R0,#-4]
408070:  SUB.W           R8, R0, #8
408074:  CBZ             R1, loc_40808A
408076:  MOVS            R2, #0x54 ; 'T'
408078:  SUB.W           R5, R0, #0x54 ; 'T'
40807C:  MUL.W           R6, R1, R2
408080:  ADDS            R0, R5, R6; this
408082:  BLX             j__ZN7CMatrixD2Ev; CMatrix::~CMatrix()
408086:  SUBS            R6, #0x54 ; 'T'
408088:  BNE             loc_408080
40808A:  MOV             R0, R8; void *
40808C:  BLX             _ZdaPv; operator delete[](void *)
408090:  MOVS            R0, #0
408092:  STR.W           R0, [R4,#0x1F8]
408096:  POP.W           {R8}
40809A:  POP             {R4-R7,PC}
