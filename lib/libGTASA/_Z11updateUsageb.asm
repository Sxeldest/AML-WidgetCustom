; =========================================================
; Game Engine Function: _Z11updateUsageb
; Address            : 0x2ACB3C - 0x2ACC6A
; =========================================================

2ACB3C:  PUSH            {R4-R7,LR}
2ACB3E:  ADD             R7, SP, #0xC
2ACB40:  PUSH.W          {R8-R11}
2ACB44:  SUB             SP, SP, #0xC
2ACB46:  MOV             R11, R0
2ACB48:  ADD             R0, SP, #0x28+tv; tv
2ACB4A:  MOVS            R1, #0; tz
2ACB4C:  BLX             gettimeofday
2ACB50:  LDR             R1, [SP,#0x28+tv]
2ACB52:  MOV.W           R2, #0x3E8
2ACB56:  LDR             R0, =(dword_6F2378 - 0x2ACB60)
2ACB58:  MUL.W           R10, R1, R2
2ACB5C:  ADD             R0, PC; dword_6F2378
2ACB5E:  LDRD.W          R4, R6, [R0]
2ACB62:  ORRS.W          R0, R4, R6
2ACB66:  BEQ             loc_2ACC56
2ACB68:  MOVW            R2, #0x5C00
2ACB6C:  MOV.W           R9, R10,ASR#31
2ACB70:  MOVT            R2, #0x526
2ACB74:  MOV             R0, R10
2ACB76:  MOV             R1, R9
2ACB78:  MOVS            R3, #0
2ACB7A:  BLX             __aeabi_ldivmod
2ACB7E:  MOVS            R2, #0x1E
2ACB80:  MOVS            R3, #0
2ACB82:  BLX             __aeabi_ldivmod
2ACB86:  LDR             R0, =(currentDayindex_ptr - 0x2ACB90)
2ACB88:  MOV             R5, R2
2ACB8A:  LDR             R1, =(DailyUse_ptr - 0x2ACB92)
2ACB8C:  ADD             R0, PC; currentDayindex_ptr
2ACB8E:  ADD             R1, PC; DailyUse_ptr
2ACB90:  LDR             R0, [R0]; currentDayindex
2ACB92:  LDR             R1, [R1]; DailyUse
2ACB94:  STR             R1, [SP,#0x28+var_28]
2ACB96:  LDR             R0, [R0]
2ACB98:  CMP             R0, R5
2ACB9A:  BNE             loc_2ACBA8
2ACB9C:  LDR             R0, =(TimeInBackground_ptr - 0x2ACBA2)
2ACB9E:  ADD             R0, PC; TimeInBackground_ptr
2ACBA0:  LDR             R0, [R0]; TimeInBackground
2ACBA2:  ADD.W           R8, R0, R5,LSL#2
2ACBA6:  B               loc_2ACBCA
2ACBA8:  LDR             R2, =(TimeInBackground_ptr - 0x2ACBB4)
2ACBAA:  MOVS            R3, #0
2ACBAC:  LDR             R0, =(DailyUse_ptr - 0x2ACBB6)
2ACBAE:  LDR             R1, =(currentDayindex_ptr - 0x2ACBB8)
2ACBB0:  ADD             R2, PC; TimeInBackground_ptr
2ACBB2:  ADD             R0, PC; DailyUse_ptr
2ACBB4:  ADD             R1, PC; currentDayindex_ptr
2ACBB6:  LDR             R2, [R2]; TimeInBackground
2ACBB8:  LDR             R0, [R0]; DailyUse
2ACBBA:  LDR             R1, [R1]; currentDayindex
2ACBBC:  ADD.W           R8, R2, R5,LSL#2
2ACBC0:  STR.W           R3, [R2,R5,LSL#2]
2ACBC4:  STR.W           R3, [R0,R5,LSL#2]
2ACBC8:  STR             R5, [R1]
2ACBCA:  SUBS.W          R0, R10, R4
2ACBCE:  MOV.W           R2, #0x3E8
2ACBD2:  SBC.W           R1, R9, R6
2ACBD6:  MOVS            R3, #0
2ACBD8:  BLX             __aeabi_ldivmod
2ACBDC:  LDR             R1, [SP,#0x28+var_28]
2ACBDE:  CMP.W           R11, #0
2ACBE2:  IT EQ
2ACBE4:  ADDEQ.W         R8, R1, R5,LSL#2
2ACBE8:  LDR.W           R1, [R8]
2ACBEC:  ADD             R0, R1
2ACBEE:  STR.W           R0, [R8]
2ACBF2:  BLX             IsProfileStatsBusy
2ACBF6:  CBNZ            R0, loc_2ACC56
2ACBF8:  LDR             R0, =(lastUpdateProfilestatsTime_ptr - 0x2ACC00)
2ACBFA:  LDR             R1, =(DelayBetweenProfilestats_ptr - 0x2ACC02)
2ACBFC:  ADD             R0, PC; lastUpdateProfilestatsTime_ptr
2ACBFE:  ADD             R1, PC; DelayBetweenProfilestats_ptr
2ACC00:  LDR             R4, [R0]; lastUpdateProfilestatsTime
2ACC02:  LDR             R6, [R1]; DelayBetweenProfilestats
2ACC04:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
2ACC08:  MOV             R5, R0
2ACC0A:  LDR             R0, [R4]
2ACC0C:  LDR             R1, [R6]
2ACC0E:  ADD             R0, R1
2ACC10:  CMP             R0, R5
2ACC12:  BCS             loc_2ACC1E
2ACC14:  BLX             j__Z14DoProfileStatsv; DoProfileStats(void)
2ACC18:  LDR             R0, =(lastUpdateProfilestatsTime_ptr - 0x2ACC1E)
2ACC1A:  ADD             R0, PC; lastUpdateProfilestatsTime_ptr
2ACC1C:  B               loc_2ACC52
2ACC1E:  LDR             R0, =(lastUpdateTime_ptr - 0x2ACC24)
2ACC20:  ADD             R0, PC; lastUpdateTime_ptr
2ACC22:  LDR             R0, [R0]; lastUpdateTime
2ACC24:  LDR             R0, [R0]; this
2ACC26:  SUBS            R1, R0, #1
2ACC28:  CMP             R1, R5
2ACC2A:  BCS             loc_2ACC4A
2ACC2C:  LDR             R1, =(DelayBetweenSends_ptr - 0x2ACC32)
2ACC2E:  ADD             R1, PC; DelayBetweenSends_ptr
2ACC30:  LDR             R1, [R1]; DelayBetweenSends
2ACC32:  LDR             R1, [R1]; unk_6DDD00
2ACC34:  ADD             R1, R0
2ACC36:  CMP             R1, R5
2ACC38:  BCC             loc_2ACC4A
2ACC3A:  LDR             R1, =(OneTimeSend_ptr - 0x2ACC40)
2ACC3C:  ADD             R1, PC; OneTimeSend_ptr
2ACC3E:  LDR             R1, [R1]; OneTimeSend
2ACC40:  LDR             R1, [R1]
2ACC42:  CMP             R5, R1
2ACC44:  BLS             loc_2ACC56
2ACC46:  CMP             R0, R1
2ACC48:  BCS             loc_2ACC56
2ACC4A:  BLX             j__ZN9Telemetry13SendTelemetryEv; Telemetry::SendTelemetry(void)
2ACC4E:  LDR             R0, =(lastUpdateTime_ptr - 0x2ACC54)
2ACC50:  ADD             R0, PC; lastUpdateTime_ptr
2ACC52:  LDR             R0, [R0]
2ACC54:  STR             R5, [R0]
2ACC56:  LDR             R0, =(dword_6F2378 - 0x2ACC60)
2ACC58:  MOV.W           R1, R10,ASR#31
2ACC5C:  ADD             R0, PC; dword_6F2378
2ACC5E:  STRD.W          R10, R1, [R0]
2ACC62:  ADD             SP, SP, #0xC
2ACC64:  POP.W           {R8-R11}
2ACC68:  POP             {R4-R7,PC}
