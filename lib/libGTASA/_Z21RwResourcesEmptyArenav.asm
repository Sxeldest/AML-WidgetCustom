; =========================================================
; Game Engine Function: _Z21RwResourcesEmptyArenav
; Address            : 0x1E5020 - 0x1E5112
; =========================================================

1E5020:  PUSH            {R4-R7,LR}
1E5022:  ADD             R7, SP, #0xC
1E5024:  PUSH.W          {R8-R11}
1E5028:  SUB             SP, SP, #4
1E502A:  LDR             R0, =(resourcesModule_ptr - 0x1E5032)
1E502C:  LDR             R1, =(RwEngineInstance_ptr - 0x1E5034)
1E502E:  ADD             R0, PC; resourcesModule_ptr
1E5030:  ADD             R1, PC; RwEngineInstance_ptr
1E5032:  LDR             R0, [R0]; resourcesModule
1E5034:  LDR             R1, [R1]; RwEngineInstance
1E5036:  LDR             R2, [R0]
1E5038:  LDR             R3, [R1]
1E503A:  ADD             R2, R3
1E503C:  LDRD.W          R3, R2, [R2,#0x14]
1E5040:  STR             R2, [R3]
1E5042:  LDR             R0, [R0]
1E5044:  LDR             R1, [R1]
1E5046:  ADDS            R2, R1, R0
1E5048:  ADD.W           R11, R2, #0x18
1E504C:  LDR             R4, [R2,#0x10]
1E504E:  CMP             R4, R11
1E5050:  BEQ             loc_1E50C6
1E5052:  LDR             R0, =(RwEngineInstance_ptr - 0x1E505E)
1E5054:  MOV.W           R10, #0
1E5058:  LDR             R1, =(RwEngineInstance_ptr - 0x1E5060)
1E505A:  ADD             R0, PC; RwEngineInstance_ptr
1E505C:  ADD             R1, PC; RwEngineInstance_ptr
1E505E:  LDR.W           R8, [R0]; RwEngineInstance
1E5062:  LDR             R0, =(resourcesModule_ptr - 0x1E506A)
1E5064:  LDR             R6, [R1]; RwEngineInstance
1E5066:  ADD             R0, PC; resourcesModule_ptr
1E5068:  LDR.W           R9, [R0]; resourcesModule
1E506C:  LDR             R1, [R4,#0x14]
1E506E:  LDR             R5, [R4]
1E5070:  CMP             R1, #0
1E5072:  ITT NE
1E5074:  MOVNE           R0, R4
1E5076:  BLXNE           R1
1E5078:  LDR             R0, [R4,#0x10]
1E507A:  CMP             R0, #0
1E507C:  IT NE
1E507E:  STRNE.W         R10, [R0]
1E5082:  LDR             R0, [R4]
1E5084:  CBZ             R0, loc_1E50A4
1E5086:  LDR             R1, [R4,#4]
1E5088:  STR             R0, [R1]
1E508A:  LDRD.W          R0, R1, [R4]
1E508E:  STR             R1, [R0,#4]
1E5090:  LDR.W           R0, [R9]
1E5094:  LDR             R1, [R6]
1E5096:  LDR             R2, [R4,#8]
1E5098:  ADD             R0, R1
1E509A:  LDR             R1, [R0,#4]
1E509C:  SUBS            R1, R1, R2
1E509E:  STR             R1, [R0,#4]
1E50A0:  LDR             R0, [R6]
1E50A2:  B               loc_1E50A8
1E50A4:  LDR.W           R0, [R8]
1E50A8:  LDR.W           R1, [R0,#0x130]
1E50AC:  MOV             R0, R4
1E50AE:  BLX             R1
1E50B0:  CMP             R5, R11
1E50B2:  MOV             R4, R5
1E50B4:  BNE             loc_1E506C
1E50B6:  LDR             R0, =(resourcesModule_ptr - 0x1E50BE)
1E50B8:  LDR             R1, =(RwEngineInstance_ptr - 0x1E50C0)
1E50BA:  ADD             R0, PC; resourcesModule_ptr
1E50BC:  ADD             R1, PC; RwEngineInstance_ptr
1E50BE:  LDR             R0, [R0]; resourcesModule
1E50C0:  LDR             R1, [R1]; RwEngineInstance
1E50C2:  LDR             R0, [R0]
1E50C4:  LDR             R1, [R1]
1E50C6:  LDR             R2, =(resourcesModule_ptr - 0x1E50D0)
1E50C8:  ADD             R0, R1
1E50CA:  LDR             R3, =(RwEngineInstance_ptr - 0x1E50D2)
1E50CC:  ADD             R2, PC; resourcesModule_ptr
1E50CE:  ADD             R3, PC; RwEngineInstance_ptr
1E50D0:  LDR             R2, [R2]; resourcesModule
1E50D2:  LDR             R1, [R3]; RwEngineInstance
1E50D4:  ADD.W           R3, R0, #0x10
1E50D8:  STR             R3, [R0,#0x10]
1E50DA:  LDR             R0, [R2]
1E50DC:  LDR             R3, [R1]
1E50DE:  ADD             R0, R3
1E50E0:  ADD.W           R3, R0, #0x10
1E50E4:  STR             R3, [R0,#0x14]
1E50E6:  LDR             R0, [R2]
1E50E8:  LDR             R3, [R1]
1E50EA:  ADD             R0, R3
1E50EC:  ADD.W           R3, R0, #0x18
1E50F0:  STR             R3, [R0,#0x18]
1E50F2:  LDR             R0, [R2]
1E50F4:  LDR             R3, [R1]
1E50F6:  ADD             R0, R3
1E50F8:  ADD.W           R3, R0, #0x18
1E50FC:  STR             R3, [R0,#0x1C]
1E50FE:  LDR             R0, [R2]
1E5100:  LDR             R1, [R1]
1E5102:  ADD             R0, R1
1E5104:  MOVS            R1, #0
1E5106:  STR             R1, [R0,#8]
1E5108:  MOVS            R0, #1
1E510A:  ADD             SP, SP, #4
1E510C:  POP.W           {R8-R11}
1E5110:  POP             {R4-R7,PC}
