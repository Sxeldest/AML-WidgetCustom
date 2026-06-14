; =========================================================
; Game Engine Function: _ZN9CMessages20InsertStringInStringEPtS0_
; Address            : 0x54BF8C - 0x54C170
; =========================================================

54BF8C:  PUSH            {R4-R7,LR}
54BF8E:  ADD             R7, SP, #0xC
54BF90:  PUSH.W          {R8-R11}
54BF94:  SUB.W           SP, SP, #0x334
54BF98:  CMP             R0, #0
54BF9A:  BEQ.W           loc_54C166
54BF9E:  ADDS            R2, R1, #1
54BFA0:  CMP             R2, #2
54BFA2:  BCC.W           loc_54C166
54BFA6:  LDRH            R2, [R0]
54BFA8:  CBZ             R2, loc_54BFBA
54BFAA:  ADDS            R3, R0, #2
54BFAC:  MOVS            R2, #0
54BFAE:  LDRH.W          R6, [R3],#2
54BFB2:  ADDS            R2, #1
54BFB4:  CMP             R6, #0
54BFB6:  BNE             loc_54BFAE
54BFB8:  B               loc_54BFBC
54BFBA:  MOVS            R2, #0
54BFBC:  LDRH            R3, [R1]
54BFBE:  CBZ             R3, loc_54BFD4
54BFC0:  ADDS            R6, R1, #2
54BFC2:  MOV.W           LR, #0
54BFC6:  LDRH.W          R3, [R6],#2
54BFCA:  ADD.W           LR, LR, #1
54BFCE:  CMP             R3, #0
54BFD0:  BNE             loc_54BFC6
54BFD2:  B               loc_54BFD8
54BFD4:  MOV.W           LR, #0
54BFD8:  UXTH.W          R3, LR
54BFDC:  UXTAH.W         R10, R3, R2
54BFE0:  UXTH.W          R12, R10
54BFE4:  CMP.W           R12, #0
54BFE8:  BEQ             loc_54C00A
54BFEA:  AND.W           R2, LR, #7
54BFEE:  STR             R1, [SP,#0x350+var_344]
54BFF0:  SUBS            R1, R3, #1
54BFF2:  STR             R2, [SP,#0x350+var_34C]
54BFF4:  SUBS            R5, R3, R2
54BFF6:  STR             R3, [SP,#0x350+var_340]
54BFF8:  STR             R1, [SP,#0x350+var_348]
54BFFA:  ADD.W           R11, SP, #0x350+var_33C
54BFFE:  MOVS            R4, #0
54C000:  MOV.W           R9, #0
54C004:  MOV.W           R8, #0
54C008:  B               loc_54C0AA
54C00A:  MOVS            R3, #0
54C00C:  STRH.W          R3, [SP,#0x350+var_33C]
54C010:  B               loc_54C14E
54C012:  ADD.W           R8, R2, #3
54C016:  MOVS.W          R2, LR,LSL#16
54C01A:  BEQ             loc_54C0D8
54C01C:  LDR             R2, [SP,#0x350+var_340]
54C01E:  STR.W           R10, [SP,#0x350+var_350]
54C022:  MOV.W           R10, #0
54C026:  CMP             R2, #8
54C028:  BCC             loc_54C07E
54C02A:  CMP             R5, #0
54C02C:  MOV             R2, R9
54C02E:  MOV             R6, R11
54C030:  BEQ             loc_54C082
54C032:  LDR             R4, [SP,#0x350+var_348]
54C034:  UXTH.W          R2, R9
54C038:  MOV.W           R10, #0
54C03C:  UXTAH.W         R2, R2, R4
54C040:  UXTH            R3, R2
54C042:  CMP             R3, R2
54C044:  BNE             loc_54C07E
54C046:  MOVS            R2, #0
54C048:  CMP.W           R2, R4,LSR#16
54C04C:  MOV             R2, R9
54C04E:  MOV             R6, R11
54C050:  BNE             loc_54C082
54C052:  LDR.W           R10, [SP,#0x350+var_344]
54C056:  MOV             R5, R1
54C058:  ADD.W           R2, R9, R5
54C05C:  MOVS            R4, #0
54C05E:  ADD.W           R3, R9, R4
54C062:  ADDS            R4, #8
54C064:  VLD1.16         {D16-D17}, [R10]!
54C068:  CMP             R5, R4
54C06A:  UXTH            R3, R3
54C06C:  ADD.W           R3, R6, R3,LSL#1
54C070:  VST1.16         {D16-D17}, [R3]
54C074:  BNE             loc_54C05E
54C076:  LDR             R3, [SP,#0x350+var_34C]
54C078:  MOV             R10, R5
54C07A:  CBNZ            R3, loc_54C082
54C07C:  B               loc_54C0A0
54C07E:  MOV             R2, R9
54C080:  MOV             R6, R11
54C082:  LDR             R3, [SP,#0x350+var_340]
54C084:  SUB.W           R4, R3, R10
54C088:  LDR             R3, [SP,#0x350+var_344]
54C08A:  ADD.W           R10, R3, R10,LSL#1
54C08E:  UXTH            R5, R2
54C090:  LDRH.W          R3, [R10],#2
54C094:  SUBS            R4, #1
54C096:  ADD.W           R2, R2, #1
54C09A:  STRH.W          R3, [R6,R5,LSL#1]
54C09E:  BNE             loc_54C08E
54C0A0:  LDR.W           R10, [SP,#0x350+var_350]
54C0A4:  ADD             R9, LR
54C0A6:  MOV             R5, R1
54C0A8:  B               loc_54C0D8
54C0AA:  UXTH.W          R2, R8
54C0AE:  LDRH.W          R3, [R0,R2,LSL#1]
54C0B2:  CMP             R3, #0x7E ; '~'
54C0B4:  BNE             loc_54C0CC
54C0B6:  ADD.W           R6, R0, R2,LSL#1
54C0BA:  MOV             R1, R5
54C0BC:  LDRH            R5, [R6,#2]
54C0BE:  CMP             R5, #0x61 ; 'a'
54C0C0:  MOV             R5, R1
54C0C2:  BNE             loc_54C0CC
54C0C4:  LDRH            R5, [R6,#4]
54C0C6:  CMP             R5, #0x7E ; '~'
54C0C8:  MOV             R5, R1
54C0CA:  BEQ             loc_54C012
54C0CC:  STRH.W          R3, [R11,R4,LSL#1]
54C0D0:  ADD.W           R8, R8, #1
54C0D4:  ADD.W           R9, R9, #1
54C0D8:  UXTH.W          R4, R9
54C0DC:  CMP             R12, R4
54C0DE:  BHI             loc_54C0AA
54C0E0:  MOVS            R3, #0
54C0E2:  CMP.W           R12, #0
54C0E6:  STRH.W          R3, [R11,R4,LSL#1]
54C0EA:  BEQ             loc_54C14E
54C0EC:  CMP.W           R12, #7
54C0F0:  BLS             loc_54C132
54C0F2:  AND.W           R6, R10, #7
54C0F6:  SUBS.W          R2, R12, R6
54C0FA:  BEQ             loc_54C132
54C0FC:  SUB.W           R3, R12, #1
54C100:  MOVS            R1, #0
54C102:  MOVW            R4, #0xFFFF
54C106:  UXTH            R5, R3
54C108:  CMP             R5, R4
54C10A:  BEQ             loc_54C134
54C10C:  CMP.W           R1, R3,LSR#16
54C110:  MOV.W           R3, #0
54C114:  BNE             loc_54C136
54C116:  MOV             R1, R2
54C118:  ADD             R3, SP, #0x350+var_33C
54C11A:  MOV             R5, R1
54C11C:  MOV             R2, R0
54C11E:  VLD1.16         {D16-D17}, [R3]!
54C122:  SUBS            R5, #8
54C124:  VST1.16         {D16-D17}, [R2]!
54C128:  BNE             loc_54C11E
54C12A:  CMP             R6, #0
54C12C:  MOV             R3, R1
54C12E:  BNE             loc_54C136
54C130:  B               loc_54C146
54C132:  MOVS            R1, #0
54C134:  MOVS            R3, #0
54C136:  LDRH.W          R2, [R11,R1,LSL#1]
54C13A:  ADDS            R3, #1
54C13C:  STRH.W          R2, [R0,R1,LSL#1]
54C140:  UXTH            R1, R3
54C142:  CMP             R12, R1
54C144:  BHI             loc_54C136
54C146:  UBFX.W          R1, R3, #4, #0xC
54C14A:  CMP             R1, #0x18
54C14C:  BHI             loc_54C166
54C14E:  UXTH            R1, R3
54C150:  MOVS            R2, #2
54C152:  ADD.W           R0, R0, R1,LSL#1
54C156:  MOVW            R1, #0x18F
54C15A:  SUBS            R1, R1, R3
54C15C:  UXTH            R1, R1
54C15E:  ADD.W           R1, R2, R1,LSL#1
54C162:  BLX             j___aeabi_memclr8_1
54C166:  ADD.W           SP, SP, #0x334
54C16A:  POP.W           {R8-R11}
54C16E:  POP             {R4-R7,PC}
