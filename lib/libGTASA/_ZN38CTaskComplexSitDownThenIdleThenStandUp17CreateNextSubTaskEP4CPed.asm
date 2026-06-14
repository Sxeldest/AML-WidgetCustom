; =========================================================
; Game Engine Function: _ZN38CTaskComplexSitDownThenIdleThenStandUp17CreateNextSubTaskEP4CPed
; Address            : 0x4EC868 - 0x4EC94E
; =========================================================

4EC868:  PUSH            {R4,R5,R7,LR}
4EC86A:  ADD             R7, SP, #8
4EC86C:  MOV             R4, R0
4EC86E:  LDR             R0, [R4,#8]
4EC870:  LDR             R1, [R0]
4EC872:  LDR             R1, [R1,#0x14]
4EC874:  BLX             R1
4EC876:  SUB.W           R2, R0, #0xCB; switch 20 cases
4EC87A:  MOVS            R0, #0
4EC87C:  CMP             R2, #0x13
4EC87E:  BHI.W           def_4EC884; jumptable 004EC884 default case, cases 204-219
4EC882:  MOVS            R1, #0xDE; unsigned int
4EC884:  TBB.W           [PC,R2]; switch jump
4EC888:  DCB 0xA; jump table for switch statement
4EC889:  DCB 0x62
4EC88A:  DCB 0x62
4EC88B:  DCB 0x62
4EC88C:  DCB 0x62
4EC88D:  DCB 0x62
4EC88E:  DCB 0x62
4EC88F:  DCB 0x62
4EC890:  DCB 0x62
4EC891:  DCB 0x62
4EC892:  DCB 0x62
4EC893:  DCB 0x62
4EC894:  DCB 0x62
4EC895:  DCB 0x62
4EC896:  DCB 0x62
4EC897:  DCB 0x62
4EC898:  DCB 0x62
4EC899:  DCB 0x1A
4EC89A:  DCB 0x1E
4EC89B:  DCB 0x1C
4EC89C:  LDRB            R0, [R4,#0x10]; jumptable 004EC884 case 203
4EC89E:  CBZ             R0, loc_4EC8CC
4EC8A0:  LDRB            R0, [R4,#0x12]
4EC8A2:  CBZ             R0, loc_4EC8F8
4EC8A4:  LDRB            R0, [R4,#0x11]
4EC8A6:  CBZ             R0, loc_4EC91C
4EC8A8:  MOVS            R0, #dword_20; this
4EC8AA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EC8AE:  LDR             R5, [R4,#0xC]
4EC8B0:  LDRB            R4, [R4,#0x10]
4EC8B2:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EC8B6:  LDR             R1, =(_ZTV18CTaskSimpleSitIdle_ptr - 0x4EC8BC)
4EC8B8:  ADD             R1, PC; _ZTV18CTaskSimpleSitIdle_ptr
4EC8BA:  B               loc_4EC8E2
4EC8BC:  MOVS            R1, #0xDD; jumptable 004EC884 case 220
4EC8BE:  B               loc_4EC8C4; jumptable 004EC884 case 221
4EC8C0:  MOVW            R1, #0x516; jumptable 004EC884 case 222
4EC8C4:  MOV             R0, R4; jumptable 004EC884 case 221
4EC8C6:  POP.W           {R4,R5,R7,LR}
4EC8CA:  B               _ZN38CTaskComplexSitDownThenIdleThenStandUp13CreateSubTaskEi; CTaskComplexSitDownThenIdleThenStandUp::CreateSubTask(int)
4EC8CC:  LDRB            R0, [R4,#0x11]
4EC8CE:  CBZ             R0, loc_4EC92E
4EC8D0:  MOVS            R0, #dword_20; this
4EC8D2:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EC8D6:  LDR             R5, [R4,#0xC]
4EC8D8:  LDRB            R4, [R4,#0x10]
4EC8DA:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EC8DE:  LDR             R1, =(_ZTV18CTaskSimpleSitIdle_ptr - 0x4EC8E4)
4EC8E0:  ADD             R1, PC; _ZTV18CTaskSimpleSitIdle_ptr
4EC8E2:  MOVS            R2, #0
4EC8E4:  STRB            R4, [R0,#8]
4EC8E6:  STR             R5, [R0,#0xC]
4EC8E8:  STR.W           R2, [R0,#0x1A]
4EC8EC:  STR.W           R2, [R0,#0x16]
4EC8F0:  STR             R2, [R0,#0x14]
4EC8F2:  LDR             R1, [R1]; `vtable for'CTaskSimpleSitIdle ...
4EC8F4:  STR             R2, [R0,#0x10]
4EC8F6:  B               loc_4EC948
4EC8F8:  MOVS            R0, #dword_20; this
4EC8FA:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EC8FE:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EC902:  LDR             R1, =(_ZTV21CTaskSimpleStandStill_ptr - 0x4EC90E)
4EC904:  MOVS            R2, #0x64 ; 'd'
4EC906:  STR             R2, [R0,#8]
4EC908:  MOVS            R2, #0
4EC90A:  ADD             R1, PC; _ZTV21CTaskSimpleStandStill_ptr
4EC90C:  MOV.W           R3, #0x41000000
4EC910:  STRH            R2, [R0,#0x14]
4EC912:  STR             R3, [R0,#0x1C]
4EC914:  STRH            R2, [R0,#0x18]
4EC916:  LDR             R1, [R1]; `vtable for'CTaskSimpleStandStill ...
4EC918:  STR             R2, [R0,#0x10]
4EC91A:  B               loc_4EC946
4EC91C:  MOVS            R0, #word_10; this
4EC91E:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EC922:  LDRB            R4, [R4,#0x10]
4EC924:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EC928:  LDR             R1, =(_ZTV18CTaskSimpleSitDown_ptr - 0x4EC92E)
4EC92A:  ADD             R1, PC; _ZTV18CTaskSimpleSitDown_ptr
4EC92C:  B               loc_4EC93E
4EC92E:  MOVS            R0, #word_10; this
4EC930:  BLX             j__ZN5CTasknwEj; CTask::operator new(uint)
4EC934:  LDRB            R4, [R4,#0x10]
4EC936:  BLX             j__ZN11CTaskSimpleC2Ev; CTaskSimple::CTaskSimple(void)
4EC93A:  LDR             R1, =(_ZTV18CTaskSimpleSitDown_ptr - 0x4EC940)
4EC93C:  ADD             R1, PC; _ZTV18CTaskSimpleSitDown_ptr
4EC93E:  LDR             R1, [R1]; `vtable for'CTaskSimpleSitDown ...
4EC940:  MOVS            R2, #0
4EC942:  STRB            R4, [R0,#8]
4EC944:  STRB            R2, [R0,#9]
4EC946:  STR             R2, [R0,#0xC]
4EC948:  ADDS            R1, #8
4EC94A:  STR             R1, [R0]
4EC94C:  POP             {R4,R5,R7,PC}; jumptable 004EC884 default case, cases 204-219
