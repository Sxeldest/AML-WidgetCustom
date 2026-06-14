; =========================================================
; Game Engine Function: sub_22113C
; Address            : 0x22113C - 0x2211BC
; =========================================================

22113C:  PUSH            {R4-R6,LR}
221140:  MOV             R4, R0
221144:  LDR             R0, [R0]
221148:  CMP             R0, #0
22114C:  BEQ             loc_221170
221150:  LDR             R1, =(byte_384180 - 0x221164)
221154:  SUB             R0, R0, #1
221158:  STR             R0, [R4]
22115C:  ADD             R1, PC, R1; byte_384180
221160:  LDR             R0, [R1,#(dword_384184 - 0x384180)]; key
221164:  MOV             R1, R4; pointer
221168:  POP             {R4-R6,LR}
22116C:  B               pthread_setspecific
221170:  LDR             R0, [R4,#4]
221174:  CMP             R0, #0
221178:  BEQ             loc_2211B0
22117C:  ADD             R5, R4, #8
221180:  MOV             R6, #0
221184:  B               loc_221194
221188:  ADD             R6, R6, #1
22118C:  CMP             R6, R0
221190:  BCS             loc_2211B0
221194:  LDR             R1, [R5,R6,LSL#2]
221198:  CMP             R1, #0
22119C:  BEQ             loc_221188
2211A0:  LDR             R0, [R1,#-4]; ptr
2211A4:  BL              free
2211A8:  LDR             R0, [R4,#4]
2211AC:  B               loc_221188
2211B0:  MOV             R0, R4; ptr
2211B4:  POP             {R4-R6,LR}
2211B8:  B               free
