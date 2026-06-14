; =========================================================
; Game Engine Function: _ZN14CRunningScript35ReadParametersForNewlyStartedScriptEPS_
; Address            : 0x329814 - 0x32996E
; =========================================================

329814:  PUSH            {R4-R7,LR}
329816:  ADD             R7, SP, #0xC
329818:  PUSH.W          {R8-R11}
32981C:  SUB             SP, SP, #0x14
32981E:  LDR             R6, [R0,#0x14]
329820:  LDRB.W          R3, [R6],#1
329824:  STR             R6, [R0,#0x14]
329826:  CMP             R3, #0
329828:  BEQ.W           loc_329966
32982C:  LDR             R2, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x329838)
32982E:  ADDS            R1, #0x3C ; '<'
329830:  MOV.W           R5, #0xFFFFFFFF
329834:  ADD             R2, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
329836:  LDR             R2, [R2]; CTheScripts::ScriptSpace ...
329838:  STR             R2, [SP,#0x30+var_20]
32983A:  LDR             R2, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x329840)
32983C:  ADD             R2, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
32983E:  LDR.W           R10, [R2]; CTheScripts::LocalVariablesForCurrentMission ...
329842:  LDR             R2, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x329848)
329844:  ADD             R2, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
329846:  LDR             R2, [R2]; CTheScripts::LocalVariablesForCurrentMission ...
329848:  STR             R2, [SP,#0x30+var_24]
32984A:  LDR             R2, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x329850)
32984C:  ADD             R2, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
32984E:  LDR.W           R12, [R2]; CTheScripts::ScriptSpace ...
329852:  LDR             R2, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x329858)
329854:  ADD             R2, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
329856:  LDR             R2, [R2]; CTheScripts::ScriptSpace ...
329858:  STR             R2, [SP,#0x30+var_28]
32985A:  LDR             R2, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x329860)
32985C:  ADD             R2, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
32985E:  LDR             R2, [R2]; CTheScripts::LocalVariablesForCurrentMission ...
329860:  STR             R2, [SP,#0x30+var_2C]
329862:  LDR             R2, =(_ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr - 0x329868)
329864:  ADD             R2, PC; _ZN11CTheScripts31LocalVariablesForCurrentMissionE_ptr
329866:  LDR.W           R11, [R2]; CTheScripts::LocalVariablesForCurrentMission ...
32986A:  LDR             R2, =(_ZN11CTheScripts11ScriptSpaceE_ptr - 0x329870)
32986C:  ADD             R2, PC; _ZN11CTheScripts11ScriptSpaceE_ptr
32986E:  LDR             R2, [R2]; CTheScripts::ScriptSpace ...
329870:  STR             R2, [SP,#0x30+var_30]
329872:  SXTB            R2, R3
329874:  SUBS            R2, #1; switch 8 cases
329876:  CMP             R2, #7
329878:  BHI             def_32987A; jumptable 0032987A default case
32987A:  TBB.W           [PC,R2]; switch jump
32987E:  DCB 4; jump table for switch statement
32987F:  DCB 8
329880:  DCB 0xE
329881:  DCB 0x1D
329882:  DCB 0x21
329883:  DCB 4
329884:  DCB 0x25
329885:  DCB 0x3A
329886:  LDR.W           R3, [R6],#4; jumptable 0032987A cases 1,6
32988A:  STR             R6, [R0,#0x14]
32988C:  B               loc_329954
32988E:  LDRH.W          R2, [R6],#2; jumptable 0032987A case 2
329892:  STR             R6, [R0,#0x14]
329894:  LDR             R3, [SP,#0x30+var_20]
329896:  LDR             R3, [R3,R2]
329898:  B               loc_329954
32989A:  LDRH.W          R2, [R6],#2; jumptable 0032987A case 3
32989E:  LDRB.W          R3, [R0,#0xFC]
3298A2:  STR             R6, [R0,#0x14]
3298A4:  ADD.W           R6, R10, R2,LSL#2
3298A8:  ADD.W           R2, R0, R2,LSL#2
3298AC:  CMP             R3, #0
3298AE:  IT EQ
3298B0:  ADDEQ.W         R6, R2, #0x3C ; '<'
3298B4:  LDR             R3, [R6]
3298B6:  B               loc_329954
3298B8:  LDRSB.W         R3, [R6],#1; jumptable 0032987A case 4
3298BC:  STR             R6, [R0,#0x14]
3298BE:  B               loc_329954
3298C0:  LDRSH.W         R3, [R6],#2; jumptable 0032987A case 5
3298C4:  STR             R6, [R0,#0x14]
3298C6:  B               loc_329954
3298C8:  LDRSH.W         R2, [R6,#4]; jumptable 0032987A case 7
3298CC:  LDRH            R4, [R6,#2]
3298CE:  LDRH            R3, [R6]
3298D0:  ADDS            R6, #6
3298D2:  CMP             R2, R5
3298D4:  BLE             loc_32991C
3298D6:  LDR             R2, [SP,#0x30+var_24]
3298D8:  LDRB.W          R5, [R0,#0xFC]
3298DC:  ADD.W           R2, R2, R4,LSL#2
3298E0:  ADD.W           R4, R0, R4,LSL#2
3298E4:  CMP             R5, #0
3298E6:  MOV.W           R5, #0xFFFFFFFF
3298EA:  IT EQ
3298EC:  ADDEQ.W         R2, R4, #0x3C ; '<'
3298F0:  B               loc_329920
3298F2:  LDRSH.W         R2, [R6,#4]; jumptable 0032987A case 8
3298F6:  LDRH.W          R9, [R6,#2]
3298FA:  LDRH            R3, [R6]
3298FC:  ADDS            R6, #6
3298FE:  CMP             R2, R5
329900:  BLE             loc_32992E
329902:  LDRB.W          LR, [R0,#0xFC]
329906:  LDR             R2, [SP,#0x30+var_2C]
329908:  CMP.W           LR, #0
32990C:  ADD.W           R8, R2, R9,LSL#2
329910:  ADD.W           R2, R0, R9,LSL#2
329914:  IT EQ
329916:  ADDEQ.W         R8, R2, #0x3C ; '<'
32991A:  B               loc_329938
32991C:  LDR             R2, [SP,#0x30+var_28]
32991E:  ADD             R2, R4
329920:  LDR             R2, [R2]
329922:  STR             R6, [R0,#0x14]
329924:  ADD.W           R2, R3, R2,LSL#2
329928:  LDR.W           R3, [R12,R2]
32992C:  B               loc_329954
32992E:  LDR             R2, [SP,#0x30+var_30]
329930:  LDRB.W          LR, [R0,#0xFC]
329934:  ADD.W           R8, R2, R9
329938:  LDRH.W          R2, [R8]
32993C:  CMP.W           LR, #0
329940:  STR             R6, [R0,#0x14]
329942:  ADD             R2, R3
329944:  ADD.W           R3, R11, R2,LSL#2
329948:  ADD.W           R2, R0, R2,LSL#2
32994C:  IT EQ
32994E:  ADDEQ.W         R3, R2, #0x3C ; '<'
329952:  LDR             R3, [R3]
329954:  STR             R3, [R1]
329956:  LDR             R6, [R0,#0x14]
329958:  LDRB.W          R3, [R6],#1; jumptable 0032987A default case
32995C:  ADDS            R1, #4
32995E:  STR             R6, [R0,#0x14]
329960:  CMP             R3, #0
329962:  BNE.W           loc_329872
329966:  ADD             SP, SP, #0x14
329968:  POP.W           {R8-R11}
32996C:  POP             {R4-R7,PC}
