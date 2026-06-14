; =========================================================
; Game Engine Function: _Z14LIB_InputEvent11OSEventTypePv
; Address            : 0x267BF0 - 0x2682E0
; =========================================================

267BF0:  PUSH            {R4-R7,LR}
267BF2:  ADD             R7, SP, #0xC
267BF4:  PUSH.W          {R8-R11}
267BF8:  SUB             SP, SP, #4
267BFA:  VPUSH           {D8}
267BFE:  SUB             SP, SP, #0x30
267C00:  MOV             R11, R0
267C02:  SUB.W           R0, R11, #1; switch 23 cases
267C06:  MOV             R4, R1
267C08:  CMP             R0, #0x16
267C0A:  BHI.W           def_267C16; jumptable 00267C16 default case, cases 5,8-22
267C0E:  MOV             R6, #0xF4240
267C16:  TBH.W           [PC,R0,LSL#1]; switch jump
267C1A:  DCW 0x17; jump table for switch statement
267C1C:  DCW 0x32
267C1E:  DCW 0x4D
267C20:  DCW 0x5C
267C22:  DCW 0x357
267C24:  DCW 0xB5
267C26:  DCW 0xD1
267C28:  DCW 0x357
267C2A:  DCW 0x357
267C2C:  DCW 0x357
267C2E:  DCW 0x357
267C30:  DCW 0x357
267C32:  DCW 0x357
267C34:  DCW 0x357
267C36:  DCW 0x357
267C38:  DCW 0x357
267C3A:  DCW 0x357
267C3C:  DCW 0x357
267C3E:  DCW 0x357
267C40:  DCW 0x357
267C42:  DCW 0x357
267C44:  DCW 0x357
267C46:  DCW 0xED
267C48:  ADD             R0, SP, #0x58+tv; jumptable 00267C16 case 1
267C4A:  MOVS            R1, #0; tz
267C4C:  LDR.W           R9, [R4]
267C50:  BLX             gettimeofday
267C54:  VLDR            S0, [SP,#0x58+tv]
267C58:  VCVT.F64.S32    D16, S0
267C5C:  LDR             R0, [SP,#0x58+tv.tv_usec]
267C5E:  CMP             R0, R6
267C60:  BGT.W           loc_267E18
267C64:  VMOV            S0, R0
267C68:  CMP.W           R0, #0xFFFFFFFF
267C6C:  VCVT.F64.S32    D17, S0
267C70:  BLE.W           loc_267E18
267C74:  VLDR            D18, =1000000.0
267C78:  VDIV.F64        D17, D17, D18
267C7C:  B               loc_267E36
267C7E:  ADD             R0, SP, #0x58+tv; jumptable 00267C16 case 2
267C80:  MOVS            R1, #0; tz
267C82:  LDR.W           R9, [R4]
267C86:  BLX             gettimeofday
267C8A:  VLDR            S0, [SP,#0x58+tv]
267C8E:  VCVT.F64.S32    D16, S0
267C92:  LDR             R0, [SP,#0x58+tv.tv_usec]
267C94:  CMP             R0, R6
267C96:  BGT.W           loc_267EFC
267C9A:  VMOV            S0, R0
267C9E:  CMP.W           R0, #0xFFFFFFFF
267CA2:  VCVT.F64.S32    D17, S0
267CA6:  BLE.W           loc_267EFC
267CAA:  VLDR            D18, =1000000.0
267CAE:  VDIV.F64        D17, D17, D18
267CB2:  B               loc_267F1A
267CB4:  LDR.W           R0, =(pointers_ptr - 0x267CBE); jumptable 00267C16 case 3
267CB8:  LDR             R1, [R4]
267CBA:  ADD             R0, PC; pointers_ptr
267CBC:  LDRD.W          R2, R3, [R4,#0xC]
267CC0:  LDR             R6, [R4,#0x20]
267CC2:  LDR             R0, [R0]; pointers
267CC4:  RSB.W           R1, R1, R1,LSL#3
267CC8:  ADD.W           R0, R0, R1,LSL#4
267CCC:  ADDS            R0, #0x18
267CCE:  STM             R0!, {R2,R3,R6}
267CD0:  B               def_267C16; jumptable 00267C16 default case, cases 5,8-22
267CD2:  STR.W           R11, [SP,#0x58+var_34]; jumptable 00267C16 case 4
267CD6:  LDR.W           R0, =(pointers_ptr - 0x267CE2)
267CDA:  LDRD.W          R1, R12, [R4]
267CDE:  ADD             R0, PC; pointers_ptr
267CE0:  LDRD.W          R10, LR, [R4,#0x18]
267CE4:  VLDR            D8, [R4,#0x10]
267CE8:  LDR             R0, [R0]; pointers
267CEA:  RSB.W           R6, R1, R1,LSL#3
267CEE:  ADD.W           R11, R0, R6,LSL#4
267CF2:  LDR.W           R3, [R11,#0x18]!
267CF6:  MOV             R8, R11
267CF8:  MOV             R2, R11
267CFA:  MOV             R5, R11
267CFC:  LDR.W           R9, [R8,#0x10]!
267D00:  LDR.W           R1, [R2,#0xC]!
267D04:  LDR.W           R0, [R5,#4]!
267D08:  STR             R0, [SP,#0x58+var_40]
267D0A:  ADD.W           R0, R9, #1
267D0E:  CMP             R1, R0
267D10:  STR.W           R10, [SP,#0x58+var_3C]
267D14:  BCS.W           loc_2681C0
267D18:  ADD             R1, SP, #0x58+var_50
267D1A:  LSLS            R0, R0, #2
267D1C:  STM.W           R1, {R3,R12,LR}
267D20:  MOV             R1, #0xAAAAAAAB
267D28:  UMULL.W         R0, R1, R0, R1
267D2C:  STRD.W          R5, R2, [SP,#0x58+var_58]
267D30:  MOVS            R0, #3
267D32:  STR             R4, [SP,#0x58+var_38]
267D34:  ADD.W           R0, R0, R1,LSR#1
267D38:  MOV             R5, R0
267D3A:  LSLS            R0, R0, #5; byte_count
267D3C:  BLX             malloc
267D40:  MOV             R10, R0
267D42:  LDR.W           R0, =(pointers_ptr - 0x267D4C)
267D46:  STR             R6, [SP,#0x58+var_44]
267D48:  ADD             R0, PC; pointers_ptr
267D4A:  LDR             R0, [R0]; pointers
267D4C:  ADD.W           R4, R0, R6,LSL#4
267D50:  LDR.W           R6, [R4,#0x2C]!
267D54:  CBZ             R6, loc_267D6C
267D56:  MOV.W           R2, R9,LSL#5; size_t
267D5A:  MOV             R0, R10; void *
267D5C:  MOV             R1, R6; void *
267D5E:  BLX             memcpy
267D62:  MOV             R0, R6; p
267D64:  BLX             free
267D68:  LDR.W           R9, [R8]
267D6C:  LDR             R0, [SP,#0x58+var_54]
267D6E:  ADD.W           LR, SP, #0x58+var_50
267D72:  STR             R5, [R0]
267D74:  STR.W           R10, [R4]
267D78:  LDR             R4, [SP,#0x58+var_38]
267D7A:  LDR             R6, [SP,#0x58+var_44]
267D7C:  LDR             R5, [SP,#0x58+var_58]
267D7E:  LDM.W           LR, {R3,R12,LR}
267D82:  B               loc_2681CE
267D84:  ADD             R0, SP, #0x58+tv; jumptable 00267C16 case 6
267D86:  MOVS            R1, #0; tz
267D88:  LDR             R5, [R4]
267D8A:  LDR.W           R8, [R4,#8]
267D8E:  BLX             gettimeofday
267D92:  VLDR            S0, [SP,#0x58+tv]
267D96:  VCVT.F64.S32    D16, S0
267D9A:  LDR             R0, [SP,#0x58+tv.tv_usec]
267D9C:  CMP             R0, R6
267D9E:  BGT.W           loc_267FF0
267DA2:  VMOV            S0, R0
267DA6:  CMP.W           R0, #0xFFFFFFFF
267DAA:  VCVT.F64.S32    D17, S0
267DAE:  BLE.W           loc_267FF0
267DB2:  VLDR            D18, =1000000.0
267DB6:  VDIV.F64        D17, D17, D18
267DBA:  B               loc_26800C
267DBC:  ADD             R0, SP, #0x58+tv; jumptable 00267C16 case 7
267DBE:  MOVS            R1, #0; tz
267DC0:  LDR             R5, [R4]
267DC2:  LDR.W           R8, [R4,#8]
267DC6:  BLX             gettimeofday
267DCA:  VLDR            S0, [SP,#0x58+tv]
267DCE:  VCVT.F64.S32    D16, S0
267DD2:  LDR             R0, [SP,#0x58+tv.tv_usec]
267DD4:  CMP             R0, R6
267DD6:  BGT.W           loc_2680D8
267DDA:  VMOV            S0, R0
267DDE:  CMP.W           R0, #0xFFFFFFFF
267DE2:  VCVT.F64.S32    D17, S0
267DE6:  BLE.W           loc_2680D8
267DEA:  VLDR            D18, =1000000.0
267DEE:  VDIV.F64        D17, D17, D18
267DF2:  B               loc_2680F4
267DF4:  LDR.W           R0, =(pointers_ptr - 0x267DFE); jumptable 00267C16 case 23
267DF8:  LDR             R1, [R4]
267DFA:  ADD             R0, PC; pointers_ptr
267DFC:  VLDR            S0, [R4,#0x10]
267E00:  LDR             R0, [R0]; pointers
267E02:  RSB.W           R1, R1, R1,LSL#3
267E06:  ADD.W           R0, R0, R1,LSL#4
267E0A:  VLDR            S2, [R0,#0x68]
267E0E:  VADD.F32        S0, S0, S2
267E12:  VSTR            S0, [R0,#0x68]
267E16:  B               def_267C16; jumptable 00267C16 default case, cases 5,8-22
267E18:  LDR.W           R0, =(unk_6D70D8 - 0x267E20)
267E1C:  ADD             R0, PC; unk_6D70D8
267E1E:  VLDR            D17, [R0]
267E22:  VCVT.U32.F64    S0, D17
267E26:  VCVT.F64.U32    D18, S0
267E2A:  VSUB.F64        D17, D17, D18
267E2E:  VLDR            D18, =0.00033
267E32:  VADD.F64        D17, D17, D18
267E36:  VADD.F64        D16, D17, D16
267E3A:  LDR.W           R0, =(unk_6D70E0 - 0x267E42)
267E3E:  ADD             R0, PC; unk_6D70E0
267E40:  VLDR            D17, [R0]
267E44:  VMOV.F64        D18, #5.0
267E48:  LDR.W           R0, =(unk_6D70D8 - 0x267E50)
267E4C:  ADD             R0, PC; unk_6D70D8
267E4E:  VSUB.F64        D17, D16, D17
267E52:  VCMPE.F64       D17, D18
267E56:  VMRS            APSR_nzcv, FPSCR
267E5A:  VSTR            D16, [R0]
267E5E:  BLE             loc_267E6A
267E60:  LDR.W           R0, =(unk_6D70E0 - 0x267E68)
267E64:  ADD             R0, PC; unk_6D70E0
267E66:  VSTR            D16, [R0]
267E6A:  LDR.W           R0, =(base_time_ptr - 0x267E76)
267E6E:  LDR.W           R1, =(keys_ptr - 0x267E78)
267E72:  ADD             R0, PC; base_time_ptr
267E74:  ADD             R1, PC; keys_ptr
267E76:  LDR             R0, [R0]; base_time
267E78:  VLDR            D17, [R0]
267E7C:  LDR             R0, [R1]; keys
267E7E:  VSUB.F64        D8, D16, D17
267E82:  LDRD.W          R8, R10, [R0,#(dword_6D74D4 - 0x6D7338)]
267E86:  LDRD.W          R1, R5, [R0,#(dword_6D74E0 - 0x6D7338)]
267E8A:  ADDS            R0, R5, #1
267E8C:  CMP             R1, R0
267E8E:  BCS.W           loc_268212
267E92:  MOVW            R1, #0xAAAB
267E96:  LSLS            R0, R0, #2
267E98:  MOVT            R1, #0xAAAA
267E9C:  STRD.W          R9, R11, [SP,#0x58+var_38]
267EA0:  UMULL.W         R0, R1, R0, R1
267EA4:  MOVS            R0, #3
267EA6:  ADD.W           R9, R0, R1,LSR#1
267EAA:  MOV.W           R0, R9,LSL#5; byte_count
267EAE:  BLX             malloc
267EB2:  MOV             R6, R0
267EB4:  LDR.W           R0, =(keys_ptr - 0x267EBC)
267EB8:  ADD             R0, PC; keys_ptr
267EBA:  LDR             R0, [R0]; keys
267EBC:  LDR.W           R11, [R0,#(dword_6D74E8 - 0x6D7338)]
267EC0:  CMP.W           R11, #0
267EC4:  BEQ             loc_267EE2
267EC6:  LSLS            R2, R5, #5; size_t
267EC8:  MOV             R0, R6; void *
267ECA:  MOV             R1, R11; void *
267ECC:  BLX             memcpy
267ED0:  MOV             R0, R11; p
267ED2:  BLX             free
267ED6:  LDR.W           R0, =(keys_ptr - 0x267EDE)
267EDA:  ADD             R0, PC; keys_ptr
267EDC:  LDR             R0, [R0]; keys
267EDE:  LDR.W           R5, [R0,#(dword_6D74E4 - 0x6D7338)]
267EE2:  LDR.W           R0, =(keys_ptr - 0x267EEE)
267EE6:  LDR.W           R11, [SP,#0x58+var_34]
267EEA:  ADD             R0, PC; keys_ptr
267EEC:  LDR             R0, [R0]; keys
267EEE:  STR.W           R6, [R0,#(dword_6D74E8 - 0x6D7338)]
267EF2:  STR.W           R9, [R0,#(dword_6D74E0 - 0x6D7338)]
267EF6:  LDR.W           R9, [SP,#0x58+var_38]
267EFA:  B               loc_26821C
267EFC:  LDR.W           R0, =(unk_6D70D8 - 0x267F04)
267F00:  ADD             R0, PC; unk_6D70D8
267F02:  VLDR            D17, [R0]
267F06:  VCVT.U32.F64    S0, D17
267F0A:  VCVT.F64.U32    D18, S0
267F0E:  VSUB.F64        D17, D17, D18
267F12:  VLDR            D18, =0.00033
267F16:  VADD.F64        D17, D17, D18
267F1A:  VADD.F64        D16, D17, D16
267F1E:  LDR.W           R0, =(unk_6D70E0 - 0x267F26)
267F22:  ADD             R0, PC; unk_6D70E0
267F24:  VLDR            D17, [R0]
267F28:  VMOV.F64        D18, #5.0
267F2C:  LDR.W           R0, =(unk_6D70D8 - 0x267F34)
267F30:  ADD             R0, PC; unk_6D70D8
267F32:  VSUB.F64        D17, D16, D17
267F36:  VCMPE.F64       D17, D18
267F3A:  VMRS            APSR_nzcv, FPSCR
267F3E:  VSTR            D16, [R0]
267F42:  BLE             loc_267F4E
267F44:  LDR.W           R0, =(unk_6D70E0 - 0x267F4C)
267F48:  ADD             R0, PC; unk_6D70E0
267F4A:  VSTR            D16, [R0]
267F4E:  LDR.W           R0, =(base_time_ptr - 0x267F5A)
267F52:  LDR.W           R1, =(keys_ptr - 0x267F5C)
267F56:  ADD             R0, PC; base_time_ptr
267F58:  ADD             R1, PC; keys_ptr
267F5A:  LDR             R0, [R0]; base_time
267F5C:  VLDR            D17, [R0]
267F60:  LDR             R0, [R1]; keys
267F62:  VSUB.F64        D8, D16, D17
267F66:  LDRD.W          R10, R8, [R0,#(dword_6D74D4 - 0x6D7338)]
267F6A:  LDRD.W          R1, R5, [R0,#(dword_6D74E0 - 0x6D7338)]
267F6E:  ADDS            R0, R5, #1
267F70:  CMP             R1, R0
267F72:  BCS.W           loc_268238
267F76:  MOVW            R1, #0xAAAB
267F7A:  LSLS            R0, R0, #2
267F7C:  MOVT            R1, #0xAAAA
267F80:  STRD.W          R9, R11, [SP,#0x58+var_38]
267F84:  UMULL.W         R0, R1, R0, R1
267F88:  MOVS            R0, #3
267F8A:  ADD.W           R9, R0, R1,LSR#1
267F8E:  MOV.W           R0, R9,LSL#5; byte_count
267F92:  BLX             malloc
267F96:  MOV             R6, R0
267F98:  LDR             R0, =(keys_ptr - 0x267F9E)
267F9A:  ADD             R0, PC; keys_ptr
267F9C:  LDR             R0, [R0]; keys
267F9E:  LDR.W           R11, [R0,#(dword_6D74E8 - 0x6D7338)]
267FA2:  CMP.W           R11, #0
267FA6:  BEQ             loc_267FC2
267FA8:  LSLS            R2, R5, #5; size_t
267FAA:  MOV             R0, R6; void *
267FAC:  MOV             R1, R11; void *
267FAE:  BLX             memcpy
267FB2:  MOV             R0, R11; p
267FB4:  BLX             free
267FB8:  LDR             R0, =(keys_ptr - 0x267FBE)
267FBA:  ADD             R0, PC; keys_ptr
267FBC:  LDR             R0, [R0]; keys
267FBE:  LDR.W           R5, [R0,#(dword_6D74E4 - 0x6D7338)]
267FC2:  LDR             R0, =(keys_ptr - 0x267FCC)
267FC4:  LDR.W           R11, [SP,#0x58+var_34]
267FC8:  ADD             R0, PC; keys_ptr
267FCA:  LDR             R0, [R0]; keys
267FCC:  STR.W           R6, [R0,#(dword_6D74E8 - 0x6D7338)]
267FD0:  STR.W           R9, [R0,#(dword_6D74E0 - 0x6D7338)]
267FD4:  LDR.W           R9, [SP,#0x58+var_38]
267FD8:  B               loc_268242
267FDA:  ALIGN 0x10
267FE0:  DCFD 1000000.0
267FE8:  DCFD 0.00033
267FF0:  LDR             R0, =(unk_6D70D8 - 0x267FF6)
267FF2:  ADD             R0, PC; unk_6D70D8
267FF4:  VLDR            D17, [R0]
267FF8:  VCVT.U32.F64    S0, D17
267FFC:  VCVT.F64.U32    D18, S0
268000:  VSUB.F64        D17, D17, D18
268004:  VLDR            D18, =0.00033
268008:  VADD.F64        D17, D17, D18
26800C:  VADD.F64        D16, D17, D16
268010:  LDR             R0, =(unk_6D70E0 - 0x268018)
268012:  STR             R4, [SP,#0x58+var_38]
268014:  ADD             R0, PC; unk_6D70E0
268016:  VLDR            D17, [R0]
26801A:  VMOV.F64        D18, #5.0
26801E:  LDR             R0, =(unk_6D70D8 - 0x268024)
268020:  ADD             R0, PC; unk_6D70D8
268022:  VSUB.F64        D17, D16, D17
268026:  VCMPE.F64       D17, D18
26802A:  VMRS            APSR_nzcv, FPSCR
26802E:  VSTR            D16, [R0]
268032:  BLE             loc_26803C
268034:  LDR             R0, =(unk_6D70E0 - 0x26803A)
268036:  ADD             R0, PC; unk_6D70E0
268038:  VSTR            D16, [R0]
26803C:  LDR             R0, =(base_time_ptr - 0x268048)
26803E:  ADD.W           R4, R5, R5,LSL#1
268042:  LDR             R1, =(gamepads_ptr - 0x26804A)
268044:  ADD             R0, PC; base_time_ptr
268046:  ADD             R1, PC; gamepads_ptr
268048:  LDR             R0, [R0]; base_time
26804A:  LDR             R1, [R1]; gamepads
26804C:  VLDR            D17, [R0]
268050:  ADD.W           R5, R1, R4,LSL#7
268054:  VSUB.F64        D8, D16, D17
268058:  LDR.W           R1, [R5,#0x58]!
26805C:  MOV             R10, R5
26805E:  LDR.W           R9, [R10,#4]!
268062:  LDRD.W          R2, R3, [R5,#-0xC]
268066:  ADD.W           R0, R9, #1
26806A:  CMP             R1, R0
26806C:  BCS.W           loc_26826E
268070:  MOVW            R1, #0xAAAB
268074:  LSLS            R0, R0, #2
268076:  MOVT            R1, #0xAAAA
26807A:  STRD.W          R3, R2, [SP,#0x58+var_44]
26807E:  UMULL.W         R0, R1, R0, R1
268082:  STR.W           R8, [SP,#0x58+var_3C]
268086:  STR.W           R11, [SP,#0x58+var_34]
26808A:  MOVS            R0, #3
26808C:  ADD.W           R11, R0, R1,LSR#1
268090:  MOV.W           R0, R11,LSL#5; byte_count
268094:  BLX             malloc
268098:  MOV             R6, R0
26809A:  LDR             R0, =(gamepads_ptr - 0x2680A0)
26809C:  ADD             R0, PC; gamepads_ptr
26809E:  LDR             R0, [R0]; gamepads
2680A0:  ADD.W           R4, R0, R4,LSL#7
2680A4:  LDR.W           R8, [R4,#0x60]!
2680A8:  CMP.W           R8, #0
2680AC:  BEQ             loc_2680C4
2680AE:  MOV.W           R2, R9,LSL#5; size_t
2680B2:  MOV             R0, R6; void *
2680B4:  MOV             R1, R8; void *
2680B6:  BLX             memcpy
2680BA:  MOV             R0, R8; p
2680BC:  BLX             free
2680C0:  LDR.W           R9, [R10]
2680C4:  LDR.W           R8, [SP,#0x58+var_3C]
2680C8:  LDRD.W          R3, R2, [SP,#0x58+var_44]
2680CC:  STR.W           R11, [R5]
2680D0:  STR             R6, [R4]
2680D2:  LDR.W           R11, [SP,#0x58+var_34]
2680D6:  B               loc_26827A
2680D8:  LDR             R0, =(unk_6D70D8 - 0x2680DE)
2680DA:  ADD             R0, PC; unk_6D70D8
2680DC:  VLDR            D17, [R0]
2680E0:  VCVT.U32.F64    S0, D17
2680E4:  VCVT.F64.U32    D18, S0
2680E8:  VSUB.F64        D17, D17, D18
2680EC:  VLDR            D18, =0.00033
2680F0:  VADD.F64        D17, D17, D18
2680F4:  VADD.F64        D16, D17, D16
2680F8:  LDR             R0, =(unk_6D70E0 - 0x268100)
2680FA:  STR             R4, [SP,#0x58+var_38]
2680FC:  ADD             R0, PC; unk_6D70E0
2680FE:  VLDR            D17, [R0]
268102:  VMOV.F64        D18, #5.0
268106:  LDR             R0, =(unk_6D70D8 - 0x26810C)
268108:  ADD             R0, PC; unk_6D70D8
26810A:  VSUB.F64        D17, D16, D17
26810E:  VCMPE.F64       D17, D18
268112:  VMRS            APSR_nzcv, FPSCR
268116:  VSTR            D16, [R0]
26811A:  BLE             loc_268124
26811C:  LDR             R0, =(unk_6D70E0 - 0x268122)
26811E:  ADD             R0, PC; unk_6D70E0
268120:  VSTR            D16, [R0]
268124:  LDR             R0, =(base_time_ptr - 0x268130)
268126:  ADD.W           R4, R5, R5,LSL#1
26812A:  LDR             R1, =(gamepads_ptr - 0x268132)
26812C:  ADD             R0, PC; base_time_ptr
26812E:  ADD             R1, PC; gamepads_ptr
268130:  LDR             R0, [R0]; base_time
268132:  LDR             R1, [R1]; gamepads
268134:  VLDR            D17, [R0]
268138:  ADD.W           R5, R1, R4,LSL#7
26813C:  VSUB.F64        D8, D16, D17
268140:  LDR.W           R1, [R5,#0x58]!
268144:  MOV             R10, R5
268146:  LDR.W           R9, [R10,#4]!
26814A:  LDRD.W          R2, R3, [R5,#-0xC]
26814E:  ADD.W           R0, R9, #1
268152:  CMP             R1, R0
268154:  BCS.W           loc_268294
268158:  MOVW            R1, #0xAAAB
26815C:  LSLS            R0, R0, #2
26815E:  MOVT            R1, #0xAAAA
268162:  STRD.W          R3, R2, [SP,#0x58+var_44]
268166:  UMULL.W         R0, R1, R0, R1
26816A:  STR.W           R8, [SP,#0x58+var_3C]
26816E:  STR.W           R11, [SP,#0x58+var_34]
268172:  MOVS            R0, #3
268174:  ADD.W           R11, R0, R1,LSR#1
268178:  MOV.W           R0, R11,LSL#5; byte_count
26817C:  BLX             malloc
268180:  MOV             R6, R0
268182:  LDR             R0, =(gamepads_ptr - 0x268188)
268184:  ADD             R0, PC; gamepads_ptr
268186:  LDR             R0, [R0]; gamepads
268188:  ADD.W           R4, R0, R4,LSL#7
26818C:  LDR.W           R8, [R4,#0x60]!
268190:  CMP.W           R8, #0
268194:  BEQ             loc_2681AC
268196:  MOV.W           R2, R9,LSL#5; size_t
26819A:  MOV             R0, R6; void *
26819C:  MOV             R1, R8; void *
26819E:  BLX             memcpy
2681A2:  MOV             R0, R8; p
2681A4:  BLX             free
2681A8:  LDR.W           R9, [R10]
2681AC:  LDR.W           R8, [SP,#0x58+var_3C]
2681B0:  STR.W           R11, [R5]
2681B4:  STR             R6, [R4]
2681B6:  LDR.W           R11, [SP,#0x58+var_34]
2681BA:  LDRD.W          R3, R2, [SP,#0x58+var_44]
2681BE:  B               loc_2682A0
2681C0:  LDR             R0, =(pointers_ptr - 0x2681C6)
2681C2:  ADD             R0, PC; pointers_ptr
2681C4:  LDR             R0, [R0]; pointers
2681C6:  ADD.W           R0, R0, R6,LSL#4
2681CA:  LDR.W           R10, [R0,#0x2C]
2681CE:  MOV.W           R1, R9,LSL#5
2681D2:  LDR             R0, =(pointers_ptr - 0x2681E0)
2681D4:  STR.W           R12, [R10,R1]
2681D8:  ADD.W           R1, R10, R9,LSL#5
2681DC:  ADD             R0, PC; pointers_ptr
2681DE:  STRD.W          LR, R3, [R1,#4]
2681E2:  LDR             R2, [SP,#0x58+var_40]
2681E4:  STR             R2, [R1,#0xC]
2681E6:  VSTR            D8, [R1,#0x10]
2681EA:  LDR             R2, [SP,#0x58+var_3C]
2681EC:  STR             R2, [R1,#0x18]
2681EE:  LDR.W           R1, [R8]
2681F2:  LDR             R0, [R0]; pointers
2681F4:  ADDS            R1, #1
2681F6:  STR.W           R1, [R8]
2681FA:  LDRD.W          R1, R2, [R4,#8]
2681FE:  ADD.W           R0, R0, R6,LSL#4
268202:  LDR             R3, [R4,#0x18]
268204:  STR.W           R1, [R11]
268208:  STR             R2, [R5]
26820A:  STR             R3, [R0,#0x20]
26820C:  LDR.W           R11, [SP,#0x58+var_34]
268210:  B               def_267C16; jumptable 00267C16 default case, cases 5,8-22
268212:  LDR             R0, =(keys_ptr - 0x268218)
268214:  ADD             R0, PC; keys_ptr
268216:  LDR             R0, [R0]; keys
268218:  LDR.W           R6, [R0,#(dword_6D74E8 - 0x6D7338)]
26821C:  LDR             R0, =(keys_ptr - 0x26822C)
26821E:  LSLS            R1, R5, #5
268220:  STR.W           R9, [R6,R1]
268224:  ADD.W           R1, R6, R5,LSL#5
268228:  ADD             R0, PC; keys_ptr
26822A:  MOVS            R2, #2
26822C:  ADDS            R3, R1, #4
26822E:  STM.W           R3, {R2,R8,R10}
268232:  MOVS            R2, #0
268234:  LDR             R0, [R0]; keys
268236:  B               loc_26825C
268238:  LDR             R0, =(keys_ptr - 0x26823E)
26823A:  ADD             R0, PC; keys_ptr
26823C:  LDR             R0, [R0]; keys
26823E:  LDR.W           R6, [R0,#(dword_6D74E8 - 0x6D7338)]
268242:  LDR             R0, =(keys_ptr - 0x268252)
268244:  LSLS            R1, R5, #5
268246:  STR.W           R9, [R6,R1]
26824A:  ADD.W           R1, R6, R5,LSL#5
26824E:  ADD             R0, PC; keys_ptr
268250:  MOVS            R2, #0
268252:  LDR             R0, [R0]; keys
268254:  STRD.W          R2, R10, [R1,#4]
268258:  STR.W           R8, [R1,#0xC]
26825C:  VSTR            D8, [R1,#0x10]
268260:  STR             R2, [R1,#0x18]
268262:  LDR.W           R1, [R0,#(dword_6D74E4 - 0x6D7338)]
268266:  ADDS            R1, #1
268268:  STR.W           R1, [R0,#(dword_6D74E4 - 0x6D7338)]
26826C:  B               def_267C16; jumptable 00267C16 default case, cases 5,8-22
26826E:  LDR             R0, =(gamepads_ptr - 0x268274)
268270:  ADD             R0, PC; gamepads_ptr
268272:  LDR             R0, [R0]; gamepads
268274:  ADD.W           R0, R0, R4,LSL#7
268278:  LDR             R6, [R0,#0x60]
26827A:  MOV.W           R0, R9,LSL#5
26827E:  MOVS            R1, #2
268280:  STR.W           R8, [R6,R0]
268284:  ADD.W           R0, R6, R9,LSL#5
268288:  ADD.W           R12, R0, #4
26828C:  STM.W           R12, {R1-R3}
268290:  MOVS            R1, #0
268292:  B               loc_2682B6
268294:  LDR             R0, =(gamepads_ptr - 0x26829A)
268296:  ADD             R0, PC; gamepads_ptr
268298:  LDR             R0, [R0]; gamepads
26829A:  ADD.W           R0, R0, R4,LSL#7
26829E:  LDR             R6, [R0,#0x60]
2682A0:  MOV.W           R0, R9,LSL#5
2682A4:  MOVS            R1, #0
2682A6:  STR.W           R8, [R6,R0]
2682AA:  ADD.W           R0, R6, R9,LSL#5
2682AE:  ADD.W           R12, R0, #4
2682B2:  STM.W           R12, {R1-R3}
2682B6:  VSTR            D8, [R0,#0x10]
2682BA:  STR             R1, [R0,#0x18]
2682BC:  LDR.W           R0, [R10]
2682C0:  ADDS            R0, #1
2682C2:  STR.W           R0, [R10]
2682C6:  LDR             R4, [SP,#0x58+var_38]
2682C8:  MOV             R0, R11; jumptable 00267C16 default case, cases 5,8-22
2682CA:  MOV             R1, R4
2682CC:  ADD             SP, SP, #0x30 ; '0'
2682CE:  VPOP            {D8}
2682D2:  ADD             SP, SP, #4
2682D4:  POP.W           {R8-R11}
2682D8:  POP.W           {R4-R7,LR}
2682DC:  B.W             j_j__Z19OS_ApplicationEvent11OSEventTypePv; j_OS_ApplicationEvent(OSEventType,void *)
