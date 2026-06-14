; =========================================================
; Game Engine Function: sub_165030
; Address            : 0x165030 - 0x165184
; =========================================================

165030:  PUSH            {R4-R7,LR}
165032:  ADD             R7, SP, #0xC
165034:  PUSH.W          {R8}
165038:  VPUSH           {D8-D9}
16503C:  MOV             R4, R0
16503E:  MOVS            R5, #0
165040:  MOV.W           R0, #0x1500
165044:  VMOV.I32        Q4, #0
165048:  STR             R5, [R4,R0]
16504A:  ADD.W           R0, R4, #0x1500
16504E:  MOVW            R1, #0x1510; n
165052:  STRD.W          R5, R5, [R0,#4]
165056:  ADDW            R0, R4, #0x414
16505A:  VST1.32         {D8-D9}, [R0]!
16505E:  VST1.32         {D8-D9}, [R0]!
165062:  STR             R5, [R0]
165064:  ADD.W           R0, R4, #0x36C
165068:  VST1.32         {D8-D9}, [R0]!
16506C:  VST1.32         {D8-D9}, [R0]!
165070:  VST1.32         {D8-D9}, [R0]!
165074:  STR             R5, [R0]
165076:  MOV             R0, R4; int
165078:  STR.W           R5, [R4,#0x438]
16507C:  STR.W           R5, [R4,#0x3A0]
165080:  BLX             sub_22178C
165084:  LDR             R0, =(aImguiIni - 0x165090); "imgui.ini" ...
165086:  MOVS            R3, #0
165088:  LDR             R1, =(aImguiLogTxt - 0x1650A2); "imgui_log.txt" ...
16508A:  ADR             R2, dword_165188
16508C:  ADD             R0, PC; "imgui.ini"
16508E:  MOVT            R3, #0x40A0
165092:  MOVW            R8, #0
165096:  VLD1.64         {D16-D17}, [R2]
16509A:  MOVW            R2, #0x999A
16509E:  ADD             R1, PC; "imgui_log.txt"
1650A0:  STRD.W          R3, R0, [R4,#0x14]
1650A4:  ADD.W           R0, R4, #0x1C
1650A8:  MOVT            R8, #0x40C0
1650AC:  MOVT            R2, #0x3E99
1650B0:  STM.W           R0, {R1,R2,R8}
1650B4:  MOV             R0, R4
1650B6:  MOVW            R1, #0x8889
1650BA:  VST1.32         {D16-D17}, [R0]!
1650BE:  MOVT            R1, #0x3C88
1650C2:  MOVS            R2, #0xFF; c
1650C4:  STR             R1, [R0]
1650C6:  ADD.W           R0, R4, #0x2C ; ','; int
1650CA:  MOVS            R1, #0x54 ; 'T'; n
1650CC:  BLX             sub_22177C
1650D0:  LDR             R0, =(nullsub_45+1 - 0x1650E0)
1650D2:  MOVW            R12, #0xCCCD
1650D6:  LDR             R1, =(sub_1651C8+1 - 0x1650F8)
1650D8:  MOVT            R12, #0x3D4C
1650DC:  ADD             R0, PC; nullsub_45
1650DE:  LDR             R2, =(sub_1651AC+1 - 0x1650FA)
1650E0:  MOV.W           R6, #0x3E800000
1650E4:  MOV.W           R3, #0x3F800000
1650E8:  STRD.W          R5, R0, [R4,#0xC8]
1650EC:  ADD.W           R0, R4, #0xAC
1650F0:  VST1.32         {D8-D9}, [R0]!
1650F4:  ADD             R1, PC; sub_1651C8
1650F6:  ADD             R2, PC; sub_1651AC
1650F8:  STRD.W          R6, R12, [R4,#0x80]
1650FC:  MOVS            R6, #0x1010000
165102:  STR             R5, [R0]
165104:  MOVS            R0, #0
165106:  STR.W           R3, [R4,#0x90]
16510A:  MOVT            R0, #0xBF80
16510E:  STRD.W          R5, R3, [R4,#0x98]
165112:  STRD.W          R3, R6, [R4,#0xA0]
165116:  MOV             R3, #0xFF7FFFFF
16511A:  STRD.W          R5, R5, [R4,#0x88]
16511E:  STRB.W          R5, [R4,#0xA8]
165122:  STRB.W          R5, [R4,#0x94]
165126:  STRD.W          R3, R3, [R4,#0x374]
16512A:  STRD.W          R2, R1, [R4,#0xC0]
16512E:  STRD.W          R5, R5, [R4,#0xD0]
165132:  STRD.W          R3, R3, [R4,#0xD8]
165136:  STR.W           R8, [R4,#0x28]
16513A:  ADDS            R1, R4, R5
16513C:  ADDS            R5, #4
16513E:  CMP             R5, #0x14
165140:  STR.W           R0, [R1,#0x3EC]
165144:  STR.W           R0, [R1,#0x400]
165148:  BNE             loc_16513A
16514A:  VMOV.F32        Q8, #-1.0
16514E:  MOV.W           R1, #0x450
165152:  MOV.W           R2, #0x800
165156:  ADDS            R3, R4, R1
165158:  ADDS            R1, #0x10
16515A:  VST1.32         {D16-D17}, [R3],R2
16515E:  CMP.W           R1, #0xC50
165162:  VST1.64         {D16-D17}, [R3]
165166:  BNE             loc_165156
165168:  MOVW            R1, #0x1450
16516C:  MOVS            R2, #0
16516E:  ADD             R1, R4
165170:  STR             R0, [R1,R2]
165172:  ADDS            R2, #4
165174:  CMP             R2, #0x58 ; 'X'
165176:  BNE             loc_165170
165178:  MOV             R0, R4
16517A:  VPOP            {D8-D9}
16517E:  POP.W           {R8}
165182:  POP             {R4-R7,PC}
