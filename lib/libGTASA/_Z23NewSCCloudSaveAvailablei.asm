; =========================================================
; Game Engine Function: _Z23NewSCCloudSaveAvailablei
; Address            : 0x2871C4 - 0x28722C
; =========================================================

2871C4:  PUSH            {R4,R6,R7,LR}
2871C6:  ADD             R7, SP, #8
2871C8:  MOV             R4, R0
2871CA:  LDR             R0, =(cloudFilename_ptr - 0x2871D0)
2871CC:  ADD             R0, PC; cloudFilename_ptr
2871CE:  LDR             R0, [R0]; cloudFilename
2871D0:  LDR.W           R0, [R0,R4,LSL#2]
2871D4:  BLX             cloudModFind
2871D8:  CBZ             R0, loc_287228
2871DA:  LDRB            R1, [R0]
2871DC:  CBZ             R1, loc_2871E4
2871DE:  LDR             R0, =(CloudSaveState_ptr - 0x2871E4)
2871E0:  ADD             R0, PC; CloudSaveState_ptr
2871E2:  B               loc_287202
2871E4:  LDRB.W          R1, [R0,#0x81]!; char *
2871E8:  CBZ             R1, loc_287228
2871EA:  LDR             R1, =(myCloudSaves_ptr - 0x2871F2)
2871EC:  MOVS            R2, #0xC1
2871EE:  ADD             R1, PC; myCloudSaves_ptr
2871F0:  LDR             R1, [R1]; myCloudSaves
2871F2:  MLA.W           R1, R4, R2, R1
2871F6:  ADDS            R1, #0x81; char *
2871F8:  BLX             strcmp
2871FC:  CBZ             R0, loc_287228
2871FE:  LDR             R0, =(CloudSaveState_ptr - 0x287204)
287200:  ADD             R0, PC; CloudSaveState_ptr
287202:  LDR             R0, [R0]; CloudSaveState
287204:  LDR             R0, [R0]
287206:  CMP             R0, #9
287208:  BNE             loc_287228
28720A:  LDR             R0, =(CloudSaveState_ptr - 0x287216)
28720C:  MOVS            R2, #5
28720E:  LDR             R1, =(cloudFilename_ptr - 0x28721C)
287210:  CMP             R4, #0
287212:  ADD             R0, PC; CloudSaveState_ptr
287214:  IT EQ
287216:  MOVEQ           R2, #1
287218:  ADD             R1, PC; cloudFilename_ptr
28721A:  LDR             R0, [R0]; CloudSaveState
28721C:  LDR             R1, [R1]; cloudFilename
28721E:  STR             R2, [R0]
287220:  LDR.W           R0, [R1,R4,LSL#2]
287224:  BLX             cloudModReset
287228:  MOVS            R0, #0
28722A:  POP             {R4,R6,R7,PC}
