; =========================================================
; Game Engine Function: sub_161028
; Address            : 0x161028 - 0x1610B8
; =========================================================

161028:  PUSH            {R7,LR}
16102A:  MOV             R7, SP
16102C:  SUB             SP, SP, #8
16102E:  LDR             R0, =(unk_23904C - 0x161034)
161030:  ADD             R0, PC; unk_23904C
161032:  BLX             j___emutls_get_address
161036:  LDR             R0, [R0]
161038:  CBZ             R0, loc_16107E
16103A:  MOV             R0, SP; this
16103C:  BLX             j__ZNSt6__ndk16chrono12system_clock3nowEv; std::chrono::system_clock::now(void)
161040:  LDR             R0, =(unk_23906C - 0x161046)
161042:  ADD             R0, PC; unk_23906C
161044:  BLX             j___emutls_get_address
161048:  LDRB            R0, [R0]
16104A:  CBZ             R0, loc_16109E
16104C:  LDR             R0, =(unk_23905C - 0x161052)
16104E:  ADD             R0, PC; unk_23905C
161050:  BLX             j___emutls_get_address
161054:  LDRD.W          R1, R2, [SP,#0x10+var_10]
161058:  LDRD.W          R0, R3, [R0]
16105C:  SUBS            R0, R1, R0
16105E:  SBC.W           R1, R2, R3
161062:  MOV             R2, #0x3938701
16106A:  SUBS            R0, R0, R2
16106C:  SBCS.W          R0, R1, #0
161070:  BLT             loc_16107E
161072:  LDR             R0, =(unk_23904C - 0x161078)
161074:  ADD             R0, PC; unk_23904C
161076:  BLX             j___emutls_get_address
16107A:  MOVS            R1, #0
16107C:  STR             R1, [R0]
16107E:  LDR             R0, =(unk_23907C - 0x161084)
161080:  ADD             R0, PC; unk_23907C
161082:  BLX             j___emutls_get_address
161086:  LDR             R1, [R0]
161088:  ADDS            R1, #1
16108A:  STR             R1, [R0]
16108C:  MOV             R0, R1
16108E:  BL              sub_1610D4
161092:  BL              sub_1618E0
161096:  LDRB.W          R0, [R0,#0xC0]
16109A:  ADD             SP, SP, #8
16109C:  POP             {R7,PC}
16109E:  LDR             R0, =(unk_23905C - 0x1610A4)
1610A0:  ADD             R0, PC; unk_23905C
1610A2:  BLX             j___emutls_get_address
1610A6:  BLX             j__ZNSt6__ndk16chrono12system_clock3nowEv; std::chrono::system_clock::now(void)
1610AA:  LDR             R0, =(unk_23906C - 0x1610B0)
1610AC:  ADD             R0, PC; unk_23906C
1610AE:  BLX             j___emutls_get_address
1610B2:  MOVS            R1, #1
1610B4:  STRB            R1, [R0]
1610B6:  B               loc_16104C
