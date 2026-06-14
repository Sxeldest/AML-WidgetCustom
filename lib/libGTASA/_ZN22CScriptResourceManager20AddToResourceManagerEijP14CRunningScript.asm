; =========================================================
; Game Engine Function: _ZN22CScriptResourceManager20AddToResourceManagerEijP14CRunningScript
; Address            : 0x335150 - 0x3351AA
; =========================================================

335150:  PUSH            {R4-R7,LR}
335152:  ADD             R7, SP, #0xC
335154:  PUSH.W          {R11}
335158:  ADD.W           R12, R0, #4
33515C:  MOV.W           R4, #0xFFFFFFFF
335160:  MOV.W           LR, #0xFFFFFFFF
335164:  LDR.W           R6, [R12,#-4]
335168:  LDRH.W          R5, [R12,#4]
33516C:  CMP             R6, R1
33516E:  IT EQ
335170:  CMPEQ           R5, R2
335172:  BNE             loc_33517C
335174:  LDR.W           R6, [R12]
335178:  CMP             R6, R3
33517A:  BEQ             loc_3351A4
33517C:  ADDS            R4, #1
33517E:  CMP             R5, #0
335180:  ADD.W           R12, R12, #0xC
335184:  IT EQ
335186:  MOVEQ           LR, R4
335188:  CMP             R4, #0x4A ; 'J'
33518A:  BLT             loc_335164
33518C:  ADDS.W          R6, LR, #1
335190:  ITTTT NE
335192:  ADDNE.W         R6, LR, LR,LSL#1
335196:  STRNE.W         R1, [R0,R6,LSL#2]
33519A:  ADDNE.W         R0, R0, R6,LSL#2
33519E:  STRHNE          R2, [R0,#8]
3351A0:  IT NE
3351A2:  STRNE           R3, [R0,#4]
3351A4:  POP.W           {R11}
3351A8:  POP             {R4-R7,PC}
