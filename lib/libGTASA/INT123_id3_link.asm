; =========================================================
; Game Engine Function: INT123_id3_link
; Address            : 0x226EC0 - 0x226FE0
; =========================================================

226EC0:  PUSH            {R4-R7,LR}
226EC2:  ADD             R7, SP, #0xC
226EC4:  PUSH.W          {R8-R11}
226EC8:  SUB             SP, SP, #0x14
226ECA:  MOVW            R2, #0xB514
226ECE:  MOVS            R1, #0
226ED0:  STR             R1, [R0,R2]
226ED2:  MOVW            R2, #0xB510
226ED6:  VMOV.I32        Q8, #0
226EDA:  STR             R1, [R0,R2]
226EDC:  MOVW            R1, #0xB524
226EE0:  ADD.W           R9, R0, #0xB500
226EE4:  LDR.W           R10, [R0,R1]
226EE8:  STR             R0, [SP,#0x30+var_2C]
226EEA:  CMP.W           R10, #0
226EEE:  VST1.32         {D16-D17}, [R9]
226EF2:  BEQ             loc_226F90
226EF4:  LDR             R3, [SP,#0x30+var_2C]
226EF6:  MOVW            R1, #0xB520
226EFA:  LDR             R5, =(aTit2 - 0x226F08); "TIT2"
226EFC:  MOV.W           R8, #0
226F00:  ADDS            R0, R3, R2
226F02:  LDR             R1, [R3,R1]
226F04:  ADD             R5, PC; "TIT2"
226F06:  STR             R0, [SP,#0x30+var_28]
226F08:  MOVW            R0, #0xB50C
226F0C:  ADD.W           R6, R1, #0x14
226F10:  ADD             R0, R3
226F12:  STR             R0, [SP,#0x30+var_24]
226F14:  MOVW            R0, #0xB504
226F18:  ADD             R0, R3
226F1A:  STR             R0, [SP,#0x30+var_20]
226F1C:  MOVW            R0, #0xB508
226F20:  ADD.W           R11, R3, R0
226F24:  SUB.W           R4, R6, #0x11
226F28:  MOV             R0, R5; char *
226F2A:  MOVS            R2, #4; size_t
226F2C:  MOV             R1, R4; char *
226F2E:  BLX             strncmp
226F32:  CMP             R0, #0
226F34:  MOV             R0, R9
226F36:  BEQ             loc_226F84
226F38:  LDR             R0, =(aTalb - 0x226F42); "TALB"
226F3A:  MOV             R1, R4; char *
226F3C:  MOVS            R2, #4; size_t
226F3E:  ADD             R0, PC; "TALB"
226F40:  BLX             strncmp
226F44:  CMP             R0, #0
226F46:  MOV             R0, R11
226F48:  BEQ             loc_226F84
226F4A:  LDR             R0, =(aTpe1 - 0x226F54); "TPE1"
226F4C:  MOV             R1, R4; char *
226F4E:  MOVS            R2, #4; size_t
226F50:  ADD             R0, PC; "TPE1"
226F52:  BLX             strncmp
226F56:  CMP             R0, #0
226F58:  LDR             R0, [SP,#0x30+var_20]
226F5A:  BEQ             loc_226F84
226F5C:  LDR             R0, =(aTyer - 0x226F66); "TYER"
226F5E:  MOV             R1, R4; char *
226F60:  MOVS            R2, #4; size_t
226F62:  ADD             R0, PC; "TYER"
226F64:  BLX             strncmp
226F68:  CMP             R0, #0
226F6A:  LDR             R0, [SP,#0x30+var_24]
226F6C:  BEQ             loc_226F84
226F6E:  LDR             R0, =(aTcon - 0x226F78); "TCON"
226F70:  MOV             R1, R4; char *
226F72:  MOVS            R2, #4; size_t
226F74:  ADD             R0, PC; "TCON"
226F76:  BLX             strncmp
226F7A:  CMP             R0, #0
226F7C:  LDR             R0, [SP,#0x30+var_28]
226F7E:  IT EQ
226F80:  STREQ           R6, [R0]
226F82:  B               loc_226F86
226F84:  STR             R6, [R0]
226F86:  ADD.W           R8, R8, #1
226F8A:  ADDS            R6, #0x20 ; ' '
226F8C:  CMP             R8, R10
226F8E:  BCC             loc_226F24
226F90:  LDR             R4, [SP,#0x30+var_2C]
226F92:  MOVW            R0, #0xB51C
226F96:  LDR             R0, [R4,R0]
226F98:  CBZ             R0, loc_226FD8
226F9A:  MOVW            R1, #0xB518
226F9E:  MOVS            R3, #0
226FA0:  LDR             R2, [R4,R1]
226FA2:  MOVW            R1, #0xB514
226FA6:  ADD             R1, R4
226FA8:  ADDS            R2, #0x10
226FAA:  MOVS            R6, #0
226FAC:  LDR             R5, [R2]
226FAE:  CMP             R5, #0
226FB0:  ITTT NE
226FB2:  LDRNE.W         R5, [R2,#-8]
226FB6:  LDRBNE          R5, [R5]
226FB8:  CMPNE           R5, #0
226FBA:  BNE             loc_226FC0
226FBC:  ADDS            R3, R2, #4
226FBE:  STR             R3, [R1]
226FC0:  ADDS            R6, #1
226FC2:  ADDS            R2, #0x20 ; ' '
226FC4:  CMP             R6, R0
226FC6:  BCC             loc_226FAC
226FC8:  CBNZ            R3, loc_226FD8
226FCA:  MOVW            R2, #0xB518
226FCE:  LDR             R2, [R4,R2]
226FD0:  ADD.W           R0, R2, R0,LSL#5
226FD4:  SUBS            R0, #0xC
226FD6:  STR             R0, [R1]
226FD8:  ADD             SP, SP, #0x14
226FDA:  POP.W           {R8-R11}
226FDE:  POP             {R4-R7,PC}
