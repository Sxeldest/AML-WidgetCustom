; =========================================================
; Game Engine Function: alc_opensl_probe
; Address            : 0x26191C - 0x261996
; =========================================================

26191C:  PUSH            {R7,LR}
26191E:  MOV             R7, SP
261920:  CBZ             R0, loc_261924
261922:  POP             {R7,PC}
261924:  LDR             R1, =(dword_6D632C - 0x26192C)
261926:  LDR             R0, =(dword_6D6328 - 0x26192E)
261928:  ADD             R1, PC; dword_6D632C
26192A:  ADD             R0, PC; dword_6D6328
26192C:  LDR             R1, [R1]
26192E:  LDR             R0, [R0]; ptr
261930:  ADDS            R1, #8; size
261932:  BLX             realloc
261936:  CMP             R0, #0
261938:  BEQ             loc_261970
26193A:  LDR.W           R12, =(dword_6D632C - 0x26194C)
26193E:  MOV.W           LR, #0
261942:  LDR             R2, =(dword_6D6328 - 0x26194E)
261944:  MOVW            R1, #0x4C53
261948:  ADD             R12, PC; dword_6D632C
26194A:  ADD             R2, PC; dword_6D6328
26194C:  LDR.W           R3, [R12]
261950:  STR             R0, [R2]
261952:  MOV             R2, #0x6E65704F
26195A:  STR             R2, [R0,R3]
26195C:  ADDS            R2, R0, R3
26195E:  STRB.W          LR, [R2,#6]
261962:  STRH            R1, [R2,#4]
261964:  ADDS            R1, R3, #7
261966:  STR.W           R1, [R12]
26196A:  STRB.W          LR, [R0,R1]
26196E:  POP             {R7,PC}
261970:  LDR             R0, =(LogLevel_ptr - 0x261976)
261972:  ADD             R0, PC; LogLevel_ptr
261974:  LDR             R0, [R0]; LogLevel
261976:  LDR             R0, [R0]
261978:  CMP             R0, #0
26197A:  IT EQ
26197C:  POPEQ           {R7,PC}
26197E:  LDR             R0, =(aEe - 0x261988); "(EE)"
261980:  LDR             R1, =(aAppendlist - 0x26198C); "AppendList"
261982:  LDR             R2, =(aReallocFailedT_0 - 0x26198E); "Realloc failed to add %s!\n"
261984:  ADD             R0, PC; "(EE)"
261986:  LDR             R3, =(aOpensl_0 - 0x261990); "OpenSL"
261988:  ADD             R1, PC; "AppendList"
26198A:  ADD             R2, PC; "Realloc failed to add %s!\n"
26198C:  ADD             R3, PC; "OpenSL"
26198E:  POP.W           {R7,LR}
261992:  B.W             al_print
