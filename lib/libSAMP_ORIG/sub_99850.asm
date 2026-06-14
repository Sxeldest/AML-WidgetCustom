; =========================================================
; Game Engine Function: sub_99850
; Address            : 0x99850 - 0x99998
; =========================================================

99850:  PUSH            {R4-R7,LR}
99852:  ADD             R7, SP, #0xC
99854:  PUSH.W          {R8-R10}
99858:  SUB             SP, SP, #0x50
9985A:  MOV             R5, R0
9985C:  LDR             R0, =(__stack_chk_guard_ptr - 0x99864)
9985E:  MOV             R4, R1
99860:  ADD             R0, PC; __stack_chk_guard_ptr
99862:  LDR             R0, [R0]; __stack_chk_guard
99864:  LDR             R0, [R0]
99866:  STR             R0, [SP,#0x68+var_1C]
99868:  LDR.W           R1, [R5,#0x268]
9986C:  CMP             R1, #1
9986E:  BLT             loc_99884
99870:  LDR.W           R0, [R5,#0x270]
99874:  MOV             R2, R1
99876:  LDR             R3, [R0]
99878:  CMP             R3, R4
9987A:  BEQ.W           loc_9997E
9987E:  ADDS            R0, #0x48 ; 'H'
99880:  SUBS            R2, #1
99882:  BNE             loc_99876
99884:  ADR             R0, dword_999B0
99886:  VMOV.I32        Q9, #0
9988A:  VLD1.64         {D16-D17}, [R0@128]
9988E:  MOV             R0, SP
99890:  ADD.W           R3, R0, #0x2C ; ','
99894:  ADDS            R0, #0x14
99896:  LDR.W           R2, [R5,#0x26C]
9989A:  MOVS            R6, #0
9989C:  VST1.32         {D18-D19}, [R0]!
998A0:  CMP             R1, R2
998A2:  VST1.32         {D16-D17}, [R3]!
998A6:  STR             R6, [R0]
998A8:  MOV.W           R0, #1
998AC:  STR             R6, [R3]
998AE:  STRD.W          R6, R6, [SP,#0x68+var_28]
998B2:  STR             R6, [SP,#0x68+var_5C]
998B4:  STRD.W          R6, R6, [SP,#0x68+var_68]
998B8:  STRH.W          R6, [SP,#0x68+var_60]
998BC:  STR             R0, [SP,#0x68+var_58]
998BE:  STR             R6, [SP,#0x68+var_40]
998C0:  BNE             loc_99950
998C2:  CMP             R1, #0
998C4:  ADD.W           R6, R1, #1
998C8:  ITTE NE
998CA:  ADDNE.W         R0, R1, R1,LSR#31
998CE:  ADDNE.W         R0, R1, R0,ASR#1
998D2:  MOVEQ           R0, #8
998D4:  CMP             R0, R6
998D6:  IT GT
998D8:  MOVGT           R6, R0
998DA:  CMP             R1, R6
998DC:  BGE             loc_99950
998DE:  LDR             R1, =(dword_1ACF68 - 0x998E8)
998E0:  ADD.W           R0, R6, R6,LSL#3
998E4:  ADD             R1, PC; dword_1ACF68
998E6:  LSLS            R0, R0, #3
998E8:  MOV             R9, R1
998EA:  LDR             R1, [R1]
998EC:  CMP             R1, #0
998EE:  ITTT NE
998F0:  LDRNE.W         R2, [R1,#0x370]
998F4:  ADDNE           R2, #1
998F6:  STRNE.W         R2, [R1,#0x370]
998FA:  LDR             R1, =(dword_1ACF70 - 0x99902)
998FC:  LDR             R2, =(off_117248 - 0x99904)
998FE:  ADD             R1, PC; dword_1ACF70
99900:  ADD             R2, PC; off_117248
99902:  MOV             R10, R1
99904:  LDR             R1, [R1]
99906:  LDR             R2, [R2]; sub_9A720
99908:  BLX             R2; sub_9A720
9990A:  LDR.W           R1, [R5,#0x270]; src
9990E:  MOV             R8, R0
99910:  CBZ             R1, loc_99948
99912:  LDR.W           R0, [R5,#0x268]
99916:  ADD.W           R0, R0, R0,LSL#3
9991A:  LSLS            R2, R0, #3; n
9991C:  MOV             R0, R8; dest
9991E:  BLX             j_memcpy
99922:  LDR.W           R0, [R5,#0x270]
99926:  CMP             R0, #0
99928:  ITTTT NE
9992A:  LDRNE.W         R1, [R9]
9992E:  CMPNE           R1, #0
99930:  LDRNE.W         R2, [R1,#0x370]
99934:  SUBNE           R2, #1
99936:  IT NE
99938:  STRNE.W         R2, [R1,#0x370]
9993C:  LDR             R2, =(off_11724C - 0x99946)
9993E:  LDR.W           R1, [R10]
99942:  ADD             R2, PC; off_11724C
99944:  LDR             R2, [R2]; j_opus_decoder_destroy_0
99946:  BLX             R2; j_opus_decoder_destroy_0
99948:  LDR.W           R1, [R5,#0x268]
9994C:  STRD.W          R6, R8, [R5,#0x26C]
99950:  LDR.W           R0, [R5,#0x270]
99954:  ADD.W           R1, R1, R1,LSL#3
99958:  MOVS            R2, #0x48 ; 'H'; n
9995A:  ADD.W           R0, R0, R1,LSL#3; dest
9995E:  MOV             R1, SP; src
99960:  BLX             j_memcpy
99964:  LDR.W           R0, [R5,#0x268]
99968:  LDR.W           R1, [R5,#0x270]
9996C:  ADDS            R2, R0, #1
9996E:  STR.W           R2, [R5,#0x268]
99972:  ADD.W           R0, R0, R0,LSL#3
99976:  STR.W           R4, [R1,R0,LSL#3]
9997A:  ADD.W           R0, R1, R0,LSL#3
9997E:  LDR             R1, [SP,#0x68+var_1C]
99980:  LDR             R2, =(__stack_chk_guard_ptr - 0x99986)
99982:  ADD             R2, PC; __stack_chk_guard_ptr
99984:  LDR             R2, [R2]; __stack_chk_guard
99986:  LDR             R2, [R2]
99988:  CMP             R2, R1
9998A:  ITTT EQ
9998C:  ADDEQ           SP, SP, #0x50 ; 'P'
9998E:  POPEQ.W         {R8-R10}
99992:  POPEQ           {R4-R7,PC}
99994:  BLX             __stack_chk_fail
