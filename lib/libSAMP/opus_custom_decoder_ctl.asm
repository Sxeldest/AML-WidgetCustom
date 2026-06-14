; =========================================================
; Game Engine Function: opus_custom_decoder_ctl
; Address            : 0x1998D8 - 0x199AA2
; =========================================================

1998D8:  SUB             SP, SP, #8
1998DA:  PUSH            {R4-R7,LR}
1998DC:  ADD             R7, SP, #0xC
1998DE:  PUSH.W          {R8-R10}
1998E2:  SUB             SP, SP, #8
1998E4:  MOV             R4, R0
1998E6:  LDR             R0, =(__stack_chk_guard_ptr - 0x1998EE)
1998E8:  STR             R3, [R7,#var_sC]
1998EA:  ADD             R0, PC; __stack_chk_guard_ptr
1998EC:  LDR             R0, [R0]; __stack_chk_guard
1998EE:  LDR             R0, [R0]
1998F0:  STR             R2, [R7,#var_s8]
1998F2:  STR             R0, [SP,#0x20+var_1C]
1998F4:  ADD.W           R0, R7, #8
1998F8:  STR             R0, [SP,#0x20+var_20]
1998FA:  SUBW            R0, R1, #0xFBB; switch 21 cases
1998FE:  CMP             R0, #0x14
199900:  BHI             def_199902; jumptable 00199902 default case
199902:  TBB.W           [PC,R0]; switch jump
199906:  DCB 0xB; jump table for switch statement
199907:  DCB 0x32
199908:  DCB 0x84
199909:  DCB 0x84
19990A:  DCB 0x64
19990B:  DCB 0x84
19990C:  DCB 0x6C
19990D:  DCB 0x84
19990E:  DCB 0x84
19990F:  DCB 0x84
199910:  DCB 0x84
199911:  DCB 0x84
199912:  DCB 0x84
199913:  DCB 0x84
199914:  DCB 0x84
199915:  DCB 0x84
199916:  DCB 0x84
199917:  DCB 0x84
199918:  DCB 0x84
199919:  DCB 0x74
19991A:  DCB 0x7D
19991B:  ALIGN 2
19991C:  LDR             R0, [SP,#0x20+var_20]; jumptable 00199902 case 4027
19991E:  ADDS            R1, R0, #4
199920:  STR             R1, [SP,#0x20+var_20]
199922:  LDR             R5, [R0]
199924:  CMP             R5, #0
199926:  BEQ.W           loc_199A6E
19992A:  LDR             R0, [R4,#4]
19992C:  LDR             R1, [R4,#0x10]
19992E:  BLX             sub_220A40
199932:  STR             R0, [R5]
199934:  MOVS            R0, #0
199936:  B               loc_199A72
199938:  MOVW            R0, #0x2717; jumptable 00199902 default case
19993C:  SUBS            R0, R1, R0
19993E:  CMP             R0, #9; switch 10 cases
199940:  BHI             def_199942; jumptable 00199902 cases 4029,4030,4032,4034-4045
199942:  TBB.W           [PC,R0]; switch jump
199946:  DCB 5; jump table for switch statement
199947:  DCB 0x67
199948:  DCB 0x64
199949:  DCB 0x71
19994A:  DCB 0x64
19994B:  DCB 0x7E
19994C:  DCB 0x64
19994D:  DCB 0x64
19994E:  DCB 0x8B
19994F:  DCB 0xA7
199950:  LDR             R0, [SP,#0x20+var_20]; jumptable 00199942 case 0
199952:  ADDS            R1, R0, #4
199954:  STR             R1, [SP,#0x20+var_20]
199956:  LDR             R0, [R0]
199958:  CMP             R0, #0
19995A:  BEQ.W           loc_199A6E
19995E:  LDR             R1, [R4,#0x2C]
199960:  STR             R1, [R0]
199962:  MOVS            R0, #0
199964:  STR             R0, [R4,#0x2C]
199966:  MOVS            R0, #0
199968:  B               loc_199A72
19996A:  LDM.W           R4, {R6,R8,R10}; jumptable 00199902 case 4028
19996E:  MOVW            R9, #0x2030
199972:  LDRD.W          R0, R5, [R6,#4]
199976:  ADD.W           R0, R9, R0,LSL#2
19997A:  MUL.W           R0, R0, R10
19997E:  ADD.W           R0, R0, R5,LSL#4
199982:  ADD.W           R1, R0, #0x30 ; '0'; n
199986:  ADD.W           R0, R4, #0x28 ; '('; int
19998A:  BLX             sub_22178C
19998E:  LDR             R0, [R6,#8]
199990:  CMP             R0, #1
199992:  BLT             loc_1999C6
199994:  ADD.W           R0, R9, R8,LSL#2
199998:  MOVS            R2, #0
19999A:  MOV.W           R3, #0x9000
19999E:  MUL.W           R1, R10, R0
1999A2:  ADD.W           R0, R1, R5,LSL#2
1999A6:  ADD.W           R1, R1, R5,LSL#3
1999AA:  ADD             R0, R4
1999AC:  ADD             R1, R4
1999AE:  ADDS            R0, #0x58 ; 'X'
1999B0:  ADDS            R1, #0x58 ; 'X'
1999B2:  STRH.W          R3, [R1,R2,LSL#1]
1999B6:  STRH.W          R3, [R0,R2,LSL#1]
1999BA:  ADDS            R2, #1
1999BC:  LDR             R6, [R4]
1999BE:  LDR             R6, [R6,#8]
1999C0:  CMP.W           R2, R6,LSL#1
1999C4:  BLT             loc_1999B2
1999C6:  MOVS            R0, #1
1999C8:  STR             R0, [R4,#0x38]
1999CA:  MOVS            R0, #0
1999CC:  B               loc_199A72
1999CE:  LDR             R0, [SP,#0x20+var_20]; jumptable 00199902 case 4031
1999D0:  ADDS            R1, R0, #4
1999D2:  STR             R1, [SP,#0x20+var_20]
1999D4:  LDR             R0, [R0]
1999D6:  CMP             R0, #0
1999D8:  BEQ             loc_199A6E
1999DA:  LDR             R1, [R4,#0x28]
1999DC:  B               loc_199A68
1999DE:  LDR             R0, [SP,#0x20+var_20]; jumptable 00199902 case 4033
1999E0:  ADDS            R1, R0, #4
1999E2:  STR             R1, [SP,#0x20+var_20]
1999E4:  LDR             R0, [R0]
1999E6:  CMP             R0, #0
1999E8:  BEQ             loc_199A6E
1999EA:  LDR             R1, [R4,#0x3C]
1999EC:  B               loc_199A68
1999EE:  LDR             R0, [SP,#0x20+var_20]; jumptable 00199902 case 4046
1999F0:  ADDS            R1, R0, #4
1999F2:  STR             R1, [SP,#0x20+var_20]
1999F4:  LDR             R0, [R0]
1999F6:  CMP             R0, #1
1999F8:  BHI             loc_199A6E
1999FA:  STR             R0, [R4,#0x20]
1999FC:  MOVS            R0, #0
1999FE:  B               loc_199A72
199A00:  LDR             R0, [SP,#0x20+var_20]; jumptable 00199902 case 4047
199A02:  ADDS            R1, R0, #4
199A04:  STR             R1, [SP,#0x20+var_20]
199A06:  LDR             R0, [R0]
199A08:  CBZ             R0, loc_199A6E
199A0A:  LDR             R1, [R4,#0x20]
199A0C:  B               loc_199A68
199A0E:  MOV             R0, #0xFFFFFFFB; jumptable 00199902 cases 4029,4030,4032,4034-4045
199A12:  B               loc_199A72
199A14:  LDR             R0, [SP,#0x20+var_20]; jumptable 00199942 case 1
199A16:  ADDS            R1, R0, #4
199A18:  STR             R1, [SP,#0x20+var_20]
199A1A:  LDR             R0, [R0]
199A1C:  SUBS            R1, R0, #1
199A1E:  CMP             R1, #1
199A20:  BHI             loc_199A6E
199A22:  STR             R0, [R4,#0xC]
199A24:  MOVS            R0, #0
199A26:  B               loc_199A72
199A28:  LDR             R0, [SP,#0x20+var_20]; jumptable 00199942 case 3
199A2A:  ADDS            R1, R0, #4
199A2C:  STR             R1, [SP,#0x20+var_20]
199A2E:  LDR             R0, [R0]
199A30:  CMP             R0, #0
199A32:  BLT             loc_199A6E
199A34:  LDR             R1, [R4]
199A36:  LDR             R1, [R1,#8]
199A38:  CMP             R0, R1
199A3A:  BGE             loc_199A6E
199A3C:  STR             R0, [R4,#0x14]
199A3E:  MOVS            R0, #0
199A40:  B               loc_199A72
199A42:  LDR             R0, [SP,#0x20+var_20]; jumptable 00199942 case 5
199A44:  ADDS            R1, R0, #4
199A46:  STR             R1, [SP,#0x20+var_20]
199A48:  LDR             R0, [R0]
199A4A:  CMP             R0, #1
199A4C:  BLT             loc_199A6E
199A4E:  LDR             R1, [R4]
199A50:  LDR             R1, [R1,#8]
199A52:  CMP             R0, R1
199A54:  BGT             loc_199A6E
199A56:  STR             R0, [R4,#0x18]
199A58:  MOVS            R0, #0
199A5A:  B               loc_199A72
199A5C:  LDR             R0, [SP,#0x20+var_20]; jumptable 00199942 case 8
199A5E:  ADDS            R1, R0, #4
199A60:  STR             R1, [SP,#0x20+var_20]
199A62:  LDR             R0, [R0]
199A64:  CBZ             R0, loc_199A6E
199A66:  LDR             R1, [R4]
199A68:  STR             R1, [R0]
199A6A:  MOVS            R0, #0
199A6C:  B               loc_199A72
199A6E:  MOV.W           R0, #0xFFFFFFFF
199A72:  LDR             R1, =(__stack_chk_guard_ptr - 0x199A7A)
199A74:  LDR             R2, [SP,#0x20+var_1C]
199A76:  ADD             R1, PC; __stack_chk_guard_ptr
199A78:  LDR             R1, [R1]; __stack_chk_guard
199A7A:  LDR             R1, [R1]
199A7C:  SUBS            R1, R1, R2
199A7E:  ITTTT EQ
199A80:  ADDEQ           SP, SP, #8
199A82:  POPEQ.W         {R8-R10}
199A86:  POPEQ.W         {R4-R7,LR}
199A8A:  ADDEQ           SP, SP, #8
199A8C:  IT EQ
199A8E:  BXEQ            LR
199A90:  BLX             __stack_chk_fail
199A94:  LDR             R0, [SP,#0x20+var_20]; jumptable 00199942 case 9
199A96:  ADDS            R1, R0, #4
199A98:  STR             R1, [SP,#0x20+var_20]
199A9A:  LDR             R0, [R0]
199A9C:  STR             R0, [R4,#0x1C]
199A9E:  MOVS            R0, #0
199AA0:  B               loc_199A72
