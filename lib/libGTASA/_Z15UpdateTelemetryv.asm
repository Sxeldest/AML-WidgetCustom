; =========================================================
; Game Engine Function: _Z15UpdateTelemetryv
; Address            : 0x2ACCA8 - 0x2ACD1A
; =========================================================

2ACCA8:  PUSH            {R4-R7,LR}
2ACCAA:  ADD             R7, SP, #0xC
2ACCAC:  PUSH.W          {R11}
2ACCB0:  BLX             IsProfileStatsBusy
2ACCB4:  CBNZ            R0, loc_2ACD14
2ACCB6:  LDR             R0, =(lastUpdateProfilestatsTime_ptr - 0x2ACCBE)
2ACCB8:  LDR             R1, =(DelayBetweenProfilestats_ptr - 0x2ACCC0)
2ACCBA:  ADD             R0, PC; lastUpdateProfilestatsTime_ptr
2ACCBC:  ADD             R1, PC; DelayBetweenProfilestats_ptr
2ACCBE:  LDR             R5, [R0]; lastUpdateProfilestatsTime
2ACCC0:  LDR             R6, [R1]; DelayBetweenProfilestats
2ACCC2:  BLX             j__Z9OS_TimeMSv; OS_TimeMS(void)
2ACCC6:  MOV             R4, R0
2ACCC8:  LDR             R0, [R5]
2ACCCA:  LDR             R1, [R6]
2ACCCC:  ADD             R0, R1
2ACCCE:  CMP             R0, R4
2ACCD0:  BCS             loc_2ACCDC
2ACCD2:  BLX             j__Z14DoProfileStatsv; DoProfileStats(void)
2ACCD6:  LDR             R0, =(lastUpdateProfilestatsTime_ptr - 0x2ACCDC)
2ACCD8:  ADD             R0, PC; lastUpdateProfilestatsTime_ptr
2ACCDA:  B               loc_2ACD10
2ACCDC:  LDR             R0, =(lastUpdateTime_ptr - 0x2ACCE2)
2ACCDE:  ADD             R0, PC; lastUpdateTime_ptr
2ACCE0:  LDR             R0, [R0]; lastUpdateTime
2ACCE2:  LDR             R0, [R0]; this
2ACCE4:  SUBS            R1, R0, #1
2ACCE6:  CMP             R1, R4
2ACCE8:  BCS             loc_2ACD08
2ACCEA:  LDR             R1, =(DelayBetweenSends_ptr - 0x2ACCF0)
2ACCEC:  ADD             R1, PC; DelayBetweenSends_ptr
2ACCEE:  LDR             R1, [R1]; DelayBetweenSends
2ACCF0:  LDR             R1, [R1]; unk_6DDD00
2ACCF2:  ADD             R1, R0
2ACCF4:  CMP             R1, R4
2ACCF6:  BCC             loc_2ACD08
2ACCF8:  LDR             R1, =(OneTimeSend_ptr - 0x2ACCFE)
2ACCFA:  ADD             R1, PC; OneTimeSend_ptr
2ACCFC:  LDR             R1, [R1]; OneTimeSend
2ACCFE:  LDR             R1, [R1]
2ACD00:  CMP             R4, R1
2ACD02:  BLS             loc_2ACD14
2ACD04:  CMP             R0, R1
2ACD06:  BCS             loc_2ACD14
2ACD08:  BLX             j__ZN9Telemetry13SendTelemetryEv; Telemetry::SendTelemetry(void)
2ACD0C:  LDR             R0, =(lastUpdateTime_ptr - 0x2ACD12)
2ACD0E:  ADD             R0, PC; lastUpdateTime_ptr
2ACD10:  LDR             R0, [R0]
2ACD12:  STR             R4, [R0]
2ACD14:  POP.W           {R11}
2ACD18:  POP             {R4-R7,PC}
