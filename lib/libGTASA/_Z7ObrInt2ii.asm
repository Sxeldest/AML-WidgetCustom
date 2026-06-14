; =========================================================
; Game Engine Function: _Z7ObrInt2ii
; Address            : 0x3F70F0 - 0x3F724C
; =========================================================

3F70F0:  PUSH            {R4-R7,LR}
3F70F2:  ADD             R7, SP, #0xC
3F70F4:  PUSH.W          {R8,R9,R11}
3F70F8:  MOV             R9, R1
3F70FA:  CMP.W           R0, #0xFFFFFFFF
3F70FE:  BLE             loc_3F7106
3F7100:  MOV.W           R12, #0
3F7104:  B               loc_3F7116
3F7106:  LDR             R1, =(obrstr_ptr - 0x3F7114)
3F7108:  NEGS            R0, R0
3F710A:  MOV.W           R12, #1
3F710E:  MOVS            R2, #0x2D ; '-'
3F7110:  ADD             R1, PC; obrstr_ptr
3F7112:  LDR             R1, [R1]; obrstr
3F7114:  STRB            R2, [R1]
3F7116:  LSLS            R2, R0, #0x10
3F7118:  CMP.W           R2, #0x90000
3F711C:  BLE             loc_3F7144
3F711E:  MOVW            R3, #0xCCCD
3F7122:  MOVS            R2, #1
3F7124:  MOVT            R3, #0xCCCC
3F7128:  MOV             R6, R0
3F712A:  UXTH            R5, R6
3F712C:  CMP             R5, #0x63 ; 'c'
3F712E:  UMULL.W         R6, R1, R5, R3
3F7132:  MOV.W           R6, R1,LSR#3
3F7136:  ADD.W           R1, R2, #1
3F713A:  SXTH            R2, R1
3F713C:  BHI             loc_3F712A
3F713E:  CMP             R2, #0
3F7140:  BGT             loc_3F7146
3F7142:  B               loc_3F7180
3F7144:  MOVS            R2, #1
3F7146:  LDR             R3, =(obrstr_ptr - 0x3F7154)
3F7148:  ADD.W           R6, R12, R2
3F714C:  MOVW            LR, #0x6667
3F7150:  ADD             R3, PC; obrstr_ptr
3F7152:  MOVT            LR, #0x6666
3F7156:  LDR             R3, [R3]; obrstr
3F7158:  ADD             R3, R6
3F715A:  UXTH            R6, R2
3F715C:  SUBS            R3, #1
3F715E:  SMMUL.W         R1, R0, LR
3F7162:  SUBS            R6, #1
3F7164:  MOV.W           R5, R1,ASR#2
3F7168:  ADD.W           R1, R5, R1,LSR#31
3F716C:  ADD.W           R5, R1, R1,LSL#2
3F7170:  SUB.W           R0, R0, R5,LSL#1
3F7174:  ADD.W           R0, R0, #0x30 ; '0'
3F7178:  STRB.W          R0, [R3],#-1
3F717C:  MOV             R0, R1
3F717E:  BNE             loc_3F715E
3F7180:  LDR             R0, =(obrstr_ptr - 0x3F718A)
3F7182:  MOV.W           R8, #0
3F7186:  ADD             R0, PC; obrstr_ptr
3F7188:  LDR             R5, [R0]; obrstr
3F718A:  ADD.W           R0, R12, R2
3F718E:  STRB.W          R8, [R5,R0]
3F7192:  MOV             R0, R5; char *
3F7194:  BLX             strlen
3F7198:  MOVW            R1, #0x2020
3F719C:  CMP.W           R9, #0xFFFFFFFF
3F71A0:  STRH            R1, [R5,R0]
3F71A2:  ADD             R0, R5
3F71A4:  STRB.W          R8, [R0,#2]
3F71A8:  BGT             loc_3F71BC
3F71AA:  LDR             R0, =(obrstr2_ptr - 0x3F71BA)
3F71AC:  RSB.W           R9, R9, #0
3F71B0:  MOV.W           R8, #1
3F71B4:  MOVS            R1, #0x2D ; '-'
3F71B6:  ADD             R0, PC; obrstr2_ptr
3F71B8:  LDR             R0, [R0]; obrstr2
3F71BA:  STRB            R1, [R0]
3F71BC:  MOV.W           R0, R9,LSL#16
3F71C0:  CMP.W           R0, #0x90000
3F71C4:  BLE             loc_3F71EA
3F71C6:  MOVW            R1, #0xCCCD
3F71CA:  MOVS            R0, #1
3F71CC:  MOVT            R1, #0xCCCC
3F71D0:  MOV             R2, R9
3F71D2:  UXTH            R3, R2
3F71D4:  ADDS            R0, #1
3F71D6:  UMULL.W         R2, R5, R3, R1
3F71DA:  CMP             R3, #0x63 ; 'c'
3F71DC:  SXTH            R0, R0
3F71DE:  MOV.W           R2, R5,LSR#3
3F71E2:  BHI             loc_3F71D2
3F71E4:  CMP             R0, #0
3F71E6:  BGT             loc_3F71EC
3F71E8:  B               loc_3F7226
3F71EA:  MOVS            R0, #1
3F71EC:  LDR             R1, =(obrstr2_ptr - 0x3F71FA)
3F71EE:  ADD.W           R2, R8, R0
3F71F2:  MOVW            R3, #0x6667
3F71F6:  ADD             R1, PC; obrstr2_ptr
3F71F8:  MOVT            R3, #0x6666
3F71FC:  LDR             R1, [R1]; obrstr2
3F71FE:  ADD             R1, R2
3F7200:  UXTH            R2, R0
3F7202:  SUBS            R1, #1
3F7204:  SMMUL.W         R5, R9, R3
3F7208:  SUBS            R2, #1
3F720A:  MOV.W           R6, R5,ASR#2
3F720E:  ADD.W           R4, R6, R5,LSR#31
3F7212:  ADD.W           R6, R4, R4,LSL#2
3F7216:  SUB.W           R6, R9, R6,LSL#1
3F721A:  MOV             R9, R4
3F721C:  ADD.W           R6, R6, #0x30 ; '0'
3F7220:  STRB.W          R6, [R1],#-1
3F7224:  BNE             loc_3F7204
3F7226:  LDR             R1, =(obrstr2_ptr - 0x3F7230)
3F7228:  ADD             R0, R8
3F722A:  LDR             R2, =(obrstr_ptr - 0x3F7232)
3F722C:  ADD             R1, PC; obrstr2_ptr
3F722E:  ADD             R2, PC; obrstr_ptr
3F7230:  LDR             R1, [R1]; obrstr2 ; src
3F7232:  LDR             R4, [R2]; obrstr
3F7234:  MOVS            R2, #0
3F7236:  STRB            R2, [R1,R0]
3F7238:  MOV             R0, R4; dest
3F723A:  BLX             strcat
3F723E:  MOV             R0, R4; this
3F7240:  POP.W           {R8,R9,R11}
3F7244:  POP.W           {R4-R7,LR}
3F7248:  B.W             sub_1993B0
