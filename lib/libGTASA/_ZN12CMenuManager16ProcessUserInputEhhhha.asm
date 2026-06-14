; =========================================================
; Game Engine Function: _ZN12CMenuManager16ProcessUserInputEhhhha
; Address            : 0x431F5C - 0x432114
; =========================================================

431F5C:  PUSH            {R4-R7,LR}
431F5E:  ADD             R7, SP, #0xC
431F60:  PUSH.W          {R8,R9,R11}
431F64:  SUB             SP, SP, #8
431F66:  MOV             R4, R0
431F68:  LDRD.W          R0, R8, [R7,#arg_0]
431F6C:  STRB.W          R0, [R7,#var_19]
431F70:  MOV             R9, R3
431F72:  LDRB.W          R0, [R4,#0x121]
431F76:  MOV             R5, R2
431F78:  MOV             R6, R1
431F7A:  CMP             R0, #0x2C ; ','
431F7C:  BEQ             loc_431F86
431F7E:  MOV             R0, R4; this
431F80:  BLX             j__ZN12CMenuManager25CheckRedefineControlInputEv; CMenuManager::CheckRedefineControlInput(void)
431F84:  CBZ             R0, loc_431F8E
431F86:  ADD             SP, SP, #8
431F88:  POP.W           {R8,R9,R11}
431F8C:  POP             {R4-R7,PC}
431F8E:  MOV             R0, R4; this
431F90:  BLX             j__ZN12CMenuManager22GetNumberOfMenuOptionsEv; CMenuManager::GetNumberOfMenuOptions(void)
431F94:  CBZ             R6, loc_431FE4
431F96:  CMP             R0, #2
431F98:  BCC             loc_431FE4
431F9A:  LDRB.W          R1, [R4,#0x121]
431F9E:  LDR             R0, [R4,#0x38]
431FA0:  CMP             R1, #5
431FA2:  BNE             loc_431FA8
431FA4:  MOVS            R1, #5
431FA6:  B               loc_431FAC
431FA8:  ADDS            R0, #1
431FAA:  STR             R0, [R4,#0x38]
431FAC:  LDR             R3, =(aScreens_ptr - 0x431FB6)
431FAE:  SXTB            R2, R1
431FB0:  MOVS            R6, #0xE2
431FB2:  ADD             R3, PC; aScreens_ptr
431FB4:  LDR             R3, [R3]; "FEP_STA" ...
431FB6:  SMLABB.W        R3, R2, R6, R3
431FBA:  ADD.W           R6, R0, R0,LSL#3
431FBE:  ADD.W           R3, R3, R6,LSL#1
431FC2:  LDRB            R3, [R3,#0xA]
431FC4:  CMP             R3, #0x14
431FC6:  BEQ             loc_431FA8
431FC8:  CMP             R0, #0xB
431FCA:  BGT             loc_431FCE
431FCC:  CBNZ            R3, loc_431FE4
431FCE:  LDR             R0, =(aScreens_ptr - 0x431FD6)
431FD0:  MOVS            R1, #0xE2
431FD2:  ADD             R0, PC; aScreens_ptr
431FD4:  LDR             R0, [R0]; "FEP_STA" ...
431FD6:  SMLABB.W        R0, R2, R1, R0
431FDA:  LDRB            R0, [R0,#0xA]
431FDC:  CMP             R0, #1
431FDE:  IT NE
431FE0:  MOVNE           R0, #0
431FE2:  STR             R0, [R4,#0x38]
431FE4:  MOV             R0, R4; this
431FE6:  BLX             j__ZN12CMenuManager22GetNumberOfMenuOptionsEv; CMenuManager::GetNumberOfMenuOptions(void)
431FEA:  CMP             R5, #0
431FEC:  BEQ             loc_432096
431FEE:  CMP             R0, #2
431FF0:  BCC             loc_432096
431FF2:  LDR             R0, =(aScreens_ptr - 0x431FFE)
431FF4:  MOVS            R2, #0xE2
431FF6:  LDRSB.W         R1, [R4,#0x121]
431FFA:  ADD             R0, PC; aScreens_ptr
431FFC:  LDR             R0, [R0]; "FEP_STA" ...
431FFE:  SMLABB.W        R0, R1, R2, R0
432002:  LDRB            R3, [R0,#0xA]
432004:  LDR             R0, [R4,#0x38]
432006:  CMP             R3, #1
432008:  IT NE
43200A:  MOVNE           R3, #0
43200C:  CMP             R0, R3
43200E:  BLE             loc_432034
432010:  LDR             R3, =(aScreens_ptr - 0x432016)
432012:  ADD             R3, PC; aScreens_ptr
432014:  LDR             R3, [R3]; "FEP_STA" ...
432016:  SMLABB.W        R1, R1, R2, R3
43201A:  ADD.W           R2, R0, R0,LSL#3
43201E:  SUBS            R0, #1
432020:  ADD.W           R1, R1, R2,LSL#1
432024:  SUBS            R1, #8
432026:  STR             R0, [R4,#0x38]
432028:  SUBS            R0, #1
43202A:  LDRB.W          R2, [R1],#-0x12
43202E:  CMP             R2, #0x14
432030:  BEQ             loc_432026
432032:  B               loc_432096
432034:  CMP             R0, #0xA
432036:  BGT             loc_43205E
432038:  LDR             R2, =(aScreens_ptr - 0x432040)
43203A:  MOVS            R3, #0xE2
43203C:  ADD             R2, PC; aScreens_ptr
43203E:  LDR             R2, [R2]; "FEP_STA" ...
432040:  SMLABB.W        R2, R1, R3, R2
432044:  ADD.W           R3, R0, R0,LSL#3
432048:  ADD.W           R2, R2, R3,LSL#1
43204C:  ADDS            R2, #0x1C
43204E:  LDRB            R3, [R2]
432050:  CBZ             R3, loc_43205E
432052:  ADDS            R0, #1
432054:  ADDS            R2, #0x12
432056:  SUBS            R3, R0, #1
432058:  STR             R0, [R4,#0x38]
43205A:  CMP             R3, #0xA
43205C:  BLT             loc_43204E
43205E:  LDR             R3, =(aScreens_ptr - 0x432066)
432060:  MOVS            R2, #0xE2
432062:  ADD             R3, PC; aScreens_ptr
432064:  LDR             R3, [R3]; "FEP_STA" ...
432066:  SMLABB.W        R6, R1, R2, R3
43206A:  ADD.W           R3, R0, R0,LSL#3
43206E:  ADD.W           R6, R6, R3,LSL#1
432072:  LDRB            R6, [R6,#0xA]
432074:  CMP             R6, #0x14
432076:  BNE             loc_432096
432078:  LDR             R6, =(aScreens_ptr - 0x432080)
43207A:  SUBS            R0, #1
43207C:  ADD             R6, PC; aScreens_ptr
43207E:  LDR             R6, [R6]; "FEP_STA" ...
432080:  SMLABB.W        R1, R1, R2, R6
432084:  ADD.W           R1, R1, R3,LSL#1
432088:  SUBS            R1, #8
43208A:  STR             R0, [R4,#0x38]
43208C:  SUBS            R0, #1
43208E:  LDRB.W          R2, [R1],#-0x12
432092:  CMP             R2, #0x14
432094:  BEQ             loc_43208A
432096:  CMP.W           R9, #0
43209A:  BEQ             loc_4320CC
43209C:  LDRB.W          R0, [R4,#0x121]
4320A0:  CMP             R0, #0x27 ; '''
4320A2:  BNE             loc_4320BE
4320A4:  MOVW            R0, #0x1ACC
4320A8:  MOVW            R1, #0x101
4320AC:  STRH            R1, [R4,R0]
4320AE:  MOVW            R0, #0x1AC4
4320B2:  MOVS            R1, #0x10
4320B4:  STR             R1, [R4,R0]
4320B6:  ADD.W           R0, R4, #0x24 ; '$'
4320BA:  STR.W           R0, [R4,#0xB8]
4320BE:  SUB.W           R2, R7, #-var_19; unsigned __int8 *
4320C2:  MOV             R0, R4; this
4320C4:  MOVS            R1, #0; signed __int8
4320C6:  MOV             R3, R9; unsigned __int8
4320C8:  BLX             j__ZN12CMenuManager18ProcessMenuOptionsEaPhh; CMenuManager::ProcessMenuOptions(signed char,uchar *,uchar)
4320CC:  CMP.W           R8, #0
4320D0:  BEQ.W           loc_431F86
4320D4:  LDR             R0, =(aScreens_ptr - 0x4320E0)
4320D6:  MOVS            R3, #0xE2
4320D8:  LDRSB.W         R1, [R4,#0x121]
4320DC:  ADD             R0, PC; aScreens_ptr
4320DE:  LDR             R2, [R4,#0x38]
4320E0:  LDR             R0, [R0]; "FEP_STA" ...
4320E2:  SMLABB.W        R0, R1, R3, R0
4320E6:  ADD.W           R1, R2, R2,LSL#3
4320EA:  ADD.W           R0, R0, R1,LSL#1
4320EE:  LDRB            R0, [R0,#0x13]
4320F0:  CMP             R0, #0xF
4320F2:  BNE.W           loc_431F86
4320F6:  SUB.W           R2, R7, #-var_19; unsigned __int8 *
4320FA:  MOV             R0, R4; this
4320FC:  MOV             R1, R8; signed __int8
4320FE:  MOVS            R3, #0; unsigned __int8
432100:  BLX             j__ZN12CMenuManager18ProcessMenuOptionsEaPhh; CMenuManager::ProcessMenuOptions(signed char,uchar *,uchar)
432104:  MOV             R0, R4; this
432106:  MOV             R1, R8; signed __int8
432108:  ADD             SP, SP, #8
43210A:  POP.W           {R8,R9,R11}
43210E:  POP.W           {R4-R7,LR}
432112:  B               _ZN12CMenuManager19CheckSliderMovementEa; CMenuManager::CheckSliderMovement(signed char)
