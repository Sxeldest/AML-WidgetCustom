; =========================================================
; Game Engine Function: sub_1A76EC
; Address            : 0x1A76EC - 0x1A7762
; =========================================================

1A76EC:  PUSH            {R4,R6,R7,LR}
1A76EE:  ADD             R7, SP, #8
1A76F0:  SUB             SP, SP, #8
1A76F2:  LDR             R0, =(unk_9FD450 - 0x1A76FE)
1A76F4:  MOVS            R4, #0xFF
1A76F6:  MOVS            R1, #0xFF; unsigned __int8
1A76F8:  MOVS            R2, #0; unsigned __int8
1A76FA:  ADD             R0, PC; unk_9FD450 ; this
1A76FC:  MOVS            R3, #0; unsigned __int8
1A76FE:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A7700:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A7704:  LDR             R0, =(unk_9FD454 - 0x1A7710)
1A7706:  MOVS            R1, #0xFF; unsigned __int8
1A7708:  MOVS            R2, #0xFF; unsigned __int8
1A770A:  MOVS            R3, #0; unsigned __int8
1A770C:  ADD             R0, PC; unk_9FD454 ; this
1A770E:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A7710:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A7714:  LDR             R0, =(unk_9FD458 - 0x1A7720)
1A7716:  MOVS            R1, #0x64 ; 'd'
1A7718:  STR             R1, [SP,#0x10+var_10]; unsigned __int8
1A771A:  MOVS            R1, #0xFF; unsigned __int8
1A771C:  ADD             R0, PC; unk_9FD458 ; this
1A771E:  MOVS            R2, #0; unsigned __int8
1A7720:  MOVS            R3, #0; unsigned __int8
1A7722:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A7726:  LDR             R0, =(unk_9FD45C - 0x1A7732)
1A7728:  MOVS            R1, #0xFF; unsigned __int8
1A772A:  MOVS            R2, #0; unsigned __int8
1A772C:  MOVS            R3, #0; unsigned __int8
1A772E:  ADD             R0, PC; unk_9FD45C ; this
1A7730:  STR             R4, [SP,#0x10+var_10]; unsigned __int8
1A7732:  BLX             j__ZN5CRGBAC2Ehhhh; CRGBA::CRGBA(uchar,uchar,uchar,uchar)
1A7736:  LDR             R0, =(_ZN16CTaskSimpleFight17m_sStrikeColModelE_ptr - 0x1A773C)
1A7738:  ADD             R0, PC; _ZN16CTaskSimpleFight17m_sStrikeColModelE_ptr
1A773A:  LDR             R4, [R0]; CTaskSimpleFight::m_sStrikeColModel ...
1A773C:  MOV             R0, R4; this
1A773E:  BLX             j__ZN9CColModelC2Ev; CColModel::CColModel(void)
1A7742:  LDR             R0, =(_ZN9CColModelD2Ev_ptr_0 - 0x1A774C)
1A7744:  MOV             R1, R4; obj
1A7746:  LDR             R2, =(unk_67A000 - 0x1A774E)
1A7748:  ADD             R0, PC; _ZN9CColModelD2Ev_ptr_0
1A774A:  ADD             R2, PC; unk_67A000 ; lpdso_handle
1A774C:  LDR             R0, [R0]; CColModel::~CColModel() ; lpfunc
1A774E:  BLX             __cxa_atexit
1A7752:  LDR             R0, =(_ZN16CTaskSimpleFight16m_sStrikeColDataE_ptr - 0x1A7758)
1A7754:  ADD             R0, PC; _ZN16CTaskSimpleFight16m_sStrikeColDataE_ptr
1A7756:  LDR             R0, [R0]; this
1A7758:  ADD             SP, SP, #8
1A775A:  POP.W           {R4,R6,R7,LR}
1A775E:  B.W             j_j__ZN14CCollisionDataC2Ev; j_CCollisionData::CCollisionData(void)
