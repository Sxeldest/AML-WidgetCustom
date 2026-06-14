; =========================================================
; Game Engine Function: _Z6ObrInti
; Address            : 0x3F7048 - 0x3F70E2
; =========================================================

3F7048:  CMP.W           R0, #0xFFFFFFFF
3F704C:  BLE             loc_3F7054
3F704E:  MOV.W           R12, #0
3F7052:  B               loc_3F7064
3F7054:  LDR             R1, =(obrstr_ptr - 0x3F7062)
3F7056:  NEGS            R0, R0
3F7058:  MOV.W           R12, #1
3F705C:  MOVS            R2, #0x2D ; '-'
3F705E:  ADD             R1, PC; obrstr_ptr
3F7060:  LDR             R1, [R1]; obrstr
3F7062:  STRB            R2, [R1]
3F7064:  PUSH            {R4,R5,R7,LR}
3F7066:  ADD             R7, SP, #0x10+var_8
3F7068:  LSLS            R1, R0, #0x10
3F706A:  MOVS            R2, #1
3F706C:  CMP.W           R1, #0x90000
3F7070:  BLE             loc_3F7092
3F7072:  MOVW            LR, #0xCCCD
3F7076:  MOV             R3, R0
3F7078:  MOVT            LR, #0xCCCC
3F707C:  UXTH            R1, R3
3F707E:  ADDS            R2, #1
3F7080:  UMULL.W         R3, R4, R1, LR
3F7084:  CMP             R1, #0x63 ; 'c'
3F7086:  SXTH            R2, R2
3F7088:  MOV.W           R3, R4,LSR#3
3F708C:  BHI             loc_3F707C
3F708E:  CMP             R2, #0
3F7090:  BLE             loc_3F70CC
3F7092:  LDR             R1, =(obrstr_ptr - 0x3F70A0)
3F7094:  ADD.W           R3, R12, R2
3F7098:  MOVW            LR, #0x6667
3F709C:  ADD             R1, PC; obrstr_ptr
3F709E:  MOVT            LR, #0x6666
3F70A2:  LDR             R1, [R1]; obrstr
3F70A4:  ADD             R1, R3
3F70A6:  SUBS            R3, R1, #1
3F70A8:  UXTH            R1, R2
3F70AA:  SMMUL.W         R4, R0, LR
3F70AE:  SUBS            R1, #1
3F70B0:  MOV.W           R5, R4,ASR#2
3F70B4:  ADD.W           R4, R5, R4,LSR#31
3F70B8:  ADD.W           R5, R4, R4,LSL#2
3F70BC:  SUB.W           R0, R0, R5,LSL#1
3F70C0:  ADD.W           R0, R0, #0x30 ; '0'
3F70C4:  STRB.W          R0, [R3],#-1
3F70C8:  MOV             R0, R4
3F70CA:  BNE             loc_3F70AA
3F70CC:  LDR             R0, =(obrstr_ptr - 0x3F70D8)
3F70CE:  ADD.W           R1, R12, R2; char *
3F70D2:  MOVS            R2, #0
3F70D4:  ADD             R0, PC; obrstr_ptr
3F70D6:  LDR             R0, [R0]; obrstr ; this
3F70D8:  STRB            R2, [R0,R1]
3F70DA:  POP.W           {R4,R5,R7,LR}
3F70DE:  B.W             sub_1993B0
