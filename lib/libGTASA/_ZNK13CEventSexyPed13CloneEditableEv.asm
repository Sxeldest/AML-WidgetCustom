; =========================================================
; Game Engine Function: _ZNK13CEventSexyPed13CloneEditableEv
; Address            : 0x37A104 - 0x37A194
; =========================================================

37A104:  PUSH            {R4,R6,R7,LR}
37A106:  ADD             R7, SP, #8
37A108:  LDR             R1, =(_ZN6CPools13ms_pEventPoolE_ptr - 0x37A112)
37A10A:  MOV.W           LR, #0
37A10E:  ADD             R1, PC; _ZN6CPools13ms_pEventPoolE_ptr
37A110:  LDR             R1, [R1]; CPools::ms_pEventPool ...
37A112:  LDR             R1, [R1]; CPools::ms_pEventPool
37A114:  LDRD.W          R12, R4, [R1,#8]
37A118:  ADDS            R4, #1
37A11A:  STR             R4, [R1,#0xC]
37A11C:  CMP             R4, R12
37A11E:  BNE             loc_37A12E
37A120:  MOVS            R4, #0
37A122:  MOVS.W          R2, LR,LSL#31
37A126:  STR             R4, [R1,#0xC]
37A128:  BNE             loc_37A160
37A12A:  MOV.W           LR, #1
37A12E:  LDR             R2, [R1,#4]
37A130:  LDRSB           R3, [R2,R4]
37A132:  CMP.W           R3, #0xFFFFFFFF
37A136:  BGT             loc_37A118
37A138:  AND.W           R3, R3, #0x7F
37A13C:  STRB            R3, [R2,R4]
37A13E:  LDR             R2, [R1,#4]
37A140:  LDR             R3, [R1,#0xC]
37A142:  LDRB            R4, [R2,R3]
37A144:  AND.W           R12, R4, #0x80
37A148:  ADDS            R4, #1
37A14A:  AND.W           R4, R4, #0x7F
37A14E:  ORR.W           R4, R4, R12
37A152:  STRB            R4, [R2,R3]
37A154:  LDR             R2, [R1]
37A156:  LDR             R1, [R1,#0xC]
37A158:  ADD.W           R1, R1, R1,LSL#4
37A15C:  ADD.W           R4, R2, R1,LSL#2
37A160:  LDR             R1, =(_ZTV13CEventSexyPed_ptr - 0x37A16A)
37A162:  MOVS            R2, #0
37A164:  LDR             R0, [R0,#0x10]; this
37A166:  ADD             R1, PC; _ZTV13CEventSexyPed_ptr
37A168:  STR             R2, [R4,#4]
37A16A:  MOVW            R2, #0x100
37A16E:  CMP             R0, #0
37A170:  LDR             R1, [R1]; `vtable for'CEventSexyPed ...
37A172:  MOVT            R2, #0xC8
37A176:  STR             R2, [R4,#8]
37A178:  MOVW            R2, #0xFFFF
37A17C:  ADD.W           R1, R1, #8
37A180:  STRH            R2, [R4,#0xC]
37A182:  STR             R1, [R4]
37A184:  MOV             R1, R4
37A186:  STR.W           R0, [R1,#0x10]!; CEntity **
37A18A:  IT NE
37A18C:  BLXNE           j__ZN7CEntity17RegisterReferenceEPPS_; CEntity::RegisterReference(CEntity**)
37A190:  MOV             R0, R4
37A192:  POP             {R4,R6,R7,PC}
