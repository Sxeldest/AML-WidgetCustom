; =========================================================
; Game Engine Function: sub_109E84
; Address            : 0x109E84 - 0x10A38C
; =========================================================

109E84:  PUSH            {R4-R11,LR}
109E88:  ADD             R11, SP, #0x1C
109E8C:  SUB             SP, SP, #0x14
109E90:  MOV             R7, R3
109E94:  MOV             R5, R2
109E98:  MOV             R8, R0
109E9C:  CMP             R1, #5
109EA0:  BEQ             loc_109EE8
109EA4:  CMP             R1, #1
109EA8:  BEQ             loc_109F30
109EAC:  CMP             R1, #0
109EB0:  BNE             loc_10A354
109EB4:  MOV             R6, #2
109EB8:  CMP             R7, #0
109EBC:  BNE             loc_109F5C
109EC0:  ADD             R2, SP, #0x30+var_20
109EC4:  MOV             R0, R8
109EC8:  MOV             R1, #0xD
109ECC:  BL              sub_10AB7C
109ED0:  CMP             R0, #0
109ED4:  BEQ             loc_109FF8
109ED8:  MOV             R6, #2
109EDC:  MOV             R0, R6
109EE0:  SUB             SP, R11, #0x1C
109EE4:  POP             {R4-R11,PC}
109EE8:  ORRS            R0, R7, R5
109EEC:  MOV             R6, #2
109EF0:  BNE             loc_109F5C
109EF4:  ADD             R2, SP, #0x30+var_28
109EF8:  MOV             R0, R8
109EFC:  MOV             R1, #0xD
109F00:  BL              sub_10AB7C
109F04:  CMP             R0, #0
109F08:  BNE             loc_109F5C
109F0C:  LDR             R0, [SP,#0x30+var_28]
109F10:  MOV             R1, #0xD
109F14:  ADD             R2, R0, #4
109F18:  MOV             R0, R8
109F1C:  STR             R2, [SP,#0x30+var_28]
109F20:  BL              sub_10ABD4
109F24:  MOV             R0, R6
109F28:  SUB             SP, R11, #0x1C
109F2C:  POP             {R4-R11,PC}
109F30:  BIC             R0, R7, #4
109F34:  MOV             R6, #2
109F38:  CMP             R0, #1
109F3C:  BNE             loc_109F5C
109F40:  ADD             R2, SP, #0x30+var_24
109F44:  MOV             R0, R8
109F48:  MOV             R1, #0xD
109F4C:  BL              sub_10AB7C
109F50:  MOV             R6, #2
109F54:  CMP             R0, #0
109F58:  BEQ             loc_109F68
109F5C:  MOV             R0, R6
109F60:  SUB             SP, R11, #0x1C
109F64:  POP             {R4-R11,PC}
109F68:  UXTH            R0, R5
109F6C:  CMP             R0, #0
109F70:  BEQ             loc_10A2C0
109F74:  MOV             R6, R5,LSR#16
109F78:  UXTAH           R5, R6, R5
109F7C:  CMP             R7, #1
109F80:  BNE             loc_10A270
109F84:  MOV             R0, #0x10
109F88:  RSB             R10, R6, #0x10
109F8C:  CMP             R0, R6
109F90:  MOVCC           R10, #0
109F94:  LDR             R0, [SP,#0x30+var_24]
109F98:  MOV             R4, R5
109F9C:  CMP             R10, #0
109FA0:  MOV             R1, R0
109FA4:  LDR             R5, [R1],#8
109FA8:  STR             R1, [SP,#0x30+var_24]
109FAC:  BEQ             loc_109ED8
109FB0:  LDR             R0, [R0,#4]
109FB4:  MOV             R9, R8
109FB8:  STR             R0, [SP,#0x30+var_2C]
109FBC:  MOV             R0, R8
109FC0:  BL              sub_10ADE0
109FC4:  LDR             R3, [SP,#0x30+var_2C]
109FC8:  ADD             R1, R6, #0x100
109FCC:  MOV             R0, R8
109FD0:  MOV             R2, R5
109FD4:  BL              sub_10AD14
109FD8:  CMP             R0, #0
109FDC:  BNE             loc_109ED8
109FE0:  ADD             R6, R6, #1
109FE4:  SUB             R10, R10, #1
109FE8:  MOV             R5, R4
109FEC:  CMP             R6, R4
109FF0:  BCC             loc_109F94
109FF4:  B               loc_10A2C0
109FF8:  TST             R5, #1
109FFC:  BEQ             loc_10A020
10A000:  LDR             R0, [SP,#0x30+var_20]
10A004:  MOV             R1, #0
10A008:  LDR             R2, [R0],#4
10A00C:  STR             R0, [SP,#0x30+var_20]
10A010:  MOV             R0, R8
10A014:  BL              sub_10ABD4
10A018:  CMP             R0, #0
10A01C:  BNE             loc_109ED8
10A020:  TST             R5, #2
10A024:  BEQ             loc_10A048
10A028:  LDR             R0, [SP,#0x30+var_20]
10A02C:  MOV             R1, #1
10A030:  LDR             R2, [R0],#4
10A034:  STR             R0, [SP,#0x30+var_20]
10A038:  MOV             R0, R8
10A03C:  BL              sub_10ABD4
10A040:  CMP             R0, #0
10A044:  BNE             loc_109ED8
10A048:  TST             R5, #4
10A04C:  BEQ             loc_10A074
10A050:  LDR             R0, [SP,#0x30+var_20]
10A054:  MOV             R1, #2
10A058:  MOV             R6, #2
10A05C:  LDR             R2, [R0],#4
10A060:  STR             R0, [SP,#0x30+var_20]
10A064:  MOV             R0, R8
10A068:  BL              sub_10ABD4
10A06C:  CMP             R0, #0
10A070:  BNE             loc_109F5C
10A074:  TST             R5, #8
10A078:  BEQ             loc_10A09C
10A07C:  LDR             R0, [SP,#0x30+var_20]
10A080:  MOV             R1, #3
10A084:  LDR             R2, [R0],#4
10A088:  STR             R0, [SP,#0x30+var_20]
10A08C:  MOV             R0, R8
10A090:  BL              sub_10ABD4
10A094:  CMP             R0, #0
10A098:  BNE             loc_109ED8
10A09C:  TST             R5, #0x10
10A0A0:  BEQ             loc_10A0C4
10A0A4:  LDR             R0, [SP,#0x30+var_20]
10A0A8:  MOV             R1, #4
10A0AC:  LDR             R2, [R0],#4
10A0B0:  STR             R0, [SP,#0x30+var_20]
10A0B4:  MOV             R0, R8
10A0B8:  BL              sub_10ABD4
10A0BC:  CMP             R0, #0
10A0C0:  BNE             loc_109ED8
10A0C4:  TST             R5, #0x20
10A0C8:  BEQ             loc_10A0EC
10A0CC:  LDR             R0, [SP,#0x30+var_20]
10A0D0:  MOV             R1, #5
10A0D4:  LDR             R2, [R0],#4
10A0D8:  STR             R0, [SP,#0x30+var_20]
10A0DC:  MOV             R0, R8
10A0E0:  BL              sub_10ABD4
10A0E4:  CMP             R0, #0
10A0E8:  BNE             loc_109ED8
10A0EC:  TST             R5, #0x40
10A0F0:  BEQ             loc_10A114
10A0F4:  LDR             R0, [SP,#0x30+var_20]
10A0F8:  MOV             R1, #6
10A0FC:  LDR             R2, [R0],#4
10A100:  STR             R0, [SP,#0x30+var_20]
10A104:  MOV             R0, R8
10A108:  BL              sub_10ABD4
10A10C:  CMP             R0, #0
10A110:  BNE             loc_109ED8
10A114:  TST             R5, #0x80
10A118:  BEQ             loc_10A13C
10A11C:  LDR             R0, [SP,#0x30+var_20]
10A120:  MOV             R1, #7
10A124:  LDR             R2, [R0],#4
10A128:  STR             R0, [SP,#0x30+var_20]
10A12C:  MOV             R0, R8
10A130:  BL              sub_10ABD4
10A134:  CMP             R0, #0
10A138:  BNE             loc_109ED8
10A13C:  TST             R5, #0x100
10A140:  BEQ             loc_10A164
10A144:  LDR             R0, [SP,#0x30+var_20]
10A148:  MOV             R1, #8
10A14C:  LDR             R2, [R0],#4
10A150:  STR             R0, [SP,#0x30+var_20]
10A154:  MOV             R0, R8
10A158:  BL              sub_10ABD4
10A15C:  CMP             R0, #0
10A160:  BNE             loc_109ED8
10A164:  TST             R5, #0x200
10A168:  BEQ             loc_10A18C
10A16C:  LDR             R0, [SP,#0x30+var_20]
10A170:  MOV             R1, #9
10A174:  LDR             R2, [R0],#4
10A178:  STR             R0, [SP,#0x30+var_20]
10A17C:  MOV             R0, R8
10A180:  BL              sub_10ABD4
10A184:  CMP             R0, #0
10A188:  BNE             loc_109ED8
10A18C:  TST             R5, #0x400
10A190:  BEQ             loc_10A1B4
10A194:  LDR             R0, [SP,#0x30+var_20]
10A198:  MOV             R1, #0xA
10A19C:  LDR             R2, [R0],#4
10A1A0:  STR             R0, [SP,#0x30+var_20]
10A1A4:  MOV             R0, R8
10A1A8:  BL              sub_10ABD4
10A1AC:  CMP             R0, #0
10A1B0:  BNE             loc_109ED8
10A1B4:  TST             R5, #0x800
10A1B8:  BEQ             loc_10A1DC
10A1BC:  LDR             R0, [SP,#0x30+var_20]
10A1C0:  MOV             R1, #0xB
10A1C4:  LDR             R2, [R0],#4
10A1C8:  STR             R0, [SP,#0x30+var_20]
10A1CC:  MOV             R0, R8
10A1D0:  BL              sub_10ABD4
10A1D4:  CMP             R0, #0
10A1D8:  BNE             loc_109ED8
10A1DC:  TST             R5, #0x1000
10A1E0:  BEQ             loc_10A204
10A1E4:  LDR             R0, [SP,#0x30+var_20]
10A1E8:  MOV             R1, #0xC
10A1EC:  LDR             R2, [R0],#4
10A1F0:  STR             R0, [SP,#0x30+var_20]
10A1F4:  MOV             R0, R8
10A1F8:  BL              sub_10ABD4
10A1FC:  CMP             R0, #0
10A200:  BNE             loc_109ED8
10A204:  ANDS            R4, R5, #0x2000
10A208:  BEQ             loc_10A22C
10A20C:  LDR             R0, [SP,#0x30+var_20]
10A210:  MOV             R1, #0xD
10A214:  LDR             R2, [R0],#4
10A218:  STR             R0, [SP,#0x30+var_20]
10A21C:  MOV             R0, R8
10A220:  BL              sub_10ABD4
10A224:  CMP             R0, #0
10A228:  BNE             loc_109ED8
10A22C:  TST             R5, #0x4000
10A230:  BEQ             loc_10A258
10A234:  LDR             R0, [SP,#0x30+var_20]
10A238:  MOV             R1, #0xE
10A23C:  LDR             R2, [R0],#4
10A240:  STR             R0, [SP,#0x30+var_20]
10A244:  MOV             R0, R8
10A248:  BL              sub_10ABD4
10A24C:  CMP             R0, #0
10A250:  MOV             R6, #2
10A254:  BNE             loc_109F5C
10A258:  TST             R5, #0x8000
10A25C:  BNE             loc_10A300
10A260:  MOV             R6, #0
10A264:  CMP             R4, #0
10A268:  BNE             loc_109F5C
10A26C:  B               loc_10A32C
10A270:  MOV             R0, #0x20 ; ' '
10A274:  RSB             R4, R6, #0x20 ; ' '
10A278:  CMP             R0, R6
10A27C:  MOVCC           R4, #0
10A280:  LDR             R0, [SP,#0x30+var_24]
10A284:  CMP             R4, #0
10A288:  MOV             R1, R0
10A28C:  LDR             R2, [R1],#8
10A290:  STR             R1, [SP,#0x30+var_24]
10A294:  BEQ             loc_109ED8
10A298:  LDR             R3, [R0,#4]
10A29C:  ADD             R1, R6, #0x100
10A2A0:  MOV             R0, R8
10A2A4:  BL              sub_10AD14
10A2A8:  CMP             R0, #0
10A2AC:  BNE             loc_109ED8
10A2B0:  ADD             R6, R6, #1
10A2B4:  SUB             R4, R4, #1
10A2B8:  CMP             R6, R5
10A2BC:  BCC             loc_10A280
10A2C0:  CMP             R7, #1
10A2C4:  BNE             loc_10A2D8
10A2C8:  LDR             R0, [SP,#0x30+var_24]
10A2CC:  ADD             R2, R0, #4
10A2D0:  STR             R2, [SP,#0x30+var_24]
10A2D4:  B               loc_10A2DC
10A2D8:  LDR             R2, [SP,#0x30+var_24]
10A2DC:  MOV             R0, R8
10A2E0:  MOV             R1, #0xD
10A2E4:  BL              sub_10ABD4
10A2E8:  CMP             R0, #0
10A2EC:  MOVWNE          R0, #1
10A2F0:  MOV             R6, R0,LSL#1
10A2F4:  MOV             R0, R6
10A2F8:  SUB             SP, R11, #0x1C
10A2FC:  POP             {R4-R11,PC}
10A300:  LDR             R0, [SP,#0x30+var_20]
10A304:  MOV             R1, #0xF
10A308:  LDR             R2, [R0],#4
10A30C:  STR             R0, [SP,#0x30+var_20]
10A310:  MOV             R0, R8
10A314:  BL              sub_10ABD4
10A318:  ORR             R1, R0, R4
10A31C:  CMP             R0, #0
10A320:  MOVWNE          R0, #1
10A324:  CMP             R1, #0
10A328:  BNE             loc_10A344
10A32C:  LDR             R2, [SP,#0x30+var_20]
10A330:  MOV             R0, R8
10A334:  MOV             R1, #0xD
10A338:  BL              sub_10ABD4
10A33C:  CMP             R0, #0
10A340:  MOVWNE          R0, #1
10A344:  MOV             R6, R0,LSL#1
10A348:  MOV             R0, R6
10A34C:  SUB             SP, R11, #0x1C
10A350:  POP             {R4-R11,PC}
10A354:  LDR             R1, =(aLibunwindSS - 0x10A368); "libunwind: %s - %s\n" ...
10A358:  LDR             R2, =(aUnwindVrsPop - 0x10A370); "_Unwind_VRS_Pop" ...
10A35C:  LDR             R3, =(aUnsupportedReg - 0x10A374); "unsupported register class" ...
10A360:  ADD             R1, PC, R1; "libunwind: %s - %s\n"
10A364:  LDR             R0, =(__sF_ptr - 0x10A378)
10A368:  ADD             R2, PC, R2; "_Unwind_VRS_Pop"
10A36C:  ADD             R3, PC, R3; "unsupported register class"
10A370:  LDR             R0, [PC,R0]; __sF
10A374:  ADD             R4, R0, #0xA8
10A378:  MOV             R0, R4; stream
10A37C:  BL              fprintf
10A380:  MOV             R0, R4; stream
10A384:  BL              fflush
10A388:  BL              abort
