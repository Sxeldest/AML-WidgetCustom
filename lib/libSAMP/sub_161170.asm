; =========================================================
; Game Engine Function: sub_161170
; Address            : 0x161170 - 0x1611EC
; =========================================================

161170:  PUSH            {R4-R7,LR}
161172:  ADD             R7, SP, #0xC
161174:  PUSH.W          {R11}
161178:  SUB             SP, SP, #8
16117A:  MOV             R0, SP; this
16117C:  BLX             j__ZNSt6__ndk16chrono12system_clock3nowEv; std::chrono::system_clock::now(void)
161180:  LDR             R0, =(unk_23906C - 0x161186)
161182:  ADD             R0, PC; unk_23906C
161184:  BLX             j___emutls_get_address
161188:  LDRB            R0, [R0]
16118A:  CBZ             R0, loc_1611D2
16118C:  LDR             R0, =(unk_23905C - 0x161192)
16118E:  ADD             R0, PC; unk_23905C
161190:  BLX             j___emutls_get_address
161194:  LDRD.W          R2, R3, [SP,#0x18+var_18]
161198:  LDR             R1, =(unk_23904C - 0x1611A0)
16119A:  LDR             R4, =(unk_23907C - 0x1611A6)
16119C:  ADD             R1, PC; unk_23904C
16119E:  STRD.W          R2, R3, [R0]
1611A2:  ADD             R4, PC; unk_23907C
1611A4:  MOV             R0, R1
1611A6:  BLX             j___emutls_get_address
1611AA:  MOV             R5, R0
1611AC:  LDR             R6, [R0]
1611AE:  MOV             R0, R4
1611B0:  BLX             j___emutls_get_address
1611B4:  LDR             R1, [R0]
1611B6:  ADDS            R2, R6, #1
1611B8:  STR             R2, [R5]
1611BA:  SUBS            R2, R1, #1
1611BC:  STR             R2, [R0]
1611BE:  MOV             R0, R1
1611C0:  BL              sub_1610D4
1611C4:  MOVS            R1, #0
1611C6:  STRB.W          R1, [R0,#0xC0]
1611CA:  ADD             SP, SP, #8
1611CC:  POP.W           {R11}
1611D0:  POP             {R4-R7,PC}
1611D2:  LDR             R0, =(unk_23905C - 0x1611D8)
1611D4:  ADD             R0, PC; unk_23905C
1611D6:  BLX             j___emutls_get_address
1611DA:  BLX             j__ZNSt6__ndk16chrono12system_clock3nowEv; std::chrono::system_clock::now(void)
1611DE:  LDR             R0, =(unk_23906C - 0x1611E4)
1611E0:  ADD             R0, PC; unk_23906C
1611E2:  BLX             j___emutls_get_address
1611E6:  MOVS            R1, #1
1611E8:  STRB            R1, [R0]
1611EA:  B               loc_16118C
