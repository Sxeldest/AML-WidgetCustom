; =========================================================
; Game Engine Function: _ZN23CAECollisionAudioEntity23GetCollisionSoundStatusEP7CEntityS1_hhPi
; Address            : 0x393D64 - 0x393DBC
; =========================================================

393D64:  PUSH            {R4,R5,R7,LR}
393D66:  ADD             R7, SP, #8
393D68:  LDR.W           R12, [R7,#arg_4]
393D6C:  ADD.W           R3, R0, #0x218
393D70:  MOV.W           LR, #0
393D74:  MOV.W           R0, #0xFFFFFFFF
393D78:  LDR.W           R4, [R3,#-0x10]
393D7C:  CMP             R4, R1
393D7E:  ITT EQ
393D80:  LDREQ.W         R5, [R3,#-0xC]
393D84:  CMPEQ           R5, R2
393D86:  BEQ             loc_393D94
393D88:  CMP             R4, R2
393D8A:  ITT EQ
393D8C:  LDREQ.W         R4, [R3,#-0xC]
393D90:  CMPEQ           R4, R1
393D92:  BNE             loc_393D9E
393D94:  LDRB.W          LR, [R3]
393D98:  CMP.W           LR, #2
393D9C:  BEQ             loc_393DAC
393D9E:  ADDS            R0, #1
393DA0:  ADDS            R3, #0x14
393DA2:  CMP.W           R0, #0x12A
393DA6:  BLE             loc_393D78
393DA8:  ADDS            R0, #1
393DAA:  B               loc_393DB2
393DAC:  ADDS            R0, #1
393DAE:  MOV.W           LR, #2
393DB2:  STR.W           R0, [R12]
393DB6:  SXTB.W          R0, LR
393DBA:  POP             {R4,R5,R7,PC}
