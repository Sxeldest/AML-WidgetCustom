; =========================================================
; Game Engine Function: JNI_OnLoad
; Address            : 0x2716E4 - 0x271864
; =========================================================

2716E4:  PUSH            {R4-R7,LR}
2716E6:  ADD             R7, SP, #0xC
2716E8:  PUSH.W          {R8}
2716EC:  SUB             SP, SP, #0xA0
2716EE:  MOV             R5, R0
2716F0:  LDR             R0, =(globalVM_ptr - 0x2716F8)
2716F2:  LDR             R2, =(dword_6DF160 - 0x2716FC)
2716F4:  ADD             R0, PC; globalVM_ptr
2716F6:  LDR             R1, =(aNvevent - 0x271700); "NVEvent"
2716F8:  ADD             R2, PC; dword_6DF160
2716FA:  LDR             R0, [R0]; globalVM
2716FC:  ADD             R1, PC; "NVEvent"
2716FE:  STR             R5, [R2]
271700:  ADR             R2, aJniOnloadCalle; "JNI_OnLoad called"
271702:  STR             R5, [R0]
271704:  MOVS            R0, #3; prio
271706:  BLX             __android_log_print
27170A:  LDR             R0, [R5]
27170C:  MOVS            R4, #0x10004
271712:  ADD             R1, SP, #0xB0+var_14
271714:  MOV             R2, R4
271716:  LDR             R3, [R0,#0x18]
271718:  MOV             R0, R5
27171A:  BLX             R3
27171C:  CBZ             R0, loc_271730
27171E:  LDR             R1, =(aNvevent - 0x271728); "NVEvent"
271720:  ADR             R2, aFailedToGetThe; "Failed to get the environment using Get"...
271722:  MOVS            R0, #3; prio
271724:  ADD             R1, PC; "NVEvent"
271726:  BLX             __android_log_print
27172A:  MOV.W           R4, #0xFFFFFFFF
27172E:  B               loc_27185A
271730:  LDR             R1, =(off_661E40 - 0x27173C); "init" ...
271732:  MOV             R8, SP
271734:  MOV             R0, R8; void *
271736:  MOVS            R2, #0x9C; size_t
271738:  ADD             R1, PC; off_661E40 ; void *
27173A:  BLX             memcpy
27173E:  LDR             R0, [SP,#0xB0+var_14]
271740:  LDR             R1, =(aComNvidiaDevte_0 - 0x271748); "com/nvidia/devtech/NvEventQueueActivity"
271742:  LDR             R2, [R0]
271744:  ADD             R1, PC; "com/nvidia/devtech/NvEventQueueActivity"
271746:  LDR             R2, [R2,#0x18]
271748:  BLX             R2
27174A:  MOV             R5, R0
27174C:  LDR             R0, [SP,#0xB0+var_14]
27174E:  MOV             R2, R8
271750:  MOVS            R3, #0xD
271752:  LDR             R1, [R0]
271754:  LDR.W           R6, [R1,#0x35C]
271758:  MOV             R1, R5
27175A:  BLX             R6
27175C:  LDR             R1, =(aNvevent - 0x271768); "NVEvent"
27175E:  ADR             R2, aRegisternative; "RegisterNatives %d"
271760:  MOVS            R0, #3; prio
271762:  MOVS            R3, #0xD
271764:  ADD             R1, PC; "NVEvent"
271766:  BLX             __android_log_print
27176A:  LDR             R0, [SP,#0xB0+var_14]
27176C:  ADR             R2, aIniteglandgles; "InitEGLAndGLES2"
27176E:  LDR             R3, =(aIZ - 0x271776); "(I)Z"
271770:  LDR             R1, [R0]
271772:  ADD             R3, PC; "(I)Z"
271774:  LDR.W           R6, [R1,#0x84]
271778:  MOV             R1, R5
27177A:  BLX             R6
27177C:  LDR             R2, =(dword_6D9A28 - 0x271784)
27177E:  LDR             R1, [SP,#0xB0+var_14]
271780:  ADD             R2, PC; dword_6D9A28
271782:  LDR             R3, =(aV - 0x27178A); "()V"
271784:  STR             R0, [R2]
271786:  ADD             R3, PC; "()V"
271788:  LDR             R0, [R1]
27178A:  ADR             R2, aFinish; "finish"
27178C:  LDR.W           R6, [R0,#0x84]
271790:  MOV             R0, R1
271792:  MOV             R1, R5
271794:  BLX             R6
271796:  LDR             R2, =(dword_6D9E4C - 0x2717A2)
271798:  ADR.W           R8, aZ; "()Z"
27179C:  LDR             R1, [SP,#0xB0+var_14]
27179E:  ADD             R2, PC; dword_6D9E4C
2717A0:  MOV             R3, R8
2717A2:  STR             R0, [R2]
2717A4:  ADR             R2, aSwapbuffers; "swapBuffers"
2717A6:  LDR             R0, [R1]
2717A8:  LDR.W           R6, [R0,#0x84]
2717AC:  MOV             R0, R1
2717AE:  MOV             R1, R5
2717B0:  BLX             R6
2717B2:  LDR             R2, =(dword_6D9A34 - 0x2717BC)
2717B4:  MOV             R3, R8
2717B6:  LDR             R1, [SP,#0xB0+var_14]
2717B8:  ADD             R2, PC; dword_6D9A34
2717BA:  STR             R0, [R2]
2717BC:  ADR             R2, aMakecurrent; "makeCurrent"
2717BE:  LDR             R0, [R1]
2717C0:  LDR.W           R6, [R0,#0x84]
2717C4:  MOV             R0, R1
2717C6:  MOV             R1, R5
2717C8:  BLX             R6
2717CA:  LDR             R2, =(dword_6D9A2C - 0x2717D4)
2717CC:  MOV             R3, R8
2717CE:  LDR             R1, [SP,#0xB0+var_14]
2717D0:  ADD             R2, PC; dword_6D9A2C
2717D2:  STR             R0, [R2]
2717D4:  ADR             R2, aUnmakecurrent; "unMakeCurrent"
2717D6:  LDR             R0, [R1]
2717D8:  LDR.W           R6, [R0,#0x84]
2717DC:  MOV             R0, R1
2717DE:  MOV             R1, R5
2717E0:  BLX             R6
2717E2:  LDR             R1, =(dword_6D9A30 - 0x2717E8)
2717E4:  ADD             R1, PC; dword_6D9A30
2717E6:  STR             R0, [R1]
2717E8:  MOVS            R0, #0x10; byte_count
2717EA:  BLX             malloc
2717EE:  MOV             R5, R0
2717F0:  LDR             R0, =(_Z17android_sigactioniP7siginfoPv_ptr - 0x2717F6)
2717F2:  ADD             R0, PC; _Z17android_sigactioniP7siginfoPv_ptr
2717F4:  LDR             R0, [R0]; android_sigaction(int,siginfo *,void *)
2717F6:  STR             R0, [R5]
2717F8:  ADDS            R0, R5, #4; set
2717FA:  BLX             sigemptyset
2717FE:  LDR             R6, =(unk_6D9A3C - 0x27180A)
271800:  MOVS            R0, #4
271802:  STR             R0, [R5,#8]
271804:  MOVS            R0, #4; sig
271806:  ADD             R6, PC; unk_6D9A3C
271808:  MOV             R1, R5; act
27180A:  ADD.W           R2, R6, #0x40 ; '@'; oact
27180E:  BLX             sigaction
271812:  ADD.W           R2, R6, #0x60 ; '`'; oact
271816:  MOVS            R0, #6; sig
271818:  MOV             R1, R5; act
27181A:  BLX             sigaction
27181E:  ADD.W           R2, R6, #0x70 ; 'p'; oact
271822:  MOVS            R0, #7; sig
271824:  MOV             R1, R5; act
271826:  BLX             sigaction
27182A:  ADD.W           R2, R6, #0x80; oact
27182E:  MOVS            R0, #8; sig
271830:  MOV             R1, R5; act
271832:  BLX             sigaction
271836:  ADD.W           R2, R6, #0xB0; oact
27183A:  MOVS            R0, #0xB; sig
27183C:  MOV             R1, R5; act
27183E:  BLX             sigaction
271842:  ADD.W           R2, R6, #0x100; oact
271846:  MOVS            R0, #0x10; sig
271848:  MOV             R1, R5; act
27184A:  BLX             sigaction
27184E:  ADD.W           R2, R6, #0xD0; oact
271852:  MOVS            R0, #0xD; sig
271854:  MOV             R1, R5; act
271856:  BLX             sigaction
27185A:  MOV             R0, R4
27185C:  ADD             SP, SP, #0xA0
27185E:  POP.W           {R8}
271862:  POP             {R4-R7,PC}
