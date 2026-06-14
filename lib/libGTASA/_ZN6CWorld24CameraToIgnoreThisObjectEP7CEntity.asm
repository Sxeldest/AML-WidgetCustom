; =========================================================
; Game Engine Function: _ZN6CWorld24CameraToIgnoreThisObjectEP7CEntity
; Address            : 0x426144 - 0x42618C
; =========================================================

426144:  PUSH            {R4,R6,R7,LR}
426146:  ADD             R7, SP, #8
426148:  MOV             R4, R0
42614A:  LDRSH.W         R0, [R4,#0x26]; this
42614E:  BLX             j__ZN8CGarages17IsModelIndexADoorEi; CGarages::IsModelIndexADoor(int)
426152:  MOV             R1, R0
426154:  MOVS            R0, #0
426156:  CBNZ            R1, locret_42618A
426158:  LDR             R1, =(gCurCamColVars_ptr - 0x426162)
42615A:  LDR.W           R2, [R4,#0x164]
42615E:  ADD             R1, PC; gCurCamColVars_ptr
426160:  LDR             R1, [R1]; gCurCamColVars
426162:  LDRB            R2, [R2,#0x1E]
426164:  LDRB            R1, [R1]
426166:  CMP             R1, #0xA
426168:  IT CC
42616A:  MOVCC           R0, #1
42616C:  CMP             R2, #3
42616E:  IT EQ
426170:  POPEQ           {R4,R6,R7,PC}
426172:  CMP             R2, #2
426174:  BEQ             loc_426188
426176:  CMP             R2, #1
426178:  ITT NE
42617A:  MOVNE           R0, #1
42617C:  POPNE           {R4,R6,R7,PC}
42617E:  MOVS            R0, #0
426180:  CMP             R1, #9
426182:  IT HI
426184:  MOVHI           R0, #1
426186:  POP             {R4,R6,R7,PC}
426188:  MOVS            R0, #0
42618A:  POP             {R4,R6,R7,PC}
