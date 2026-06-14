; =========================================================
; Game Engine Function: sub_1A62E8
; Address            : 0x1A62E8 - 0x1A6324
; =========================================================

1A62E8:  PUSH            {R4,R6,R7,LR}
1A62EA:  ADD             R7, SP, #8
1A62EC:  SUB             SP, SP, #8
1A62EE:  LDR             R0, =(CloudColor_ptr - 0x1A62FA)
1A62F0:  MOVS            R1, #0xFF
1A62F2:  STR             R1, [SP,#0x10+var_10]; unsigned __int8
1A62F4:  MOVS            R1, #0x4C ; 'L'; unsigned __int8
1A62F6:  ADD             R0, PC; CloudColor_ptr
1A62F8:  MOVS            R2, #0xC4; unsigned __int8
1A62FA:  MOVS            R3, #0xE8; unsigned __int8
1A62FC:  LDR             R0, [R0]; CloudColor ; this
1A62FE:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A6302:  LDR             R0, =(FrontEndMenuManager_ptr - 0x1A6308)
1A6304:  ADD             R0, PC; FrontEndMenuManager_ptr
1A6306:  LDR             R4, [R0]; FrontEndMenuManager
1A6308:  MOV             R0, R4; this
1A630A:  BLX             j__ZN12CMenuManagerC2Ev; CMenuManager::CMenuManager(void)
1A630E:  LDR             R0, =(_ZN12CMenuManagerD2Ev_ptr - 0x1A6318)
1A6310:  MOV             R1, R4; obj
1A6312:  LDR             R2, =(unk_67A000 - 0x1A631A)
1A6314:  ADD             R0, PC; _ZN12CMenuManagerD2Ev_ptr
1A6316:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A6318:  LDR             R0, [R0]; CMenuManager::~CMenuManager() ; lpfunc
1A631A:  ADD             SP, SP, #8
1A631C:  POP.W           {R4,R6,R7,LR}
1A6320:  B.W             j___cxa_atexit
