; =========================================================
; Game Engine Function: sub_5E8076
; Address            : 0x5E8076 - 0x5E80AE
; =========================================================

5E8076:  PUSH            {R4,R5,R7,LR}
5E8078:  ADD             R7, SP, #8
5E807A:  MOV             R4, R2
5E807C:  MOV             R5, R0
5E807E:  CBZ             R4, locret_5E80AC
5E8080:  LDR             R3, [R5]; s
5E8082:  CBZ             R3, loc_5E8092
5E8084:  MOV             R0, R1; ptr
5E8086:  MOVS            R1, #(stderr+1); size
5E8088:  MOV             R2, R4; n
5E808A:  POP.W           {R4,R5,R7,LR}
5E808E:  B.W             sub_19B7E4
5E8092:  ADDS            R3, R5, #4
5E8094:  LDM             R3, {R0,R2,R3}
5E8096:  SUBS            R2, R2, R3
5E8098:  ADD             R0, R3; void *
5E809A:  CMP             R2, R4
5E809C:  IT CC
5E809E:  MOVCC           R4, R2
5E80A0:  MOV             R2, R4; size_t
5E80A2:  BLX.W           memcpy_1
5E80A6:  LDR             R0, [R5,#0xC]
5E80A8:  ADD             R0, R4
5E80AA:  STR             R0, [R5,#0xC]
5E80AC:  POP             {R4,R5,R7,PC}
