; =========================================================
; Game Engine Function: _ZN15CTouchInterface27RepositionAdjustableWidgetsEv
; Address            : 0x2B0060 - 0x2B01F2
; =========================================================

2B0060:  PUSH            {R7,LR}
2B0062:  MOV             R7, SP
2B0064:  SUB             SP, SP, #0x188
2B0066:  ADR             R0, dword_2B0200
2B0068:  MOV             R12, SP
2B006A:  VLD1.64         {D16-D17}, [R0@128]
2B006E:  ADR             R0, dword_2B0210
2B0070:  MOVS            R1, #0
2B0072:  VLD1.64         {D18-D19}, [R0@128]
2B0076:  ADR             R0, dword_2B0220
2B0078:  VLD1.64         {D20-D21}, [R0@128]
2B007C:  ADR             R0, dword_2B0230
2B007E:  VLD1.64         {D22-D23}, [R0@128]
2B0082:  ADR             R0, dword_2B0240
2B0084:  VLD1.64         {D24-D25}, [R0@128]
2B0088:  ADR             R0, dword_2B0250
2B008A:  VLD1.64         {D26-D27}, [R0@128]
2B008E:  ADR             R0, dword_2B0260
2B0090:  VLD1.64         {D28-D29}, [R0@128]
2B0094:  ADR             R0, dword_2B0270
2B0096:  VLD1.64         {D30-D31}, [R0@128]
2B009A:  ADR             R0, dword_2B0280
2B009C:  VLD1.64         {D0-D1}, [R0@128]
2B00A0:  ADR             R0, dword_2B0290
2B00A2:  VLD1.64         {D2-D3}, [R0@128]
2B00A6:  ADD.W           R0, R12, #0x20 ; ' '
2B00AA:  VST1.32         {D2-D3}, [R0]
2B00AE:  ADR             R0, dword_2B02A0
2B00B0:  VLD1.64         {D2-D3}, [R0@128]
2B00B4:  ADD.W           R0, R12, #0x30 ; '0'
2B00B8:  VST1.32         {D2-D3}, [R0]
2B00BC:  ADR             R0, dword_2B02B0
2B00BE:  VLD1.64         {D2-D3}, [R0@128]
2B00C2:  ADD.W           R0, R12, #0x40 ; '@'
2B00C6:  VST1.32         {D2-D3}, [R0]
2B00CA:  ADR             R0, dword_2B02C0
2B00CC:  VLD1.64         {D2-D3}, [R0@128]
2B00D0:  ADD.W           R0, R12, #0x50 ; 'P'
2B00D4:  VST1.32         {D2-D3}, [R0]
2B00D8:  ADR             R0, dword_2B02D0
2B00DA:  VLD1.64         {D2-D3}, [R0@128]
2B00DE:  ADD.W           R0, R12, #0x60 ; '`'
2B00E2:  VST1.32         {D2-D3}, [R0]
2B00E6:  ADR             R0, dword_2B02E0
2B00E8:  VLD1.64         {D2-D3}, [R0@128]
2B00EC:  ADD.W           R0, R12, #0x70 ; 'p'
2B00F0:  VST1.32         {D2-D3}, [R0]
2B00F4:  ADR             R0, dword_2B02F0
2B00F6:  VLD1.64         {D2-D3}, [R0@128]
2B00FA:  ADD.W           R0, R12, #0x80
2B00FE:  VST1.32         {D2-D3}, [R0]
2B0102:  ADR             R0, dword_2B0300
2B0104:  VLD1.64         {D2-D3}, [R0@128]
2B0108:  ADD.W           R0, R12, #0x90
2B010C:  VST1.32         {D2-D3}, [R0]
2B0110:  ADR             R0, dword_2B0310
2B0112:  VLD1.64         {D2-D3}, [R0@128]
2B0116:  ADD.W           R0, R12, #0xA0
2B011A:  VST1.32         {D2-D3}, [R0]
2B011E:  ADR             R0, dword_2B0320
2B0120:  VLD1.64         {D2-D3}, [R0@128]
2B0124:  ADD.W           R0, R12, #0xB0
2B0128:  VST1.32         {D2-D3}, [R0]
2B012C:  ADR             R0, dword_2B0330
2B012E:  VLD1.64         {D2-D3}, [R0@128]
2B0132:  ADD.W           R0, R12, #0xC0
2B0136:  VST1.32         {D2-D3}, [R0]
2B013A:  ADR             R0, dword_2B0340
2B013C:  VLD1.64         {D2-D3}, [R0@128]
2B0140:  ADD.W           R0, R12, #0xD0
2B0144:  VST1.32         {D2-D3}, [R0]
2B0148:  ADR             R0, dword_2B0350
2B014A:  VLD1.64         {D2-D3}, [R0@128]
2B014E:  ADD.W           R0, R12, #0xE0
2B0152:  VST1.32         {D2-D3}, [R0]
2B0156:  ADR             R0, dword_2B0360
2B0158:  VLD1.64         {D2-D3}, [R0@128]
2B015C:  ADD.W           R0, R12, #0xF0
2B0160:  VST1.32         {D2-D3}, [R0]
2B0164:  ADR             R0, dword_2B0370
2B0166:  VLD1.64         {D2-D3}, [R0@128]
2B016A:  ADD.W           R0, R12, #0x100
2B016E:  VST1.32         {D2-D3}, [R0]
2B0172:  ADD.W           R0, R12, #0x110
2B0176:  VST1.32         {D0-D1}, [R0]
2B017A:  ADD.W           R0, R12, #0x120
2B017E:  VST1.32         {D16-D17}, [R0]
2B0182:  MOV             R0, R12
2B0184:  VST1.32         {D18-D19}, [R0]!
2B0188:  VST1.32         {D20-D21}, [R0]
2B018C:  ADD.W           R0, R12, #0x140
2B0190:  VST1.32         {D22-D23}, [R0]
2B0194:  ADD.W           R0, R12, #0x130
2B0198:  VST1.32         {D24-D25}, [R0]
2B019C:  ADD.W           R0, R12, #0x150
2B01A0:  VST1.32         {D26-D27}, [R0]
2B01A4:  ADD.W           R0, R12, #0x160
2B01A8:  VST1.32         {D28-D29}, [R0]
2B01AC:  ADD.W           R0, R12, #0x170
2B01B0:  VST1.32         {D30-D31}, [R0]
2B01B4:  MOVS            R0, #0xA
2B01B6:  STR             R0, [SP,#0x190+var_10]
2B01B8:  MOVS            R0, #9
2B01BA:  STR             R0, [SP,#0x190+var_C]
2B01BC:  LDR             R0, =(_ZN15CTouchInterface10m_pWidgetsE_ptr - 0x2B01C2)
2B01BE:  ADD             R0, PC; _ZN15CTouchInterface10m_pWidgetsE_ptr
2B01C0:  LDR             R2, [R0]; CTouchInterface::m_pWidgets ...
2B01C2:  LDR             R0, =(_ZN15CTouchInterface16m_WidgetPositionE_ptr - 0x2B01C8)
2B01C4:  ADD             R0, PC; _ZN15CTouchInterface16m_WidgetPositionE_ptr
2B01C6:  LDR.W           LR, [R0]; CTouchInterface::m_WidgetPosition ...
2B01CA:  LDR.W           R0, [R12,R1,LSL#3]
2B01CE:  LDR.W           R0, [R2,R0,LSL#2]
2B01D2:  CBZ             R0, loc_2B01E8
2B01D4:  ADD.W           R3, R12, R1,LSL#3
2B01D8:  ADDS            R0, #0xC
2B01DA:  LDR             R3, [R3,#4]
2B01DC:  ADD.W           R3, LR, R3,LSL#4
2B01E0:  VLD1.32         {D16-D17}, [R3]
2B01E4:  VST1.32         {D16-D17}, [R0]
2B01E8:  ADDS            R1, #1
2B01EA:  CMP             R1, #0x31 ; '1'
2B01EC:  BNE             loc_2B01CA
2B01EE:  ADD             SP, SP, #0x188
2B01F0:  POP             {R7,PC}
