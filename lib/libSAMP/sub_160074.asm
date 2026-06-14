; =========================================================
; Game Engine Function: sub_160074
; Address            : 0x160074 - 0x16036A
; =========================================================

160074:  PUSH            {R4-R7,LR}
160076:  ADD             R7, SP, #0xC
160078:  PUSH.W          {R8-R11}
16007C:  SUB             SP, SP, #4
16007E:  VPUSH           {D8-D9}
160082:  SUB             SP, SP, #0x38
160084:  MOV             R11, R2
160086:  MOV             R4, R1
160088:  STR             R1, [SP,#0x68+var_34]
16008A:  MOV             R6, R3
16008C:  STR             R3, [SP,#0x68+var_68]
16008E:  MOVS            R1, #0
160090:  MOV             R2, R4
160092:  MOV             R3, R11
160094:  MOV             R9, R0
160096:  BL              sub_1603B4
16009A:  MOV             R5, R0
16009C:  LDR             R0, =(off_2349C8 - 0x1600A6)
16009E:  LDR             R1, =(aSaMpHasUnhandl - 0x1600A8); "======= SA:MP ({}) HAS UNHANDLED EXCEPT"... ...
1600A0:  MOVS            R2, #0x32 ; '2'
1600A2:  ADD             R0, PC; off_2349C8
1600A4:  ADD             R1, PC; "======= SA:MP ({}) HAS UNHANDLED EXCEPT"...
1600A6:  LDR             R3, [R0]; off_23C950
1600A8:  MOVS            R0, #3
1600AA:  BL              sub_DC970
1600AE:  CBZ             R6, loc_1600CA
1600B0:  LDR             R0, [R6,#8]
1600B2:  CBZ             R0, loc_1600BE
1600B4:  LDR             R0, [R6,#0x10]
1600B6:  CBZ             R0, loc_1600BE
1600B8:  LDR             R0, [R6,#0xC]
1600BA:  CMP             R0, #2
1600BC:  BNE             loc_1600CA
1600BE:  LDR             R1, =(aTryHandleExcep - 0x1600C8); "TRY HANDLE EXCEPTION WITHOUT A STACK!!!" ...
1600C0:  MOVS            R0, #3; int
1600C2:  MOVS            R2, #0x27 ; '''
1600C4:  ADD             R1, PC; "TRY HANDLE EXCEPTION WITHOUT A STACK!!!"
1600C6:  BL              sub_ED4F8
1600CA:  CMP             R5, #1
1600CC:  BNE             loc_1600D4
1600CE:  MOV.W           R8, #1
1600D2:  B               loc_1600E4
1600D4:  MOV             R0, R9
1600D6:  MOVS            R1, #3
1600D8:  MOV             R2, R4
1600DA:  MOV             R3, R11
1600DC:  STR             R6, [SP,#0x68+var_68]
1600DE:  BL              sub_1603B4
1600E2:  MOV             R8, R0
1600E4:  CMP.W           R11, #0
1600E8:  BEQ             loc_16011A
1600EA:  MOV             R5, R11
1600EC:  MOV             R0, R4
1600EE:  LDR.W           R1, [R5,#8]!
1600F2:  BL              sub_160468
1600F6:  ADD.W           R1, R9, R4,LSL#6
1600FA:  STR             R0, [SP,#0x68+var_48]
1600FC:  ADDW            R3, R1, #0xC38
160100:  LDRB            R1, [R0]
160102:  SUBS            R0, R5, #4
160104:  CBZ             R1, loc_160134
160106:  LDR             R1, =(aErrno_0 - 0x160114); "{}: {} (errno = {})" ...
160108:  ADD             R2, SP, #0x68+var_48
16010A:  STRD.W          R2, R0, [SP,#0x68+var_68]
16010E:  MOVS            R0, #3
160110:  ADD             R1, PC; "{}: {} (errno = {})"
160112:  MOVS            R2, #0x13
160114:  BL              sub_16096C
160118:  B               loc_160144
16011A:  LDR             R1, =(aException - 0x16012A); "Exception {} - \"{}\"" ...
16011C:  ADD.W           R0, R9, R4,LSL#6
160120:  ADDW            R0, R0, #0xC38
160124:  ADD             R3, SP, #0x68+var_34
160126:  ADD             R1, PC; "Exception {} - \"{}\""
160128:  STR             R0, [SP,#0x68+var_68]
16012A:  MOVS            R0, #3
16012C:  MOVS            R2, #0x13
16012E:  BL              sub_160B2C
160132:  B               loc_160168
160134:  LDR             R1, =(aCodeErrno - 0x160142); "{}: code = {}, errno = {}" ...
160136:  MOVS            R2, #0x19
160138:  STRD.W          R5, R0, [SP,#0x68+var_68]
16013C:  MOVS            R0, #3
16013E:  ADD             R1, PC; "{}: code = {}, errno = {}"
160140:  BL              sub_160A4C
160144:  CMP             R4, #0x1F
160146:  BHI             loc_160168
160148:  MOVS            R0, #1
16014A:  LSLS            R0, R4
16014C:  TST.W           R0, #0x9B0
160150:  BEQ.W           loc_160338
160154:  LDR.W           R0, [R11,#0xC]
160158:  ADD             R3, SP, #0x68+var_48
16015A:  LDR             R1, =(aExceptionAddre - 0x160166); "Exception address: {:X}" ...
16015C:  MOVS            R2, #0x17
16015E:  STR             R0, [SP,#0x68+var_48]
160160:  MOVS            R0, #3
160162:  ADD             R1, PC; "Exception address: {:X}"
160164:  BL              sub_10B6E4
160168:  CMP.W           R8, #1
16016C:  BNE             loc_160174
16016E:  MOV.W           R10, #1
160172:  B               loc_160184
160174:  LDR             R2, [SP,#0x68+var_34]
160176:  MOV             R0, R9
160178:  MOVS            R1, #6
16017A:  MOV             R3, R11
16017C:  STR             R6, [SP,#0x68+var_68]
16017E:  BL              sub_1603B4
160182:  MOV             R10, R0
160184:  CMP             R6, #0
160186:  BEQ.W           loc_1602E2
16018A:  LDR             R1, =(byte_8F794 - 0x160196)
16018C:  MOVS            R0, #3; int
16018E:  MOVS            R2, #0
160190:  MOV             R4, R9
160192:  ADD             R1, PC; byte_8F794 ; text
160194:  MOV.W           R9, #0
160198:  BL              sub_ED4F8
16019C:  LDR             R1, =(aCpu - 0x1601A6); "================== CPU ================"... ...
16019E:  MOVS            R0, #3; int
1601A0:  MOVS            R2, #0x29 ; ')'
1601A2:  ADD             R1, PC; "================== CPU ================"...
1601A4:  BL              sub_ED4F8
1601A8:  CMP.W           R10, #1
1601AC:  STRD.W          R4, R11, [SP,#0x68+var_50]
1601B0:  BNE             loc_1601B6
1601B2:  MOVS            R0, #1
1601B4:  B               loc_1601C4
1601B6:  LDR             R2, [SP,#0x68+var_34]
1601B8:  MOV             R0, R4
1601BA:  MOVS            R1, #4
1601BC:  MOV             R3, R11
1601BE:  STR             R6, [SP,#0x68+var_68]
1601C0:  BL              sub_1603B4
1601C4:  STR             R0, [SP,#0x68+var_58]
1601C6:  MOVS            R0, #3; int
1601C8:  LDR             R1, =(aRegisters - 0x1601D0); "Registers:" ...
1601CA:  MOVS            R2, #0xA
1601CC:  ADD             R1, PC; "Registers:"
1601CE:  BL              sub_ED4F8
1601D2:  STR.W           R9, [SP,#0x68+var_38]
1601D6:  ADD.W           R10, R6, #0x60 ; '`'
1601DA:  STR             R6, [SP,#0x68+var_54]
1601DC:  ADD.W           R11, R6, #0x20 ; ' '
1601E0:  LDR             R5, =(aR08xR08x_0 - 0x1601EE); " R{}: {:08X} |  R{}: {:08X}" ...
1601E2:  ADD.W           R8, SP, #0x68+var_48
1601E6:  LDR             R4, =(aR08xR08x - 0x1601F0); "R{}: {:08X} | R{}: {:08X}" ...
1601E8:  ADD             R6, SP, #0x68+var_38
1601EA:  ADD             R5, PC; " R{}: {:08X} |  R{}: {:08X}"
1601EC:  ADD             R4, PC; "R{}: {:08X} | R{}: {:08X}"
1601EE:  ADD.W           R0, R9, #1
1601F2:  CMP.W           R9, #9
1601F6:  BGT             loc_16020C
1601F8:  STR             R0, [SP,#0x68+var_48]
1601FA:  ADD.W           R0, R11, #4
1601FE:  STR             R0, [SP,#0x68+var_60]
160200:  MOVS            R0, #3
160202:  STRD.W          R11, R8, [SP,#0x68+var_68]
160206:  MOV             R1, R5
160208:  MOVS            R2, #0x1B
16020A:  B               loc_16021E
16020C:  STR             R0, [SP,#0x68+var_48]
16020E:  ADD.W           R0, R11, #4
160212:  STR             R0, [SP,#0x68+var_60]
160214:  MOVS            R0, #3
160216:  MOV             R1, R4
160218:  MOVS            R2, #0x19
16021A:  STRD.W          R11, R8, [SP,#0x68+var_68]
16021E:  MOV             R3, R6
160220:  BL              sub_160CD8
160224:  LDR             R0, [SP,#0x68+var_38]
160226:  ADD.W           R11, R11, #8
16022A:  CMP             R11, R10
16022C:  ADD.W           R9, R0, #2
160230:  STR.W           R9, [SP,#0x68+var_38]
160234:  BCC             loc_1601EE
160236:  LDR             R1, =(byte_8F794 - 0x160240)
160238:  MOVS            R0, #3; int
16023A:  MOVS            R2, #0
16023C:  ADD             R1, PC; byte_8F794 ; text
16023E:  MOV             R11, R1
160240:  BL              sub_ED4F8
160244:  LDR             R1, =(aCalltrace - 0x16024E); "Calltrace:" ...
160246:  MOVS            R0, #3; int
160248:  MOVS            R2, #0xA
16024A:  ADD             R1, PC; "Calltrace:"
16024C:  BL              sub_ED4F8
160250:  LDR             R6, [SP,#0x68+var_54]
160252:  VMOV.I32        Q4, #0
160256:  MOV             R1, R8
160258:  LDR             R0, [R6,#0x5C]
16025A:  VST1.64         {D8-D9}, [R8]
16025E:  BLX             dladdr
160262:  LDR             R5, [SP,#0x68+var_50]
160264:  MOV             R2, R8
160266:  LDR             R1, [R6,#0x5C]
160268:  MOVS            R3, #1
16026A:  MOV.W           R10, #1
16026E:  LDR             R0, [R5]
160270:  LDR             R4, [R0,#0xC]
160272:  MOV             R0, R5
160274:  BLX             R4
160276:  LDR             R0, [R6,#0x58]
160278:  MOV             R1, R8
16027A:  VST1.64         {D8-D9}, [R8]
16027E:  BLX             dladdr
160282:  LDR             R0, [R5]
160284:  MOV             R2, R8
160286:  LDR             R1, [R6,#0x58]
160288:  MOVS            R3, #0
16028A:  MOV             R9, R5
16028C:  LDR             R4, [R0,#0xC]
16028E:  MOV             R0, R5
160290:  BLX             R4
160292:  MOVS            R0, #3; int
160294:  MOV             R1, R11; text
160296:  MOVS            R2, #0
160298:  BL              sub_ED4F8
16029C:  MOVS            R0, #3; int
16029E:  MOV             R1, R11; text
1602A0:  MOVS            R2, #0
1602A2:  BL              sub_ED4F8
1602A6:  LDR             R1, =(aBacktrace - 0x1602B0); "================ BACKTRACE ============"... ...
1602A8:  MOVS            R0, #3; int
1602AA:  MOVS            R2, #0x2B ; '+'
1602AC:  ADD             R1, PC; "================ BACKTRACE ============"...
1602AE:  BL              sub_ED4F8
1602B2:  LDR             R0, [SP,#0x68+var_58]
1602B4:  LDR.W           R11, [SP,#0x68+var_4C]
1602B8:  CMP             R0, #1
1602BA:  BEQ             loc_1602CC
1602BC:  LDR             R2, [SP,#0x68+var_34]
1602BE:  MOV             R0, R9
1602C0:  MOVS            R1, #5
1602C2:  MOV             R3, R11
1602C4:  STR             R6, [SP,#0x68+var_68]
1602C6:  BL              sub_1603B4
1602CA:  MOV             R10, R0
1602CC:  LDR             R0, =(sub_1604F4+1 - 0x1602DA)
1602CE:  MOVS            R1, #0x40 ; '@'
1602D0:  STR             R1, [SP,#0x68+var_44]
1602D2:  MOVS            R2, #0
1602D4:  LDR             R1, [R6,#0x5C]
1602D6:  ADD             R0, PC; sub_1604F4
1602D8:  STR             R1, [SP,#0x68+var_40]
1602DA:  ADD             R1, SP, #0x68+var_48
1602DC:  STR             R2, [SP,#0x68+var_48]
1602DE:  BLX             sub_2240F8
1602E2:  LDR             R2, [SP,#0x68+var_34]
1602E4:  CMP.W           R10, #1
1602E8:  BNE             loc_1602FA
1602EA:  MOV             R0, R9
1602EC:  MOVS            R1, #2
1602EE:  MOV             R3, R11
1602F0:  STR             R6, [SP,#0x68+var_68]
1602F2:  BL              sub_1603B4
1602F6:  MOVS            R0, #1
1602F8:  B               loc_16035C
1602FA:  MOV             R0, R9
1602FC:  MOVS            R1, #1
1602FE:  MOV             R3, R11
160300:  STR             R6, [SP,#0x68+var_68]
160302:  BL              sub_1603B4
160306:  CBZ             R0, loc_16035C
160308:  CMP             R0, #1
16030A:  BNE             loc_160310
16030C:  LDR             R2, [SP,#0x68+var_34]
16030E:  B               loc_160324
160310:  LDR             R2, [SP,#0x68+var_34]
160312:  MOVS            R0, #0
160314:  LDR             R1, =(unk_BA784 - 0x16031A)
160316:  ADD             R1, PC; unk_BA784
160318:  LDR             R3, [R1,R0]
16031A:  CMP             R3, R2
16031C:  BEQ             loc_16035A
16031E:  ADDS            R0, #4
160320:  CMP             R0, #8
160322:  BNE             loc_160318
160324:  MOV             R0, R9
160326:  MOVS            R1, #2
160328:  MOV             R3, R11
16032A:  STR             R6, [SP,#0x68+var_68]
16032C:  BL              sub_1603B4
160330:  CMP             R0, #0
160332:  IT NE
160334:  MOVNE           R0, #1
160336:  B               loc_16035C
160338:  CMP             R4, #0x1F
16033A:  BNE.W           loc_160168
16033E:  LDR.W           R0, [R11,#0xC]
160342:  ADD.W           R3, R11, #0x10
160346:  LDR             R1, =(aExceptionAtSys - 0x160352); "Exception at syscall: id = {}, address "... ...
160348:  MOVS            R2, #0x2D ; '-'
16034A:  STR             R0, [SP,#0x68+var_48]
16034C:  ADD             R0, SP, #0x68+var_48
16034E:  ADD             R1, PC; "Exception at syscall: id = {}, address "...
160350:  STR             R0, [SP,#0x68+var_68]
160352:  MOVS            R0, #3
160354:  BL              sub_160C00
160358:  B               loc_160168
16035A:  MOVS            R0, #0
16035C:  ADD             SP, SP, #0x38 ; '8'
16035E:  VPOP            {D8-D9}
160362:  ADD             SP, SP, #4
160364:  POP.W           {R8-R11}
160368:  POP             {R4-R7,PC}
