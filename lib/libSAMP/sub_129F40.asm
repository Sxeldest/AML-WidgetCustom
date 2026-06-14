; =========================================================
; Game Engine Function: sub_129F40
; Address            : 0x129F40 - 0x12A3D2
; =========================================================

129F40:  PUSH            {R4-R7,LR}
129F42:  ADD             R7, SP, #0xC
129F44:  PUSH.W          {R8-R11}
129F48:  SUB             SP, SP, #4
129F4A:  VPUSH           {D8}
129F4E:  SUB             SP, SP, #8
129F50:  MOV             R4, R0
129F52:  LDR             R0, [R0,#0x54]
129F54:  LDR             R1, [R0]
129F56:  LDR             R1, [R1]
129F58:  BLX             R1
129F5A:  MOV             R10, R0
129F5C:  CMP             R0, #0
129F5E:  BEQ.W           loc_12A3C2
129F62:  MOVS            R0, #0x5C ; '\'; unsigned int
129F64:  BLX             j__Znwj; operator new(uint)
129F68:  MOV             R6, R0
129F6A:  BL              sub_1373B0
129F6E:  MOV             R0, R4
129F70:  MOV             R1, R6
129F72:  STR             R6, [R4,#0x5C]
129F74:  BL              sub_12BDF6
129F78:  LDRD.W          R0, R1, [R4,#0x14]
129F7C:  LDR             R2, [R4,#0x5C]
129F7E:  VMOV            D16, R0, R1
129F82:  ADDS            R2, #0x14
129F84:  VMOV            D17, D16
129F88:  VST1.32         {D16-D17}, [R2]!
129F8C:  STRD.W          R0, R1, [R2]
129F90:  MOVS            R1, #0
129F92:  LDR             R0, [R4,#0x5C]
129F94:  STRD.W          R1, R1, [SP,#0x30+var_30]
129F98:  MOV             R1, SP
129F9A:  BL              sub_12BD92
129F9E:  LDR             R6, [R4,#0x5C]
129FA0:  LDRB.W          R0, [R6,#0x50]
129FA4:  CMP             R0, #1
129FA6:  BEQ             loc_129FB2
129FA8:  LDR             R0, [R6]
129FAA:  MOVS            R1, #1
129FAC:  LDR             R2, [R0,#0x24]
129FAE:  MOV             R0, R6
129FB0:  BLX             R2
129FB2:  MOVS            R0, #1
129FB4:  STRB.W          R0, [R6,#0x50]
129FB8:  MOVS            R0, #0x60 ; '`'; unsigned int
129FBA:  BLX             j__Znwj; operator new(uint)
129FBE:  MOV             R6, R0
129FC0:  BL              sub_12E700
129FC4:  STR.W           R6, [R4,#0x80]
129FC8:  MOV             R0, R4
129FCA:  MOV             R1, R6
129FCC:  BL              sub_12BDF6
129FD0:  LDRD.W          R0, R1, [R4,#0x14]
129FD4:  LDR.W           R2, [R4,#0x80]
129FD8:  VMOV            D16, R0, R1
129FDC:  ADDS            R2, #0x14
129FDE:  VMOV            D17, D16
129FE2:  VST1.32         {D16-D17}, [R2]!
129FE6:  STRD.W          R0, R1, [R2]
129FEA:  MOVS            R1, #0
129FEC:  LDR.W           R0, [R4,#0x80]
129FF0:  STRD.W          R1, R1, [SP,#0x30+var_30]
129FF4:  MOV             R1, SP
129FF6:  BL              sub_12BD92
129FFA:  LDR.W           R6, [R4,#0x80]
129FFE:  LDRB.W          R0, [R6,#0x50]
12A002:  CBZ             R0, loc_12A00E
12A004:  LDR             R0, [R6]
12A006:  LDR             R2, [R0,#0x24]
12A008:  MOV             R0, R6
12A00A:  MOVS            R1, #0
12A00C:  BLX             R2
12A00E:  MOVS            R0, #0
12A010:  STRB.W          R0, [R6,#0x50]
12A014:  LDR             R1, [R4,#0x60]
12A016:  CBZ             R1, loc_12A01E
12A018:  MOV             R0, R4
12A01A:  BL              sub_12BE22
12A01E:  MOVW            R0, #0x8E8; unsigned int
12A022:  BLX             j__Znwj; operator new(uint)
12A026:  MOV             R6, R0
12A028:  BL              sub_12CA24
12A02C:  STR             R6, [R4,#0x60]
12A02E:  MOV             R0, R4
12A030:  MOV             R1, R6
12A032:  BL              sub_12BDF6
12A036:  LDR             R0, =(off_234B70 - 0x12A03E)
12A038:  LDR             R5, [R4,#0x60]
12A03A:  ADD             R0, PC; off_234B70
12A03C:  LDR             R0, [R0]; dword_238F18
12A03E:  LDR             R6, [R0]
12A040:  VLDR            S16, [R0,#4]
12A044:  BL              sub_E4F28
12A048:  VMOV            S0, R0
12A04C:  LDR             R0, =(off_234B74 - 0x12A058)
12A04E:  STR             R6, [R5,#0x24]
12A050:  VCVT.F32.U32    S0, S0
12A054:  ADD             R0, PC; off_234B74
12A056:  STR             R6, [R5,#0x1C]
12A058:  STR             R6, [R5,#0x14]
12A05A:  LDR             R1, [R0]; dword_238F08
12A05C:  LDRD.W          R2, R1, [R1]
12A060:  STRD.W          R2, R1, [SP,#0x30+var_30]
12A064:  VMUL.F32        S0, S16, S0
12A068:  VSTR            S0, [R5,#0x28]
12A06C:  VSTR            S0, [R5,#0x20]
12A070:  VSTR            S0, [R5,#0x18]
12A074:  LDR             R0, [R4,#0x60]
12A076:  MOV             R1, SP
12A078:  BL              sub_12BD92
12A07C:  LDR             R6, [R4,#0x60]
12A07E:  LDRB.W          R0, [R6,#0x50]
12A082:  CBZ             R0, loc_12A08E
12A084:  LDR             R0, [R6]
12A086:  LDR             R2, [R0,#0x24]
12A088:  MOV             R0, R6
12A08A:  MOVS            R1, #0
12A08C:  BLX             R2
12A08E:  MOVS            R0, #0
12A090:  STRB.W          R0, [R6,#0x50]
12A094:  MOVS            R0, #0x80; unsigned int
12A096:  BLX             j__Znwj; operator new(uint)
12A09A:  MOV             R6, R0
12A09C:  BL              sub_12C214
12A0A0:  MOV             R0, R4
12A0A2:  MOV             R1, R6
12A0A4:  STR             R6, [R4,#0x6C]
12A0A6:  BL              sub_12BDF6
12A0AA:  LDR             R0, =(off_234B78 - 0x12A0B6)
12A0AC:  VMOV.F32        S0, #0.5
12A0B0:  LDR             R1, =(off_234B7C - 0x12A0BA)
12A0B2:  ADD             R0, PC; off_234B78
12A0B4:  LDR             R2, =(off_234B80 - 0x12A0C0)
12A0B6:  ADD             R1, PC; off_234B7C
12A0B8:  LDR             R6, [R4,#0x6C]
12A0BA:  LDR             R0, [R0]; dword_238F60
12A0BC:  ADD             R2, PC; off_234B80
12A0BE:  LDR             R1, [R1]; dword_238EC8
12A0C0:  LDRD.W          R3, R0, [R0]
12A0C4:  VLDR            S2, [R1]
12A0C8:  VMOV            D16, R3, R0
12A0CC:  LDR             R1, [R2]; dword_238F58
12A0CE:  VMOV            D17, D16
12A0D2:  ADD.W           R2, R6, #0x14
12A0D6:  VMUL.F32        S0, S2, S0
12A0DA:  VST1.32         {D16-D17}, [R2]!
12A0DE:  STRD.W          R3, R0, [R2]
12A0E2:  LDR             R0, [R4,#0x6C]
12A0E4:  LDRD.W          R2, R1, [R1]
12A0E8:  STRD.W          R2, R1, [SP,#0x30+var_30]
12A0EC:  MOV             R1, SP
12A0EE:  VSTR            S0, [R6,#0x68]
12A0F2:  BL              sub_12BD92
12A0F6:  LDR             R6, [R4,#0x6C]
12A0F8:  LDRB.W          R0, [R6,#0x50]
12A0FC:  CBZ             R0, loc_12A108
12A0FE:  LDR             R0, [R6]
12A100:  MOVS            R1, #0
12A102:  LDR             R2, [R0,#0x24]
12A104:  MOV             R0, R6
12A106:  BLX             R2
12A108:  MOVS            R0, #0
12A10A:  LDR             R1, [R4,#0x68]
12A10C:  STRB.W          R0, [R6,#0x50]
12A110:  LDR             R0, =(off_234B84 - 0x12A118)
12A112:  LDR             R5, =(off_234B88 - 0x12A11A)
12A114:  ADD             R0, PC; off_234B84
12A116:  ADD             R5, PC; off_234B88
12A118:  MOV             R11, R0
12A11A:  CBZ             R1, loc_12A122
12A11C:  MOV             R0, R4
12A11E:  BL              sub_12BE22
12A122:  MOVS            R0, #0x88; unsigned int
12A124:  BLX             j__Znwj; operator new(uint)
12A128:  MOV             R6, R0
12A12A:  BL              sub_13A028
12A12E:  STR             R6, [R4,#0x68]
12A130:  MOV             R0, R4
12A132:  MOV             R1, R6
12A134:  BL              sub_12BDF6
12A138:  LDR             R6, [R4,#0x68]
12A13A:  LDRB.W          R0, [R6,#0x50]
12A13E:  CMP             R0, #0
12A140:  MOV             R0, R6
12A142:  BEQ             loc_12A150
12A144:  LDR             R0, [R6]
12A146:  LDR             R2, [R0,#0x24]
12A148:  MOV             R0, R6
12A14A:  MOVS            R1, #0
12A14C:  BLX             R2
12A14E:  LDR             R0, [R4,#0x68]
12A150:  MOV             R1, R11
12A152:  MOVS            R2, #0
12A154:  LDR.W           R1, [R11]; dword_238F40
12A158:  MOV             R3, R5
12A15A:  STRB.W          R2, [R6,#0x50]
12A15E:  LDRD.W          R2, R1, [R1]
12A162:  STRD.W          R2, R1, [R0,#0x24]
12A166:  LDR             R3, [R5]; dword_238F48
12A168:  LDR             R0, [R4,#0x68]
12A16A:  LDRD.W          R1, R2, [R3]
12A16E:  STRD.W          R1, R2, [R0,#0x1C]
12A172:  LDR             R1, [R4,#0x74]
12A174:  CBZ             R1, loc_12A17C
12A176:  MOV             R0, R4
12A178:  BL              sub_12BE22
12A17C:  MOVS            R0, #0x60 ; '`'; unsigned int
12A17E:  BLX             j__Znwj; operator new(uint)
12A182:  MOV             R6, R0
12A184:  BL              sub_1362EC
12A188:  STR             R6, [R4,#0x74]
12A18A:  MOV             R0, R4
12A18C:  MOV             R1, R6
12A18E:  BL              sub_12BDF6
12A192:  LDR.W           R0, [R11]; dword_238F40
12A196:  LDR             R1, [R4,#0x74]
12A198:  LDRD.W          R2, R0, [R0]
12A19C:  LDR             R3, [R5]; dword_238F48
12A19E:  STRD.W          R2, R0, [R1,#0x24]
12A1A2:  LDR             R0, [R4,#0x74]
12A1A4:  LDRD.W          R1, R2, [R3]
12A1A8:  STRD.W          R1, R2, [R0,#0x1C]
12A1AC:  LDR             R6, [R4,#0x74]
12A1AE:  LDRB.W          R0, [R6,#0x50]
12A1B2:  CBZ             R0, loc_12A1BE
12A1B4:  LDR             R0, [R6]
12A1B6:  LDR             R2, [R0,#0x24]
12A1B8:  MOV             R0, R6
12A1BA:  MOVS            R1, #0
12A1BC:  BLX             R2
12A1BE:  MOVS            R0, #0
12A1C0:  STRB.W          R0, [R6,#0x50]
12A1C4:  LDR             R1, [R4,#0x64]
12A1C6:  CBZ             R1, loc_12A1CE
12A1C8:  MOV             R0, R4
12A1CA:  BL              sub_12BE22
12A1CE:  MOVS            R0, #0x78 ; 'x'; unsigned int
12A1D0:  BLX             j__Znwj; operator new(uint)
12A1D4:  MOV             R6, R0
12A1D6:  BL              sub_13705C
12A1DA:  STR             R6, [R4,#0x64]
12A1DC:  MOV             R0, R4
12A1DE:  MOV             R1, R6
12A1E0:  BL              sub_12BDF6
12A1E4:  LDR             R0, =(off_234B8C - 0x12A1EC)
12A1E6:  LDR             R1, =(off_234B90 - 0x12A1F0)
12A1E8:  ADD             R0, PC; off_234B8C
12A1EA:  LDR             R3, [R4,#0x64]
12A1EC:  ADD             R1, PC; off_234B90
12A1EE:  LDR             R0, [R0]; dword_238F28
12A1F0:  ADDS            R3, #0x14
12A1F2:  LDR             R1, [R1]; dword_238F20
12A1F4:  LDRD.W          R2, R0, [R0]
12A1F8:  VMOV            D16, R2, R0
12A1FC:  VMOV            D17, D16
12A200:  VST1.32         {D16-D17}, [R3]!
12A204:  STRD.W          R2, R0, [R3]
12A208:  LDR             R0, [R4,#0x64]
12A20A:  LDRD.W          R2, R1, [R1]
12A20E:  STRD.W          R2, R1, [SP,#0x30+var_30]
12A212:  MOV             R1, SP
12A214:  BL              sub_12BD92
12A218:  LDR             R6, [R4,#0x64]
12A21A:  LDRB.W          R0, [R6,#0x50]
12A21E:  CBZ             R0, loc_12A22A
12A220:  LDR             R0, [R6]
12A222:  LDR             R2, [R0,#0x24]
12A224:  MOV             R0, R6
12A226:  MOVS            R1, #0
12A228:  BLX             R2
12A22A:  MOVS            R0, #0
12A22C:  STRB.W          R0, [R6,#0x50]
12A230:  LDR             R1, [R4,#0x78]
12A232:  CBZ             R1, loc_12A23A
12A234:  MOV             R0, R4
12A236:  BL              sub_12BE22
12A23A:  MOVS            R0, #0x68 ; 'h'; unsigned int
12A23C:  BLX             j__Znwj; operator new(uint)
12A240:  MOV             R6, R0
12A242:  BL              sub_134BCC
12A246:  STR             R6, [R4,#0x78]
12A248:  MOV             R0, R4
12A24A:  MOV             R1, R6
12A24C:  BL              sub_12BDF6
12A250:  LDR             R0, =(off_234B94 - 0x12A258)
12A252:  LDR             R2, [R4,#0x78]
12A254:  ADD             R0, PC; off_234B94
12A256:  ADDS            R2, #0x14
12A258:  LDR             R0, [R0]; dword_238EB0
12A25A:  LDRD.W          R1, R0, [R0]
12A25E:  VMOV            D16, R1, R0
12A262:  VMOV            D17, D16
12A266:  VST1.32         {D16-D17}, [R2]!
12A26A:  STRD.W          R1, R0, [R2]
12A26E:  MOVS            R1, #0
12A270:  LDR             R0, [R4,#0x78]
12A272:  STRD.W          R1, R1, [SP,#0x30+var_30]
12A276:  MOV             R1, SP
12A278:  BL              sub_12BD92
12A27C:  LDR             R6, [R4,#0x78]
12A27E:  LDRB.W          R0, [R6,#0x50]
12A282:  CBZ             R0, loc_12A28E
12A284:  LDR             R0, [R6]
12A286:  LDR             R2, [R0,#0x24]
12A288:  MOV             R0, R6
12A28A:  MOVS            R1, #0
12A28C:  BLX             R2
12A28E:  MOVS            R0, #0
12A290:  STRB.W          R0, [R6,#0x50]
12A294:  LDR             R1, [R4,#0x70]
12A296:  CBZ             R1, loc_12A29E
12A298:  MOV             R0, R4
12A29A:  BL              sub_12BE22
12A29E:  MOVS            R0, #0x70 ; 'p'; unsigned int
12A2A0:  BLX             j__Znwj; operator new(uint)
12A2A4:  MOV             R6, R0
12A2A6:  BL              sub_12ED94
12A2AA:  STR             R6, [R4,#0x70]
12A2AC:  MOV             R0, R4
12A2AE:  MOV             R1, R6
12A2B0:  BL              sub_12BDF6
12A2B4:  LDR             R0, =(off_234B98 - 0x12A2BC)
12A2B6:  LDR             R1, =(off_234B9C - 0x12A2C0)
12A2B8:  ADD             R0, PC; off_234B98
12A2BA:  LDR             R3, [R4,#0x70]
12A2BC:  ADD             R1, PC; off_234B9C
12A2BE:  LDR             R0, [R0]; dword_238F70
12A2C0:  ADDS            R3, #0x14
12A2C2:  LDR             R1, [R1]; dword_238F68
12A2C4:  LDRD.W          R2, R0, [R0]
12A2C8:  VMOV            D16, R2, R0
12A2CC:  VMOV            D17, D16
12A2D0:  VST1.32         {D16-D17}, [R3]!
12A2D4:  STRD.W          R2, R0, [R3]
12A2D8:  LDR             R0, [R4,#0x70]
12A2DA:  LDRD.W          R2, R1, [R1]
12A2DE:  STRD.W          R2, R1, [SP,#0x30+var_30]
12A2E2:  MOV             R1, SP
12A2E4:  BL              sub_12BD92
12A2E8:  LDR             R6, [R4,#0x70]
12A2EA:  LDRB.W          R0, [R6,#0x50]
12A2EE:  CBZ             R0, loc_12A2FA
12A2F0:  LDR             R0, [R6]
12A2F2:  LDR             R2, [R0,#0x24]
12A2F4:  MOV             R0, R6
12A2F6:  MOVS            R1, #0
12A2F8:  BLX             R2
12A2FA:  MOVS            R0, #0
12A2FC:  STRB.W          R0, [R6,#0x50]
12A300:  LDR.W           R1, [R4,#0x84]
12A304:  CBZ             R1, loc_12A30C
12A306:  MOV             R0, R4
12A308:  BL              sub_12BE22
12A30C:  MOVS            R0, #0x6C ; 'l'; unsigned int
12A30E:  BLX             j__Znwj; operator new(uint)
12A312:  MOV             R6, R0
12A314:  BL              sub_1375F0
12A318:  STR.W           R6, [R4,#0x84]
12A31C:  MOV             R0, R4
12A31E:  MOV             R1, R6
12A320:  BL              sub_12BDF6
12A324:  LDRD.W          R0, R1, [R4,#0x14]
12A328:  LDR.W           R2, [R4,#0x84]
12A32C:  VMOV            D16, R0, R1
12A330:  ADDS            R2, #0x14
12A332:  VMOV            D17, D16
12A336:  VST1.32         {D16-D17}, [R2]!
12A33A:  STRD.W          R0, R1, [R2]
12A33E:  MOVS            R1, #0
12A340:  LDR.W           R0, [R4,#0x84]
12A344:  STRD.W          R1, R1, [SP,#0x30+var_30]
12A348:  MOV             R1, SP
12A34A:  BL              sub_12BD92
12A34E:  LDR.W           R6, [R4,#0x84]
12A352:  LDRB.W          R0, [R6,#0x50]
12A356:  CBZ             R0, loc_12A362
12A358:  LDR             R0, [R6]
12A35A:  LDR             R2, [R0,#0x24]
12A35C:  MOV             R0, R6
12A35E:  MOVS            R1, #0
12A360:  BLX             R2
12A362:  MOVS            R0, #0
12A364:  STRB.W          R0, [R6,#0x50]
12A368:  MOVS            R0, #0x6C ; 'l'; unsigned int
12A36A:  BLX             j__Znwj; operator new(uint)
12A36E:  MOV             R6, R0
12A370:  BL              sub_133310
12A374:  STR             R6, [R4,#0x7C]
12A376:  MOV             R0, R4
12A378:  MOV             R1, R6
12A37A:  BL              sub_12BDF6
12A37E:  LDRD.W          R0, R1, [R4,#0x14]
12A382:  LDR             R2, [R4,#0x7C]
12A384:  VMOV            D16, R0, R1
12A388:  ADDS            R2, #0x14
12A38A:  VMOV            D17, D16
12A38E:  VST1.32         {D16-D17}, [R2]!
12A392:  STRD.W          R0, R1, [R2]
12A396:  MOVS            R1, #0
12A398:  LDR             R0, [R4,#0x7C]
12A39A:  STRD.W          R1, R1, [SP,#0x30+var_30]
12A39E:  MOV             R1, SP
12A3A0:  BL              sub_12BD92
12A3A4:  LDR             R6, [R4,#0x7C]
12A3A6:  LDRB.W          R0, [R6,#0x50]
12A3AA:  CBZ             R0, loc_12A3B6
12A3AC:  LDR             R0, [R6]
12A3AE:  LDR             R2, [R0,#0x24]
12A3B0:  MOV             R0, R6
12A3B2:  MOVS            R1, #0
12A3B4:  BLX             R2
12A3B6:  MOVS            R0, #0
12A3B8:  STRB.W          R0, [R6,#0x50]
12A3BC:  MOV             R0, R4
12A3BE:  BL              sub_12A778
12A3C2:  MOV             R0, R10
12A3C4:  ADD             SP, SP, #8
12A3C6:  VPOP            {D8}
12A3CA:  ADD             SP, SP, #4
12A3CC:  POP.W           {R8-R11}
12A3D0:  POP             {R4-R7,PC}
