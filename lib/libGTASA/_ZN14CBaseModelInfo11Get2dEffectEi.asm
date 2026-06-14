; =========================================================
; Game Engine Function: _ZN14CBaseModelInfo11Get2dEffectEi
; Address            : 0x3850F0 - 0x385172
; =========================================================

3850F0:  PUSH            {R4-R7,LR}
3850F2:  ADD             R7, SP, #0xC
3850F4:  PUSH.W          {R11}
3850F8:  MOV             R5, R0
3850FA:  MOV             R4, R1
3850FC:  LDR             R0, [R5]
3850FE:  LDRB.W          R6, [R5,#0x23]
385102:  LDR             R1, [R0,#0x28]
385104:  MOV             R0, R5
385106:  BLX             R1
385108:  CMP             R0, #1
38510A:  BNE             loc_385118
38510C:  LDR             R0, [R5,#0x34]
38510E:  CBZ             R0, loc_385118
385110:  LDR             R1, =(g2dEffectPluginOffset_ptr - 0x385118)
385112:  LDR             R0, [R0,#0x18]
385114:  ADD             R1, PC; g2dEffectPluginOffset_ptr
385116:  B               loc_385134
385118:  LDR             R0, [R5]
38511A:  LDR             R1, [R0,#0x28]
38511C:  MOV             R0, R5
38511E:  BLX             R1
385120:  CMP             R0, #2
385122:  BNE             loc_385140
385124:  LDR             R0, [R5,#0x34]
385126:  CBZ             R0, loc_385140
385128:  BLX             j__Z17Get2DEffectAtomicP7RpClump; Get2DEffectAtomic(RpClump *)
38512C:  CBZ             R0, loc_385140
38512E:  LDR             R1, =(g2dEffectPluginOffset_ptr - 0x385136)
385130:  LDR             R0, [R0,#0x18]
385132:  ADD             R1, PC; g2dEffectPluginOffset_ptr
385134:  LDR             R1, [R1]; g2dEffectPluginOffset
385136:  LDR             R1, [R1]
385138:  LDR             R1, [R0,R1]
38513A:  CBZ             R1, loc_385152
38513C:  LDR             R1, [R1]
38513E:  B               loc_385154
385140:  MOVS            R0, #0; this
385142:  CMP             R6, R4
385144:  BLE             loc_38515A
385146:  BLX             j__ZN10CModelInfo16Get2dEffectStoreEv; CModelInfo::Get2dEffectStore(void)
38514A:  LDRSH.W         R1, [R5,#0x24]
38514E:  ADD             R1, R4
385150:  B               loc_385166
385152:  MOVS            R1, #0
385154:  SUBS            R6, R6, R1
385156:  CMP             R6, R4
385158:  BGT             loc_385146
38515A:  LDR             R1, =(g2dEffectPluginOffset_ptr - 0x385160)
38515C:  ADD             R1, PC; g2dEffectPluginOffset_ptr
38515E:  LDR             R1, [R1]; g2dEffectPluginOffset
385160:  LDR             R1, [R1]
385162:  LDR             R0, [R0,R1]
385164:  SUBS            R1, R4, R6
385166:  ADD.W           R0, R0, R1,LSL#6
38516A:  ADDS            R0, #4
38516C:  POP.W           {R11}
385170:  POP             {R4-R7,PC}
