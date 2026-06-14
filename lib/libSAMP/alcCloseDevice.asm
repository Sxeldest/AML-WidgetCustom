; =========================================================
; Game Engine Function: alcCloseDevice
; Address            : 0x1C0120 - 0x1C02C0
; =========================================================

1C0120:  PUSH            {R4-R8,R10,R11,LR}
1C0124:  ADD             R11, SP, #0x18
1C0128:  MOV             R4, R0
1C012C:  LDR             R0, =(unk_3827A0 - 0x1C0138)
1C0130:  ADD             R0, PC, R0; unk_3827A0 ; mutex
1C0134:  BL              j_EnterCriticalSection
1C0138:  LDR             R0, =(dword_382838 - 0x1C0144)
1C013C:  ADD             R0, PC, R0; dword_382838
1C0140:  LDR             R2, [R0]
1C0144:  LDR             R1, [R0]
1C0148:  CMP             R2, #0
1C014C:  BEQ             loc_1C0180
1C0150:  LDR             R0, =(dword_382838 - 0x1C0164)
1C0154:  MOV             R2, #0x2895C
1C015C:  ADD             R0, PC, R0; dword_382838
1C0160:  LDR             R3, [R0]
1C0164:  CMP             R1, R4
1C0168:  BEQ             loc_1C018C
1C016C:  LDR             R0, [R3,R2]!
1C0170:  LDR             R1, [R3]
1C0174:  CMP             R0, #0
1C0178:  MOV             R0, R3
1C017C:  BNE             loc_1C0160
1C0180:  CMP             R1, #0
1C0184:  BNE             loc_1C0198
1C0188:  B               loc_1C01A8
1C018C:  MOV             R1, R3
1C0190:  CMP             R1, #0
1C0194:  BEQ             loc_1C01A8
1C0198:  LDR             R1, [R0]
1C019C:  LDRB            R1, [R1,#5]
1C01A0:  CMP             R1, #0
1C01A4:  BEQ             loc_1C01F0
1C01A8:  LDR             R1, =(byte_382798 - 0x1C01B8)
1C01AC:  LDR             R4, [R0]
1C01B0:  LDRB            R0, [PC,R1]; byte_382798
1C01B4:  CMP             R0, #0
1C01B8:  BEQ             loc_1C01C4
1C01BC:  MOV             R0, #5; sig
1C01C0:  BL              raise
1C01C4:  LDR             R0, =(dword_38283C - 0x1C01DC)
1C01C8:  CMP             R4, #0
1C01CC:  LDR             R1, =(unk_3827A0 - 0x1C01E8)
1C01D0:  MOVW            R2, #0xA001
1C01D4:  ADD             R0, PC, R0; dword_38283C
1C01D8:  ADDNE           R0, R4, #0x24 ; '$'
1C01DC:  STR             R2, [R0]
1C01E0:  ADD             R0, PC, R1; unk_3827A0 ; mutex
1C01E4:  BL              j_LeaveCriticalSection
1C01E8:  MOV             R0, #0
1C01EC:  POP             {R4-R8,R10,R11,PC}
1C01F0:  LDR             R1, [R0]
1C01F4:  MOV             R3, #0x2895C
1C01FC:  LDR             R2, =(unk_3827A0 - 0x1C0210)
1C0200:  LDR             R1, [R1,R3]
1C0204:  STR             R1, [R0]
1C0208:  ADD             R0, PC, R2; unk_3827A0 ; mutex
1C020C:  BL              j_LeaveCriticalSection
1C0210:  MOVW            R0, #:lower16:(aZnkst6Ndk14Fs1_14+0x1D); "m4path5beginEv"
1C0214:  MOV             R7, R4
1C0218:  MOVT            R0, #:upper16:(aZnkst6Ndk14Fs1_14+0x1D); "m4path5beginEv"
1C021C:  LDR             R5, [R7,R0]!
1C0220:  CMP             R5, #0
1C0224:  BEQ             loc_1C0298
1C0228:  LDR             R0, =(LogLevel_ptr - 0x1C0234)
1C022C:  LDR             R6, [PC,R0]; LogLevel
1C0230:  LDR             R0, =(aAlcclosedevice_0 - 0x1C023C); "alcCloseDevice" ...
1C0234:  ADD             R8, PC, R0; "alcCloseDevice"
1C0238:  LDR             R0, [R6]
1C023C:  CMP             R0, #2
1C0240:  BCC             loc_1C0254
1C0244:  ADR             R1, aReleasingConte; "Releasing context %p\n"
1C0248:  MOV             R0, R8
1C024C:  MOV             R2, R5
1C0250:  BL              j_al_print
1C0254:  MOV             R0, R5
1C0258:  MOV             R1, R4
1C025C:  BL              sub_1BF3FC
1C0260:  LDR             R5, [R7]
1C0264:  CMP             R5, #0
1C0268:  BNE             loc_1C0238
1C026C:  MOVW            R0, #:lower16:(aZnkst6Ndk14Fs1_14+0x21); "th5beginEv"
1C0270:  MOV             R5, R4
1C0274:  MOVT            R0, #:upper16:(aZnkst6Ndk14Fs1_14+0x21); "th5beginEv"
1C0278:  LDR             R0, [R5,R0]!
1C027C:  LDR             R1, [R0,#0xC]
1C0280:  MOV             R0, R4
1C0284:  BLX             R1
1C0288:  LDR             R0, [R4,#0xB4]
1C028C:  BIC             R0, R0, #0x80000000
1C0290:  STR             R0, [R4,#0xB4]
1C0294:  B               loc_1C02A0
1C0298:  ADD             R0, R4, #0x154
1C029C:  ADD             R5, R0, #0x28800
1C02A0:  LDR             R0, [R5]
1C02A4:  LDR             R1, [R0,#4]
1C02A8:  MOV             R0, R4
1C02AC:  BLX             R1
1C02B0:  MOV             R0, R4
1C02B4:  BL              j_ALCdevice_DecRef
1C02B8:  MOV             R0, #1
1C02BC:  POP             {R4-R8,R10,R11,PC}
