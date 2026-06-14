; =========================================================
; Game Engine Function: sub_1508FC
; Address            : 0x1508FC - 0x1509F6
; =========================================================

1508FC:  PUSH            {R4-R7,LR}
1508FE:  ADD             R7, SP, #0xC
150900:  PUSH.W          {R8-R11}
150904:  SUB             SP, SP, #4
150906:  VPUSH           {D8}
15090A:  SUB             SP, SP, #0x20
15090C:  MOV             R10, R0
15090E:  LDR             R0, [R0]
150910:  MOV             R9, R2
150912:  MOV             R8, R3
150914:  STRH.W          R1, [R7,#var_3A]
150918:  LDR             R2, [R0,#0x10]
15091A:  MOV             R0, R10
15091C:  BLX             R2
15091E:  CMP             R0, #0
150920:  BEQ             loc_1509E8
150922:  ADD.W           R5, R10, #0x10
150926:  SUB.W           R6, R7, #-var_3A
15092A:  MOV             R0, R5
15092C:  MOV             R1, R6
15092E:  BL              sub_150F9C
150932:  CBZ             R0, loc_150938
150934:  LDR             R4, [R0,#0xC]
150936:  B               loc_1509BC
150938:  LDR.W           R0, [R10]
15093C:  LDR             R1, [R0,#8]
15093E:  MOV             R0, R10
150940:  BLX             R1
150942:  MOV             R11, R0
150944:  MOVS            R0, #0x28 ; '('; unsigned int
150946:  BLX             j__Znwj; operator new(uint)
15094A:  MOV             R4, R0
15094C:  MOVW            R0, #0xBB80
150950:  MOVS            R1, #1
150952:  MOV             R2, R11
150954:  BL              sub_15E40C
150958:  LDR             R3, =(unk_B960F - 0x15096A)
15095A:  MOVS            R2, #0
15095C:  LDR             R1, =(_ZTV18ChannelVoiceStream - 0x150968); `vtable for'ChannelVoiceStream ...
15095E:  STRD.W          R0, R2, [R4,#8]
150962:  ADD             R0, SP, #0x48+var_40
150964:  ADD             R1, PC; `vtable for'ChannelVoiceStream
150966:  ADD             R3, PC; unk_B960F
150968:  ADDS            R1, #8
15096A:  STRD.W          R1, R2, [R4]
15096E:  STRD.W          R2, R2, [R4,#0x10]
150972:  STRD.W          R2, R2, [R4,#0x18]
150976:  STR             R4, [SP,#0x48+var_40]
150978:  STR             R6, [SP,#0x48+var_34]
15097A:  STR             R0, [SP,#0x48+var_38]
15097C:  ADD             R0, SP, #0x48+var_38
15097E:  ADD             R1, SP, #0x48+var_34
150980:  MOV             R2, R6
150982:  STRD.W          R1, R0, [SP,#0x48+var_48]
150986:  ADD             R0, SP, #0x48+var_30
150988:  MOV             R1, R5
15098A:  BL              sub_15106E
15098E:  LDRD.W          R5, R6, [R10,#0x24]
150992:  CMP             R5, R6
150994:  BEQ             loc_1509A2
150996:  LDR             R1, [R5]
150998:  MOV             R0, R4
15099A:  BL              sub_158D18
15099E:  ADDS            R5, #4
1509A0:  B               loc_150992
1509A2:  LDR.W           R0, [R10]
1509A6:  LDR             R2, [R0,#0xC]
1509A8:  MOV             R0, R10
1509AA:  MOV             R1, R4
1509AC:  BLX             R2
1509AE:  LDR             R0, [SP,#0x48+var_40]
1509B0:  MOVS            R1, #0
1509B2:  STR             R1, [SP,#0x48+var_40]
1509B4:  CBZ             R0, loc_1509BC
1509B6:  LDR             R1, [R0]
1509B8:  LDR             R1, [R1,#4]
1509BA:  BLX             R1
1509BC:  ADD             R0, SP, #0x48+var_30; this
1509BE:  VLDR            S16, [R7,#arg_0]
1509C2:  BLX             j__ZNSt6__ndk16chrono12steady_clock3nowEv; std::chrono::steady_clock::now(void)
1509C6:  VMOV            R1, S16
1509CA:  LDRD.W          R0, R2, [SP,#0x48+var_30]
1509CE:  STRD.W          R0, R2, [R10,#0x30]
1509D2:  STRD.W          R0, R2, [R4,#0x18]
1509D6:  LDR             R0, [R4]
1509D8:  LDR             R2, [R0,#0xC]
1509DA:  MOV             R0, R4
1509DC:  BLX             R2
1509DE:  MOV             R0, R4
1509E0:  MOV             R1, R9
1509E2:  MOV             R2, R8
1509E4:  BL              sub_15E3E8
1509E8:  ADD             SP, SP, #0x20 ; ' '
1509EA:  VPOP            {D8}
1509EE:  ADD             SP, SP, #4
1509F0:  POP.W           {R8-R11}
1509F4:  POP             {R4-R7,PC}
