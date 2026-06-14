; =========================================================
; Game Engine Function: sub_88140
; Address            : 0x88140 - 0x882B6
; =========================================================

88140:  PUSH            {R4-R7,LR}
88142:  ADD             R7, SP, #0xC
88144:  PUSH.W          {R8,R9,R11}
88148:  VPUSH           {D8-D9}
8814C:  MOV             R4, R0
8814E:  MOVS            R5, #0
88150:  MOVW            R0, #0x1504
88154:  VMOV.I32        Q4, #0
88158:  STR             R5, [R4,R0]
8815A:  MOVW            R0, #0x1508
8815E:  MOVW            R1, #0x1510; n
88162:  STR             R5, [R4,R0]
88164:  MOV.W           R0, #0x1500
88168:  STR             R5, [R4,R0]
8816A:  ADDW            R0, R4, #0x414
8816E:  VST1.32         {D8-D9}, [R0]!
88172:  VST1.32         {D8-D9}, [R0]!
88176:  STR             R5, [R0]
88178:  ADD.W           R0, R4, #0x36C
8817C:  VST1.32         {D8-D9}, [R0]!
88180:  VST1.32         {D8-D9}, [R0]!
88184:  VST1.32         {D8-D9}, [R0]!
88188:  STR             R5, [R0]
8818A:  MOV             R0, R4; int
8818C:  STR.W           R5, [R4,#0x438]
88190:  STR.W           R5, [R4,#0x3A0]
88194:  BLX             sub_10967C
88198:  LDR             R0, =(aImguiIni - 0x881A4); "imgui.ini" ...
8819A:  MOVS            R3, #0
8819C:  LDR             R1, =(aImguiLogTxt - 0x881B6); "imgui_log.txt" ...
8819E:  ADR             R2, dword_882C0
881A0:  ADD             R0, PC; "imgui.ini"
881A2:  MOVT            R3, #0x40A0
881A6:  MOVW            R8, #0
881AA:  VLD1.64         {D16-D17}, [R2@128]
881AE:  MOVW            R2, #0x999A
881B2:  ADD             R1, PC; "imgui_log.txt"
881B4:  STRD.W          R3, R0, [R4,#0x14]
881B8:  ADD.W           R0, R4, #0x1C
881BC:  MOVT            R8, #0x40C0
881C0:  MOVT            R2, #0x3E99
881C4:  STM.W           R0, {R1,R2,R8}
881C8:  MOV             R0, R4
881CA:  MOVW            R1, #0x8889
881CE:  VST1.32         {D16-D17}, [R0]!
881D2:  MOVT            R1, #0x3C88
881D6:  MOVS            R2, #0xFF; c
881D8:  STR             R1, [R0]
881DA:  ADD.W           R0, R4, #0x2C ; ','; int
881DE:  MOVS            R1, #0x54 ; 'T'; n
881E0:  BLX             sub_10966C
881E4:  MOVW            R9, #0xCCCD
881E8:  MOV.W           R0, #0x3E800000
881EC:  MOVT            R9, #0x3D4C
881F0:  LDR             R1, =(nullsub_26+1 - 0x881FE)
881F2:  LDR             R2, =(sub_88300+1 - 0x8820C)
881F4:  VMOV.F32        Q8, #-1.0
881F8:  LDR             R3, =(sub_882E4+1 - 0x88222)
881FA:  ADD             R1, PC; nullsub_26
881FC:  STRD.W          R0, R9, [R4,#0x80]
88200:  MOV             R0, #0xFF7FFFFF
88204:  STRD.W          R0, R0, [R4,#0x374]
88208:  ADD             R2, PC; sub_88300
8820A:  STRD.W          R0, R0, [R4,#0xD8]
8820E:  ADD.W           R0, R4, #0xAC
88212:  VST1.32         {D8-D9}, [R0]!
88216:  MOVW            R12, #0
8821A:  MOVW            LR, #0
8821E:  ADD             R3, PC; sub_882E4
88220:  STR             R5, [R0]
88222:  ADD.W           R0, R4, #0x3EC
88226:  VST1.32         {D16-D17}, [R0]!
8822A:  MOVT            R12, #0xBF80
8822E:  MOV.W           R6, #0x3F800000
88232:  MOVT            LR, #0x101
88236:  VST1.32         {D16-D17}, [R0]
8823A:  MOVW            R0, #0x1450
8823E:  STRD.W          R5, R1, [R4,#0xC8]
88242:  ADDS            R1, R4, R0
88244:  STRD.W          R3, R2, [R4,#0xC0]
88248:  MOV.W           R2, #0x450
8824C:  MOV.W           R3, #0x800
88250:  STRD.W          R5, R5, [R4,#0x88]
88254:  STR.W           R6, [R4,#0x90]
88258:  STRB.W          R5, [R4,#0xA8]
8825C:  STRD.W          R5, R6, [R4,#0x98]
88260:  STRD.W          R6, LR, [R4,#0xA0]
88264:  STRB.W          R5, [R4,#0x94]
88268:  STRD.W          R5, R5, [R4,#0xD0]
8826C:  STR.W           R8, [R4,#0x28]
88270:  STR.W           R12, [R4,#0x40C]
88274:  STR.W           R12, [R4,#0x410]
88278:  ADDS            R0, R4, R2
8827A:  ADDS            R2, #0x10
8827C:  VST1.32         {D16-D17}, [R0],R3
88280:  CMP.W           R2, #0xC50
88284:  VST1.64         {D16-D17}, [R0]
88288:  BNE             loc_88278
8828A:  VMOV.F32        Q8, #-1.0
8828E:  STR.W           R12, [R1,#0x54]
88292:  MOV             R0, R4
88294:  VST1.32         {D16-D17}, [R1]!
88298:  VST1.32         {D16-D17}, [R1]!
8829C:  VST1.32         {D16-D17}, [R1]!
882A0:  VST1.32         {D16-D17}, [R1]!
882A4:  VST1.32         {D16-D17}, [R1]!
882A8:  STR.W           R12, [R1]
882AC:  VPOP            {D8-D9}
882B0:  POP.W           {R8,R9,R11}
882B4:  POP             {R4-R7,PC}
