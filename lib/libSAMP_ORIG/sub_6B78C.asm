; =========================================================
; Game Engine Function: sub_6B78C
; Address            : 0x6B78C - 0x6B84E
; =========================================================

6B78C:  PUSH            {R4,R6,R7,LR}
6B78E:  ADD             R7, SP, #8
6B790:  SUB             SP, SP, #0x120
6B792:  LDR             R1, =(aSampOrig - 0x6B79E); "SAMP_ORIG" ...
6B794:  MOV             R4, R0
6B796:  LDR             R2, =(aConnectionreje - 0x6B7A0); "ConnectionRejected_hook()" ...
6B798:  LDR             R0, =(__stack_chk_guard_ptr - 0x6B7A2)
6B79A:  ADD             R1, PC; "SAMP_ORIG"
6B79C:  ADD             R2, PC; "ConnectionRejected_hook()"
6B79E:  ADD             R0, PC; __stack_chk_guard_ptr
6B7A0:  LDR             R0, [R0]; __stack_chk_guard
6B7A2:  LDR             R0, [R0]
6B7A4:  STR             R0, [SP,#0x128+var_C]
6B7A6:  MOVS            R0, #4; prio
6B7A8:  BLX             __android_log_print
6B7AC:  LDRD.W          R1, R0, [R4]; src
6B7B0:  MOVS            R2, #1
6B7B2:  ADD.W           R2, R2, R0,LSR#3; size
6B7B6:  ADD             R0, SP, #0x128+var_120; int
6B7B8:  MOVS            R3, #0
6B7BA:  BL              sub_86BA8
6B7BE:  ADD.W           R1, SP, #0x128+var_121; int
6B7C2:  MOVS            R2, #8
6B7C4:  MOVS            R3, #1
6B7C6:  BL              sub_86E30
6B7CA:  LDRB.W          R0, [SP,#0x128+var_121]
6B7CE:  SUBS            R0, #1; switch 4 cases
6B7D0:  CMP             R0, #3
6B7D2:  BHI             def_6B7D4; jumptable 0006B7D4 default case
6B7D4:  TBB.W           [PC,R0]; switch jump
6B7D8:  DCB 2; jump table for switch statement
6B7D9:  DCB 7
6B7DA:  DCB 0x18
6B7DB:  DCB 0x1D
6B7DC:  LDR             R0, =(aConnectionReje - 0x6B7E2); jumptable 0006B7D4 case 1
6B7DE:  ADD             R0, PC; "CONNECTION REJECTED: Incorrect Version."
6B7E0:  BL              sub_6C95C
6B7E4:  B               def_6B7D4; jumptable 0006B7D4 default case
6B7E6:  LDR             R0, =(aConnectionReje_0 - 0x6B7EC); jumptable 0006B7D4 case 2
6B7E8:  ADD             R0, PC; "CONNECTION REJECTED: Unacceptable NickN"...
6B7EA:  BL              sub_6C95C
6B7EE:  LDR             R0, =(aPleaseChooseAn - 0x6B7F4); "Please choose another nick between and "... ...
6B7F0:  ADD             R0, PC; "Please choose another nick between and "...
6B7F2:  BL              sub_6C95C
6B7F6:  LDR             R0, =(aPleaseUseOnlyA - 0x6B7FC); "Please use only a-z, A-Z, 0-9" ...
6B7F8:  ADD             R0, PC; "Please use only a-z, A-Z, 0-9"
6B7FA:  BL              sub_6C95C
6B7FE:  LDR             R0, =(aUseQuitToExitO - 0x6B804); "Use /quit to exit or press ESC and sele"... ...
6B800:  ADD             R0, PC; "Use /quit to exit or press ESC and sele"...
6B802:  BL              sub_6C95C
6B806:  B               def_6B7D4; jumptable 0006B7D4 default case
6B808:  LDR             R0, =(aConnectionReje_1 - 0x6B80E); jumptable 0006B7D4 case 3
6B80A:  ADD             R0, PC; "CONNECTION REJECTED: Bad mod version."
6B80C:  BL              sub_6C95C
6B810:  B               def_6B7D4; jumptable 0006B7D4 default case
6B812:  LDR             R0, =(aConnectionReje_2 - 0x6B818); jumptable 0006B7D4 case 4
6B814:  ADD             R0, PC; "CONNECTION REJECTED: Unable to allocate"...
6B816:  BL              sub_6C95C
6B81A:  LDR             R0, =(off_114AD8 - 0x6B820); jumptable 0006B7D4 default case
6B81C:  ADD             R0, PC; off_114AD8
6B81E:  LDR             R0, [R0]; dword_1A4434
6B820:  LDR             R0, [R0]
6B822:  LDR.W           R0, [R0,#0x210]
6B826:  LDR             R1, [R0]
6B828:  LDR             R3, [R1,#0xC]
6B82A:  MOV.W           R1, #0x1F4
6B82E:  MOVS            R2, #0
6B830:  BLX             R3
6B832:  ADD             R0, SP, #0x128+var_120
6B834:  BL              sub_86BF8
6B838:  LDR             R0, [SP,#0x128+var_C]
6B83A:  LDR             R1, =(__stack_chk_guard_ptr - 0x6B840)
6B83C:  ADD             R1, PC; __stack_chk_guard_ptr
6B83E:  LDR             R1, [R1]; __stack_chk_guard
6B840:  LDR             R1, [R1]
6B842:  CMP             R1, R0
6B844:  ITT EQ
6B846:  ADDEQ           SP, SP, #0x120
6B848:  POPEQ           {R4,R6,R7,PC}
6B84A:  BLX             __stack_chk_fail
