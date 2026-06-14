; =========================================================
; Game Engine Function: sub_100934
; Address            : 0x100934 - 0x10098A
; =========================================================

100934:  PUSH            {R4-R7,LR}
100936:  ADD             R7, SP, #0xC
100938:  PUSH.W          {R8}
10093C:  SUB             SP, SP, #8
10093E:  MOV             R4, R0
100940:  MOVS            R0, #4; unsigned int
100942:  MOV             R8, R2
100944:  MOV             R6, R1
100946:  BLX             j__Znwj; operator new(uint)
10094A:  MOV             R5, R0
10094C:  BLX             j__ZNSt6__ndk115__thread_structC2Ev; std::__thread_struct::__thread_struct(void)
100950:  MOVS            R0, #0x10; unsigned int
100952:  BLX             j__Znwj; operator new(uint)
100956:  LDR             R2, =(sub_1009B0+1 - 0x100966)
100958:  MOV             R3, R0; arg
10095A:  LDRD.W          R0, R1, [R6]
10095E:  LDR.W           R6, [R8]
100962:  ADD             R2, PC; sub_1009B0 ; start_routine
100964:  STR             R3, [SP,#0x18+var_14]
100966:  STRD.W          R5, R0, [R3]
10096A:  STRD.W          R1, R6, [R3,#8]
10096E:  MOV             R0, R4; newthread
100970:  MOVS            R1, #0; attr
100972:  BLX             pthread_create
100976:  CBNZ            R0, loc_100982
100978:  MOV             R0, R4
10097A:  ADD             SP, SP, #8
10097C:  POP.W           {R8}
100980:  POP             {R4-R7,PC}
100982:  LDR             R1, =(aThreadConstruc - 0x100988); "thread constructor failed" ...
100984:  ADD             R1, PC; "thread constructor failed"
100986:  BLX             j__ZNSt6__ndk120__throw_system_errorEiPKc; std::__throw_system_error(int,char const*)
